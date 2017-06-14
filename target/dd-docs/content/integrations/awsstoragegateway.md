--- title: Datadog-AWS Storage Gateway Integration integration_title: AWS Storage Gateway kind: integration git_integration_title: amazon_storage_gateway
newhlevel: true
---

# 概要

AWS Storage Gateway provides seamless and secure integration between an organization's IT environment and AWS's storage infrastructure.

Enable this integration to see in Datadog all your Storage Gateway metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that Storage Gateway is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
