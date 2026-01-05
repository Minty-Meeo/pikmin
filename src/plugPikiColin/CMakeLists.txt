# Automatically collect source files
file(GLOB PLUGPIKI_COLIN
    CONFIGURE_DEPENDS
    *.c
    *.cpp
)

add_library(plugPikiColin STATIC
    ${PLUGPIKI_COLIN}
)

target_link_libraries(plugPikiColin PRIVATE
    card
    jaudio
    sysDolphin
)

target_include_directories(plugPikiColin PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

# Optional: stricter warnings
# target_compile_options(plugPikiColin
#     PRIVATE
#         $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall -Wextra -Wpedantic>
# )
