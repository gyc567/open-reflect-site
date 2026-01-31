# Open-Reflect 网站部署

## 快速部署到 Vercel

### 方法一：Vercel 网页（最简单）

1. 访问 https://vercel.com
2. 点击 **"Add New..."** → **"Project"**
3. 选择仓库 **"gyc567/open-reflect-site"**
4. 点击 **"Deploy"**
5. 获取免费网址！

### 方法二：Vercel CLI

```bash
# 安装 Vercel CLI
npm install -g vercel

# 登录
vercel login

# 部署
cd open-reflect-site
vercel --prod
```

### 方法三：GitHub + Vercel 自动部署（推荐）

1. 访问 https://vercel.com
2. 点击 **"Add New..."** → **"Project"**
3. 选择 **"Import Git Repository"**
4. 选择 **"gyc567/open-reflect-site"**
5. Vercel 会自动检测为静态网站
6. 点击 **"Deploy"**

## 部署后

- 网站地址格式：`https://open-reflect-site.vercel.app`
- 管理面板：`https://vercel.com/dashboard`
- 自定义域名：在 Vercel 设置中添加

## 文件说明

- `index.html` - 主页面
- `vercel.json` - Vercel 部署配置
- `deploy.sh` - 手动部署脚本

## 状态

✅ GitHub 仓库已创建：https://github.com/gyc567/open-reflect-site
⏳ Vercel 部署：等待用户操作
