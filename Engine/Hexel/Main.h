//
// Created by keird on 30/12/2025.
//

#ifndef HEXEL_MAIN_H
#define HEXEL_MAIN_H

#ifdef _MSC_VER
    #pragma comment(linker, "/NODEFAULTLIB:LIBCMT.lib")
    #ifdef NDEBUG
        #pragma comment(linker, "/SUBSYSTEM:WINDOWS /ENTRY:mainCRTStartup")
    #else
        #pragma comment(linker, "/SUBSYSTEM:CONSOLE")
        #pragma comment(linker, "/NODEFAULTLIB:MSVCRT.lib")
    #endif
#endif

#endif //HEXEL_MAIN_H