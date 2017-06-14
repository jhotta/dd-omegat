--- title: Tracing Go Applications kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### インストール

Goで書かれたアプリケーションのトレースを開始するには、最初に[Datadog Agentのインストールと設定]（/ tracing＃installing-the-agent）を実行します。

次に、GithubリポジトリからGo Tracerをインストールします。

~~~ go get "github.com/DataDog/dd-trace-go/tracer"
~~~

最後に、トレーサをインポートしてコードを設定します。

### サンプル

~~~ package main

import (  "github.com/DataDog/dd-trace-go/tracer" )

func main {  span := tracer.NewRootSpan("web.request", "my_service", "resource_name")  defer span.Finish()  span.SetMeta("my_tag", "my_value") } ~~~

別の例として、Goトレーサパッケージの[]（https://github.com/DataDog/dd-trace-go/blob/master/tracer/example_test.go）ファイルを参照してください。


### 互換性

現在、Go 1.7のみがサポート対象です。以下のGoライブラリがサポートされています：[Gin](https://github.com/gin-gonic/gin)[Gorilla Mux](https://github.com/gorilla/mux)[gRPC](https://github.com/grpc/grpc-go)

### 追加情報

Go用のインテグレーションの[ソースコードは、Githubで読むことができます]（https://github.com/DataDog/dd-trace-go）。

[GoDocパッケージのページ]（https://godoc.org/github.com/DataDog/dd-trace-go/tracer）に関する追加のドキュメントがあります。
