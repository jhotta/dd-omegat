--- title: Tracing Terminology kind: Documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---
### 概要

トレースを最大限に活用するには、使用される用語、それらが表すデータ、およびそれらがどのように連携するかを理解することが重要です。

#### トレース

単一オペレースオプションを処理するためにアプリケーションが費やした時間を追跡するために使用されます。たとえば、複雑なWeb要求を処理するために費やされる時間全体を追跡するためにトレースを使用できます。要求が複数のリソースとマシンで要求を処理する必要がある場合でも、これらの関数呼び出しとサブ要求はすべて単一のトレース内にカプセル化されます。

#### スパン

システム内の論理作業単位を表します。各トレースは、1つまたは複数のスパンから構成されます。スパンはサービスおよびオプションでリソースに関連付けられます。各スパンは、開始時間、継続時間、およびオプションのタグで構成されます。たとえば、あるスパンでは、別のマシンで分散呼び出しに費やされた時間、または大きな操作の中の小さなコンポーネントで費やされた時間を表すことができます。Spans can be nested within each other, and in those instances will have a parent-child relationship.

![Visualizing tracing terms](/static/images/tracing-terminology.png "Visualizing tracing terms")

#### サービス
`webapp``database``webapp``admin``query``master-db``replica-db``yelp-api`同じジョブを実行する一連のプロセスの名前。たとえば、単純なWebアプリケーションは、単一のサービスと単一のサービスの2つのサービスで構成されますが、より複雑な環境では、3つのサービス、a、a、および外部サービス。

#### リソース

`/user/home``web.user.home``select * from users where id = ?`サービスへの特定なクエリ。Webアプリケーションの場合、標準的なURLやハンドラ関数（MVCフレームワークでは「ルート」と呼ばれることが多い）の例があります。SQLデータベースの場合、リソースはクエリ自体のSQLと同じです。

`/user/home``/user/home?id=100``/user/home?id=200`Tracingバックエンドは、サービスごとに数千（百万〜十億ではありません）の個別のリソースを追跡することができます。したがって、リソースは、正規の名前でグループ化する必要があります。
