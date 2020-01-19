#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/rancher/k3s/releases/download

dl()
{
    local ver=$1
    local arch=$2
    local url=$MIRROR/$ver/sha256sum-${arch}.txt
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $arch `curl -sSL $url | grep k3s | grep -v airgap | awk '{print $1}'`
}

dl_ver() {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver amd64
    dl $ver arm64
    dl $ver arm
}


dl_ver ${1:-v1.17.0+k3s.1}
