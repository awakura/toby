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



echo [--------- not sitemap.txt --------------]



