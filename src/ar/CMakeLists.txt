# Automatically collect source files
file(GLOB DOLPHINSDK_AR_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(ar STATIC
    ${DOLPHINSDK_AR_SOURCES}
)

target_include_directories(ar PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(ar
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
