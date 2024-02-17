# Silence timestamp warning
# TODO: what?
if(CMAKE_VERSION VERSION_GREATER 3.24)
  cmake_policy(SET CMP0135 OLD)
endif()

# Create the function to search for external dependencies
function(find_external_dependecy PACKAGE_NAME TARGET_NAME INCLUDED_CMAKE_PATH)
  # Initialize the string to check if we need to use the pre-installed
  string(TOUPPER ${PACKAGE_NAME} PACKAGE_NAME_UP)
  set(USE_FROM_SYSTEM_OPTION "USE_SYSTEM_${PACKAGE_NAME_UP}")

  # If we need to use the pre-installed one, search for it
  if(${${USE_FROM_SYSTEM_OPTION}})
    find_package(${PACKAGE_NAME} QUIET NO_MODULE)
  endif()

  # Otherwise (or if the target name was not setted)
  # include the folder that contain the code (INCLUDED_CMAKE_PATH) to fetch it
  if(NOT ${${USE_FROM_SYSTEM_OPTION}} OR NOT TARGET ${TARGET_NAME})
    # Set also to OFF the option to use the pre-installed
    set(${USE_FROM_SYSTEM_OPTION} OFF PARENT_SCOPE) 
    include(${INCLUDED_CMAKE_PATH})
  endif()

endfunction()

# Include all the dependencies
find_external_dependecy("Eigen3" "Eigen3::Eigen" "${CMAKE_CURRENT_LIST_DIR}/eigen/eigen.cmake")

