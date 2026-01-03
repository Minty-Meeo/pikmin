# Automatically collect source files
file(GLOB PLUGPIKI_OGAWA
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiOgawa STATIC
    ${PLUGPIKI_OGAWA}
)

# Public include directory for this library
target_include_directories(plugPikiOgawa
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiOgawa
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
