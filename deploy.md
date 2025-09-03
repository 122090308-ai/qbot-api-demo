# 部署指南

## 方案一：Vercel 部署（推荐）

### 步骤：
1. 安装 Vercel CLI：
   ```bash
   npm install -g vercel
   ```

2. 登录 Vercel：
   ```bash
   vercel login
   ```

3. 部署项目：
   ```bash
   vercel --prod
   ```

### 优势：
- 免费 HTTPS 证书
- 全球 CDN 加速
- 自动构建和部署
- 支持自定义域名

---

## 方案二：Netlify 部署

### 步骤：
1. 构建项目：
   ```bash
   npm run build
   ```

2. 将 `dist` 文件夹拖拽到 Netlify 网站

### 优势：
- 简单易用
- 免费 HTTPS
- 表单处理功能

---

## 方案三：GitHub Pages + Actions

### 步骤：
1. 推送代码到 GitHub
2. 启用 GitHub Pages
3. 使用 GitHub Actions 自动部署

---

## 方案四：云服务器部署

### 适用于需要后端服务的场景
- 阿里云 ECS
- 腾讯云 CVM  
- AWS EC2

### 部署步骤：
1. 购买云服务器
2. 安装 Node.js 和 Nginx
3. 构建并上传项目
4. 配置 Nginx 反向代理