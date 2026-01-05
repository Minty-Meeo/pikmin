# Automatically collect source files
file(GLOB PLUGPIKI_KANDO
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiKando STATIC
    ${PLUGPIKI_KANDO}
)

# Public include directory for this library
target_include_directories(plugPikiKando
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiKando
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
