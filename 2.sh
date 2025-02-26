#!/bin/bash


# 出力ファイル名
target_file=/Users/zokusoukoyuzuru/Documents/GitHub/toby/ls-link.md

# 既存のファイルをクリア
echo "# File Links" > "$target_file"
echo "Markdown リンクを $target_file に出力します..."

# ls でファイル一覧を取得し、Markdown リンクとして出力

read_file=/Users/zokusoukoyuzuru/Documents/GitHub/toby/ls.md

while read LINE
do
    
    # ファイルのみ対象 (ディレクトリを除外したい場合 `-f` を追加)
    if [ -f "$LINE" ]; then
        echo "[$LINE](https://awakura.github.io/toby/glossaryForMudskipper.html/$LINE)" >> "$target_file"
    fi
done <$read_file

echo "完了: $target_file にリンクが作成されました。"



echo [--------- not sitemap.txt --------------]



