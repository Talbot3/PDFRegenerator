#!/bin/bash
# 获取当前本地时间戳
export timestamp=$(date +"%Y%m%d%H%M%S")
# 从 pyproject.toml 中提取并更新版本号
old_version=$(sed -n 's/version = "\([0-9\.]*\)"/\1/p' pyproject.toml)
old_version_length=$(echo -n "$old_version" | wc -c)
timestamp_length=$(echo -n "$timestamp" | wc -c)
version_prefix=0.0.
new_version="${version_prefix}${timestamp}"
# 替换 pyproject.toml 中的版本号
sed -i '' -e "s/version = \".*\"/version = \"$new_version\"/" pyproject.toml

echo "Version updated to: $new_version"

# 获取提交日期
last_commit_date=$(date +"%Y%m%d%H%M%S")
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
