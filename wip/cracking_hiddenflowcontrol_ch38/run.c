#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include <unistd.h>
#include <sys/syscall.h>

#define HIGHD(x) ((x) >> 16)           // haut mot (16 bits de poids fort)
#define LOWD(x)  ((x) & 0xFFFF)        // bas mot (16 bits de poids faible)

void sub_401000(int64_t arg1, int32_t arg2, void* arg3)
{
    for (int16_t i = 0; i <= 0xff; i += 1)
        *(uint32_t*)(arg3 + i) = i;
    
    char var_9 = 0;
    char var_a = 0;
    
    for (int16_t i_1 = 0; i_1 <= 0xff; i_1 += 1)
    {
        int32_t temp2_1;
        char temp3_1;
        temp2_1 = HIGHD(var_a + *(arg1 + var_9) + *(arg3 + i_1));
        temp3_1 = LOWD(var_a + *(arg1 + var_9) + *(arg3 + i_1));
        var_a = (temp2_1 >> 0x18) * 0 + temp3_1;
        char rax_19 = *(arg3 + i_1);
        *(arg3 + i_1) = *(arg3 + var_a);
        *(var_a + arg3) = rax_19;
        var_9 = (var_9 + 1) % arg2;
    }
}

int32_t sub_4010f2(void* arg1, void* arg2, int32_t arg3, int64_t arg4)
{
    char var_a = 0;
    char var_9 = 0;
    int16_t result_1 = 0;
    int32_t result;
    
    while (true)
    {
        result = result_1;
        
        if (arg3 <= result)
            break;
        
        int32_t temp0_1;
        char temp1_1;
        temp0_1 = HIGHD(var_9 + 1);
        temp1_1 = LOWD(var_9 + 1);
        var_9 = (temp0_1 >> 0x18) * 0 + temp1_1;
        var_a += *(arg4 + var_9);
        char rax_12 = *(arg4 + var_9);
        *(arg4 + var_9) = *(arg4 + var_a);
        *(var_a + arg4) = rax_12;
        *(arg2 + result_1) = *(arg4 + *(arg4 + var_a) + *(arg4 + var_9)) ^ *(arg1 + result_1);
        result_1 += 1;
    }
    
    return result;
}

uint64_t sub_4011e4(void* arg1, int32_t arg2, int64_t arg3)
{
    char var_9 = 0;
    char var_b = 0;
    char var_a = 0;
    int16_t var_e = 0;
    
    while (arg2 > var_e)
    {
        int32_t temp0_1;
        char temp1_1;
        temp0_1 = HIGHD(var_a + 1);
        temp1_1 = LOWD(var_a + 1);
        var_a = (temp0_1 >> 0x18) * 0 + temp1_1;
        var_b += *(arg3 + var_a);
        char rax_12 = *(arg3 + var_a);
        *(arg3 + var_a) = *(arg3 + var_b);
        *(var_b + arg3) = rax_12;
        var_9 ^= *(arg3 + *(arg3 + var_b) + *(arg3 + var_a)) ^ *(arg1 + var_e);
        var_e += 1;
    }
    
    return var_9;
}

uint64_t sub_4012cd(void* arg1, int32_t arg2, int64_t arg3)
{
    void var_108;
    sub_401000(arg3, 8, &var_108);
    return sub_4011e4(arg1, arg2 - arg1, &var_108);
}

int64_t sub_401332(int64_t arg1)
{
    int64_t var_48;
    memcpy(&var_48, 
        "\x65\xbb\x09\x66\x13\x99\xf0\x8e\x98\xa7\x00\x96\x64\x1c\x17\xf1\x27\xb0\x97\x87\x31\x6d\xde\x2b\x81\x18\xab\x99\x50\x5c\x45\x37", 
        0x20);
    void var_148;
    sub_401000(arg1, 8, &var_148);
    void var_28;
    sub_4010f2(&var_48, &var_28, 0x20, &var_148);
    return syscall(1, 1, &var_28, 0x20);
}

