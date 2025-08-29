cmake_minimum_required(VERSION 3.16)
project(Forever-Knights LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add raylib from submodule
add_subdirectory(external/raylib)

# Add your game sources
file(GLOB SRC_FILES src/*.cpp)

add_executable(${PROJECT_NAME} ${SRC_FILES})

# Link against raylib
target_link_libraries(${PROJECT_NAME} raylib)

# Platform-specific dependencies
if (UNIX AND NOT APPLE)
    target_link_libraries(${PROJECT_NAME} pthread m dl GL)
elseif(APPLE)
    target_link_libraries(${PROJECT_NAME}
        "-framework OpenGL"
        "-framework Cocoa"
        "-framework IOKit"
        "-framework CoreVideo")
endif()
