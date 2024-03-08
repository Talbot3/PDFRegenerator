#!/bin/bash

# 获取提交日期
last_commit_date=$(date)
# 获取最近的文件变动
file_changes=$(git diff --stat)
# 生成 commit 消息
commit_message="Auto-generated summary:
  Commit Date: $last_commit_date
  File changes:
    $file_changes"

# 提交到 Git
git commit -am "$commit_message"
ggpush
