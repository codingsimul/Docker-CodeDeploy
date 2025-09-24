#!/bin/bash

echo "서버 배포 시작"
docker stop dockerdeploy || true
docker rm dockerdeploy || true
docker pull 482268324407.dkr.ecr.ap-northeast-2.amazonaws.com/junig-ecr:latest
docker run -d --name dockerdeploy -p 8080:8080 482268324407.dkr.ecr.ap-northeast-2.amazonaws.com/junig-ecr:latest
echo "서버 배포 완료"