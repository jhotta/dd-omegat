--- title: Datadog-AWS Internet of Things Integration integration_title: AWS Internet of Things kind: integration git_integration_title: amazon_iot
newhlevel: true
---

# 概要

AWS IoT is a managed cloud platform that lets connected devices easily and securely interact with cloud applications and other devices.

Enable this integration to see in Datadog all your IOT metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that IOT is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
