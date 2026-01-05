# Automatically collect source files
file(GLOB DOLPHINSDK_VI_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(vi STATIC
    ${DOLPHINSDK_VI_SOURCES}
)

target_include_directories(vi PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(vi
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
