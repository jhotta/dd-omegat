--- title: Tracing FAQ kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### 命名規則

* サービス名とリソース名は、 **小文字、英数字である必要があります**。
* サービス名とメタデータキーは、 **最大50文字の長さ**に制限されます。
* メタデータとリソース名は、 **最大長は5000バイト**に制限されます。


### データ保持期間

トレースデータは、約36時間保存されています。


### Herokuのサポート

Herokuサポートは、Datadog Heroku Buildpackによって提供されています。詳細については、[Githubのプロジェクト](https://github.com/DataDog/heroku-buildpack-datadog)を参照してください。


### Agentのソースコード

LinuxおよびDockerのDatadog Agentで、トレースをサポートしています。他のアーキテクチャーを利用している場合は、ソースインストールからインストールすることができます。（近々公開予定）。トレースエージェントのソースコードは、[Github repo](https://github.com/DataDog/datadog-trace-agent)で閲覧することができます。


### 機能の確認

`apm_enabled: true``datadog.conf``datadog-agent`トレース機能はオプトイン プロセスです。トレースエージェントを有効にするには、ファイルに追加し再起動します。ログをtail コマンドで表示してを内容を確認します:

tail -f /var/log/datadog/trace-agent.log


トレースが正常に動作していると、tailコマンドで表示した内容に次のような内容が表示されます。

2017-02-07 23:12:10 INFO (endpoint.go:140) - flushed payload to the API, time:185.409088ms, size:1437
2017-02-07 23:12:20 INFO (endpoint.go:140) - flushed payload to the API, time:17.781515ms, size:753


### 接続拒否

`error: [Errno 111] Connection refused`アプリケーションログを受け取っていない場合は、トレース機能が実行されていないか、アプリケーションからDatadog Agentへの接続に問題があります。この状態は、Docker環境で設定にミスがある場合によく見かけます。トレースはDocker環境でもサポートされていますが、以下を確認する必要があります：

1. アプリケーションはエージェントに接続できる必要があります（デフォルトでは、localhostに送信されます）。Docker環境の場合は、ホストまたはIPアドレスを指定する必要があります。例：tracer.configure（hostname = "172.17.0.1"）

2. `bind_host``/etc/dd-agent/datadog.conf`エージェントは、0.0.0.0（または適切なIPアドレス）にバインドして要求を受け入れます。DD_BIND_HOSTのenv変数を使用してエージェントバインディングを設定できます

詳細は[docker-dd-agentのドキュメント]（https://github.com/DataDog/docker-dd-agent/blob/master/README.md#tracing--apm）を参照してください。
