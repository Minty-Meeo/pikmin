# Automatically collect source files
file(GLOB DOLPHINSDK_AMCNOTSTUB_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(amcnotstub STATIC
    ${DOLPHINSDK_AMCNOTSTUB_SOURCES}
)

target_include_directories(amcnotstub PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(amcnotstub
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
