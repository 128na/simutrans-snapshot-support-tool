# Simutrans 一括スクリーンショット撮影支援スクリプト

OTRPの座標指定スクリーンショット撮影機能を利用して一括撮影できるスクリプトです

# 使い方
  Simutransの実行ファイル `simutrans.exe` と同じフォルダに `snap.ps1` を入れ、下記コマンドで実行できます。

## `.\snap.ps1`

`save` フォルダ内の各セーブデータに対し、フルスクリーンモードで座標(0,0) を中心に等倍ズームのスクリーンショットが撮影します。

## `.\snap.ps1 -x 100 -y 200 -f 8 -file test_*.sve`

`save` フォルダ内の `test_*.sve` にマッチする各セーブデータに対し、
フルスクリーンモードで座標(100,200) を中心に最大ズームアウト(1/4)のスクリーンショットが撮影します。

## 引数

### `-x`, `-y`, `-z`

ゲーム内の座標を指定できます。未指定の場合は0になります。

### `-f`

ズームアウトレベルを指定します。

|f|倍率|
|---|---|
|0  |2/1|
|1  |3/2|
|2  |4/3|
|3  |**1/1**|
|4  |3/4|
|5  |5/8|
|6  |**1/2**|
|7  |3/8|
|8  |**1/4**|
|9  |**1/8**|

太字の倍率はピクセルがボケないためおススメです。

### `-file`

セーブデータのファイル名を指定します。
`*` など一般的なワイルドカード指定が可能です。
