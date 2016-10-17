#!/bin/bash

## 清除各种缓存文件，节省磁盘空间

# 需要清除的路径数组
# 注意: 这是个危险的操作，一定要确保文件夹配置是正确的
# 
# "/Users/kivi/Library/Caches/Homebrew" HomeBrew 缓存文件夹
toBeCleanedFolders=("/Users/kivi/Library/Caches/Homebrew")

for data in ${toBeCleanedFolders[@]}  
do
  rm -rf ${data}/*
done 