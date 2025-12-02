#!/bin/bash

print_header() {
echo "====================="
echo "    Git Log Viewer   "
echo "====================="
}

print_log() {
git log --pretty=format:"%h | %an | %ad | %s" --date=short
}

print_last_n() {
echo "최근 $1개의 커밋을 출력합니다."
git log -n "$1" --pretty=format:"%h | %an | %ad | %s" --date=short
}

search_keyword() {
echo "'$1' 키워드가 포함된 로그를 검색합니다."
git log --pretty=format:"%h | %an | %ad | %s" --date=short | grep "$1"
}

print_header
echo "1) 전체 로그 출력"
echo "2) 최근 N개 로그 보기"
echo "3) 키워드로 검색"
read -p "선택하세요: " choice

case $choice in
1)
print_log
;;
2)
read -p "N 입력: " num
print_last_n "$num"
;;
3)
read -p "검색할 키워드: " key
search_keyword "$key"
;;
*)
echo "잘못된 입력입니다."
;;
esac
