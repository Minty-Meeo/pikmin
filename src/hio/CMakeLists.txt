# Automatically collect source files
file(GLOB DOLPHINSDK_HIO_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(hio STATIC
    ${DOLPHINSDK_HIO_SOURCES}
)

target_include_directories(hio PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(hio
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
