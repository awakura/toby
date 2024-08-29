#!/bin/bash

#
#
#pandoc -s -o index.html README.md
#file --mime <filename>
#iconv -f -t    change charset
# md はutf-8 がデフォルト

#md に<head>入れていいか？

pandoc -s -c github.css -o species.html species.md --metadata title="Multi-lingual references for mudskippers"
echo $?
pandoc -s -c github.css -o speciesMain.html speciesMain.md --metadata title="English-Japanese References for common mudskippers"
echo $?
pandoc -s -c github.css -o log.html log.md --metadata title="Mudskipper related logs"
echo $?
pandoc -s -c github.css -o links.html links.md --metadata title="Mudskipper Links"
echo $?
pandoc -s -c github.css -o easy.html easy.md --metadata title="Easy aquarium for mudskippers"
echo $?
pandoc -s -c github.css -o PModestusInTokyo.html PModestusInTokyo.md --metadata title="Silverlined mudskipper in Tokyo, northern limit of stray mudskippers"
echo $?
pandoc -s -c github.css -o sched.html sched.md --metadata title="Mudskipper related events in world"
echo $?
pandoc -s -c github.css -o test.html test.md
echo $?


