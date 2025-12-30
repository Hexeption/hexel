cmake_minimum_required(VERSION 4.1)

project(Hexel
        VERSION 0.1.0
        DESCRIPTION "C++ Game Engine"
        LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

function(hexel_set_target_folder target folder)
    set_target_properties(${target} PROPERTIES FOLDER ${folder})
endfunction(hexel_set_target_folder)

function(hexel_add_executable name)
    set(program_sources "${HEXEL_EXECUTABLE_SOURCES}")
    add_executable(${name} WIN32 ${program_sources})
    source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${program_sources})
    target_link_libraries(${name} PRIVATE Hexel)
    target_include_directories(${name} PRIVATE src)
    hexel_set_target_folder(${name} ${HEXEL_EXECUTABLE_FOLDER})
endfunction(hexel_add_executable)

add_subdirectory(External)
add_subdirectory(engine)

add_subdirectory(Examples)
