#! /bin/bash
echo "=== Backup Check ==="
echo "Date: $(date)"
BACKUP_DIR=~/devops-lab-$(date +%Y-%m-%d)
mkdir -p $BACKUP_DIR
cp *.sh $BACKUP_DIR/
cp *.log $BACKUP_DIR/
cp *.txt $BACKUP_DIR/
echo "Backup done to: $BACKUP_DIR"
ls $BACKUP_DIR
