cmake_minimum_required(VERSION 2.6)
set(CMAKE_C_COMPILER		"mipsel-openwrt-linux-uclibc-gcc")
set(CMAKE_CXX_COMPILER		"mipsel-openwrt-linux-uclibc-g++")
set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_CXX_COMPILER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_CXX_LINK_EXECUTABLE ${CMAKE_C_LINK_EXECUTABLE})

set(CMAKE_C_FLAGS		$ENV{CFLAGS})
set(CMAKE_CXX_FLAGS 		$ENV{CFLAGS})
set(CMAKE_EXE_LINKER_FLAGS	$ENV{LDFLAGS})

if(NOT DEFINED PROJECT_NAME)
	set(PROJECT_NAME "demo")
endif()
set(SRCS main.c)
set(LIBS mraa pthread dl)


project(${PROJECT_NAME})

add_executable(${PROJECT_NAME} ${SRCS})
target_link_libraries(${PROJECT_NAME} ${LIBS})
#set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE C)
