# Automatically collect source files
file(GLOB DOLPHINSDK_DB_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(db STATIC
    ${DOLPHINSDK_DB_SOURCES}
)

target_include_directories(db PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(db
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
