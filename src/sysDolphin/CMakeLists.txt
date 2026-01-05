# Automatically collect source files
file(GLOB SYSDOLPHIN_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(sysDolphin STATIC
    ${SYSDOLPHIN_SOURCES}
)

# Public include directory for this library
target_include_directories(sysDolphin
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(sysDolphin
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
