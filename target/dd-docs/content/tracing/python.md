--- title: Tracing Python Applications kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### インストール

Pythonで書かれたアプリケーションのトレースを開始するには、最初に[Datadog Agentのインストールと設定]（/ tracing＃installing-the-agent）を実行します。

次に、pipを使用してDatadogトレースライブラリをインストールします。

~~~ pip install ddtrace
~~~

最後に、トレーサをインポートしてコードを設定します。

### サンプル

~~~ from ddtrace import tracer

with tracer.trace("web.request") as span:  span.set_service_info("my_service", "web")  span.set_tag("my_tag", "my_value") ~~~

その他の例については、ライブラリに関するのドキュメントの[Getting Startedのセクション](http://pypi.datadoghq.com/trace/docs/#get-started)を参照してください。


### 互換性

ddtraceライブラリは、以下のWebフレームワークのサポートが含まれています。[Bottle]（https://bottlepy.org/）[Django](https://www.djangoproject.com/)[Falcon](https://falconframework.org/)[Flask](http://flask.pocoo.org/)[Pylons](http://pylonsproject.org/)[Pyramid](https://trypyramid.com/)

これらのフレームワークからデータを収集する方法については、[traceのライブラリのドキュメント]（http://pypi.datadoghq.com/trace/docs/#web-frameworks）を参照してください。

また、次のデータストアとライブラリのサポートも含まれています。[Cassandra](http://cassandra.apache.org/)[Elasticsearch](https://www.elastic.co/products/elasticsearch)[Flask Cache](https://pythonhosted.org/Flask-Cache/)[MongoDB](https://www.mongodb.com/what-is-mongodb)[Memcached](https://memcached.org/)[MySQL](https://www.mysql.com/)[Postgres](https://www.postgresql.org/)[Redis](https://redis.io/)[SQLAlchemy](http://www.sqlalchemy.org/)[SQLite](https://www.sqlite.org/)

これらのライブラリを設定するには、[traceのライブラリのドキュメント]（http://pypi.datadoghq.com/trace/docs/#other-libraries）を参照してください。

### 追加情報

Python用のライブラリの[ソースコードはGithubにあります]（https://github.com/DataDog/dd-trace-py）。

[traceのライブラリのドキュメントページ]（http://pypi.datadoghq.com/trace/docs/）には、追加のドキュメントがあります。
