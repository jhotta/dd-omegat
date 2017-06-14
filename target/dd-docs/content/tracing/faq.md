--- title: Tracing FAQ kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### 命名

* サービス名とリソース名 **小文字、英数字である必要があります**.
* サービス名とメタデータキーは、 **最大50文字の長さ**に制限されます.
* メタデータとリソース名は **最大長は5000バイト**に制限されます.

### データ保持

トレースデータは現在約36時間保存されています。

### Heroku

Herokuサポートは現在、Datadog Heroku Buildpackによって提供されています。詳細については、[Githubのプロジェクト]（https://github.com/DataDog/heroku-buildpack-datadog）を参照してください。

### Agent Source

トレースは、LinuxおよびDockerのDatadog Agentでサポートされています。他のアーキテクチャーの場合は、ソースインストールを使用することができます（近々正式版を公開します）。トレースエージェントのソースコードは[Github repo]（https://github.com/DataDog/datadog-trace-agent）で利用できます。

### 機能の確認

`apm_enabled: true``datadog.conf``datadog-agent`トレース機能はオプトインプロセスです。トレースエージェントを有効にするには、ファイルに追加し再起動します。ログをテーリングしてこれを確認します。

tail -f /var/log/datadog/trace-agent.log


トレースが正常に動作していると、表示されたメッセージに次のような内容が表示されます。

2017-02-07 23:12:10 INFO (endpoint.go:140) - flushed payload to the API, time:185.409088ms, size:1437
2017-02-07 23:12:20 INFO (endpoint.go:140) - flushed payload to the API, time:17.781515ms, size:753

### 接続拒否

`error: [Errno 111] Connection refused`アプリケーションログを受け取っていない場合は、トレース機能が実行されていないか、アプリケーションからDatadog Agentへの接続に問題があります。この状態は、Docker環境で設定にミスがある場合によく見かけます。トレースはDocker環境でもサポートされていますが、以下を確認する必要があります：

1.  アプリケーションはエージェントに接続できる必要があります（デフォルトでは、localhostに送信されます）。Docker環境の場合は、ホストまたはIPアドレスを指定する必要があります。例：tracer.configure（hostname = "172.17.0.1"）

`bind_host``/etc/dd-agent/datadog.conf`2)エージェントは、0.0.0.0（または適切なIPアドレス）にバインドして要求を受け入れます。DD_BIND_HOSTのenv変数を使用してエージェントバインディングを設定できます

詳細は[docker-dd-agentのドキュメント]（https://github.com/DataDog/docker-dd-agent/blob/master/README.md#tracing--apm）を参照してください。
