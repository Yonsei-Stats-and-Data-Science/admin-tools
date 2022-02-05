#!/bin/sh
UNAME=$1
sudo useradd -s /bin/bash -m -d /mnt/nas/users/$UNAME -G yonsei $UNAME && sudo passwd $UNAME
