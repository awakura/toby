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
pandoc -s -c github.css -o log.html log.md 
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
pandoc -s -c github.css -o log.html log.md
echo $?
pandoc -s -c github.css -o pandoc.html pandoc.md
echo $?
pandoc -s -c github.css -o distributionMudskipper.html distributionMudskipper.md
echo $?
echo "distribution.md"
pandoc -s -c github.css -o glossaryForMudskipper.html glossaryForMudskipper.md
echo $?
pandoc -s -c github.css -o divergenceTimeMudskipper.html divergenceTimeMudskipper.md
echo $?
pandoc -s -c github.css -o indexEn.html indexEn.md






