#!/bin/bash

echo "=== 가위바위보 게임 (유저 vs 컴퓨터) ==="

read -p "당신의 선택 (가위/바위/보): " USER

# 입력 검증
if [ "$USER" != "가위" ] && [ "$USER" != "바위" ] && [ "$USER" != "보" ]; then
    echo "잘못된 입력입니다. 가위/바위/보 중 하나를 입력하세요."
    exit 1
fi

# 컴퓨터 랜덤 선택
RANDOM_NUM=$(( RANDOM % 3 ))   # 0~2

if [ $RANDOM_NUM -eq 0 ]; then
    COM="가위"
elif [ $RANDOM_NUM -eq 1 ]; then
    COM="바위"
else
    COM="보"
fi

echo "----------------------------"
echo "유저: $USER"
echo "컴퓨터: $COM"
echo "----------------------------"

# 승패 판정
if [ "$USER" = "$COM" ]; then
    echo "결과: 무승부!"
    exit 0
fi

if [ "$USER" = "가위" ] && [ "$COM" = "보" ]; then
    echo "결과: 유저 승!"
elif [ "$USER" = "바위" ] && [ "$COM" = "가위" ]; then
    echo "결과: 유저 승!"
elif [ "$USER" = "보" ] && [ "$COM" = "바위" ]; then
    echo "결과: 유저 승!"
else
    echo "결과: 컴퓨터 승!"
fi
