cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
project("Fornax" VERSION 0.1.0.0)


configure_file(include/Config.h.in Config.h)

add_executable(${PROJECT_NAME} main.cpp FNXEngine.cpp)
add_subdirectory(third_party)
target_link_libraries(Fornax glfw Taskflow)
target_include_directories(Fornax PUBLIC "${PROJECT_BINARY_DIR}" include)
