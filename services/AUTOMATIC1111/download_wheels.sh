#!/bin/bash

# wheelsディレクトリを作成
mkdir -p wheels

# パッケージのURLリスト
PACKAGES=(
    "https://github.com/huchenlei/HandRefinerPortable/releases/download/v1.0.1/handrefinerportable-2024.2.12.0-py2.py3-none-any.whl"
    "https://github.com/huchenlei/Depth-Anything/releases/download/v1.0.0/depth_anything-2024.1.22.0-py2.py3-none-any.whl"
    "https://github.com/MackinationsAi/UDAV2-ControlNet/releases/download/v1.0.0/depth_anything_v2-2024.7.1.0-py2.py3-none-any.whl"
    "https://github.com/sdbds/DSINE/releases/download/1.0.2/dsine-2024.3.23-py3-none-any.whl"
)

# パッケージをダウンロード
for url in "${PACKAGES[@]}"; do
    echo "Downloading: $url"
    wget -P wheels "$url"
done

echo "All packages downloaded successfully!"

