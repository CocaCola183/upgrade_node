#!/bin/bash

# 连接数组元素成为一个字符串
# 使用方法:
# source ./tools.sh
# string=`join "连接符" "${数组名[@]}"`
function join { 
	local IFS="$1"; 
	shift; 
	echo "$*"; 
}