#!/bin/bash

echo "🚀 开始部署 Vue.js 应用到公网..."

# 检查是否安装了必要的工具
check_command() {
    if ! command -v $1 &> /dev/null; then
        echo "❌ $1 未安装，请先安装"
        return 1
    fi
    return 0
}

# 构建项目
echo "📦 构建项目..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ 构建失败"
    exit 1
fi

echo "✅ 构建成功！"

# 选择部署方式
echo "请选择部署方式："
echo "1. Vercel (推荐)"
echo "2. Netlify"
echo "3. GitHub Pages"
echo "4. 手动上传到服务器"

read -p "请输入选择 (1-4): " choice

case $choice in
    1)
        echo "🌐 使用 Vercel 部署..."
        if check_command "vercel"; then
            vercel --prod
        else
            echo "请先安装 Vercel CLI: npm install -g vercel"
        fi
        ;;
    2)
        echo "🌐 使用 Netlify 部署..."
        echo "请将 dist 文件夹拖拽到 https://app.netlify.com/drop"
        ;;
    3)
        echo "🌐 使用 GitHub Pages 部署..."
        echo "请确保已推送代码到 GitHub 并启用 GitHub Actions"
        ;;
    4)
        echo "📁 手动部署..."
        echo "请将 dist 文件夹内容上传到你的服务器"
        ;;
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

echo "🎉 部署完成！"