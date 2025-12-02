#!/bin/bash

DATE=$(date +"%Y%m%d")

BACKUP_DIR="backup_$DATE"
echo "=== 디렉토리 백업 기능 ==="
echo "생성될 백업 폴더: $BACKUP_DIR"

if [ -d "$BACKUP_DIR" ]; then
echo "이미 동일한 날짜의 백업 폴더가 존재합니다."
echo "기존 폴더에 덮어씁니다.."
else
echo "새로운 백업 폴더 생성 중.."
mkdir "$BACKUP_DIR"
fi

echo "파일 백업 중.."
cp -r ./* "$BACKUP_DIR"

echo "백업완료"
echo "백업 위치: $(pwd)/$BACKUP_DIR"
echo "=========================="
