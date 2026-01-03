cmake_minimum_required(VERSION 3.20)

project(MyProject
    VERSION 1.0
    LANGUAGES C CXX
)

# Enforce out-of-source builds
if (CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
    message(FATAL_ERROR
        "In-source builds are not allowed. "
        "Please create a separate build directory (e.g. build/)."
    )
endif()

# Set language standards
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Default output directories (best practice)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_STATIC_LIBRARY_PREFIX "")

add_compile_options(-Wno-multichar)
add_compile_options(-Wno-write-strings)
add_compile_options(-Wno-return-type)
add_compile_options($<$<COMPILE_LANGUAGE:C>:-Wno-pointer-to-int-cast>)
add_compile_options($<$<COMPILE_LANGUAGE:C>:-Wno-int-to-pointer-cast>)
add_compile_options($<$<COMPILE_LANGUAGE:C>:-Wno-incompatible-pointer-types>)
add_compile_options($<$<COMPILE_LANGUAGE:CXX>:-Wno-register>)
add_compile_options(-fpermissive)
add_compile_options(-funsigned-char)


# Add source tree
add_subdirectory(src)
