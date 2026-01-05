# Automatically collect source files
file(GLOB DOLPHINSDK_AMCEXI2_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(amcExi2 STATIC
    ${DOLPHINSDK_AMCEXI2_SOURCES}
)

target_include_directories(amcExi2 PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(amcExi2
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
