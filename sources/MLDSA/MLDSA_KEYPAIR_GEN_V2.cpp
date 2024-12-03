#include <iostream>
#include <vector>
#include <fstream>
#include <pqc/common.h>
#include <pqc/ml-dsa.h>

int main()
{
    // Cipher constants
    const uint32_t cipher = PQC_CIPHER_ML_DSA_65;
    const size_t pk_len = PQC_cipher_get_length(cipher, PQC_LENGTH_PUBLIC);
    const size_t sk_len = PQC_cipher_get_length(cipher, PQC_LENGTH_PRIVATE);

    // Buffers for the keys
    std::vector<uint8_t> pk(pk_len); // Public key
    std::vector<uint8_t> sk(sk_len); // Private key

    // Initialize the cryptographic context
    CIPHER_HANDLE context = PQC_context_init_asymmetric(cipher, nullptr, 0, nullptr, 0);
    if (context == PQC_BAD_CIPHER)
    {
        std::cerr << "Failed to initialize cryptographic context for key generation!" << std::endl;
        return -1;
    }

    // Generate a key pair
    if (PQC_context_keypair_generate(context) != PQC_OK)
    {
        std::cerr << "Key generation failed!" << std::endl;
        PQC_context_close(context);
        return -1;
    }

    // Extract public and private keys
    if (PQC_context_get_keypair(context, pk.data(), pk.size(), sk.data(), sk.size()) != PQC_OK)
    {
        std::cerr << "Failed to extract key pair!" << std::endl;
        PQC_context_close(context);
        return -1;
    }

    // Save the public key to a file
    std::ofstream pk_file("public_key.pk", std::ios::binary);
    if (!pk_file)
    {
        std::cerr << "Failed to save public key to file!" << std::endl;
        PQC_context_close(context);
        return -1;
    }
    pk_file.write(reinterpret_cast<const char *>(pk.data()), pk.size());
    pk_file.close();

    // Save the private key to a file
    std::ofstream sk_file("private_key.sk", std::ios::binary);
    if (!sk_file)
    {
        std::cerr << "Failed to save private key to file!" << std::endl;
        PQC_context_close(context);
        return -1;
    }
    sk_file.write(reinterpret_cast<const char *>(sk.data()), sk.size());
    sk_file.close();

    // Close the cryptographic context
    PQC_context_close(context);

    // Inform the user of successful key generation
    std::cout << "Public key saved to 'public_key.pk'." << std::endl;
    std::cout << "Private key saved to 'private_key.sk'." << std::endl;

    return 0;
}

