cmake_minimum_required(VERSION 3.15)
project(MonteCarlo C)

set(CMAKE_C_STANDARD 99)


project(Lab1_MonteCarlo)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c main.c)
add_executable(MonteCarlo main.c)

find_package(OpenMP)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
