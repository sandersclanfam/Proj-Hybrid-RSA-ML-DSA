# CMake generated Testfile for 
# Source directory: /home/neon/Music/tq42-pqc-oss/python
# Build directory: /home/neon/Music/tq42-pqc-oss/build/python
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(PYTHON.test_aes_cbc.py::test_aes_cbc "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_aes_cbc.py::test_aes_cbc")
set_tests_properties(PYTHON.test_aes_cbc.py::test_aes_cbc PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_aes_ctr.py::test_aes_ctr "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_aes_ctr.py::test_aes_ctr")
set_tests_properties(PYTHON.test_aes_ctr.py::test_aes_ctr PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_aes_ecb.py::test_aes_ecb "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_aes_ecb.py::test_aes_ecb")
set_tests_properties(PYTHON.test_aes_ecb.py::test_aes_ecb PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_aes_gcm.py::test_aes_gcm "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_aes_gcm.py::test_aes_gcm")
set_tests_properties(PYTHON.test_aes_gcm.py::test_aes_gcm PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_aes_ofb.py::test_aes_ofb "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_aes_ofb.py::test_aes_ofb")
set_tests_properties(PYTHON.test_aes_ofb.py::test_aes_ofb PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_asymmetric_container.py::test_asymmetric_container "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_asymmetric_container.py::test_asymmetric_container")
set_tests_properties(PYTHON.test_asymmetric_container.py::test_asymmetric_container PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_asymmetric_container.py::test_asymmetric_container_from_string "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_asymmetric_container.py::test_asymmetric_container_from_string")
set_tests_properties(PYTHON.test_asymmetric_container.py::test_asymmetric_container_from_string PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_asymmetric_container.py::test_asymmetric_container_file_io "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_asymmetric_container.py::test_asymmetric_container_file_io")
set_tests_properties(PYTHON.test_asymmetric_container.py::test_asymmetric_container_file_io PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_asymmetric_container.py::test_asymmetric_container_file_delete "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_asymmetric_container.py::test_asymmetric_container_file_delete")
set_tests_properties(PYTHON.test_asymmetric_container.py::test_asymmetric_container_file_delete PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_container.py::test_symmetric_container "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_container.py::test_symmetric_container")
set_tests_properties(PYTHON.test_container.py::test_symmetric_container PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_container.py::test_symmetric_container_from_string "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_container.py::test_symmetric_container_from_string")
set_tests_properties(PYTHON.test_container.py::test_symmetric_container_from_string PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_container.py::test_symmetric_container_file_io "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_container.py::test_symmetric_container_file_io")
set_tests_properties(PYTHON.test_container.py::test_symmetric_container_file_io PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_container.py::test_symmetric_container_file_delete "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_container.py::test_symmetric_container_file_delete")
set_tests_properties(PYTHON.test_container.py::test_symmetric_container_file_delete PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_kem_mceliece.py::test_kem_mceliece "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_kem_mceliece.py::test_kem_mceliece")
set_tests_properties(PYTHON.test_kem_mceliece.py::test_kem_mceliece PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_ml_kem.py::test_ml_kem "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_ml_kem.py::test_ml_kem")
set_tests_properties(PYTHON.test_ml_kem.py::test_ml_kem PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_pbkdf2.py::test_pbkdf2_derived_key_correctness "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_pbkdf2.py::test_pbkdf2_derived_key_correctness")
set_tests_properties(PYTHON.test_pbkdf2.py::test_pbkdf2_derived_key_correctness PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3.py::test_sha3[sha3_data0] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3.py::test_sha3[sha3_data0]")
set_tests_properties(PYTHON.test_sha3.py::test_sha3[sha3_data0] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3.py::test_sha3[sha3_data1] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3.py::test_sha3[sha3_data1]")
set_tests_properties(PYTHON.test_sha3.py::test_sha3[sha3_data1] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3.py::test_sha3[sha3_data2] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3.py::test_sha3[sha3_data2]")
set_tests_properties(PYTHON.test_sha3.py::test_sha3[sha3_data2] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3.py::test_sha3[sha3_data3] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3.py::test_sha3[sha3_data3]")
set_tests_properties(PYTHON.test_sha3.py::test_sha3[sha3_data3] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3_shake.py::test_sha3_shake_partial[shake_data0] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3_shake.py::test_sha3_shake_partial[shake_data0]")
set_tests_properties(PYTHON.test_sha3_shake.py::test_sha3_shake_partial[shake_data0] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3_shake.py::test_sha3_shake_partial[shake_data1] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3_shake.py::test_sha3_shake_partial[shake_data1]")
set_tests_properties(PYTHON.test_sha3_shake.py::test_sha3_shake_partial[shake_data1] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3_shake.py::test_sha3_shake[shake_data0] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3_shake.py::test_sha3_shake[shake_data0]")
set_tests_properties(PYTHON.test_sha3_shake.py::test_sha3_shake[shake_data0] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sha3_shake.py::test_sha3_shake[shake_data1] "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sha3_shake.py::test_sha3_shake[shake_data1]")
set_tests_properties(PYTHON.test_sha3_shake.py::test_sha3_shake[shake_data1] PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sign_falcon.py::test_sign_falcon "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sign_falcon.py::test_sign_falcon")
set_tests_properties(PYTHON.test_sign_falcon.py::test_sign_falcon PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sign_ml_dsa.py::test_sign_ml_dsa "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sign_ml_dsa.py::test_sign_ml_dsa")
set_tests_properties(PYTHON.test_sign_ml_dsa.py::test_sign_ml_dsa PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.test_sign_slh_dsa.py::test_sign_slh_dsa "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "-m" "pytest" "/home/neon/Music/tq42-pqc-oss/build/python/test/test_sign_slh_dsa.py::test_sign_slh_dsa")
set_tests_properties(PYTHON.test_sign_slh_dsa.py::test_sign_slh_dsa PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;39;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
add_test(PYTHON.SETUP "/home/neon/Downloads/tq42-pqc-oss-0.3.0/venv1/bin/python3" "setup.py" "build")
set_tests_properties(PYTHON.SETUP PROPERTIES  ENVIRONMENT "PYTHONPATH=/home/neon/Music/tq42-pqc-oss/build/python;ASAN_OPTIONS=verify_asan_link_order=0" WORKING_DIRECTORY "/home/neon/Music/tq42-pqc-oss/build/python" _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;43;add_test;/home/neon/Music/tq42-pqc-oss/python/CMakeLists.txt;0;")
