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



echo [--------by-pass--------------]
#pandoc -s -c github.css -o log.html log.md 
echo $? [by-passing] log.md



echo [--------not on google ------]
pandoc -s -c github.css -o daily_log.html daily_log.md 
echo $? [not on sitemap] daily_log.md

pandoc -s -c github.css -o funny_log.html funny_log.md 
echo $? [not on sitemap] funny_log.md


echo [--------- not sitemap.txt --------------]



