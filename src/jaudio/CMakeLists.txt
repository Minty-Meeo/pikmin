# Automatically collect source files
file(GLOB JAUDIO_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

set_source_files_properties(${JAUDIO_SOURCES}
    PROPERTIES
        LANGUAGE CXX
)

add_library(jaudio STATIC
    ${JAUDIO_SOURCES}
)

# Public include directory for this library
target_include_directories(jaudio
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(jaudio
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
