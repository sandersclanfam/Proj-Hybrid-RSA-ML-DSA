#include <iostream>
#include <vector>
#include <fstream>
#include <iterator>
#include <string>
#include <pqc/common.h>
#include <pqc/ml-dsa.h>

int main(int argc, char *argv[])
{
    if (argc != 3)
    {
        std::cerr << "Usage: " << argv[0] << " <file_path> <private_key_path>" << std::endl;
        return -1;
    }

    std::string file_path = argv[1];
    std::string private_key_path = argv[2];

    const uint32_t cipher = PQC_CIPHER_ML_DSA_65;
    const size_t sig_len = PQC_cipher_get_length(cipher, PQC_LENGTH_SIGNATURE);

    // Buffer for signature
    std::vector<uint8_t> sig(sig_len);

    // Read the input file
    std::ifstream file(file_path, std::ios::binary);
    if (!file)
    {
        std::cerr << "Failed to open file: " << file_path << std::endl;
        return -1;
    }
    std::vector<uint8_t> file_data((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();

    // Read the private key
    std::ifstream sk_file(private_key_path, std::ios::binary);
    if (!sk_file)
    {
        std::cerr << "Failed to open private key file: " << private_key_path << std::endl;
        return -1;
    }
    std::vector<uint8_t> private_key((std::istreambuf_iterator<char>(sk_file)), std::istreambuf_iterator<char>());
    sk_file.close();

    // Initialize the cryptographic context with the private key
    CIPHER_HANDLE context = PQC_context_init_asymmetric(cipher, nullptr, 0, private_key.data(), private_key.size());
    if (context == PQC_BAD_CIPHER)
    {
        std::cerr << "Failed to initialize cryptographic context for signing!" << std::endl;
        return -1;
    }

    // Generate the signature
    if (PQC_signature_create(context, file_data.data(), file_data.size(), sig.data(), sig.size()) != PQC_OK)
    {
        std::cerr << "Failed to sign the file!" << std::endl;
        PQC_context_close(context);
        return -1;
    }

    // Save the signature to a file
    std::ofstream sig_file("signature.sig", std::ios::binary);
    if (!sig_file)
    {
        std::cerr << "Failed to save signature to file!" << std::endl;
        PQC_context_close(context);
        return -1;
    }
    sig_file.write(reinterpret_cast<const char *>(sig.data()), sig.size());
    sig_file.close();

    // Close the cryptographic context
    PQC_context_close(context);

    std::cout << "Signature saved to 'signature.sig'." << std::endl;

    return 0;
}

