--- title: Tracing (APM) kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### 概要

Datadogに統合されたAPMツールは、従来の監視システムにぞんざいしていたインフラストラクチャとアプリケーションのパフォーマンス監視の壁を取り除きました。このことにより、視認性が向上するだけでなく、アプリケーションコードの状態とそのベースインフラストラクチャの関係を簡単に理解できるようになりました。

### 入門

Datadog APMは、エンタープライズプランまたはプロプランへのアップグレードとして含まれています。Proプランのメンバーは、[DatadogアプリのAPMページ]（https://app.datadoghq.com/trace/home）にアクセスして14日間の無料試用を開始できます。

現在、トレースは、LinuxおよびDocker環境上で動作するDatadog Agentのバージョン5.11.0（またはそれ以上）でサポートされています。

#### エージェントのインストール

インフラストラクチャの監視の場合、メトリックスは先ずローカルのDatadog Agentに送信され、その後Datadogのバックエンドに転送されます。同様に、トレースメトリックスもDatadog Agentに送信されます。トレースを有効にするには：

1.  最新のものをインストールする [Datadog Agent](https://app.datadoghq.com/account/settings#agent) (version 5.11.0 or above is required).
1.  Datadog Agent構成ファイルでAPMを有効にする

    [[fuzzy]{0} [主]]
    # Enable the trace agent.
    apm_enabled: true ~~~[Restart the Agent](/guides/basic_agent_usage/)

#### Docker環境でエージェントを実行する

`DD_APM_ENABLED=true`Dockerコンテナ上のアプリケーションをトレースするには、[docker-dd-agent]（https://hub.docker.com/r/datadog/docker-dd-agent/）イメージ（タグ付きバージョン11.0.5110以上）を使用し、環境変数として渡すことによって可能になります。

詳細については、[Githubのプロジェクト内のREADME]（https://github.com/DataDog/docker-dd-agent/blob/master/README.md#tracing--apm）を参照してください。

#### アプリケーションの計測

アプリケーションを計測するためには、以下のサポートされているプログラミング言語のいずれかを選択してください。[Go](/tracing/go)[Python](/tracing/python)[Ruby](/tracing/ruby)

公式ライブラリサポートされていないプログラミング言語で書かれたアプリケーションを計測するには、[Tracing API]（/ tracing / api）を参照してください。

### 設定

`/etc/dd-agent/datadog.conf`Datadog Agentは、このファイルをインフラストラクチャ監視オプションとAPM設定オプションの両方に使用します。さらに、いくつかの構成オプションを環境変数として設定することができます。環境変数として設定されたオプションは、設定ファイルで定義された設定を上書きすることに注意してください。

`apm_enabled``DD_APM_ENABLED``true``false``extra_sample_rate``0``1``1``max_traces_per_second``0``10``receiver_port``DD_RECEIVER_PORT``8126``connection_limit``2000`[fuzzy]デフォルト値なしデフォルト値| | **trace.sampler** | |  | - | Use this setting to adjust the trace sample rate. The value should be a float between  (no sampling) and  (normal sampling rate). The default value is  | |  | - | The maximum number of traces to sample per second. To disable the limit (*not recommended*), set to . The default value is .| | **trace.receiver** | |  |  | The port that the Datadog Agent's trace receiver should listen on. デフォルト値| |  | - | The number of unique client connections to allow during one 30 second lease period. デフォルト値[fuzzy]表

`datadog.conf.example`Datadog Agentの詳細については、[Getting Startedガイド]（/ guides / basic_agent_usage /）を参照するか、[ファイル]（https://github.com/DataDog/dd-agent/blob/master/datadog）を参照してください。 conf.example）。

### その他のリソース

Datadogのスタッフや他のDatadogコミュニティのメンバーの助けを借りたい場合は、Datadog Slackの[* apm * channel]（https://datadoghq.slack.com/messages/apm）に参加してください。スラックに参加するには、[http://chat.datadoghq.com]（http://chat.datadoghq.com）をご覧ください。私たちは[コミュニティトレースライブラリ]（http://docs.datadoghq.com/libraries/#community-tracing-apm-libraries）のリストを維持しています。

[tracehelp@datadoghq.com]（mailto：tracehelp@datadoghq.com）の電子メールでAPMチームに連絡することもできます。
