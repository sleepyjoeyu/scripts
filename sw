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

if [[ $option =~ ^[0-9]+$ ]];then
        if [ $option -ge $n ];then
                echo "Out of Scope..."
                exit
        fi
        var=${array["$option"]}
	export KUBECONFIG="$targetpath/$var"
	echo "Successlly change KUBECONFIG to $KUBECONFIG"
else
        echo "Please input integer only!!"
        exit
fi









