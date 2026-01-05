# Automatically collect source files
file(GLOB DOLPHINSDK_ODEMUEXI2_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(OdemuExi2 STATIC
    ${DOLPHINSDK_ODEMUEXI2_SOURCES}
)

target_include_directories(OdemuExi2 PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(OdemuExi2
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
