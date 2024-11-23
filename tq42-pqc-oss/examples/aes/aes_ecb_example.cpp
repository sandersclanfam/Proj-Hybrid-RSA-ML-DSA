#include <cstring>
#include <iostream>

#include <pqc/aes.h>

// parties can obtain a common key through asymmetric key exchange

// ECB

// ECB encryption doesn't need an IV. It takes a fixed-length key and
// fixed-length plaintext. The length of the open text must be PQC_AES_BLOCKLEN

// Decryption works in the same way

// Party A encrypts its plaintext using a key. Then data, ints length and key must be
// transmitted to party B

void ecb_encrypt(uint8_t key[], uint8_t data[], const int data_len)
{
    CIPHER_HANDLE context = PQC_context_init(PQC_CIPHER_AES, key, PQC_AES_KEYLEN);
    PQC_symmetric_encrypt(context, PQC_AES_M_ECB, data, data_len);
    PQC_context_close(context);
}

// Party B decrypts the ciphertext using the same key.
void ecb_decrypt(uint8_t key[], uint8_t data[], const int data_len)
{
    CIPHER_HANDLE context = PQC_context_init(PQC_CIPHER_AES, key, PQC_AES_KEYLEN);
    PQC_symmetric_decrypt(context, PQC_AES_M_ECB, data, data_len);
    PQC_context_close(context);
}

int main()
{
    // ECB
    uint8_t key[PQC_AES_KEYLEN] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'A', 'B', 'C', 'D', 'E', 'F',
                                   'G', 'H', 'I', 'J', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'K', 'L'};

    const int data_len = PQC_AES_BLOCKLEN;
    uint8_t data_a[data_len] = {89, 234, 87, 91, 40, 83, 179, 255, 80, 66, 19, 45, 89, 0, 64, 123};
    uint8_t data_original[data_len] = {0};
    uint8_t data_b[data_len] = {0};

    memcpy(data_original, data_a, sizeof(data_a)); // Copy of original data for verification.

    ecb_encrypt(key, data_a, data_len); // This happens at party A

    memcpy(data_b, data_a, data_len); // Emulate transfer of encrypted message to party B

    ecb_decrypt(key, data_b, data_len); // This happens at party B

    if (memcmp(data_b, data_original, data_len) == 0) // Verification
    {
        std::cout << "Verification successful." << std::endl;
    }
    else
    {
        std::cout << "Verification failed." << std::endl;
    }

    return 0;
}
