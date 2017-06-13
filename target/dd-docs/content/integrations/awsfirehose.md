--- title: Datadog-AWS Firehose Integration integration_title: AWS Firehose kind: integration git_integration_title: amazon_firehose
newhlevel: true
---

# 概要

Amazon Kinesis Firehose is the easiest way to load streaming data into AWS.

Enable this integration to see in Datadog all your Firehose metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that Firehose is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。