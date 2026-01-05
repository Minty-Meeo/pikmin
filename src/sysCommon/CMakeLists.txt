# Automatically collect source files
file(GLOB SYSCOMMON_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(sysCommon STATIC
    ${SYSCOMMON_SOURCES}
)

target_include_directories(sysCommon PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(sysCommon
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
