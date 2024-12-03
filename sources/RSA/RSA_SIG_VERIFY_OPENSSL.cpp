#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>
#include <openssl/sha.h>
#include <fstream>
#include <iostream>
#include <vector>

void verify_signature(const std::string& file_path, const std::string& public_key_path, const std::string& signature_path) {
    // Load the public key
    FILE* public_key_file = fopen(public_key_path.c_str(), "r");
    if (!public_key_file) {
        throw std::runtime_error("Cannot open public key file.");
    }
    RSA* public_key = PEM_read_RSA_PUBKEY(public_key_file, nullptr, nullptr, nullptr);
    fclose(public_key_file);

    if (!public_key) {
        throw std::runtime_error("Failed to read public key.");
    }

    // Read the input file
    std::ifstream input(file_path, std::ios::binary);
    if (!input) {
        throw std::runtime_error("Cannot open input file.");
    }
    std::vector<unsigned char> file_data((std::istreambuf_iterator<char>(input)), std::istreambuf_iterator<char>());
    input.close();

    // Compute the SHA-256 hash of the file
    unsigned char hash[SHA256_DIGEST_LENGTH];
    SHA256(file_data.data(), file_data.size(), hash);

    // Read the signature
    std::ifstream sig_in(signature_path, std::ios::binary);
    if (!sig_in) {
        throw std::runtime_error("Cannot open signature file.");
    }
    std::vector<unsigned char> signature((std::istreambuf_iterator<char>(sig_in)), std::istreambuf_iterator<char>());
    sig_in.close();

    // Verify the signature
    int result = RSA_verify(NID_sha256, hash, SHA256_DIGEST_LENGTH, signature.data(), signature.size(), public_key);
    RSA_free(public_key);

    if (result == 1) {
        std::cout << "Signature is valid." << std::endl;
    } else {
        std::cerr << "Signature is invalid: " << ERR_error_string(ERR_get_error(), nullptr) << std::endl;
    }
}

int main() {
    try {
        std::string input_file = "nmap.deb";
        std::string public_key_file = "public_key.pem";
        std::string signature_file = "signature.bin";

        verify_signature(input_file, public_key_file, signature_file);
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
