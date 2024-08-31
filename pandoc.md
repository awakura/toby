---
title: GitHUBとPandocについて学んだこと（トビハゼサイトを作っているうちに）
header-includes:
	<meta name="keywords" content="トビハゼ,pandoc,2355toby,Toby the mudskipper,P Modestus" />
	<meta name="description" content="トビハゼサイトを作っているうちに、GitHUBとPandocについて学んだこと" />
	<link rel="icon" href="https://awakura.github.io/toby64.png" sizes="64x64" type="image/png" /> 
	<link rel="icon" href="https://awakura.github.io/toby32.png" sizes="32x32" type="image/png" />  
	<link rel="apple-touch-icon-precomposed" href="https://awakura.github.io/toby150.png" />
---

# GitHUBとPandocについてわかったこと

## 特に大事な情報

[pandocの日本語訳プロジェクト](https://pandoc-doc-ja.readthedocs.io/ja/latest/users-guide.html)

pandocでできること増えたりするから、たまに見直した方がいい。
フリーでpdfにもoutputできるらしい。みんな入れた方がいい。

[GitHub auctions](https://docs.github.com/ja/actions)

個人プロジェクトはGitHUB Auctionsを利用できる。
metaタグを自動でくっつけようと思ったが、ずっとScript Errorが出てうまくいってない。
できること増えたりするから、たまに見直した方がいい。


```md はutf-8 がデフォルト。困ったら、
#pandoc -s -o index.html README.md
#file --mime <filename>
#iconv -f -t    change charset
```


## 隠しファイルをUploadしようとするGitHUB Studio対策

```
touch .gitignore
して、.DS_Store
とかファイルに書くと幸せに。
自分自身、 .gitignore
も書いとかないとアップロードされそうになる。
```


## titleをpandocのコマンドラインで入れる

```titleをコマンドラインで突っ込む
pandoc -s -c github.css -o species.html species.md --metadata title="Multi-lingual references for mudskippers"
echo $?
```

## metaタグやアイコン、titleをmd, Markdown上に記述するには、mdファイル上部に下記のようなYAML風記述を書いてpandocで変換すればOK

```Markdownで、アイコン設定して、pandocする。
---
title: GitHUBとPandocについて学んだこと（トビハゼサイトを作っているうちに）
header-includes:
	<meta name="keywords" content="トビハゼ,pandoc,2355toby,Toby the mudskipper,P Modestus" />
	<meta name="description" content="トビハゼサイトを作っているうちに、GitHUBとPandocについて学んだこと" />
	<link rel="icon" href="https://awakura.github.io/toby64.png" sizes="64x64" type="image/png" /> 
	<link rel="icon" href="https://awakura.github.io/toby32.png" sizes="32x32" type="image/png" />  
	<link rel="apple-touch-icon-precomposed" href="https://awakura.github.io/toby150.png" />
---
```


