#!/bin/bash

APP=`basename \`pwd\``

if [ -d CMakeFiles ]; then
	rm -Rf CMakeFiles
fi

if [ -f CMakeCache.txt ]; then
	rm -Rf CMakeCache.txt
fi

if [ -f cmake_install.cmake ]; then
        rm -Rf cmake_install.cmake
fi


if [[ $# -eq 1 && $1 =~ "clean" ]]; then
	if [ -f $APP ]; then
		rm -Rf $APP
	fi
	if [ -f Makefile ]; then
		rm -Rf Makefile
	fi
	exit
else
	cmake -DPROJECT_NAME=$APP .
fi
