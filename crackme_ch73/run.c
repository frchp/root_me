#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/ptrace.h>

unsigned char key[8] = { -88, -106, 79, 127, 62, -108, 10, -107 };
extern uint64_t data_start;

int check(char *a1)
{
  int i; // [rsp+1Ch] [rbp-14h]

  for ( i = 0; i < strlen(a1); ++i )
    a1[i] ^= key[i % 8];
  if ( *( uint64_t*)a1 == 0xA377AD570465FDF9LL )
    return puts("C'est correct !");
  else
    return puts("Essaie encore !");
}

void init()
{
  setbuf(stdout, 0);
  setbuf(stdin, 0);
  setbuf(stderr, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  printf("Key before patch : ");
  for(uint16_t i = 0; i < strlen(key); ++i)
  {
    printf("%d ", key[i]);
  }
  printf("\r\n");
  /* _do_global_ctors_aux */
  uint64_t* ptr = &data_start;

  for (int i = 0; i < 256; ++i) {
    if (ptr[i] == 0x950A943E7F4F96A8ULL) {
      ptr[i] ^= 0x0119011901190119ULL;
    }
  }
  printf("Key after patch : ");
  for(uint16_t i = 0; i < strlen(key); ++i)
  {
    printf("%d ", key[i]);
  }
  printf("\r\n");

  /* main */
  char v4[104];
  init();
  printf("Key: ");
  scanf("%s", v4);
  check(v4);
  return 0;
}