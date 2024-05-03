# Create the library of this folder
add_library(core STATIC)
add_library(my_project::core ALIAS core)

# Add all the sources to the library
target_sources(core PRIVATE 
  MyFunctions.cpp)

# Link the dependencies
target_link_libraries(core PUBLIC Eigen3::Eigen)

# Set the global target properties to this library
# See the file ../cmake/CompilerOptions.cmake
set_global_target_properties(core)
