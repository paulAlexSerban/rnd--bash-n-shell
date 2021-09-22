#!/bin/bash

# Clear PageCache only
echo 'BEFORE ===== PageCache Clearing'
free -h
sudo sh -c 'echo 1 >  /proc/sys/vm/drop_caches'
echo 'AFTER ===== PageCahce Clearing and BEFORE ===== dentries and inodes Clearing'
free -h
# Clear dentries and inodes
sudo sh -c 'echo 2 >  /proc/sys/vm/drop_caches'
echo 'AFTER ===== dentries and inodes Clearing '
free -h

# Clear Swap Space in Linux
sudo swapoff -a
sudo swapon -a
echo 'AFTER ===== swap memory cleaning'
free -h