## ProjectDefaults.cmake
# Minimal project defaults intended to be included from the top-level CMakeLists.txt or used by IDEs

if(NOT DEFINED CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard" FORCE)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

if(MSVC)
  # Reasonable warning level for MSVC; avoid /W4 for generated or third-party code
  add_compile_options(/W4 /permissive-)
  # Enable multi-processor compilation for MSVC via compiler flag not needed when using Visual Studio generator
else()
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Default install prefix if not set by presets or user
if(NOT CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/_Build/windows/install" CACHE PATH "Default install prefix" FORCE)
endif()
