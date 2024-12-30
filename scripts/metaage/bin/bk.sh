#!/bin/bash -xv

home="/home/joe"
bktarget="$home/note.txt"
surffix=$(date +%y-%m-%d)
bklocation="$home/backup"


for i in $bktarget;do

	cp -av $i $bklocation/${i##*/}-$surffix
done
