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

target_link_libraries(jaudio PRIVATE
    dsp
    ai
    hvqm4dec
)

target_include_directories(jaudio PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(jaudio
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
