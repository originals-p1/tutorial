# LevelDB 教程文档

这是一份深入浅出的 LevelDB 源码教程，采用场景驱动、原理优先、图文并茂的教学风格。

## 特色

- 🎯 **场景驱动**：每章从真实问题出发
- 🧠 **原理优先**：解释"为什么"而非仅"怎么做"
- 📊 **图文并茂**：使用 Mermaid 图表可视化流程
- 💡 **类比丰富**：用熟悉事物解释陌生概念
- 🔗 **前后呼应**：章节间建立知识连贯性

## 快速开始

### 启动文档服务器

```bash
./start.sh
```

然后访问 http://localhost:8000

### 停止服务器

```bash
./stop.sh
```

### 构建静态网站

```bash
./venv/bin/mkdocs build
```

生成的静态文件在 `site/` 目录。

## 技术栈

- **MkDocs**: 文档生成器
- **Material for MkDocs**: 现代化主题
- **Mermaid**: 图表渲染支持

## 目录结构

```
tutorial/
├── docs/leveldb/          # 教程 Markdown 文件
│   ├── index.md          # 首页
│   ├── 01_*.md           # 第 1-10 章
│   └── ...
├── mkdocs.yml            # MkDocs 配置
├── venv/                 # Python 虚拟环境
├── start.sh              # 启动脚本
└── stop.sh               # 停止脚本
```

## 章节列表

1. 数据库核心引擎 (DBImpl)
2. WriteBatch 批量写入
3. 预写日志 WAL / Log
4. 内存表 MemTable 与跳表 SkipList
5. SSTable 排序表与数据块
6. 版本管理 VersionSet 与 Version
7. 压缩机制 Compaction
8. 迭代器体系 Iterator
9. 缓存与布隆过滤器
10. 环境抽象层 Env

---

开始学习：[第 1 章：数据库核心引擎](docs/leveldb/01_数据库核心引擎_dbimpl__.md)
