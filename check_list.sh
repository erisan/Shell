#!/bin/bash
# usage: sh check_list.sh

# listA
export correct_list="../list.txt"
 # 指定のファイルの変数${}を抜き出して、リスト中にあるかどうかをチェックする
 # リストのフォーマットは下記とすること
 # ${hoge} 説明文

cd $1

pwd

echo "in target direcotory?"
read 

# リストB作成
egrep -o -r \\$\{.+?\} * | awk -F':' '{ print $2 }' | tr " " "\n" | grep "\\$" | sort | uniq  > reslt_list.txt

for item in `cat reslt_list.txt`
do
  export item2="`grep $item ${correct_list} | awk '{ print $1 }'`"
  echo $item $item2
  if [ "$item" != "$item2" ]; then echo NG | egrep --color . ;fi
  echo
done

