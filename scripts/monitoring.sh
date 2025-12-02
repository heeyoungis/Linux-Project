#!/bin/bash

DATE=$(date +"%Y%m%d_%H%M%S")
REPORT_FILE="system_report_$DATE.txt"

echo "=== 시스템 리소스 모니터링 ==="
echo "리포트 파일: $REPORT_FILE"

echo "--- CPU 사용량 ---" > "$REPORT_FILE"
top -l 1 | head -n 20 >> "$REPORT_FILE"

echo "--- 메모리 사용량---" >> "$REPORT_FILE"
vm_stat >> "$REPORT_FILE"

echo "--- 디스크 사용량---" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"

echo "모니터링 완료. 리포트 생성됨: $REPORT_FILE"
