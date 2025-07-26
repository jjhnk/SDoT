#!/bin/bash
set -e

# 비밀파일에서 비밀번호 읽기 등 커스텀 작업 수행
PASSWORD=$(cat /run/secrets/nifi_secret)
export SINGLE_USER_CREDENTIALS_PASSWORD="$PASSWORD"

# 기존 NiFi entrypoint 호출 (이미지 기준)
../scripts/start.sh