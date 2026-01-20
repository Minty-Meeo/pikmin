add_library(newlibStub OBJECT
    newlibStub.c
)

add_library(sysBootup OBJECT
    sysBootup.cpp
)

# Ensure it is compiled as C++
set_target_properties(sysBootup PROPERTIES
    LINKER_LANGUAGE CXX
)

target_include_directories(newlibStub PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

target_include_directories(sysBootup PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)

add_subdirectory(jaudio)
add_subdirectory(hvqm4dec)

add_subdirectory(sysCommon)
add_subdirectory(sysDolphin)

add_subdirectory(plugPikiColin)
add_subdirectory(plugPikiKando)
add_subdirectory(plugPikiNakata)
add_subdirectory(plugPikiNishimura)
add_subdirectory(plugPikiOgawa)
add_subdirectory(plugPikiYamashita)

add_subdirectory(base)
add_subdirectory(os)
add_subdirectory(db)
add_subdirectory(mtx)
add_subdirectory(dvd)
add_subdirectory(vi)
add_subdirectory(pad)
add_subdirectory(ai)
add_subdirectory(ar)
add_subdirectory(dsp)
add_subdirectory(card)
add_subdirectory(si)
add_subdirectory(exi)
add_subdirectory(hio)
add_subdirectory(gx)

add_subdirectory(amcExi2)
add_subdirectory(amcnotstub)
# add_subdirectory(amcstubs)

add_subdirectory(OdemuExi2)
add_subdirectory(odenotstub)
# add_subdirectory(odemustubs)

add_executable(main.elf)

# Add the standalone object file
target_sources(main.elf PRIVATE
    $<TARGET_OBJECTS:newlibStub>
    $<TARGET_OBJECTS:sysBootup>
)

# Link all static libraries
target_link_libraries(main.elf PRIVATE
    jaudio
    hvqm4dec

    sysCommon
    sysDolphin

    plugPikiColin
    plugPikiKando
    plugPikiNakata
    plugPikiNishimura
    plugPikiOgawa
    plugPikiYamashita

    base
    os
    db
    mtx
    dvd
    vi
    pad
    ai
    ar
    dsp
    card
    si
    exi
    hio
    gx

    amcExi2
    amcnotstub
#   amcstubs

    OdemuExi2
    odenotstub
#   odemustubs
)

target_link_options(main.elf PRIVATE
    -T${PROJECT_SOURCE_DIR}/src/sections.ld
    -Wl,-Map=$<TARGET_FILE_DIR:main.elf>/main.map
)

# Include paths for the final executable
target_include_directories(main.elf PRIVATE
    ${PROJECT_SOURCE_DIR}/include
)
