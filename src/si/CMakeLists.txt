# Automatically collect source files
file(GLOB DOLPHINSDK_SI_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(si STATIC
    ${DOLPHINSDK_SI_SOURCES}
)

target_include_directories(si PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(si
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
