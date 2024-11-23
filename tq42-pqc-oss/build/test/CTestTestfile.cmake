# CMake generated Testfile for 
# Source directory: /home/neon/Music/tq42-pqc-oss/test
# Build directory: /home/neon/Music/tq42-pqc-oss/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/neon/Music/tq42-pqc-oss/build/test/LibPQTest[1]_include.cmake")
include("/home/neon/Music/tq42-pqc-oss/build/test/LibPQTest_shared[1]_include.cmake")
add_test(AES.C.STATIC "LibPQTest_C")
set_tests_properties(AES.C.STATIC PROPERTIES  _BACKTRACE_TRIPLES "/home/neon/Music/tq42-pqc-oss/test/CMakeLists.txt;33;add_test;/home/neon/Music/tq42-pqc-oss/test/CMakeLists.txt;0;")
subdirs("../_deps/googletest-build")
