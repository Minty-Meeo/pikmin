# Automatically collect source files
file(GLOB DOLPHINSDK_BASE_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(base STATIC
    ${DOLPHINSDK_BASE_SOURCES}
)

target_include_directories(base PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(base
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
