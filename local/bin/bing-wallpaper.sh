#!/usr/bin/env bash

export PATH=$PATH:/usr/local/bin

PICTURE_DIR="$HOME/Pictures/bing-wallpapers/"
LOCALE=zh-CN
mkdir -p $PICTURE_DIR

for i in {0..7}; do
	URL="http://s.cn.bing.net"`curl -s "http://www.bing.com/HPImageArchive.aspx?format=js&idx=$i&n=1&mkt=$LOCALE" | jq -r '.images[0].url'`
	wget -q -nc -P $PICTURE_DIR $URL
done
