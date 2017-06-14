--- title: Datadog-AWS CloudFront Integration integration_title: AWS CloudFront kind: integration git_integration_title: amazon_cloudfront
newhlevel: true
---

# 概要

Amazon CloudFront is a global content delivery network (CDN) service that accelerates delivery of your websites, APIs, video content or other web assets.

Enable this integration to see in Datadog all your CloudFront metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# 設定

In the Amazon Web Services integration tile, ensure that CloudFront is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
