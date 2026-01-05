# Automatically collect source files
file(GLOB DOLPHINSDK_EXI_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(exi STATIC
    ${DOLPHINSDK_EXI_SOURCES}
)

target_include_directories(exi PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(exi
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
