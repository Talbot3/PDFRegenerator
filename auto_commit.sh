#!/bin/bash
# 获取当前时间戳
timestamp=$(date +"%Y%m%d%H%M%S")

# 从 pyproject.toml 中提取版本号，并添加当前时间戳
old_version=$(sed -n 's/version = "\(.*\)"/\1/p' pyproject.toml)
new_version=$(echo ${old_version} | sed "s/\([0-9]\{12\}\)$/$(date +"%Y%m%d%H%M%S")/")

# 替换 pyproject.toml 中的版本号
sed -i '' -e "s/version = \".*\"/version = \"$new_version\"/" pyproject.toml

echo "Version updated to: $new_version"

# 获取提交日期
last_commit_date=$(timestamp)
# 获取最近的文件变动
file_changes=$(git diff --stat)
# 生成 commit 消息
commit_message="Auto-generated summary:
  Commit Date: $last_commit_date
  File changes:
    $file_changes"

# 提交到 Git
git commit -am "$commit_message"
git push origin
