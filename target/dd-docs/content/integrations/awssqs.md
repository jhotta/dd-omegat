--- title: Datadog-AWS SQS Integration integration_title: AWS SQS kind: integration newhlevel: true
git_integration_title: amazon_sqs
---

# 概要

![SQS Dashboard](/static/images/sqsdashboard.png)

Amazon Simple Queue Service (SQS) is a fast, reliable, scalable, fully managed message queuing service.

Enable this integration to see all your SQS metrics in Datadog.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that SQS is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。

