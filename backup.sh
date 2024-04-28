#!/bin/bash

# 获取当前时间
current_time=$(date +"%Y%m%d%H%M")
# 文件列表
files=("memos_prod.db" "memos_prod.db-shm" "memos_prod.db-wal")

# 目标归档文件路径
output_file="/root/.memos/MemosBackup/backup_memos_$current_time.tar.gz"

# 压缩命令
tar -czvf "$output_file" "${files[@]}"

cd /root/.memos/MemosBackup

git add --all
git commit -m "自动提交 $current_time"
git push