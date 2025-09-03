# 🚀 Vue.js 应用部署指南

## 快速部署（推荐方案）

### 方案一：Vercel 部署 ⭐
**最简单，完全免费，支持自定义域名**

```bash
# 1. 安装 Vercel CLI
npm install -g vercel

# 2. 登录 Vercel
vercel login

# 3. 部署
vercel --prod
```

**优势：**
- ✅ 免费 HTTPS 证书
- ✅ 全球 CDN 加速
- ✅ 自动构建部署
- ✅ 支持自定义域名
- ✅ 零配置

---

### 方案二：Netlify 部署
**拖拽式部署，简单易用**

```bash
# 1. 构建项目
npm run build

# 2. 访问 https://app.netlify.com/drop
# 3. 将 dist 文件夹拖拽到页面
```

**优势：**
- ✅ 拖拽式部署
- ✅ 免费 HTTPS
- ✅ 表单处理功能
- ✅ 分支预览

---

### 方案三：GitHub Pages
**与 GitHub 深度集成**

1. 推送代码到 GitHub
2. 启用 GitHub Pages
3. GitHub Actions 会自动部署

**优势：**
- ✅ 与 GitHub 集成
- ✅ 自动化部署
- ✅ 版本控制

---

## 高级部署方案

### Docker 部署
```bash
# 构建镜像
docker build -t vue-chat-app .

# 运行容器
docker run -p 80:80 vue-chat-app
```

### 云服务器部署

#### 1. 阿里云/腾讯云 ECS
```bash
# 安装 Node.js 和 Nginx
sudo apt update
sudo apt install nodejs npm nginx

# 构建项目
npm run build

# 配置 Nginx
sudo cp nginx.conf /etc/nginx/sites-available/default
sudo systemctl restart nginx
```

#### 2. 使用 PM2 管理进程
```bash
# 安装 PM2
npm install -g pm2

# 启动应用
pm2 start npm --name "vue-app" -- run serve
pm2 startup
pm2 save
```

---

## 移动端优化

### 响应式设计
- ✅ 已配置 viewport meta 标签
- ✅ 支持触摸操作
- ✅ 禁用缩放以提供原生体验

### PWA 支持（可选）
如需 PWA 功能，可添加：
- Service Worker
- Web App Manifest
- 离线缓存

---

## 域名配置

### 自定义域名
1. **Vercel**: 在项目设置中添加域名
2. **Netlify**: 在域名设置中添加
3. **云服务器**: 配置 DNS 解析

### HTTPS 配置
- Vercel/Netlify: 自动提供
- 云服务器: 使用 Let's Encrypt

---

## 性能优化

### 构建优化
```bash
# 分析包大小
npm run build --report

# 启用 Gzip 压缩（已在 nginx.conf 中配置）
```

### CDN 加速
- 静态资源使用 CDN
- 图片压缩优化
- 代码分割

---

## 监控和分析

### 推荐工具
- Google Analytics
- Sentry（错误监控）
- Lighthouse（性能分析）

---

## 常见问题

### Q: 部署后页面空白？
A: 检查构建路径配置，确保 `PUBLIC_PATH` 正确

### Q: 路由 404 错误？
A: 配置服务器支持 SPA 路由（已在 nginx.conf 中配置）

### Q: 移动端显示异常？
A: 检查 viewport 配置和 CSS 媒体查询

---

## 联系支持
如遇到部署问题，请检查：
1. 构建日志
2. 浏览器控制台
3. 网络请求状态