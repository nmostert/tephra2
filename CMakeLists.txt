CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
project(tephra2)

set(USE_GC ON CACHE BOOL "Use garbage collection")

set(GC_INCLUDE "" CACHE PATH "GC include directory")
set(GC_LIB "" CACHE PATH "GC library")

include_directories(${GC_INCLUDE})
link_directories(${GC_LIB})

#add_library(tephra2_calc STATIC common_src/common_structures.h common_src/tephra2_calc.c)
#add_library(new_tephra STATIC common_src/common_structures.h forward_src/new_tephra.c)

add_executable(tephra2-2012
	common_src/parameters.h
	forward_src/new_tephra.c
	common_src/tephra2_calc.c
	common_src/common_structures.h
)

if (USE_GC)
	target_link_libraries(tephra2-2012 gcmt-dll)
	add_definitions(-DGC)
endif()