#!/bin/bash

#
#
#pandoc -s -o index.html README.md
#file --mime <filename>
#iconv -f -t    change charset
# md はutf-8 がデフォルト

#md に<head>入れていいか？

pandoc -s -c github.css -o species.html species.md
pandoc -s -c github.css -o log.html log.md
pandoc -s -c github.css -o links.html links.md
pandoc -s -c github.css -o easy.html easy.md
pandoc -s -c github.css -o PModestusInTokyo.html PModestusInTokyo.md



