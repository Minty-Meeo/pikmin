# Automatically collect source files
file(GLOB DOLPHINSDK_DVD_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(dvd STATIC
    ${DOLPHINSDK_DVD_SOURCES}
)

# Public include directory for this library
target_include_directories(dvd
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(dvd
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
