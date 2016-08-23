#!/bin/bash
. ~/.nvm/nvm.sh
. ~/.bash_profile

function join { 
	local IFS="$1"; 
	shift; 
	echo "$*"; 
}

latest_vertion=
current_version=
# 配置需要全局安装的包
useful_modules=(gulp jshint esnext nodemon)

latest_vertion=`nvm ls-remote | awk '$1 ~ /^v/ { print $1; }' | awk 'END{print}'`
current_version=`nvm current`
install_modules=`join " " "${useful_modules[@]}"`

if [ "$current_version"x > "$latest_vertion"x ]
then
	echo ">>> latest version: $current_version";
else
	echo ">>> latest version: $latest_vertion";
fi

echo ">>> current version: $current_version"
echo '>>> node modules to be installed:' "$install_modules"

if [ "$current_version"x > "$latest_vertion"x ]
then
	echo '>>> current node is latest version now';
else
	echo ">>> start installing node-${latest_vertion}"
	nvm install $latest_vertion
	nvm uninstall $current_version
	npm install -g $install_modules
	echo ">>> !!!important: run \'nvm use ${latest_vertion}\' and \'nvm alias default ${latest_vertion}\' in current terminal yourself"
fi