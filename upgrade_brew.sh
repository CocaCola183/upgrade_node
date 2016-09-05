#!/bin/bash

# tool
function join { 
	local IFS="$1"; 
	shift; 
	echo "$*"; 
}

# update brew first
brew update

# cloc 代码行数统计
# config tools to be upgraded
useful_modules=(erlang git git-extras cloc redis mongodb ruby consul mysql python siege wget)

# upgrade tools
install_modules=`join " " "${useful_modules[@]}"`
brew upgrade $install_modules

