--- title: Datadog-AWS Lambda Integration integration_title: AWS Lambda kind: integration newhlevel: true
git_integration_title: amazon_lambda
---

# 概要

Amazon Lambda is a compute service that runs code in response to events and automatically manages the compute resources required by that code.

Enable this integration to begin collecting Cloudwatch & custom metrics from your Lambda functions.

# インストール

If you haven't already, set up the [Amazon Web Services integration first](/integrations/aws).

# 設定

In the Amazon Web Services integration tile, ensure that Lambda is checked under metric collection.

To send custom metrics to Datadog, you must print a log line from your Lambda, using the following format: `MONITORING|unix_epoch_timestamp|value|metric_type|my.metric.name|#tag1:value,tag2`

`unix_epoch_timestamp`Please ensure the  is in seconds (not milliseconds).

For example, here is sample snippet for printing a valid custom metric, from your Lambda function (in Python):

[]~~~ unix_epoch_timestamp = int(time.time()) value = 42 metric_type = 'count' metric_name = 'my.metric.name' tags = 'tag1:value', 'tag2' print('MONITORING|{0}|{1}|{2}|{3}|#{4}'.format(  unix_epoch_timestamp, value, metric_type, metric_name, ','.join(tags) )) ~~~

`logs:DescribeLogGroups``logs:DescribeLogStreams``logs:FilterLogEvents`Note: This integration requires the AWS permissions , , and  to be fully enabled. Also, counts and gauges are the only metrics types currently supported.

# メトリックス

<%= get_metrics_from_git()%> 

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。
