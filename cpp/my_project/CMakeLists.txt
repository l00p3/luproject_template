cmake_minimum_required(VERSION 3.22)
project(project_name_cpp VERSION 0.1.0 LANGUAGES CXX)

# Setup build options
option(USE_SYSTEM_EIGEN3 "Use system pre-installed Eigen" ON)

# TODO: ccache setup?

# Set build type (repeat here for C++ only consumers)
# TODO: what does it mean? Maybe we have something also in python
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Find dependencies
include(3rdparty/find_dependencies.cmake)

# Initialize the function for targets compiler options
include(cmake/CompilerOptions.cmake)

# Add all the libraries
add_subdirectory(core)
