#!/bin/bash

#
#
#pandoc -s -o index.html README.md
#file --mime <filename>
#iconv -f -t    change charset
# md はutf-8 がデフォルト

#md に<head>入れていいか？

# pandoc -s -c github.css -o species.html species.md
# echo $?

pandoc -s -c github.css -o speciesMain.html speciesMain.md 
echo $?
pandoc -s -c github.css -o links.html links.md
echo $?
pandoc -s -c github.css -o easy.html easy.md 
echo $?
echo "easy.md"
pandoc -s -c github.css -o PModestusInTokyo.html PModestusInTokyo.md 
echo $?
pandoc -s -c github.css -o sched.html sched.md 
echo $?
pandoc -s -c github.css -o pandoc.html pandoc.md
echo $?
pandoc -s -c github.css -o distributionMudskipper.html distributionMudskipper.md
echo $?
echo "distribution.md"
pandoc -s -c github.css -o glossaryForMudskipper.html glossaryForMudskipper.md
echo $?
pandoc -s -c github.css -o riddleOfMudskipper.html riddleOfMudskipper.md
echo $?
pandoc -s -c github.css -o indexEn.html indexEn.md
echo $?
echo indexEn
pandoc -s -c github.css -o phylogeneticTrees.html phylogeneticTrees.md
echo $? phylogeneticTrees

pandoc -s -c github.css -o researchersPapers.html researchersPapers.md
echo $? researchersPapers



pandoc -s -c github.css -o nj.html nj.md
echo $? [on sitemap] nj.md 分子系統学、進化系統樹　超初心者向けまとめ


echo [--------by-pass--------------]
pandoc -s -c github.css -o log.html log.md 
echo $? [by-passing] log.md



echo [--------not on google ------]

pandoc -s -c github.css -o funny_log.html funny_log.md 
echo $? [not on sitemap] funny_log.md

pandoc -s -c github.css -o mudflat.html mudflat.md
echo $? [not on sitemap] mudflat.md

pandoc -s -c github.css -o marksheet.html marksheet.md
echo $? [not on sitemap] marksheet.md

pandoc -s -c github.css -o mudskipperRelatedItems.html mudskipperRelatedItems.md
echo $? [not on sitemap] mudskipper goods, books about 

pandoc -s -c github.css -o storiesMudskipper.html storiesMudskipper.md
echo $? [not on idex.html not on sitemap] mudskipper stories and hero

pandoc -s -c github.css -o howtosayTobihaze.html howtosayTobihaze.md
echo $? [not on idex.html not on sitemap] howtosay

pandoc -s -c github.css -o riddleOfMudskipper2-uncoverHumanMysteries.html riddleOfMudskipper2-uncoverHumanMysteries.md
echo $? [not on sitemap] riddle2

pandoc -s -c github.css -o riddleOfMudskipper3-jumpSpeed.html riddleOfMudskipper3-jumpSpeed.md
echo $? [not on idex.html not on sitemap]  riddle3

pandoc -s -c github.css -o frontierAnimalia.html frontierAnimalia.md
echo $? [not on idex.html not on sitemap] frontier

echo riddleOfMudskipperMada.md


rm lsold.md
cp -ip ls.md lsold.md
ls *md > ls.md
echo $? [ls *md]

diff ls.md lsold.md > /dev/null
if [ $? -eq 1 ]; then
    date -R >> lsdiff.md
    diff lsold.md ls.md >> lsdiff.md
fi

ls *html > html.md
echo $? [ls *html]



# echo ls.mdをls-linkに出力する。
# 出力ファイル名
target_file=/Users/zokusoukoyuzuru/Documents/GitHub/toby/ls-link.md
read_file=/Users/zokusoukoyuzuru/Documents/GitHub/toby/ls.md

echo "# File Links" > "$target_file"
echo "Markdown リンクを $target_file に出力します..."

# ls でファイル一覧を取得し、Markdown リンクとして出力
while read LINE
do
    
    # ファイルのみ対象 (ディレクトリを除外したい場合 `-f` を追加)
    if [ -f "$LINE" ]; then
        echo "[$LINE](https://awakura.github.io/toby/glossaryForMudskipper.html/$LINE)" >> "$target_file"
    fi
done <$read_file

echo "完了: $target_file にリンクが作成されました。"



echo [--------- not sitemap.txt --------------]



