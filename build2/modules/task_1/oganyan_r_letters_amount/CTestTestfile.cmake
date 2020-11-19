# CMake generated Testfile for 
# Source directory: C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount
# Build directory: C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/build2/modules/task_1/oganyan_r_letters_amount
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(oganyan_r_letters_amount_mpi "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/build2/bin/oganyan_r_letters_amount_mpi.exe")
  set_tests_properties(oganyan_r_letters_amount_mpi PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;33;add_test;C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(oganyan_r_letters_amount_mpi "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/build2/bin/oganyan_r_letters_amount_mpi.exe")
  set_tests_properties(oganyan_r_letters_amount_mpi PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;33;add_test;C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(oganyan_r_letters_amount_mpi "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/build2/bin/MinSizeRel/oganyan_r_letters_amount_mpi.exe")
  set_tests_properties(oganyan_r_letters_amount_mpi PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;33;add_test;C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(oganyan_r_letters_amount_mpi "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/build2/bin/RelWithDebInfo/oganyan_r_letters_amount_mpi.exe")
  set_tests_properties(oganyan_r_letters_amount_mpi PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;33;add_test;C:/Users/OgRob/Desktop/paral/pp_2020_autumn_engineer/modules/task_1/oganyan_r_letters_amount/CMakeLists.txt;0;")
else()
  add_test(oganyan_r_letters_amount_mpi NOT_AVAILABLE)
endif()
