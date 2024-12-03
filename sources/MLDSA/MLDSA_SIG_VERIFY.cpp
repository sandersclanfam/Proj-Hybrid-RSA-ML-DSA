#include <iostream>
#include <vector>
#include <fstream>
#include <iterator>
#include <string>
#include <pqc/common.h>
#include <pqc/ml-dsa.h>

int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        std::cerr << "Usage: " << argv[0] << " <file_path> <signature_path> <public_key_path>" << std::endl;
        return -1;
    }

    const uint32_t cipher = PQC_CIPHER_ML_DSA_65;

    std::string file_path = argv[1];
    std::string signature_path = argv[2];
    std::string public_key_path = argv[3];

    // Read the file content
    std::ifstream file(file_path, std::ios::binary);
    if (!file)
    {
        std::cerr << "Failed to open file: " << file_path << std::endl;
        return -1;
    }
    std::vector<uint8_t> file_data((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();

    // Read the signature
    std::ifstream sig_file(signature_path, std::ios::binary);
    if (!sig_file)
    {
        std::cerr << "Failed to open signature file: " << signature_path << std::endl;
        return -1;
    }
    std::vector<uint8_t> sig((std::istreambuf_iterator<char>(sig_file)), std::istreambuf_iterator<char>());
    sig_file.close();

    // Read the public key
    std::ifstream pk_file(public_key_path, std::ios::binary);
    if (!pk_file)
    {
        std::cerr << "Failed to open public key file: " << public_key_path << std::endl;
        return -1;
    }
    std::vector<uint8_t> pk((std::istreambuf_iterator<char>(pk_file)), std::istreambuf_iterator<char>());
    pk_file.close();

    // Init context for verification
    CIPHER_HANDLE context_bob = PQC_context_init_asymmetric(cipher, pk.data(), pk.size(), nullptr, 0);
    if (context_bob == PQC_BAD_CIPHER)
    {
        std::cerr << "Failed to initialize cryptographic context for verification!" << std::endl;
        return -1;
    }

    // Verify the signature
    if (PQC_signature_verify(context_bob, file_data.data(), file_data.size(), sig.data(), sig.size()) == PQC_OK)
    {
        std::cout << "Signature is valid!" << std::endl;
    }
    else
    {
        std::cerr << "Signature verification failed!" << std::endl;
    }

    PQC_context_close(context_bob);

    return 0;
}

