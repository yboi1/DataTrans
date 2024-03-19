#include <openssl/sha.h>
#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/aes.h>

#include <iostream>
#include <string.h>
using namespace std;

void testSha0x16(){
    SHA_CTX ctx;
    SHA1_Init(&ctx);
    SHA1_Update(&ctx, "hello", strlen("hello"));
    SHA1_Update(&ctx, ", world", strlen(", world"));

    char* md = new char[SHA_DIGEST_LENGTH];
    cout << "sha1:" << md << endl;
}

void testSha01(){
    SHA_CTX ctx;
    SHA1_Init(&ctx);
    SHA1_Update(&ctx, "hello", strlen("hello"));
    SHA1_Update(&ctx, ", world", strlen(", world"));

    unsigned char* md = new unsigned char[SHA_DIGEST_LENGTH];
    SHA1_Final(md, &ctx);
    char* res = new char[SHA_DIGEST_LENGTH * 2 + 1];
    for(int i = 0 ; i < SHA_DIGEST_LENGTH; ++i){
        sprintf(&res[i*2], "%02x", md[i]);
    }
    cout << "sha1:" << res << endl;
}


void GenerateRsaKey(){
    RSA* rsa = RSA_new();
    BIGNUM* bn = BN_new();
    BN_set_word(bn, 12345);
    // 生成秘钥对
    RSA_generate_key_ex(rsa, 1024, bn, NULL);

    // 将秘钥对转化为base64 格式
    FILE* fp = fopen("../rsa/PublicKey.pem", "w");
    PEM_write_RSAPublicKey(fp, rsa);
    fclose(fp);

    fp = fopen("../rsa/PrivateKey.pem", "w");
    PEM_write_RSAPrivateKey(fp, rsa, NULL, NULL, 0, NULL, NULL);
    fclose(fp);
}

void BioGenerateKey(){
    RSA* rsa = RSA_new();
    BIGNUM* bn = BN_new();
    BN_set_word(bn, 12345);
    // 生成秘钥对
    RSA_generate_key_ex(rsa, 1024, bn, NULL);

    BIO* b = BIO_new_file("../rsa/PubKey-Bio.pem", "w");
    PEM_write_bio_RSAPublicKey(b, rsa);
    BIO_free(b);

    b = BIO_new_file("../rsa/PriKey-Bio.pem", "w");
    PEM_write_bio_RSAPrivateKey(b, rsa, NULL, NULL, 0, NULL, NULL);
    BIO_free(b);
}

string EncryptPublickey(){
    string from = "Code is EveryThing!";
    RSA *rsa = RSA_new();
    // 创建BIO对象
    BIO* bp = BIO_new_file("../rsa/PubKey-Bio.pem", "r");
    // 读取公钥 并存储到rsa对象中
    PEM_read_bio_RSAPublicKey(bp, &rsa, NULL, NULL);
    BIO_free(bp);

    int rsa_len = RSA_size(rsa);
    char* to = new char[rsa_len];

    // 公钥加密
    int len =  RSA_public_encrypt(from.size(), (const unsigned char *)from.data(), 
                        (unsigned char *)to, rsa, RSA_PKCS1_PADDING);

    cout << "加密后的数据为: " << to << endl; 
    cout << "长度为: " << len << endl;
    return  string(to, len);                  
}

void DecryptPrivateKey(string from){
    BIO* bp = BIO_new_file("../rsa/PriKey-Bio.pem", "r");
    RSA* rsa = RSA_new();
    PEM_read_bio_RSAPrivateKey(bp, &rsa, NULL, NULL);

    int rsa_len = RSA_size(rsa);
    char* to = new char[rsa_len];
    RSA_private_decrypt(rsa_len, (const unsigned char*)from.data(), 
                        (unsigned char*)to, rsa, RSA_PKCS1_PADDING);
    cout << "解密后的数据为: " << to << endl;

}

void RsaSignAndVerifi(){
    string data = "学学学!!!";
    // 得到公钥和私钥 存入rsa
    RSA* pbRsa = RSA_new();
    BIO* pbBp = BIO_new_file("../rsa/PubKey-Bio.pem", "r");
    PEM_read_bio_RSAPublicKey(pbBp, &pbRsa, NULL, NULL);

    RSA* prRsa = RSA_new();
    BIO* prBp = BIO_new_file("../rsa/PriKey-Bio.pem", "r");
    PEM_read_bio_RSAPrivateKey(prBp, &prRsa, NULL, NULL);

    // 签名
    // 传出的数组: 密文
    int str_len = RSA_size(prRsa);
    char *buf = new char[str_len];  //  存储密文
    unsigned int lenRet = 0;
    RSA_sign(NID_sha1, (unsigned char *)data.data(), data.size(), 
    (unsigned char *)buf, &lenRet, prRsa);

    // 检验签名
    int ret = RSA_verify(NID_sha1, (unsigned char *)data.data(), data.size(), 
                (unsigned char*)buf, lenRet, pbRsa);
    if(ret){
        cout << "校验数据正确..." << endl;
    }
    else{
        cout << "something error!" << endl;
    }
}

void AesCbcCrypt(){
    const char* text = "春风离别意.";
    const char* key = "1234534212341234";

    AES_KEY Akey;
    AES_set_encrypt_key((unsigned char *)key, 128, &Akey);
    int length = 0;
    int len = strlen(text);
    if(len%16 != 0){
        length = ((len/16)+1)*16;
    }
    else{
        length = len;
    }

    unsigned char *out = new unsigned char[len];
    unsigned char ivec[AES_BLOCK_SIZE];
    memset(ivec, 9, sizeof(ivec));

    AES_cbc_encrypt((const unsigned char*)text, out, length, &Akey, ivec, AES_ENCRYPT);

    // 5. 解密
	unsigned char* data = new unsigned char[length];
	AES_KEY deckey;
	memset(ivec, 9, sizeof(ivec));
	AES_set_decrypt_key((const unsigned char*)key, 128, &deckey);
	AES_cbc_encrypt(out, data, length, &deckey, ivec, AES_DECRYPT);
	// 6. 打印
	cout << "还原的数据: " << data << endl;

	delete[]out;
	delete[]data;
}

int main(){
    // testSha01();
    // GenerateRsaKey();
    // BioGenerateKey();
    // string from = EncryptPublickey();
    // DecryptPrivateKey(from);
    // RsaSignAndVerifi();
    AesCbcCrypt();

    return 0;
}