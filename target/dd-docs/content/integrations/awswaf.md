--- title: Datadog-AWS Web Application Firewall Integration integration_title: AWS Web Application Firewall kind: integration git_integration_title: amazon_waf
newhlevel: true
---

# 概要

AWS WAF is a web application firewall that helps protect your web applications from common web exploits.

Enable this integration to see in Datadog all your WAF metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that WAF is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
