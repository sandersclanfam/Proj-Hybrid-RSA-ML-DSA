if(EXISTS "/home/neon/Music/tq42-pqc-oss/build/test/LibPQTest[1]_tests.cmake")
  include("/home/neon/Music/tq42-pqc-oss/build/test/LibPQTest[1]_tests.cmake")
else()
  add_test(LibPQTest_NOT_BUILT LibPQTest_NOT_BUILT)
endif()
