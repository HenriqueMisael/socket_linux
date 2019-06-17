cmake_minimum_required(VERSION 3.10)
project(socket_server C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
set(THREADS_PREFER_PTHREAD_FLAG TRUE)
find_package(Threads REQUIRED)

add_executable(socket_server main.c)
target_link_libraries(socket_server Threads::Threads)
