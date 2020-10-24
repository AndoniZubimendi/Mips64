cmake_minimum_required(VERSION 3.17)
project(mips64)

set(CMAKE_CXX_STANDARD 14)

#include_directories(src)

add_executable(${PROJECT_NAME}
        src/Assembler/Assembler.cpp
        src/Assembler/Assembler.h
        src/Assembler/Language.cpp
        src/Assembler/Language.h
        src/CPU/CPUConfig.cpp
        src/CPU/CPUConfig.h
        src/CPU/CPUStats.cpp
        src/CPU/CPUStats.h
        src/CPU/Pipeline.cpp
        src/CPU/Pipeline.h
        src/CPU/PipelineHistory.cpp
        src/CPU/PipelineHistory.h
        src/CPU/Processor.cpp
        src/CPU/Processor.h
        src/Memory/CodeMemory.cpp
        src/Memory/CodeMemory.h
        src/Memory/DataMemory.cpp
        src/Memory/DataMemory.h
        src/Memory/MemoryRegion.cpp
        src/Memory/MemoryRegion.h
        src/Memory/NullRegion.cpp
        src/Memory/NullRegion.h
        src/Memory/Region.h
        src/IO/Screen.cpp
        src/IO/Screen.h
        src/IO/Terminal.cpp
        src/IO/Terminal.h
        src/IO/IO.cpp
        src/IO/IO.h
        src/main.cpp
        src/mytypes.h
        src/Simulator.cpp
        src/Simulator.h
        src/utils.cpp
        src/utils.h)

target_link_libraries(${PROJECT_NAME} ncurses)
