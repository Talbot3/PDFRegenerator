#!/bin/bash

# 获取最后一次提交的信息
last_commit_date=$(date)

# 获取最近的文件变动
file_changes=$(git diff --name-status)

# 生成 commit 消息
commit_message="Auto-generated summary:
  Last commit: $last_commit_date
  File changes:
    $file_changes"

# 提交到 Git
git commit -am "$commit_message"
