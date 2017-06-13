--- title: Datadog-AWS Billing Integration integration_title: AWS Billing kind: integration doclevel: basic newhlevel: true
git_integration_title: amazon_billing
---

# 概要

Amazon Billingでは、AWSインフラストラクチャの請求予測と費用を追跡できます。

このインテグレーションを有効にすると、Datadogですべての課金指標が表示されます。

# インストール

`budgets:ViewBudget`AWS Budgetメトリックスを表示するには、この統合の要件が許可です。

[AWS Console]（http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html#turning_on_billing_metrics）の請求メトリックスを有効にする必要があります。

注:  AWS Budgetメトリックスは、AWS のマスター アカウントからのみ収集できます。

# メトリックス

<%= get_metrics_from_git() %>

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。