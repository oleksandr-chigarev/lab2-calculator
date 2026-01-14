cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)
set(CMAKE_CXX_STANDARD 11)

add_library(calc_lib STATIC calculator.cpp calculator.h)
add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app PRIVATE calc_lib)
