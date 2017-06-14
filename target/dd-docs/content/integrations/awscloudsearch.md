--- title: Datadog-AWS CloudSearch Integration integration_title: AWS CloudSearch kind: integration git_integration_title: amazon_cloudsearch
newhlevel: true
---

# 概要

Amazon CloudSearch is a managed service in the AWS Cloud that makes it simple and cost-effective to set up, manage, and scale a search solution.

Enable this integration to see in Datadog all your CloudSearch metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that CloudSearch is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
