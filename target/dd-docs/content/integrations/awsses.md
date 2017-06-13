--- title: Datadog-AWS SES Integration integration_title: AWS SES kind: integration newhlevel: true
git_integration_title: amazon_ses
---

# 概要

Amazon Simple Email Service (SES) is a cost-effective, outbound-only email-sending service.

Enable this integration to see in Datadog all your SES metrics.

# インストール

`ses:get`If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). The only requirement for this integration is the permission .

# Configuration

In the Amazon Web Services integration tile, ensure that SES is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。

