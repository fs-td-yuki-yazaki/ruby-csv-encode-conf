# 概要

CP932文字「﨑」を対象に、  
`nkf`と`csv`によるエンコード確認→変換可能かを検証するリポジトリ。

# 出力結果

## `main_to_cp932.rb`

問題なくUTF-8に変換、読み込めている。

```
#<Encoding:Windows-31J>
["id", "name"]
["6001", "あああ"]
["6004", "崎"]
["6005", "テスト"]
["6002", "﨑"]
["6003", "いいい"]
```
## `main_to_sjis.rb`

CP932に対してShift_JISを指定しているため、例外発生。

```
#<Encoding:Windows-31J>
#<Encoding::UndefinedConversionError: "\xFA\xB1" from Shift_JIS to UTF-8>
```