--- title: Datadog-AWS Auto Scaling Integration integration_title: AWS Auto Scaling kind: integration git_integration_title: amazon_auto_scaling
newhlevel: true
---

# 概要

Amazon Auto Scaling is a service to launch or terminate EC2 instances automatically based on user-defined policies.

Enable this integration to see in Datadog all your Auto Scaling metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that Auto Scaling is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
