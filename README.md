# SwiftUI_API_SampleApp

## CodableとJSONについて（事前準備）

### Codable
- インスタンス情報を他の形式にデータ変換するプロトコル
- ファイルに格納したり、ネットワーク送受信したりするためにバイト列や文字列に変換する際に使用したりする
- 使用するためにはデータ変換に使う構造体の型がCodableプロコトルに準拠する必要がある
```
// 使用例
struct Sample: Codable {
	// 以下プロパティ等設定
	var sampleName: String
	...
}
```

### JSON
- テキストベースのデータ変換用フォーマット
- 文字コードはUTF-8
- swift以外にも様々な言語で利用されている
- 「名前:値」をカンマ区切り、中括弧"{}"で囲む
```
 // 例
 "id" : 1,
 "name" : "Taro",
 "like" : [
	{
		"name" : "music",
 		"frequency" : "everyday"
	},
	{
		"name" : "sport",
 		"frequency" : "everyday"
	}
 ]
```
以下扱える型
- 数値、文字列、配列、null、bool、オブジェクト

## API(Application Programming Interface)
アプリケーションやソフトウェアの一部を外部に向けて公開することにより、第三者が開発したソフトウェアと機能を共有できる様にしてくれるもの。
物で例えると、USBは外部デバイスとパソコンを繋ぐインターフェースであるが、APIはソフトウェア同士を繋げる。（ここではUSBにあたるものがAPIとなる）

## サンプルコード
解説については下記参照
[【SwiftUI】外部サイトからデータを取得する](https://capibara1969.com/2946/)


## 参考資料
[【Swift入門】SwiftでJSONを扱ってみよう！](https://www.sejuku.net/blog/34776)
[【Swift】Codableを使ったJSON変換](https://capibara1969.com/2551/)

