# Automatically collect source files
file(GLOB HVQM4DEC_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(hvqm4dec STATIC
    ${HVQM4DEC_SOURCES}
)

target_include_directories(hvqm4dec PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(hvqm4dec
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
