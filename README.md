# 数据库源码教程

这个仓库现在包含两套源码阅读教程：

- **LevelDB 教程**：围绕 LSM、WAL、MemTable、SSTable、Compaction、缓存与迭代器展开
- **Redis 教程**：围绕事件循环、基础数据结构、对象系统、持久化、复制、高可用、集群、事务与 Pub/Sub 展开

文档站使用 MkDocs + Material for MkDocs 构建，站点入口统一在 `docs/` 下。

## 快速开始

启动本地文档服务：

```bash
./start.sh
```

然后访问 `http://localhost:8000`。

停止服务：

```bash
./stop.sh
```

构建静态站点：

```bash
./venv/bin/mkdocs build
```

输出目录是 `site/`。

## 发布到 GitHub Pages

仓库里已经加了 GitHub Actions 工作流：

- 工作流文件：[.github/workflows/deploy-pages.yml](/home/tz/dev/tutorial/.github/workflows/deploy-pages.yml)
- 触发条件：推送到 `main` 分支，或手动执行 `Actions`

启用步骤：

1. 把仓库推到 GitHub。
2. 进入 GitHub 仓库 `Settings -> Pages`。
3. 在 `Build and deployment` 里把 `Source` 设为 `GitHub Actions`。
4. 推送一次到 `main`，等待 `Deploy MkDocs to GitHub Pages` 工作流完成。

发布地址通常是：

- 项目页：`https://<你的 GitHub 用户名>.github.io/<仓库名>/`
- 用户页：如果仓库名就是 `<你的 GitHub 用户名>.github.io`，地址就是根域名

如果你想用命令行手动发布，也可以在本地执行：

```bash
./venv/bin/mkdocs gh-deploy
```

但手动方式会把内容发布到 `gh-pages` 分支，需要本地已经配置好 GitHub 远程仓库和推送权限。

## 技术栈

- `MkDocs`
- `Material for MkDocs`
- `Mermaid`

## 目录结构

```text
tutorial/
├── docs/
│   ├── index.md              # 站点首页
│   ├── leveldb/              # LevelDB 教程
│   │   ├── index.md
│   │   └── 01_*.md ~ 10_*.md
│   └── redis/                # Redis 教程
│       ├── index.md
│       └── 01_*.md ~ 10_*.md
├── docs/stylesheets/
│   └── tutorial.css          # 图表与表格样式增强
├── mkdocs.yml                # MkDocs 配置
├── start.sh                  # 本地预览脚本
├── stop.sh                   # 停止脚本
└── venv/                     # Python 虚拟环境
```

## 教程目录

### LevelDB

1. 数据库核心读写引擎
2. WriteBatch 原子批量写入
3. 预写日志 WAL
4. MemTable 内存表与跳表
5. SSTable 排序表文件格式
6. 版本管理与 MANIFEST
7. 合并压缩 Compaction
8. 迭代器层次体系
9. 布隆过滤器与过滤策略
10. LRU 缓存与 TableCache

### Redis

1. Redis 核心架构与事件循环
2. 基础数据结构：SDS、链表、字典
3. 对象系统与五大数据类型
4. 持久化：RDB 与 AOF
5. 主从复制机制
6. 哨兵与高可用
7. 集群分片
8. 过期策略与内存淘汰
9. 事务与 Lua 脚本
10. 发布订阅系统

## 入口

- 站点首页：[docs/index.md](/home/tz/dev/tutorial/docs/index.md)
- LevelDB 概览：[docs/leveldb/index.md](/home/tz/dev/tutorial/docs/leveldb/index.md)
- Redis 概览：[docs/redis/index.md](/home/tz/dev/tutorial/docs/redis/index.md)
