#!/bin/bash

# 복사할 대상 폴더 경로와 목적지 폴더를 인자로 받습니다.
SOURCE_FOLDER=$1
DESTINATION_FOLDER=$2

# 대상 폴더가 존재하는지 확인하고, 없으면 생성합니다.
if [ ! -d "$DESTINATION_FOLDER" ]; then
  echo "$DESTINATION_FOLDER 폴더가 존재하지 않아 새로 생성합니다."
  mkdir -p "$DESTINATION_FOLDER"
fi

# 소스 폴더에서 대상 폴더로 데이터를 이동합니다.
cp -r "$SOURCE_FOLDER"/* "$DESTINATION_FOLDER"

echo "Data has been moved from $SOURCE_FOLDER to $DESTINATION_FOLDER."
