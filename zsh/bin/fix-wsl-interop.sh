#!/bin/bash
# Fix the WSLInterop broken issue
if [ ! -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    sudo mount -t binfmt_misc none /proc/sys/fs/binfmt_misc 2>/dev/null
    echo ':WSLInterop:M::MZ::/init:PF' | sudo tee /proc/sys/fs/binfmt_misc/register >/dev/null
fi