int main(int argc, const char **argv, const char **envp)
{
    int32_t var_3c = 0xe;
    int32_t var_40 = 0x3bf7b3e8;
    char rax_23;
    uint64_t rdi;
    
    while (true)
    {
        int32_t var_34;
        
        if (var_40 != 0xfd43debe)
        {
            char var_258[0x208];
            char var_50[0x8];
            char var_48[0x8];
            int32_t var_38;
            int32_t var_30;
            int32_t var_2c;
            int32_t var_28;
            int32_t var_24;
            int32_t var_20;
            int32_t var_1c;
            int32_t var_18;
            int32_t var_14;
            int32_t var_10;
            char var_c;
            char var_b;
            char var_a;
            char var_9;
            
            switch (var_40)
            {
                case 0x385c57e7:
                {
                    var_38 = 0;
                    var_3c ^= 0x29;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x38e7720e:
                {
                    var_14 += 1;
                    var_3c ^= 2;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x3bf7b3e8:
                {
                    var_2c = var_3c + 0x6345789;
                    var_30 = ROLD(var_3c, 7) ^ var_2c;
                    var_40 = 0xead8e086;
                    continue;
                }
                case 0x3da4c71e:
                {
                    int32_t temp10_1;
                    int32_t temp11_1;
                    temp10_1 = HIGHD(var_34);
                    temp11_1 = LOWD(var_34);
                    uint32_t rdx_5 = temp10_1 >> 0x1d;
                    int32_t temp12_1;
                    int32_t temp13_1;
                    temp12_1 = HIGHD(var_38);
                    temp13_1 = LOWD(var_38);
                    uint32_t rdx_7 = temp12_1 >> 0x1d;
                    var_20 = ((temp11_1 + rdx_5) & 7) - rdx_5 - (((temp13_1 + rdx_7) & 7) - rdx_7);
                    var_3c ^= 0x2e;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x3f1fc24f:
                {
                    var_10 = 1;
                    var_3c ^= 0x18;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x4071ce85:
                {
                    var_258[var_18] = 0;
                    var_3c ^= 0x1f;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x41ff0669:
                {
                    int32_t rax_35 = var_34;
                    
                    if (rax_35 < 0)
                        rax_35 += 7;
                    
                    int32_t rax_37 = var_38;
                    
                    if (rax_37 < 0)
                        rax_37 += 7;
                    
                    var_1c = -((rax_37 >> 3)) + (rax_35 >> 3);
                    var_3c ^= 0x3a;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x477279ad:
                {
                    var_2c = var_28 + var_24;
                    var_30 = RORD(var_28, 0xd) ^ var_2c;
                    var_40 = 0x115bde3f;
                    continue;
                }
                case 0x480746e6:
                {
                    var_34 += 1;
                    var_3c ^= 0x2d;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x551e5e5d:
                {
                    var_50[var_14] = 0xff;
                    var_3c ^= 0x3b;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x5abde97f:
                {
                    int32_t rax_117 = var_38 + (var_34 << 6);
                    
                    if (rax_117 < 0)
                        rax_117 += 7;
                    
                    int32_t rax_124 = var_38 + (var_34 << 6);
                    uint8_t rcx_23 = rax_124 >> 0x1f >> 0x1d;
                    var_b =
                        var_258[rax_117 >> 3] >> (((rax_124 + rcx_23) & 7) - rcx_23) & var_a & 1;
                    var_3c ^= 0x12;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x5d45d93e:
                {
                    rdi = 0;
                    syscall(0, 0, &var_48, 8);
                    var_3c ^= 0x24;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x627d9156:
                {
                    int32_t temp6_1;
                    int32_t temp7_1;
                    temp6_1 = HIGHD(var_38);
                    temp7_1 = LOWD(var_38);
                    uint32_t rdx_15 = temp6_1 >> 0x1d;
                    int32_t temp8_1;
                    int32_t temp9_1;
                    temp8_1 = HIGHD(var_34);
                    temp9_1 = LOWD(var_34);
                    uint32_t rdx_17 = temp8_1 >> 0x1d;
                    var_20 =
                        ((temp7_1 + rdx_15) & 7) - rdx_15 - (((temp9_1 + rdx_17) & 7) - rdx_17);
                    var_3c ^= 9;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x68bcb16c:
                {
                    var_34 = 0;
                    var_3c ^= 0x27;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x6964964e:
                {
                    var_34 = 0;
                    var_3c ^= 1;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x6ce7dd77:
                {
                    if (var_34 > 0x3f)
                        var_3c ^= 0x18;
                    else
                        var_3c ^= 7;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x6e9ca60f:
                {
                    if (var_34 > 0x3f)
                        var_3c ^= 0x32;
                    else
                        var_3c ^= 0x18;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x78c71567:
                {
                    var_10 += 1;
                    var_3c ^= 0x3f;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x7d85a117:
                {
                    var_18 += 1;
                    var_3c ^= 0x3a;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x82c736ff:
                {
                    if (var_20 + var_1c > 1)
                        var_3c ^= 0x12;
                    else
                        var_3c ^= 0x3c;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x853f06be:
                {
                    var_38 = 0;
                    var_3c ^= 0x38;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x911e4dce:
                {
                    int32_t rax_29 = var_38;
                    
                    if (rax_29 < 0)
                        rax_29 += 7;
                    
                    int32_t rax_31 = var_34;
                    
                    if (rax_31 < 0)
                        rax_31 += 7;
                    
                    var_1c = -((rax_31 >> 3)) + (rax_29 >> 3);
                    var_3c ^= 0x2c;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x93a5489f:
                {
                    var_14 = 1;
                    var_3c ^= 0x28;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x96e67d8f:
                {
                    if (var_38 > 0x3f)
                        var_3c ^= 0x1c;
                    else
                        var_3c ^= 0x33;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x9bda85b9:
                {
                    var_258[0] = 0;
                    var_3c ^= 0x13;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x9c1df858:
                {
                    var_c = var_a & var_b;
                    var_3c ^= 0x2c;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0x9ffd26c4:
                {
                    var_34 = 0;
                    var_3c ^= 1;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xa3f97907:
                {
                    if (var_38 > 0x3f)
                        var_3c ^= 0x18;
                    else
                        var_3c ^= 0x2d;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xa4014946:
                {
                    var_18 = 1;
                    var_3c ^= 0xa;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xa745fea6:
                {
                    var_38 += 1;
                    var_3c ^= 0x16;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xa9a5e827:
                {
                    var_38 += 1;
                    var_3c ^= 0x35;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xb36536b6:
                {
                    var_50[0] = 0xff;
                    var_3c ^= 0x18;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xb938593d:
                {
                    int32_t rax_97 = var_34;
                    
                    if (rax_97 < 0)
                        rax_97 += 7;
                    
                    uint8_t rcx_18 = var_34 >> 0x1f >> 0x1d;
                    var_9 += var_50[rax_97 >> 3] >> (((var_34 + rcx_18) & 7) - rcx_18) & 1;
                    var_3c ^= 0xf;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xc2e652f6:
                {
                    if (var_14 <= 7)
                        var_3c ^= 0x39;
                    else
                        var_3c ^= 0xd;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xc6bcbeed:
                {
                    int32_t rax_83 = var_34;
                    
                    if (rax_83 < 0)
                        rax_83 += 7;
                    
                    uint8_t rcx_13 = var_34 >> 0x1f >> 0x1d;
                    int32_t rax_94 = var_34;
                    
                    if (rax_94 < 0)
                        rax_94 += 7;
                    
                    var_50[rax_94 >> 3] =
                        var_50[rax_83 >> 3] ^ (var_c & 1) << (((var_34 + rcx_13) & 7) - rcx_13);
                    var_3c ^= 0x23;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xc96691ce:
                {
                    int32_t rax_1 = var_38;
                    
                    if (rax_1 < 0)
                        rax_1 += 7;
                    
                    uint8_t rcx_3 = var_38 >> 0x1f >> 0x1d;
                    var_a = var_48[rax_1 >> 3] >> (((var_38 + rcx_3) & 7) - rcx_3) & 1;
                    var_3c ^= 5;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xcc7c1ed7:
                {
                    int32_t temp2_1;
                    int32_t temp3_1;
                    temp2_1 = HIGHD(var_34);
                    temp3_1 = LOWD(var_34);
                    uint32_t rdx_46 = temp2_1 >> 0x1d;
                    int32_t temp4_1;
                    int32_t temp5_1;
                    temp4_1 = HIGHD(var_38);
                    temp5_1 = LOWD(var_38);
                    uint32_t rdx_48 = temp4_1 >> 0x1d;
                    
                    if (((temp3_1 + rdx_46) & 7) - rdx_46 - (((temp5_1 + rdx_48) & 7) - rdx_48)
                            >= 0)
                        var_3c ^= 7;
                    else
                        var_3c ^= 0x20;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xd385ae96:
                {
                    if (var_34 > 0x3f)
                        var_3c ^= 0xf;
                    else
                        var_3c ^= 0x17;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xe07bc905:
                {
                    int32_t rax_130 = var_34;
                    
                    if (rax_130 < 0)
                        rax_130 += 7;
                    
                    int32_t rax_132 = var_38;
                    
                    if (rax_132 < 0)
                        rax_132 += 7;
                    
                    if (-((rax_132 >> 3)) + (rax_130 >> 3) >= 0)
                        var_3c ^= 0x24;
                    else
                        var_3c ^= 0x32;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xead8e086:
                {
                    int32_t var_40_1 = 0x9e;
                    var_24 = var_30 + var_2c;
                    var_28 = RORD(var_30, 6) ^ var_24;
                    var_40 = 0x477279ad;
                    continue;
                }
                case 0xf0210076:
                {
                    int32_t rax_58 = var_38 + (var_34 << 6);
                    
                    if (rax_58 < 0)
                        rax_58 += 7;
                    
                    int32_t temp0_1;
                    char temp1_1;
                    temp0_1 = HIGHD(var_38 + (var_34 << 6));
                    temp1_1 = LOWD(var_38 + (var_34 << 6));
                    uint8_t rdx_23 = temp0_1 >> 0x1d;
                    int32_t rax_74 = var_38 + (var_34 << 6);
                    
                    if (rax_74 < 0)
                        rax_74 += 7;
                    
                    var_258[rax_74 >> 3] =
                        var_258[rax_58 >> 3] ^ 1 << (((temp1_1 + rdx_23) & 7) - rdx_23);
                    var_3c ^= 0x2e;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xf7d93037:
                {
                    if (var_10 <= 7)
                    {
                        rdi = &data_401144 ^ var_3c;
                        var_3c ^= sub_4012cd(rdi, &data_401f76, &data_401f7d) ^ 0xc;
                    }
                    else
                        var_3c ^= 0x2b;
                    
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                case 0xfabbeeff:
                {
                    var_48[var_10] = 0;
                    var_3c ^= 0x33;
                    var_40 = 0x3bf7b3e8;
                    continue;
                }
                default:
                {
                    if (var_40 == 0x31ff2945)
                    {
                        if (var_9)
                        {
                            rdi = 1;
                            rax_23 = syscall(1, 1, "Try again!", 0xb);
                        }
                        else
                            rax_23 = sub_401332(&var_48);
                        
                        break;
                    }
                    
                    if (var_40 == 0x2b3e893f)
                    {
                        var_34 += 1;
                        var_3c ^= 0x27;
                        var_40 = 0x3bf7b3e8;
                        continue;
                    }
                    else if (var_40 == 0x29840f0e)
                    {
                        var_48[0] = 0;
                        var_3c ^= 0xf;
                        var_40 = 0x3bf7b3e8;
                        continue;
                    }
                    else if (var_40 == 0x1627af6e)
                    {
                        var_9 = 0;
                        var_3c ^= 0x11;
                        var_40 = 0x3bf7b3e8;
                        continue;
                    }
                    else if (var_40 == 0x743f926)
                    {
                        if (var_18 <= 0x1ff)
                            var_3c ^= 0x25;
                        else
                            var_3c ^= 0x22;
                        
                        var_40 = 0x3bf7b3e8;
                        continue;
                    }
                    else if (var_40 == 0x115bde3f)
                    {
                        var_24 = var_30 + var_2c;
                        var_40 = ROLD(var_30, 0xb) ^ var_24;
                        continue;
                    }
                }
            }
            
            rax_23 = -1;
            break;
        }
        
        var_34 += 1;
        var_3c ^= 0x18;
        var_40 = 0x3bf7b3e8;
    }
    
    int64_t rbx;
    rbx = rax_23;
    syscall(SYS_exit, rdi);
    /* no return */
}
