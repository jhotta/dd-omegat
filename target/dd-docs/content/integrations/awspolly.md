--- title: Datadog-AWS Polly Integration integration_title: AWS Polly kind: integration git_integration_title: amazon_polly
newhlevel: true
---

# 概要

Amazon Polly is a service that turns text into lifelike speech.

Enable this integration to see in Datadog all your Polly metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that Polly is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
