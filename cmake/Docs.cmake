find_package(Doxygen)

if (Doxygen_FOUND)
    message("Doxygen found, configuring documentation generation.")
    set(DOXYGEN_GENERATE_HTML YES)
    set(DOXYGEN_EXTRACT_ALL YES)
    set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")

    doxygen_add_docs(HexelDocs
            ${CMAKE_CURRENT_SOURCE_DIR}/Engine
            ${CMAKE_CURRENT_SOURCE_DIR}/README.md
            COMMENT "Generating Hexel documentation with Doxygen"
    )
endif ()