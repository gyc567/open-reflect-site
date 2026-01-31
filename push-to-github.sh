#!/bin/bash

# Open-Reflect GitHub 部署脚本

echo "🚀 推送 Open-Reflect 网站到 GitHub"
echo "=================================="

# 检查 Git
if ! command -v git &> /dev/null; then
    echo "❌ 请先安装 Git"
    exit 1
fi

echo "📝 请选择操作："
echo "1. 创建新仓库并推送"
echo "2. 推送到现有仓库"
echo ""

read -p "请输入选择 (1/2): " choice

if [ "$choice" = "1" ]; then
    echo ""
    echo "🔗 请访问以下链接创建 GitHub 仓库："
    echo "https://github.com/new"
    echo ""
    echo "仓库名称建议：open-reflect-site"
    echo "选择 'Public' → 点击 'Create repository'"
    echo ""
    read -p "请输入你的 GitHub 用户名: " GH_USER
    read -p "请输入仓库名称 (默认: open-reflect-site): " REPO_NAME
    REPO_NAME=${REPO_NAME:-open-reflect-site}
    
    echo ""
    echo "🔐 需要 GitHub Personal Access Token"
    echo "访问: https://github.com/settings/tokens → Generate new token"
    echo "权限: repo (完整控制)"
    read -p "请输入 token: " GH_TOKEN
    
    # 初始化并推送
    echo ""
    echo "📦 初始化 Git 仓库..."
    git init
    git add .
    git commit -m "Initial commit: Open-Reflect landing page"
    
    echo "🔗 添加远程仓库..."
    git remote add origin "https://${GH_USER}:${GH_TOKEN}@github.com/${GH_USER}/${REPO_NAME}.git"
    
    echo "🚀 推送到 GitHub..."
    git branch -M main
    git push -u origin main
    
    echo ""
    echo "✅ 推送完成！"
    echo "🌐 仓库地址: https://github.com/${GH_USER}/${REPO_NAME}"
    
elif [ "$choice" = "2" ]; then
    read -p "请输入仓库地址 (如: https://github.com/用户名/仓库名.git): " REPO_URL
    
    echo ""
    echo "📦 添加远程仓库并推送..."
    git remote add origin "$REPO_URL" 2>/dev/null || echo "远程仓库已存在，跳过..."
    git add .
    git commit -m "Update Open-Reflect landing page" 2>/dev/null || echo "没有新更改"
    git branch -M main
    git push -u origin main
    
    echo ""
    echo "✅ 推送完成！"
fi

echo ""
echo "📋 下一步：部署到 Vercel"
echo "1. 访问 https://vercel.com"
echo "2. 点击 'Add New...' → 'Project'"
echo "3. 选择你的 GitHub 仓库"
echo "4. 点击 'Deploy'"
echo ""
echo "🎉 完成！访问生成的 URL 即可查看网站。"
