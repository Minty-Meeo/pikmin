# Automatically collect source files
file(GLOB PLUGPIKI_NAKATA
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiNakata STATIC
    ${PLUGPIKI_NAKATA}
)

target_include_directories(plugPikiNakata PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiNakata
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
