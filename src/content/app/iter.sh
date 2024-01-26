#!/bin/bash

# 遍历当前目录下的所有子目录
for dir in */ ; do
    # 检查子目录中是否存在docker-compose.yml文件
    if [[ -f "${dir}docker-compose.yml" ]]; then
        # 获取去掉尾部斜杠的目录名
        dir_name=$(basename "$dir")
        # 复制并重命名文件
        cp "${dir}docker-compose.yml" "${dir_name}.yml"
        # 删除原始文件夹
        rm -r "$dir"
    fi
done

for file in *; do
    # 检查是否是文件
    if [[ -f $file ]]; then
        # 使用sed命令替换文件中的字符串
        sed -i 's/casaos/casaos/g' "$file"
    fi
done

