--- title: Tracing Ruby Applications kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### インストール

Rubyで書かれたアプリケーションのトレースを開始するには、最初に[Datadog Agentのインストールと設定]（/ tracing＃installing-the-agent）を実行します。

次に、ddtrace gemをインストールします。

~~~ gem install ddtrace
~~~

最後に、トレーサをインポートしてコードを設定します。

### サンプル

~~~ require 'ddtrace'

tracer.trace("web.request") do |span|  span.service = "my_service"  span.app_type = "web"  span.set_tag("my_tag", "my_value") end ~~~

その他の例については、[RubyDoc Gem documentation]（http://www.rubydoc.info/gems/ddtrace/#Advanced_usage）を参照してください。


### 互換性

ddtraceのライブラリには、[Ruby on Rails]（http://rubyonrails.org/）と[Sinatra]（http://www.sinatrarb.com/）のWebフレームワークのサポートが含まれています。

これらのフレームワークからデータを集取する方法については、[The RubyDoc documentation]（http://www.rubydoc.info/gems/ddtrace#Web_Frameworks）を参照してください。

また、次のライブラリのサポートも含まれています。[Elasticsearch](https://www.elastic.co/products/elasticsearch)[Net/HTTP](https://ruby-doc.org/stdlib-2.4.0/libdoc/net/http/rdoc/Net/HTTP.html)[Redis](https://redis.io/)

これらのライブラリのトレースについては、[The RubyDoc documentation]（http://www.rubydoc.info/gems/ddtrace#Other_libraries）を参照してください。

### 追加情報

Rubyのインテグレーションの[ソースコードは、Githubで読むことができます]（https://github.com/DataDog/dd-trace-rb）。

[The RubyDoc Gem page]（http://www.rubydoc.info/gems/ddtrace/）に関する追加のドキュメントがあります。
