# Magical Fireworks

[![release](https://img.shields.io/github/release/iruru1111/Magical-Fireworks?logo=github)](https://github.com/iruru1111/Magical-Fireworks/releases)
[![LICENSE](https://img.shields.io/github/license/iruru1111/Magical-Fireworks?logo=github)](https://github.com/iruru1111/Magical-Fireworks/blob/master/LICENSE)
[![downloads](https://img.shields.io/github/downloads/iruru1111/Magical-Fireworks/total?logo=github)](https://github.com/iruru1111/Magical-Fireworks/releases/latest)  
花火を打ちまくろう！

## 動作環境

Minecraft 1.20.4

## 使い方

Releasesからダウンロードして自分のワールドのdatapacksに放り込んでね。  
導入に成功すれば導入成功のメッセージが表示されるよ。

とりあえずなんでもいいから動かしてみたい！っていうなら以下のサンプルを動かしてみてね。
```mcfunction
サンプル
/function magical_fireworks:cmd/give/sample
```

### 花火のセット方法

○ 手順1  
好きな花火を作ろう！  
花火(firework_rocket)ならなんでも対応している…はず  

○ 手順2  
作成した花火をシュルカーボックスに配置しよう！  
一列目には必ず花火を入れてください。  
一列目以外の列には花火が無くても、まばらに配置しても発射できます。
![2025-02-17_16 57 05](https://github.com/user-attachments/assets/5f2935ab-e570-4017-b93d-11521b2209d0)  

以下の画像のように配置してもOK!  
左から順に1,2,3...列となっていて、上から順に中,右,左となっています。  
これは花火がどの方向に発射されるか決められます。  
（順番はこの後説明する方法で変えられますが、基本的には左から右に順番が移ると考えてください。）
![fireworks1](https://github.com/user-attachments/assets/1c3b548f-3d18-4347-9b9a-6a8f17ad73c0)  

○ 手順3
シュルカーボックスに名前を付けよう！  
花火の発射順番を決められます。対応している名前は以下の通り。  
・asc または ascending : 昇順、左から順番に進んで、端に行ったらまた左から順番に進む  
・desc または descending : 降順、右から順番に進んで、端に行ったらまた右から順番に進む  
・random : ランダム、順不同で発射される(なるべく全列に花火をセットしておくことをおすすめします。)  
以下の画像はasc(昇順)で行なった時のスクショ  
![2025-02-17_17 23 03](https://github.com/user-attachments/assets/0380b132-dd3e-43e7-9c1e-ea47fb75b6e5)  

○ 手順4
シュルカーボックスをインベントリ9番に配置しよう！  
いずれかのパターンに名前を変更した花火入りのシュルカーボックスをインベントリの左上に配置してください。  
![2025-02-17_17 25 09](https://github.com/user-attachments/assets/c7a3fd92-6485-4843-951d-869fdafbed8e)  

○ 手順5
Magical Fireworksを手に持って打ってみよう！  
以下のコマンドで入手可能  
```mcfunction
メインとなるアイテムの入手
/function magical_fireworks:cmd/give/magical_fireworks
```
この状態であればMagical Fireworksに花火がセットされるはずです。  
花火がセットされればシュルカーボックスは別の場所に保管しても問題ありません。  
![2025-02-17_17 27 46](https://github.com/user-attachments/assets/eacf2452-d381-4c60-aff0-cd43dd401cfa)  

### そのほかの説明

・Magical Fireworksの上書きをするにはどうすればいいの？  
もう一度シュルカーボックスの中身を入れ替えてインベントリ左上に配置した状態でMagical Fireworksを持つと変化するはずです。  
また複数持っていても動作します。ホイール操作連続で切り替えるとたまにバグるかも…

・Magical Fireworksって上書きを無効化できないの？  
Magical Fireworksの名前を金床等で書き換えれば上書きできなくなります。  
（ただし、見た目や名前の色が失われる。）  

## 技術的な小話とか

Magical Fireworks自体にシュルカーボックスのデータを保存しています。それなのでクリエイティブでのコピーにも対応していたりします。   
もともとは全く別の方法で作成していてほぼ完成状態だったのですが、それを一旦放棄して改めてアイテムにデータ保存する方式で作成したら、
いい感じにできてしまったのでこっちを採用しました。元々30hほど掛けてた作業が8hくらいで1日で終わったのマジで意味がわからない。  
他データパック作成の息抜きにこのデータパックを作り直しました。  
気が向いたら1.21以降のバージョン対応や、アップデートを行なうかもしれません。

## 謝辞

花火のサンプル案に[みゅーず](https://x.com/muse_syu)氏の[かわいい花火のレシピ](http://blog.livedoor.jp/muse_sekken/archives/10317102.html)を参考に使用させていただいています。  
この場を借りて御礼申し上げます。  

## ライセンス

このソフトウェアは、MITライセンスのもとで公開されています。詳しくは[LICENSE](https://github.com/iruru1111/Magical-Fireworks/blob/master/LICENSE)をご覧ください。  
These codes are released under the MIT License, see [LICENSE](https://github.com/iruru1111/Magical-Fireworks/blob/master/LICENSE).

## 連絡
https://twitter.com/iruru1111
