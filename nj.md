---
title: 分子系統学、進化系統樹　超初心者向けまとめ
header-includes:
	<meta name="keywords" content="トビハゼ,2355toby,Toby the mudskipper,P Modestus,進化系統樹,NJ法" />
	<meta name="description" content="分子系統学、進化系統樹　超初心者向けまとめ" />
	<link rel="icon" href="https://awakura.github.io/toby64.png" sizes="64x64" type="image/png" /> 
	<link rel="icon" href="https://awakura.github.io/toby32.png" sizes="32x32" type="image/png" />  
	<link rel="apple-touch-icon-precomposed" href="https://awakura.github.io/toby150.png" />
---

[Return to top](https://awakura.github.io/)

___

# 分子系統学、進化系統樹　超初心者向けまとめ

進化系統樹について、素人がまとめました。高校生程度の知識を想定しています。素人がまとめたので嘘ばっかりかと思います。
間違っているところあれば、
[Twitter : homemaku](https://x.com/homemaku)
までツッコミください。


## 進化系統樹の概要

一種類の祖先ががあるやつは有根系統樹、祖先がいないものを系統樹としてグルーピングしたものは無根系統樹、となります。
でもまあ無根系統樹も、一番長い枝を真ん中で折ってrootにするとそれっぽくなります。

<img src="https://cdn-ak.f.st-hatena.com/images/fotolife/a/awaq/20250103/20250103111323.png">

クラスタリング（グルーピング）に目が行きがちですが、有根系統樹も、無根系統樹も「枝の長さが大事」です。これが計算された遺伝的距離を表しています。

進化系統樹の作り方の流れは、大きく二段階に別れます。

1. 距離行列の作成
1. 系統樹の作成

距離行列の作成も、系統樹の作成も、どの方式を選ぶか、どの変異を選ぶかで、うまく作成できるかどうかが変わってきます。
だから生物横断のでかい系統樹ってなかなか作りにくいのかもしれません

## 距離行列の作成

距離行列はこんなやつです。

<img src="https://cdn-ak.f.st-hatena.com/images/fotolife/a/awaq/20250103/20250103104313.png">

距離行列の作成方法はいろいろ有ります。
単純に、塩基の変異数を下記のように数えた例が距離行列として使われたりするそうです。

1. どの部位を
1. どう数えるか

で大いに中身が変わってきそうです。

DNAの特定部分やタンパク質、トランスポゾンの転移数などに着目するSINE法など、方法はいろいろ有りそう。
また、変更と挿入、削除の重み付の違いや、同一タンパク質への翻訳となるが塩基上では変異となるものをどう扱うかなど、
チューニングがかなりある。

種間差によって、分類に最適な様々な方法が有りますが、なかなか全世代統一的に図るなどは難しい。
どの部位に着目するかで結果が大きく異なったりするようだ。

[距離行列法 Wikipedia](https://ja.wikipedia.org/wiki/%E8%B7%9D%E9%9B%A2%E8%A1%8C%E5%88%97%E6%B3%95)

## 系統樹の作成

Wikipediaによれば下記がメジャーそうです。

1. UPGMA（最も直感的なグルーピング方法。クラスタリングに近い）
1. 近隣結合法（NJ法 Neighbor Joinning。）
1. 最小進化法
1. 系統的最小二乗法

### UPGMAと近隣結合法の違い。

*UPGMA*

1. UPGMAは直感的で分かりやすい。
1. 進化距離の枝ごとの一定性を仮定しているため、一般に一定性が成り立たない自然界では正確性が低い一方、分岐年代を系統樹上に表示できるため分子時計を仮定できるデータの解析に適している。
1. しかしクラスタリングに失敗することがある。

*近隣結合法*

1. 数学的に必ず解が出て、距離的には必ず近距離になるクラスタリング
1. 進化距離の枝ごとの一定性を仮定していない
　つまり、共通祖先から分岐後変化が少ないグループと、共通祖先から分岐後変化が多いグループが、グルーピングされる。
1. 作成されたノード（分岐）上の仮想祖先は、クラスタリングよりも最終リーフ間の距離として求められるので、仮想度が高く共通祖先より遠い可能性がある。（進化距離の枝ごとの一定性を仮定していない）

[近隣結合法Wikipedia](https://ja.wikipedia.org/wiki/%E8%BF%91%E9%9A%A3%E7%B5%90%E5%90%88%E6%B3%95)

### UPMGAの例

京都大学の阿久津先生の授業pdfが死ぬほど分かりやすいです。

<img src="https://cdn-ak.f.st-hatena.com/images/fotolife/a/awaq/20250103/20250103104605.png">

[阿久津先生のpdf](https://www.bic.kyoto-u.ac.jp/takutsu/members/takutsu/sysbioinfo2019c.pdf)

上記の阿久津先生のプレゼンにより、Lengthの数値などは読めるようになりました。

NJ法は、距離Dについて下記式が成り立ちます。
種a, b間の分岐ノード（仮想的な共通祖先x）がいたとして、D(a,b)= D(a,x)+D(b,x)


## 作成した系統樹の検証方法

今世紀起こったCOVID19の進化などを除けば、進化過程を見た人間はいなく、化石標本も十分でないため
系統樹の正当性の検証、すなわち、距離行列の方式選定と系統樹形状の正当性の検証は、
遺伝子の変異確率を使って、サイコロを振る（モンテカルロ法）再現実験で行っているそうです。

今メジャーなプロセスは下記のようになるそうです。

1. 塩基などの変異の確率を仮定し　　
1. 実際数千回施行してみたあと、似たような樹形になるか検証する


*樹形図に書いてある数字*

信頼区間の数値である。
68–95–99.7 rule のように、そのクラスタリングが何σに入るかを見る。例えば正規分布であれば、そのクラスタが2σに収まれば、95が表示される。

*留意事項*

ただ、塩基などの変異の確率を仮定してあるが（AATATがAATTTになる確率など）
反応場の問題もあるから、なかなか既知の値をよその種類から持ってくるのも難しそう。
ミトコンドリアは、直近何万年くらいをみるのに便利らしい。５k年くらいしか見れないらしい。


