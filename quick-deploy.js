#!/usr/bin/env node

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

console.log('🚀 Vue.js 应用一键部署工具\n');

// 检查环境
function checkEnvironment() {
    console.log('📋 检查部署环境...');
    
    try {
        execSync('node --version', { stdio: 'ignore' });
        console.log('✅ Node.js 已安装');
    } catch (error) {
        console.log('❌ Node.js 未安装');
        process.exit(1);
    }
    
    try {
        execSync('npm --version', { stdio: 'ignore' });
        console.log('✅ npm 已安装');
    } catch (error) {
        console.log('❌ npm 未安装');
        process.exit(1);
    }
}

// 构建项目
function buildProject() {
    console.log('\n📦 构建项目...');
    
    try {
        execSync('npm run build', { stdio: 'inherit' });
        console.log('✅ 构建成功');
    } catch (error) {
        console.log('❌ 构建失败');
        process.exit(1);
    }
}

// 选择部署方式
function selectDeployment() {
    console.log('\n🌐 选择部署方式:');
    console.log('1. Vercel (推荐)');
    console.log('2. Netlify');
    console.log('3. 显示部署指南');
    
    const readline = require('readline');
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });
    
    rl.question('\n请输入选择 (1-3): ', (answer) => {
        switch (answer) {
            case '1':
                deployToVercel();
                break;
            case '2':
                deployToNetlify();
                break;
            case '3':
                showDeploymentGuide();
                break;
            default:
                console.log('❌ 无效选择');
                process.exit(1);
        }
        rl.close();
    });
}

// Vercel 部署
function deployToVercel() {
    console.log('\n🌐 部署到 Vercel...');
    
    try {
        execSync('vercel --version', { stdio: 'ignore' });
    } catch (error) {
        console.log('📥 安装 Vercel CLI...');
        execSync('npm install -g vercel', { stdio: 'inherit' });
    }
    
    try {
        execSync('vercel --prod', { stdio: 'inherit' });
        console.log('🎉 部署成功！');
    } catch (error) {
        console.log('❌ 部署失败，请检查 Vercel 配置');
    }
}

// Netlify 部署
function deployToNetlify() {
    console.log('\n🌐 Netlify 部署指南:');
    console.log('1. 访问 https://app.netlify.com/drop');
    console.log('2. 将 dist 文件夹拖拽到页面');
    console.log('3. 等待部署完成');
    console.log('\n📁 dist 文件夹位置:', path.resolve(__dirname, 'dist'));
}

// 显示部署指南
function showDeploymentGuide() {
    console.log('\n📖 详细部署指南请查看:');
    console.log('- DEPLOYMENT.md');
    console.log('- deploy.md');
    console.log('\n🌐 在线访问: https://your-domain.com');
}

// 主函数
function main() {
    checkEnvironment();
    buildProject();
    selectDeployment();
}

// 运行
main();