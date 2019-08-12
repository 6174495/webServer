cmake_minimum_required(VERSION 3.14)
project(pthread)

set(CMAKE_CXX_STANDARD 11)

add_executable(pthread main.cpp threadPool.h)