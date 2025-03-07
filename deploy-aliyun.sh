#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

echo "开始打包项目"
# 生成静态文件
npm run build
echo "打包完成"

# 进入生成的文件夹

echo "正在推送至阿里云服务器，请耐心等待"
scp -r dist root@www.guihurge.top:/www/wwwroot/my-react
echo "推送成功"

cd -
