# Automatically collect source files
file(GLOB DOLPHINSDK_ODENOTSTUB_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(odenotstub STATIC
    ${DOLPHINSDK_ODENOTSTUB_SOURCES}
)

target_include_directories(odenotstub PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(odenotstub
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
