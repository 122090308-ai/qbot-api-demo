# 🎯 快速部署指南

## 一键部署（推荐）

```bash
# 方式一：使用部署脚本
node quick-deploy.js

# 方式二：使用 Bash 脚本（Linux/Mac）
./deploy.sh

# 方式三：手动 Vercel 部署
npm install -g vercel
vercel --prod
```

## 📱 移动端访问优化

你的应用已经针对移动端进行了优化：
- ✅ 响应式设计
- ✅ 触摸友好
- ✅ 禁用缩放
- ✅ 全屏体验

## 🌍 访问地址

部署成功后，你将获得：
- **Vercel**: `https://your-app.vercel.app`
- **Netlify**: `https://your-app.netlify.app`
- **自定义域名**: 可在平台设置中配置

## 🔧 环境配置

项目已配置生产环境：
- API 地址：`https://lke.cloud.tencent.com`
- WebSocket：`wss://wss.lke.cloud.tencent.com`
- 静态资源：CDN 加速

## 📊 性能优化

- Gzip 压缩
- 静态资源缓存
- CDN 分发
- 代码分割

## 🚀 立即开始

选择最适合你的部署方式：

1. **最简单**: Vercel（推荐新手）
2. **最灵活**: 云服务器（适合高级用户）
3. **最便宜**: GitHub Pages（完全免费）

---

**需要帮助？** 查看 `DEPLOYMENT.md` 获取详细指南