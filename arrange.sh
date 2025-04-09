#!/bin/bash

# files 폴더 안의 모든 "파일"을 순회
for file in files/*; do
    # 파일일 경우만 처리
    if [ -f "$file" ]; then
        # 첫 글자 추출 (소문자)
        first_char=$(echo $(basename "$file") | cut -c1 | tr '[:upper:]' '[:lower:]')

        # 폴더가 없으면 생성
        mkdir -p "$first_char"

        # 파일 이동
        mv "$file" "$first_char/"
        echo "Moved $(basename "$file") → $first_char/"
    fi
done