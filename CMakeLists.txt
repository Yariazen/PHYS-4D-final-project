cmake_minimum_required(VERSION 3.10)
project(MyOpenGLProject)

# Include stb_image.h header file
include_directories(/usr/include/stb)

# Add source files to the project
set(SOURCE_FILES
    main.cpp
    shader.cpp
    src/glad.c
)

# Add header files to the project
set(HEADER_FILES
    shader.hpp
)

# Create executable
add_executable(MyOpenGLProject ${SOURCE_FILES} ${HEADER_FILES})

# Set C++ standard to C++17
set(CMAKE_CXX_STANDARD 17)

# Find and link against the necessary OpenGL libraries
find_package(OpenGL REQUIRED)
if (OPENGL_FOUND)
    target_include_directories(MyOpenGLProject PUBLIC ${OPENGL_INCLUDE_DIR})
    target_link_libraries(MyOpenGLProject ${OPENGL_LIBRARIES})
endif()

# Find and link against the GLFW library
find_package(glfw3 3.3 REQUIRED)
if (glfw3_FOUND)
    target_include_directories(MyOpenGLProject PUBLIC ${GLFW_INCLUDE_DIRS})
    target_link_libraries(MyOpenGLProject glfw OpenGL::GL ${CMAKE_DL_LIBS})
endif()

# Find and link against the GLM library
find_package(glm REQUIRED)
if (glm_FOUND)
    target_include_directories(MyOpenGLProject PUBLIC ${GLM_INCLUDE_DIRS})
    target_link_libraries(MyOpenGLProject ${GLM_LIBRARIES})
endif()

# Add Glad files to the project
add_library(glad src/glad.c)
include_directories(include)
target_include_directories(glad PUBLIC glad)

# Set working directory to the project directory
set_target_properties(MyOpenGLProject PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}")

