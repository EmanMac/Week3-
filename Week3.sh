#!/bin/bash

echo "The /dev folder contains drivers as opposed to standard files so in most cases something like a text would be thrown out."

echo perfunctory dribble > /dev/null

echo "like so, the data was just discarded."

cd /dev

echo "if we do an ls -l in the dev folder we can see specific information, including the first letters, which represent, b=block devices, c=Character device, Pipe device, and s=socket device."

ls -l

echo "blkid and lsblk can show you information about the type of content a device holds.I could only seem to get it running using a sudo command, so if anyone knows a better way I would love to know how."

sudo blkid
lsblk

echo " if we run find /sys | grep sd | less we are searching for device files. That command spews out a ton of information we wont need so I am going to tail that command."
echo ""

find /sys | grep sd | less | tail -5

echo "and now we can take a quick glance at our partitions"
cd /proc
cat /proc/partitions

echo "The major number corresponds with the block device"
echo " The minor serves to separate the partitions into different physical devices."
echo " Blocks lists the number of physical disc blocks contained on a partition."
echo " And name, well, I'll leave that deduction up to you. "

echo "I've been having trouble with the dd command, if anyone has any advice please help, when I hexdump and read the file I see 'cannot exexute binary file: Exec format error, and my googlefu is coming up short."
