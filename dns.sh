#!/bin/sh

if [ $# -eq 0 ]; then
    if [ -f /etc/resolv.conf.openvpn ]; then
        sudo mv /etc/resolv.conf /etc/resolv.conf.symlink
        sudo mv /etc/resolv.conf.openvpn /etc/resolv.conf
    fi
fi

if [ $# -eq 1 ]; then
    if [ $1 = "revert" ]; then
        if [ -f /etc/resolv.conf.symlink ]; then
            sudo mv /etc/resolv.conf /etc/resolv.conf.openvpn
            sudo mv /etc/resolv.conf.symlink /etc/resolv.conf
        fi
    fi
fi

