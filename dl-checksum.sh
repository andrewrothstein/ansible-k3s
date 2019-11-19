#!/usr/bin/env sh
VER=${1:-v1.0.0}
DIR=~/Downloads
MIRROR=https://github.com/rancher/k3s/releases/download/${VER}

dl()
{
    local arch=$1
    url=$MIRROR/sha256sum-${arch}.txt
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $arch `curl -sSL $url | grep k3s | grep -v airgap | awk '{print $1}'`
}

printf "  %s:\n" $VER
dl amd64
dl arm64
dl arm


