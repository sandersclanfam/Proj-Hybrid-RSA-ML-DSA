# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.30
cmake_policy(SET CMP0009 NEW)

# sources at src/CMakeLists.txt:1 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/neon/Music/tq42-pqc-oss/src/*.cpp")
set(OLD_GLOB
  "/home/neon/Music/tq42-pqc-oss/src/aes.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/algorithms.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/asymmetric_container.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/container.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/dilithium.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/fips202.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/ntt.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/packing.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/poly.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/polyvec.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/reduce.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/rounding.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/dilithium/symmetric-shake.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/codec.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/common.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/falcon.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/falcon_main.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/fft.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/fpr.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/keygen.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/sign.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/falcon/vrfy.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/benes.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/controlbits.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/crypto_hash.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/decrypt.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/encrypt.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/mceliece.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/pk_gen.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/sk_gen.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/sort.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mceliece/special_utils.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/fips202.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/ml-dsa_44.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/ml-dsa_65.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/ml-dsa_87.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/ntt.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/packingml.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/poly.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/polyvec.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/reduce.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/rounding.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mldsa/symmetric-shake.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/cbd.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/fips202.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/indcpa.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/kyber.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/ml-kem.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/ntt.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/poly.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/polyvec.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/reduce.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/symmetric-shake.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/mlkem/verify.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/pbkdf2/pbkdf2.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/pq.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/pq17.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/rng/external_random_generator.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/secure_delete.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/sha3.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/converter.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/fors.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/hypertree.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/slh-dsa.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/wots.cpp"
  "/home/neon/Music/tq42-pqc-oss/src/slhdsa/xmss.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/neon/Music/tq42-pqc-oss/build/CMakeFiles/cmake.verify_globs")
endif()

# sources at test/CMakeLists.txt:5 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/neon/Music/tq42-pqc-oss/test/*.cpp")
set(OLD_GLOB
  "/home/neon/Music/tq42-pqc-oss/test/aes_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/asymmetric_algorithms_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/asymmetric_container_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/buffer_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/container_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/dilithium_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/external_rng_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/falcon_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/file_delete_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/interface_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/kdf_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/kem_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/kyber_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/main.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/mceliece_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/mldsa_test_44.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/mldsa_test_65.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/mldsa_test_87.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/mlkem_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/pbkdf2_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/rsp_parser.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/rsp_parser_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/sha3/sha3_helper.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/sha3_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/signing_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/size_test.cpp"
  "/home/neon/Music/tq42-pqc-oss/test/slhdsa_test.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/neon/Music/tq42-pqc-oss/build/CMakeFiles/cmake.verify_globs")
endif()
