all_backups=($(ls))
backup_files=($(ls -t | head -n 10))
for file in "${all_backups[@]}"; do
    if [[ ! " ${backup_files[@]} " =~ " $file " ]]; then
        echo "$file"
    fi
done
