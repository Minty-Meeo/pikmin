# Automatically collect source files
file(GLOB DOLPHINSDK_OS_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(os STATIC
    ${DOLPHINSDK_OS_SOURCES}
)

target_link_libraries(os PRIVATE
    db
)

target_include_directories(os PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(os
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
