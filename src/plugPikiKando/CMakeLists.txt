# Automatically collect source files
file(GLOB PLUGPIKI_KANDO
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiKando STATIC
    ${PLUGPIKI_KANDO}
)

target_link_libraries(plugPikiKando PRIVATE
    plugPikiColin
    hio
)

target_include_directories(plugPikiKando PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiKando
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
