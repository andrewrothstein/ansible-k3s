#!/usr/bin/env sh
VER=v0.8.0
DIR=~/Downloads
MIRROR=https://github.com/rancher/k3s/releases/download/${VER}

dl()
{
    PLATFORM=$1
    FILE=sha256sum-${PLATFORM}.txt
    URL=$MIRROR/$FILE
    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `curl -sSL $URL | grep k3s | grep -v airgap | awk '{print $1}'`
}

printf "  %s:\n" $VER
dl amd64
dl arm64
dl arm


