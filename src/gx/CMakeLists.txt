# Automatically collect source files
file(GLOB DOLPHINSDK_GX_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(gx STATIC
    ${DOLPHINSDK_GX_SOURCES}
)

target_link_libraries(gx PRIVATE
    base
)

target_include_directories(gx PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(gx
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
