#!/bin/bash
############################################################
# 列出targetpath下放置的kubeconfig設定檔作為選擇
# 以變更 KUBECONFIG變數，切換不同K8s Clutser
############################################################



targetpath="/root/config"
c=0
n=$(ls $targetpath | wc -l)
array=()


for i in $(ls $targetpath); do 
	echo "$c - $i" 
	array+=("$i")
	c=$[c+1]
done
echo "Input select number:"
read option

if [ $option  -ge $n ];then
	echo "Wrong options!"
	exit
else
	var=${array["$option"]}
	export KUBECONFIG="$targetpath/$var"
	echo "Successlly change KUBECONFIG to $KUBECONFIG"

fi	









