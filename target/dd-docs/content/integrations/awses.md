--- title: Datadog-AWS ES Integration integration_title: AWS ES kind: integration newhlevel: true
git_integration_title: amazon_es
---
# 概要

Amazon Elasticsearch Service is a managed service that makes it easy to deploy, operate, and scale Elasticsearch in the AWS Cloud.

Enable this integration to see custom tags and metrics for your ES clusters in Datadog.

# インストール

`es:ListTags``es:ListDomainNames``es:DescribeElasticsearchDomains`If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). This integration requires the permissions ,  and  to be fully enabled.

# Configuration

In the Amazon Web Services integration tile, ensure that ES is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
