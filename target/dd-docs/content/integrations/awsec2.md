--- title: Datadog-AWS EC2 Integration integration_title: AWS EC2 kind: integration git_integration_title: amazon_ec2
newhlevel: true
---

# 概要

Amazon Elastic Compute Cloud (Amazon EC2) is a web service that provides resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers.

Enable this integration to see in Datadog all your EC2 metrics, and additional events like scheduled maintenances.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that EC2 is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
