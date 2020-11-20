#!/bin/bash
# ========================
# install IPaTool script
# 2014/12/2 by IPa
# ========================
if [[ -d IPaTool ]]; then
    rm -R IPaTool
fi
mkdir IPaTool
files=$PWD/*
for f in $files
do
	filename=${f##*/}
	if [ "$filename" = "install.sh" ];then
		continue	
	elif [ "$filename" = "IPaTool" ];then
		continue
	fi
	echo "copy $filename...."
	if [[ -d $f ]]; then
		cp -R "$f" IPaTool/
	elif [[ -f $f ]]; then
		cp $f IPaTool/
	fi
done
currentPath=$PWD
cd ~/Library
TEMPLATE_PATH="${PWD}/Developer/Xcode/Templates/File Templates"
if [[ ! -d "$TEMPLATE_PATH" ]]; then
mkdir -p "$TEMPLATE_PATH"
fi
if [[ -d "${TEMPLATE_PATH}/IPaTool" ]]; then
rm -R "${TEMPLATE_PATH}/IPaTool"
fi

cd $currentPath
mv -f IPaTool "${TEMPLATE_PATH}"