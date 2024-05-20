#!/bin/bash

#
#
#pandoc -s -o index.html README.md
#file --mime <filename>
#iconv -f -t    change charset
# md はutf-8 がデフォルト

#md に<head>入れていいか？


for f in ./*.md; do

    pandoc -s -c github.css -o tmp.html $f --metadata title="Toby the mudskipper 2355toby 楽して泥干潟水槽を作る"
    sed 's/.md/.md.html/g' tmp.html > $f.html
  # ファイル一つ毎の処理
  echo "file: $f"
 
done

mv README.md.html index.md.html


