#include <openssl/rsa.h>
#include <openssl/pem.h>
#include <openssl/err.h>
#include <openssl/sha.h>
#include <fstream>
#include <iostream>
#include <vector>

void sign_file(const std::string& file_path, const std::string& private_key_path, const std::string& signature_path) {
    // Load the private key
    FILE* private_key_file = fopen(private_key_path.c_str(), "r");
    if (!private_key_file) {
        throw std::runtime_error("Cannot open private key file.");
    }
    RSA* private_key = PEM_read_RSAPrivateKey(private_key_file, nullptr, nullptr, nullptr);
    fclose(private_key_file);

    if (!private_key) {
        throw std::runtime_error("Failed to read private key.");
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

    // Sign the hash
    std::vector<unsigned char> signature(RSA_size(private_key));
    unsigned int signature_len;
    if (!RSA_sign(NID_sha256, hash, SHA256_DIGEST_LENGTH, signature.data(), &signature_len, private_key)) {
        RSA_free(private_key);
        throw std::runtime_error("Failed to sign the file.");
    }

    RSA_free(private_key);

    // Write the signature to a file
    std::ofstream sig_out(signature_path, std::ios::binary);
    if (!sig_out) {
        throw std::runtime_error("Cannot write to signature file.");
    }
    sig_out.write(reinterpret_cast<const char*>(signature.data()), signature_len);
    sig_out.close();

    std::cout << "Signature created and saved to " << signature_path << std::endl;
}

int main() {
    try {
        std::string input_file = "nmap.deb";
        std::string private_key_file = "private_key.pem";
        std::string signature_file = "signature.bin";

        sign_file(input_file, private_key_file, signature_file);
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
