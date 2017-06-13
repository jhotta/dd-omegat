--- title: Datadog-AWS Elastic Map Reduce Integration integration_title: AWS Elastic Map Reduce kind: integration git_integration_title: amazon_emr
newhlevel: true
---

# 概要

Amazon Elastic MapReduce (Amazon EMR) is a web service that makes it easy to quickly and cost-effectively process vast amounts of data.

Enable this integration to see in Datadog all your EMR metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that EMR is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
