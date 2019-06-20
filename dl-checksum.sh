#!/usr/bin/env sh
VER=v0.6.1
DIR=~/Downloads
MIRROR=https://github.com/rancher/k3s/releases/download/${VER}

dl()
{
    PLATFORM=$1
    FILE=sha256sum-${PLATFORM}.txt
    URL=$MIRROR/$FILE
    printf "# %s\n%s: sha256:%s\n" $URL $PLATFORM `curl -sSL $URL | grep k3s | grep -v airgap | awk '{print $1}'`
}

dl amd64
dl arm64
dl arm


