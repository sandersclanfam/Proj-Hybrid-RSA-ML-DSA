---
layout: default
title: ML-KEM
parent: Key Encapsulation Mechanisms
grand_parent: Post-Quantum Algorithms
nav_order: 2
---

# **ML-KEM Overview**
{: .no_toc }

<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

- **Algorithm Type:** Key Encapsulation Mechanism (KEM)
- **Cryptographic Assumption:** ML-KEM is a based on CRYSTALS-KYBER, a lattice-based key-encapsulation mechanism.
- **Copyright**:  [Public Domain](https://creativecommons.org/public-domain/cc0/)
or [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0.html)
- [**GitHub Source](https://github.com/terra-quantum-public/tq42-pqc-oss/tree/main/src/mlkem)

## FIPS-203 ML-KEM

FIPS 203 is the Module-Lattice-Based Key-Encapsulation Mechanism Standard, developed by the National Institute of Standards and Technology (NIST). It specifies the ML-KEM algorithms, derived from the CRYSTALS-KYBER submission, which are designed for key generation, encapsulation, and decapsulation. These algorithms are part of a broader effort to create cryptographic systems that can resist attacks by quantum computers.

The primary focus of FIPS 203 is to provide secure, quantum-resistant methods for establishing shared secret keys between two parties communicating over a public channel. This is achieved through the use of ML-KEM, which is based on the computational difficulty of the Module Learning with Errors problem. The standard specifies three parameter sets for ML-KEM: ML-KEM-512, ML-KEM-768, and ML-KEM-1024, each offering different levels of security and performance

On August 13, 2024, NIST officially standardized the ML-KEM encryption algorithm.
- [FIPS 203 Initial Public Draft](https://csrc.nist.gov/pubs/fips/203/final)
- [FIPS 203 Publication](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.203.pdf)

## ML-KEM CAVP Validation

The TQ42 Cryptography v0.2.2 implementations of ML-KEM are fully compliant with the latest NIST standard, FIPS 203. The algorithm has undergone validation through the NIST Cryptographic Algorithm Validation Program (CAVP). For additional information, please visit the For further details, please visit the NIST CAVP [webpage](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program/details?product=18351).

The validation process spans multiple operating systems and hardware configurations, including:

- Red Hat 9.4 
- Ubuntu 24.04 
- Windows 11 
- Windows 2022 
- IOS 17.5.1
- Android 14

## ML-KEM advantages over classical KEM
- ML-KEMs are designed to be quantum-secure, meaning they offer protection against potential attacks by quantum computers, which pose significant threats to traditional cryptographic systems  In contrast, classical KEMs such as those based on RSA or ECC are vulnerable to quantum attacks, as quantum algorithms like Shor's algorithm can efficiently break them.
- ML-KEM, particularly the CRYSTALS-Kyber variant, balances performance with security. It supports various parameter sets that provide different levels of security, ranging from ML-KEM-512 with security equivalence to AES-128, to ML-KEM-1024, equivalent to AES-256. This flexibility allows it to cater to different security requirements and resource constraints. Classical KEMs often do not provide such a wide range of parameter sets, limiting their adaptability to different security needs.

### FIPS 203 applications

FIPS 203, which standardizes Module-Lattice-based Key-Encapsulation Mechanisms (ML-KEM), has a variety of applications across multiple domains. Given its quantum-resistant properties, its primary utility is in securing communications and data against potential quantum computing threats. Here are some specific applications of FIPS 203:
-   Integrate ML-KEM into Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols to ensure encrypted communication channels are secure against quantum attacks.    
-   Use ML-KEM to secure connections in Virtual Private Networks (VPNs), ensuring that remote communications are protected.    
-   Secure communication between IoT devices and central hubs using ML-KEM to prevent eavesdropping and unauthorized access.
-   Enhance the security of online transactions and account management by using ML-KEM to protect sensitive financial data.
-   Secure private keys and transactions in cryptocurrency systems to prevent theft and tampering.
-   Use ML-KEM to secure classified communications, ensuring that sensitive governmental and military information remains confidential.


## NIST's Known Answer Tests (KAT)
The TQ42 Cryptography ML-KEM algorithm implementation has successfully passed the Known Answer Tests (KAT) provided by NIST. This confirms that the algorithm performs reliably as anticipated. For those interested in a deeper dive into the specifics of these tests, they are available [for review](https://github.com/terra-quantum-public/tq42-pqc-oss/tree/main/test/mlkem).

## Leveraging ML-KEM and True Entropy
The customization of the ML-KEM algorithm within TQ42 Cryptography is designed to work in synergy with true entropy, sourced from the Single Photon Quantum Random Number Generator (QRNG). This technology ensures that the randomness required for cryptographic keys is of the highest quality, providing unparalleled security for company data. Since the effectiveness of any cryptographic algorithm heavily relies on the randomness of its keys, incorporating QRNG-derived true entropy with TQ42’s customized ML-KEM algorithm ensures that your company’s sensitive information is safeguarded in the most robust manner possible.

## ML-KEM - Parameter set summary

|             | Encapsulation key size | Decapsulation key size | Ciphertext size | Shared secret size | Security category |
|:-----------:|:----------------------:|:----------------------:|:---------------:|:------------------:|:-----------------:|
| ML-KEM-512  | 800 bytes              | 1632 bytes             | 768 bytes       | 32 bytes           | 1                 |
| ML-KEM-768  | 1184 bytes             | 2400 bytes             | 1088 bytes      | 32 bytes           | 3                 |
| ML-KEM-1024 | 1568 bytes             | 3168 bytes             | 1568 bytes      | 32 bytes           | 5                 |

## API overview

To include the necessary library, please refer to the [Getting Started Guide](../../getting_started.html).
After following the guide, include the ``pqc/ml-kem.h`` header in your code. All Key Exchange Mechanism algorithms have a unified API. For ML-KEM, you can set the algorithm to work using one of the constants **PQC_CIPHER_ML_KEM_512**, **PQC_CIPHER_ML_KEM_768**, **PQC_CIPHER_ML_KEM_1024**. To learn about all the available methods for Key Exchange Mechanism APIs, visit the [KEM API Overview page](api.html).


## Example

**Code**

```cpp
{% include examples/key_exchange/example_kem.cpp %}```

