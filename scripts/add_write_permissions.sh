#!/bin/bash

# 작성 권한을 추가할 폴더 경로를 인자로 받습니다.
FOLDER_PATH=$1

# 해당 폴더와 모든 하위 요소에 작성 권한을 추가합니다.
chmod -R u+w "$FOLDER_PATH"

echo "Write permissions have been added to $FOLDER_PATH and all its contents."
