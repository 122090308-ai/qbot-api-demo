@echo off
echo 正在部署到GitHub...

REM 检查Git是否可用
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误：Git未安装或不在PATH中
    echo 请先安装Git: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM 配置Git用户信息（如果需要）
echo 配置Git用户信息...
set /p username="请输入GitHub用户名: "
set /p email="请输入GitHub邮箱: "
git config --global user.name "%username%"
git config --global user.email "%email%"

REM 初始化仓库
echo 初始化Git仓库...
git init

REM 添加远程仓库
echo 添加远程仓库...
git remote add origin https://github.com/122090308-ai/qbot-api-demo.git

REM 添加所有文件
echo 添加文件...
git add .

REM 提交
echo 提交文件...
git commit -m "Initial commit: QBot API Demo project"

REM 设置主分支
echo 设置主分支...
git branch -M main

REM 推送到GitHub
echo 推送到GitHub...
git push -u origin main

echo 部署完成！
pause