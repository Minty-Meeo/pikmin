# Automatically collect source files
file(GLOB PLUGPIKI_NISHIMURA
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiNishimura STATIC
    ${PLUGPIKI_NISHIMURA}
)

target_include_directories(plugPikiNishimura PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiNishimura
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
