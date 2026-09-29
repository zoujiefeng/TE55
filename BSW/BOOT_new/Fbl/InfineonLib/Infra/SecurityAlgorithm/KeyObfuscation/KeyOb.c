#include "KeyOb.h"

// ========================= 配置参数 =========================
// 修改以下盐值为你的设备专属值（至少16字节）
static const uint8 SECRET_SALT[16] = {0x8A,0x3F,0xB2,0x5D,0xE1,0x77,0x9C,0x44,0x29,0xCF,0x63,0xFE,0x18,0xA5,0xD0,0x7B};

// 固定密钥长度（根据需求修改）
#define KEY_LENGTH 16

// ======================== 算法核心实现 ========================
// 简单可靠的密钥混淆算法
void confuse_key(const uint8* input, uint8* output) {
    // 使用盐值和固定模式进行混淆
    for (int i = 0; i < KEY_LENGTH; i++) {
        // 基本混淆操作
        uint8 val = input[i];
        val = (val << 4) | (val >> 4);  // 半字节交换
        val ^= SECRET_SALT[i % 16];      // 盐值异或
        val = ~val;                      // 取反
        
        // 添加位置相关变换
        val += i * 17;
        val ^= (i % 8) * 0x1F;
        
        output[i] = val;
    }
}

// 密钥还原
void restore_key(const uint8* input, uint8* output) {
    for (int i = 0; i < KEY_LENGTH; i++) {
        // 逆向位置相关变换
        uint8 val = input[i];
        val ^= (i % 8) * 0x1F;
        val -= i * 17;
        
        // 逆向基本混淆操作
        val = ~val;                      // 逆向取反
        val ^= SECRET_SALT[i % 16];      // 盐值异或（相同操作）
        val = (val << 4) | (val >> 4);   // 半字节交换（相同操作）
        
        output[i] = val;
    }
}


uint8 original_key[KEY_LENGTH] = {0};
uint8 confused[KEY_LENGTH + 4];
uint8 restored[KEY_LENGTH];   

// ====================== 测试用例 ======================
void KeyOb_vidTest(void)
{   
   // 混淆密钥
   confuse_key(original_key, confused);
   
   // 还原密钥
   restore_key(confused, restored);
}
