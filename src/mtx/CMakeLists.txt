# Automatically collect source files
file(GLOB DOLPHINSDK_MTX_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(mtx STATIC
    ${DOLPHINSDK_MTX_SOURCES}
)

target_include_directories(mtx PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(mtx
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
