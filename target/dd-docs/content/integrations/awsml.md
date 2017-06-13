--- title: Datadog-AWS Machine Learning Integration integration_title: AWS Machine Learning kind: integration git_integration_title: amazon_machine_learning
newhlevel: true
---

# 概要

Amazon Machine Learning is a service that makes it easy for developers of all skill levels to use machine learning technology.

Enable this integration to see in Datadog all your Machine Learning metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that Machine Learning is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
