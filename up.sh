#!/bin/bash

# 保存当前工作目录
original_dir=$(pwd)

# 遍历当前目录下的所有子目录
for dir in */; do
  # 移除目录名后的斜杠
  dir_name="${dir%/}"

  # 跳过非目录文件
  [ -d "$dir_name" ] || continue

  echo "🔄 正在处理目录: $dir_name"

  # 进入子目录（失败则跳过）
  if ! cd "$dir_name"; then
    echo "❌ 错误：无法进入目录 $dir_name" >&2
    continue
  fi

  # 检查是否为 Git 仓库
  if [ -d .git ]; then
    echo "🔍 检测到 Git 仓库，开始拉取更新..."
    
    # 执行 git pull 并捕获输出
    if git pull; then
      echo "✅ 成功更新: $dir_name"
    else
      echo "❌ Git 拉取失败: $dir_name" >&2
    fi
  else
    echo "⏭️ 跳过非 Git 目录: $dir_name"
  fi

  # 返回原始目录（失败则终止）
  cd "$original_dir" || {
    echo "❌ 致命错误：无法返回工作目录" >&2
    exit 1
  }

  # 添加分隔线
  echo "----------------------------------------"
done

echo "🎉 所有目录处理完成"
