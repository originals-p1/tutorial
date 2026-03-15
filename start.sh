#!/bin/bash

# 启动 MkDocs 服务器
echo "启动 LevelDB 教程文档服务器..."

# 激活虚拟环境并启动服务
./venv/bin/mkdocs serve -a 0.0.0.0:8000

echo "文档服务器已启动: http://localhost:8000"
