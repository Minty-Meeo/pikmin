# Automatically collect source files
file(GLOB DOLPHINSDK_CARD_SOURCES
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(card STATIC
    ${DOLPHINSDK_CARD_SOURCES}
)

target_include_directories(card PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(card
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
