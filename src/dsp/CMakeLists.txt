# Automatically collect source files
file(GLOB DOLPHINSDK_DSP_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(dsp STATIC
    ${DOLPHINSDK_DSP_SOURCES}
)

# Public include directory for this library
target_include_directories(dsp
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(dsp
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
