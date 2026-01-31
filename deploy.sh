#!/bin/bash

# Open-Reflect Landing Page Deployment Script

echo "🚀 部署 Open-Reflect 网站到 Vercel"
echo "=================================="

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "📦 正在安装 Vercel CLI..."
    npm install -g vercel
fi

echo "🔐 请登录 Vercel (如果需要)"
vercel --login

echo "🚀 开始部署..."
vercel --yes

echo ""
echo "✅ 部署完成！"
echo "🌐 访问 https://vercel.com/dashboard 查看管理面板"
