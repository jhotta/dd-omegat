--- title: Datadog-AWS Elastic Block Store Integration integration_title: AWS Elastic Block Store kind: integration git_integration_title: amazon_ebs
newhlevel: true
---

# 概要

Amazon EBS provides persistent block storage volumes for use with Amazon EC2 instances in the AWS Cloud.

Enable this integration to see in Datadog all your EBS metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that EBS is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
