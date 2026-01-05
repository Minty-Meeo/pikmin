# Automatically collect source files
file(GLOB PLUGPIKI_YAMASHITA
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiYamashita STATIC
    ${PLUGPIKI_YAMASHITA}
)

target_include_directories(plugPikiYamashita PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiYamashita
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
