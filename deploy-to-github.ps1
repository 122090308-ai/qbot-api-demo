# QBot API Demo GitHub部署脚本

Write-Host "正在部署到GitHub..." -ForegroundColor Green

# 检查Git是否可用
try {
    git --version | Out-Null
    Write-Host "Git已安装" -ForegroundColor Green
} catch {
    Write-Host "错误：Git未安装或不在PATH中" -ForegroundColor Red
    Write-Host "请先安装Git: https://git-scm.com/download/win" -ForegroundColor Yellow
    Read-Host "按任意键退出"
    exit 1
}

# 配置Git用户信息
$username = Read-Host "请输入GitHub用户名"
$email = Read-Host "请输入GitHub邮箱"
git config --global user.name $username
git config --global user.email $email

# 初始化仓库
Write-Host "初始化Git仓库..." -ForegroundColor Yellow
git init

# 添加远程仓库
Write-Host "添加远程仓库..." -ForegroundColor Yellow
git remote add origin https://github.com/122090308-ai/qbot-api-demo.git

# 添加所有文件
Write-Host "添加文件..." -ForegroundColor Yellow
git add .

# 提交
Write-Host "提交文件..." -ForegroundColor Yellow
git commit -m "Initial commit: QBot API Demo project"

# 设置主分支
Write-Host "设置主分支..." -ForegroundColor Yellow
git branch -M main

# 推送到GitHub
Write-Host "推送到GitHub..." -ForegroundColor Yellow
git push -u origin main

Write-Host "部署完成！" -ForegroundColor Green
Read-Host "按任意键退出"