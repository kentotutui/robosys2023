# plus & omikuzi 
## robosys2023

千葉工業大学 未来ロボティクス学科 2023年度 ロボットシステム学内で行った内容に、課題で作成したファイルを追加したものです。

[![test](https://github.com/kentotutui/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/kentotutui/robosys2023/actions/workflows/test.yml)

このリポジトリ内の[omikuzi](https://github.com/kentotutui/robosys2023/blob/main/omikuzi)は、BSD-3-Clauseライセンスで公開されている[Yuto2511](https://github.com/hide4096/robosys2022_Yuto2511.git)の[todays_dinner](https://github.com/hide4096/robosys2022_Yuto2511/blob/main/todays_dinner)(© 2022 Yamaguchi Yuto)を参考に作られています。

## 必要なソフトウェア
  * Python
    * テスト済み: 3.7~3.10

## テスト環境
  * Ubuntu 22.04 LTS

## インストール方法
使用する場合は、下記コマンドを打ち込み適当な場所にクローンしてください。

```shell
$ git clone https://github.com/kentotutui/robosys2023.git
$ cd robosys2023
```

## plus 使い方
標準入力を使い数字を読み込み、1～入力された数までの合計を出力します。

```shell
$ seq 5 | ./plus
15
```

## omikuzi 使い方
一日の運勢を占ってくれるコマンドです。
[omikuzi.txt](https://github.com/kentotutui/robosys2023/blob/main/omikuzi.txt)内のどれかをランダムで出力します。

```shell
$ ./omikuzi
大吉
```

## 著作権・ライセンス
  * このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
  * © 2023 Kento Tsutsui
