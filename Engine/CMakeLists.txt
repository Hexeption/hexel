set(ENGINE_SOURCES
        Hexel/Hexel.h
        Hexel/Engine.cpp
        Hexel/Engine.h
        Hexel/Main.h
)

add_library(Hexel STATIC ${ENGINE_SOURCES})
target_compile_features(Hexel PUBLIC cxx_std_20)
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${ENGINE_SOURCES})

target_include_directories(Hexel PUBLIC .)
set(HEXEL_COMMON_LIBS bgfx bimg bx glfw imgui)
target_link_libraries(Hexel PUBLIC ${HEXEL_COMMON_LIBS} psapi)

hexel_set_target_folder(Hexel Engine)