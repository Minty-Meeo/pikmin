# Automatically collect source files
file(GLOB DOLPHINSDK_AI_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(ai STATIC
    ${DOLPHINSDK_AI_SOURCES}
)

# Public include directory for this library
target_include_directories(ai
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(ai
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
