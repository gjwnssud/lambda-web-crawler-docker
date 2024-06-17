# lambda-web-crawler-docker
web-crawler with AWS ECR

## Features
- Open Graph 동적 크롤링

## Tech Stack 📚
<div style="margin-left: 1em">
    <img src="https://img.shields.io/badge/language-121011?style=for-the-badge"><img src="https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=white"><img src="https://img.shields.io/badge/3.12-515151?style=for-the-badge">
</div>
<div style="margin-left: 1em">
    <img src="https://img.shields.io/badge/public_cloud-121011?style=for-the-badge"><img src="https://img.shields.io/badge/aws_lambda-FF9900?style=for-the-badge&logo=aws-lambda&logoColor=white"><img src="https://img.shields.io/badge/amazon_ecr-FF9900?style=for-the-badge&logo=amazon-ecs&logoColor=white">
</div>
<div style="margin-left: 1em">
    <img src="https://img.shields.io/badge/container-121011?style=for-the-badge"><img src="https://img.shields.io/badge/docker-2496ED?style=for-the-badge&logo=docker&logoColor=white"><img src="https://img.shields.io/badge/4.30.0-515151?style=for-the-badge">
</div>
<div style="margin-left: 1em">
    <img src="https://img.shields.io/badge/docker_image-121011?style=for-the-badge"><img src="https://img.shields.io/badge/amazonlinux-FF9900?style=for-the-badge&logo=amazon&logoColor=white"><img src="https://img.shields.io/badge/2023-515151?style=for-the-badge">
</div>
<div style="margin-left: 1em">
    <img src="https://img.shields.io/badge/dependencies-121011?style=for-the-badge"><img src="https://img.shields.io/badge/selenium-43B02A?style=for-the-badge&logo=google-chrome&logoColor=white"><img src="https://img.shields.io/badge/4.21.0-515151?style=for-the-badge"><img src="https://img.shields.io/badge/google_chrome-4285F4?style=for-the-badge&logo=google-chrome&logoColor=white"><img src="https://img.shields.io/badge/126.0.6478.61-515151?style=for-the-badge">
</div>

## Usage
### ECR 로그인
```shell
aws ecr get-login-password --region {REGION} | docker login --username AWS --password-stdin {ACCOUNT_ID}.dkr.ecr.{REGION}.amazonaws.com
```
### 이미지 빌드
```shell
docker build --platform linux/x86_64 -t "lambda-web-crawler" -f Dockerfile .
```
### 태그 지정
```shell
 docker tag lambda-web-crawler:latest {ACCOUNT_ID}.dkr.ecr.{REGION}.amazonaws.com/lambda-web-crawler:latest
```
### Push
```shell
 docker push {ACCOUNT_ID}.dkr.ecr.{REGION}.amazonaws.com/lambda-web-crawler:latest
```
