add_library(sysBootup OBJECT
    sysBootup.cpp
)

add_library(newlibStub OBJECT
    newlibStub.c
)

# Ensure it is compiled as C++
set_target_properties(sysBootup PROPERTIES
    LINKER_LANGUAGE CXX
)

target_include_directories(sysBootup PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

add_subdirectory(sysCommon)
add_subdirectory(sysDolphin)
add_subdirectory(hvqm4dec)
add_subdirectory(ai)
add_subdirectory(amcExi2)
add_subdirectory(amcnotstub)
add_subdirectory(ar)
add_subdirectory(base)
add_subdirectory(card)
add_subdirectory(db)
add_subdirectory(dsp)
add_subdirectory(dvd)
add_subdirectory(exi)
add_subdirectory(gx)
add_subdirectory(hio)
add_subdirectory(jaudio)
add_subdirectory(mtx)
add_subdirectory(OdemuExi2)
add_subdirectory(odenotstub)
add_subdirectory(os)
add_subdirectory(pad)
add_subdirectory(si)
add_subdirectory(vi)
add_subdirectory(plugPikiColin)
add_subdirectory(plugPikiKando)
add_subdirectory(plugPikiNakata)
add_subdirectory(plugPikiNishimura)
add_subdirectory(plugPikiOgawa)
add_subdirectory(plugPikiYamashita)

add_executable(main.elf)

# Add the standalone object file
target_sources(main.elf PRIVATE
    $<TARGET_OBJECTS:sysBootup>
    $<TARGET_OBJECTS:newlibStub>
)

# Link all static libraries
target_link_libraries(main.elf PRIVATE
    sysCommon
    sysDolphin
    hvqm4dec
    ai
    amcExi2
    amcnotstub
    ar
    base
    card
    db
    dsp
    dvd
    exi
    gx
    hio
    jaudio
    mtx
    OdemuExi2
    odenotstub
    os
    pad
    si
    vi
    plugPikiColin
    plugPikiKando
    plugPikiNakata
    plugPikiNishimura
    plugPikiOgawa
    plugPikiYamashita
)

target_link_options(main.elf PRIVATE
    -T${PROJECT_SOURCE_DIR}/src/sections.ld
)

# Include paths for the final executable
target_include_directories(main.elf PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)
