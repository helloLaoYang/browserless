!/bin/bash

# 用于构建喜chromium

docker_registry="registry.cn-hangzhou.aliyuncs.com/golucky-daily/chrome"
docker_version=${1:-latest}

echo "📒 $ → start building."

docker buildx build . \
  --rm  \
  --push \
  --platform linux/amd64,linux/arm64 \
  -t $docker_registry:$docker_version \
  -f docker/chromium/Dockerfile

echo "💼 docker image build completed!"
