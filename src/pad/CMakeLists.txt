# Automatically collect source files
file(GLOB DOLPHINSDK_PAD_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(pad STATIC
    ${DOLPHINSDK_PAD_SOURCES}
)

target_include_directories(pad PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(pad
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
