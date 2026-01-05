# Automatically collect source files
file(GLOB DOLPHINSDK_ODEMUSTUBS_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(odemustubs STATIC
    ${DOLPHINSDK_ODEMUSTUBS_SOURCES}
)

target_include_directories(odemustubs PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(odemustubs PRIVATE
#     $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
