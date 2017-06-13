--- title: Datadog-AWS Simple Workflow Service Integration integration_title: AWS Simple Workflow Service kind: integration git_integration_title: amazon_swf
newhlevel: true
---

# 概要

Amazon SWF helps developers build, run, and scale background jobs that have parallel or sequential steps.

Enable this integration to see in Datadog all your SWF metrics.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws). There are no other installation steps that need to be performed.

# Configuration

In the Amazon Web Services integration tile, ensure that SWF is checked under metric collection.

# メトリックス

<%= get_metrics_from_git()%>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
