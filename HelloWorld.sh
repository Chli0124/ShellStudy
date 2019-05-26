#!/bin/bash
echo "Hello World!"
#将命令执行后的输入结果赋值给一个变量的两种方法
cur_path=$(pwd)
echo "pwd ret:" $cur_path
cur_path=$(ls)
echo "ls ret:"$cur_path
read -p "plz input msg to test echo:" InputMsg
echo "ur msg:" $InputMsg

function EchoCurPath()
{
	local loc_var="I am local var"
	echo "Begin to call EchoCurPath fn"
	cur_path=$(pwd)
	echo "current path:"$cur_path
	echo "loc_var(called in fn):" $loc_var
}
EchoCurPath