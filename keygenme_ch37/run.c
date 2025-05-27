#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <openssl/md5.h>
#include <stdlib.h>
#include <stdio.h>

char unk_41A0[32] = {0};  // valeur placeholder
char unk_43A0[16] = {0};

int64_t sub_1290(int a1)
{
  unsigned int i; // r8d
  puts("Entering sub_1290");
  for ( i = 0; a1; a1 &= a1 - 1 )
    ++i;
  return i;
}


int64_t sub_1380(char *src, int64_t a2)
{
  char *v3; // rbx
  char *v4; // rax
  char *v5; // rdx
  char v6; // cl
  char v7; // si
  uint8_t v9[96]; // [rsp+0h] [rbp-208h] BYREF
  char dest[128]; // [rsp+60h] [rbp-1A8h] BYREF
  char v11[296]; // [rsp+E0h] [rbp-128h] BYREF
  puts("Entering sub_1380");
  if ( strnlen(src, 0x80u) == 128 )
    exit(2);
  memset(v11, 0, 0x100u);
  v3 = stpcpy(dest, src);
  memcpy(v11, dest, v3 - dest + 1);
  if ( (uint64_t)(v3 - dest) > 1 )
  {
    v4 = v3 - 1;
    if ( v3 - 1 > dest )
    {
      v5 = dest;
      do
      {
        v6 = *v4;
        v7 = *v5;
        --v4;
        ++v5;
        v4[1] = v7;
        *(v5 - 1) = v6;
      }
      while ( v5 < v4 );
    }
  }
  strcpy(&v11[v3 - dest], dest);
  MD5_Init(v9);
  MD5_Update(v9, v11, 256);
  return MD5_Final(a2, v9);
}

int64_t sub_12B0(int *a1, int64_t a2)
{
  int64_t v2; // rcx
  int v3; // ebp
  int v4; // r11d
  unsigned int v5; // ebx
  int64_t v6; // rdx
  int64_t v7; // rcx
  uint8_t v8; // al
  uint8_t v9; // r9
  int64_t v10; // rcx
  int v11; // r12d
  int64_t v12; // rdx
  int64_t v13; // rcx
  int64_t result; // rax
  int *v15; // r10
  uint8_t v16; // r9
  int64_t v17; // rcx
  puts("Entering sub_12B0");
  v2 = 0;
  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  do
  {
    printf("   arg appel 1 %d \r\n", v4 & *(uint32_t *)(a2 + v2));
    sub_1290(v4 & *(uint32_t *)(a2 + v2));
    printf("   arg appel 2 %d \r\n", v5 & *(uint32_t *)(v6 + v7));
    v8 = sub_1290(v5 & *(uint32_t *)(v6 + v7));
    v2 = v10 + 4;
    v3 = (v8 ^ v9) & 1 ^ (2 * v3);
    printf("   v2 check %d \r\n", v2);
  }
  while ( v2 != 128 );
  v11 = 0;
  do
  {
    sub_1290(v4 & *(uint32_t *)(a2 + v2));
    result = sub_1290(v5 & *(uint32_t *)(v12 + v13));
    v2 = v17 + 4;
    v11 = ((uint8_t)result ^ v16) & 1 ^ (2 * v11);
  }
  while ( v2 != 256 );
  *v15 = v3;
  v15[1] = v11;
  return result;
}

bool ValidateSerial(char *a1, int *a2)
{
  bool result; // al
  uint32_t v3[6]; // [rsp+0h] [rbp-18h] BYREF
  puts("Entering ValidateSerial");
  sub_1380(a1, (int64_t)v3);
  sub_12B0(a2, (int64_t)&unk_43A0);
  sub_12B0(a2 + 1, (int64_t)&unk_41A0);
  result = 0;
  if ( *a2 == v3[0] && a2[1] == v3[1] )
    return a2[2] == v3[2];
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  int v4; // [rsp+4h] [rbp-24h] BYREF
  char v5; // [rsp+8h] [rbp-20h] BYREF
  char v6; // [rsp+Ch] [rbp-1Ch] BYREF

  if ( argc == 1 )
  {
    printf("Usage: %s <username> <serial>\n", *argv);
  }
  else if ( argc == 3 /* 2 arguments */
         && ~(strlen(argv[2]) + 1) == -28 /* le deuxieme arg fait 26 characteres */
         && (unsigned int)sscanf(argv[2], "%x-%x-%x", &v4, &v5, &v6) == 3 ) /* format <hex>-<hex>-<hex> */
  {
    if ( ValidateSerial(argv[1], &v4) )
      puts("Ok, you can validate the challenge with this serial number (in uppercase).");
    else
      puts("Try again.");
  }
  return 0;
}

