# Automatically collect source files
file(GLOB DOLPHINSDK_AMCSTUBS_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(amcstubs STATIC
    ${DOLPHINSDK_AMCSTUBS_SOURCES}
)

target_include_directories(amcstubs PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(amcstubs PRIVATE
#     $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
