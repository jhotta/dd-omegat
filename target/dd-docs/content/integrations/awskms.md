--- title: Datadog-AWS Key Management Service Integration integration_title: AWS Key Management Service kind: integration git_integration_title: amazon_kms
newhlevel: true
---

# 概要

AWS Key Management Service (KMS) is a managed service that makes it easy for you to create and control the encryption keys used to encrypt your data.

Enable this integration to see in Datadog all your KMS metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that KMS is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
