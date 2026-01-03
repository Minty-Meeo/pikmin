# Automatically collect source files
file(GLOB PLUGPIKI_NAKATA
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiNakata STATIC
    ${PLUGPIKI_NAKATA}
)

# Public include directory for this library
target_include_directories(plugPikiNakata
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiNakata
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
