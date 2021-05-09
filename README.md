# rust-kaze-td4
td4 implementation with kaze

## このプロジェクトについて
このプロジェクトはRustで論理回路を記述する[kaze](https://github.com/yupferris/kaze)を用いて，td4を実装したサンプルです．
[kaze](https://github.com/yupferris/kaze)で記述した論理回路はRustによるシミュレーションとVerilog-HDLへの変換が可能です．
本プロジェクトでも両出力を評価することが可能です．

## 実行方法
以下の手順で，vcdファイルとverilogファイルを出力します．
```
$ cargo run
$ ls trace.vcd 
trace.vcd
$ ls src/*.v
src/alu.v  src/decoder.v  src/memory.v  src/pc.v  src/register.v  src/selector.v  src/td4.v
```

### vcdファイルの確認

![vcd](https://github.com/ar90n/rust-kaze-td4/blob/assets/vcd.png?raw=true)

### varilogファイルによる論理合成

kazeが出力したverilogファイルに`misc/divider.v`と`misc/top.v`とを組み合わせ，実機にダウンロードした結果です．

![fpga](https://github.com/ar90n/rust-kaze-td4/blob/assets/fpga.gif?raw=true)

## 参考
* [kaze](https://github.com/yupferris/kaze)
* [CPUの創りかた](https://www.amazon.co.jp/CPU%E3%81%AE%E5%89%B5%E3%82%8A%E3%81%8B%E3%81%9F-%E6%B8%A1%E6%B3%A2-%E9%83%81/dp/4839909865)
