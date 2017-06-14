--- title: Datadog-AWS OpsWorks Integration integration_title: AWS OpsWorks kind: integration git_integration_title: amazon_ops_works
newhlevel: true
---

# 概要

AWS OpsWorks is an application management service that makes it easy to deploy and operate applications of all shapes and sizes.

Enable this integration to see in Datadog all your OpsWorks metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that OpsWorks is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
