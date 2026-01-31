# Open-Reflect Landing Page

这是 Open-Reflect 项目的官方网站首页。

## 预览

本地预览：
```bash
cd open-reflect-site
python3 -m http.server 8080
# 访问 http://localhost:8080
```

## 部署到 Vercel

### 方式一：Vercel CLI（推荐）

```bash
# 安装 Vercel CLI
npm install -g vercel

# 登录
vercel login

# 部署
cd open-reflect-site
vercel --yes
```

### 方式二：GitHub + Vercel 自动部署

1. 创建 GitHub 仓库
2. 推送代码：
   ```bash
   cd open-reflect-site
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/你的用户名/open-reflect-site.git
   git push -u origin main
   ```
3. 访问 [Vercel](https://vercel.com)
4. 点击 "Add New..." → "Project"
5. 选择你的 GitHub 仓库
6. 点击 "Deploy"

### 方式三：Cloudflare Pages（免费）

```bash
npm install -g wrangler
wrangler pages deploy ./ --project-name=open-reflect
```

## 网站功能

- ✅ 响应式设计
- ✅ 现代化渐变背景
- ✅ 动画效果
- ✅ 移动端适配
- ✅ 快速加载

## 技术栈

- 纯 HTML/CSS/JS
- 无需构建工具
- Vercel 零配置部署
