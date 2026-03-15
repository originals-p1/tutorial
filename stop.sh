#!/bin/bash

# 停止 MkDocs 服务器
echo "停止 LevelDB 教程文档服务器..."

# 查找并终止 mkdocs 进程
pkill -f "mkdocs serve"

if [ $? -eq 0 ]; then
    echo "文档服务器已停止"
else
    echo "未找到运行中的文档服务器"
fi
