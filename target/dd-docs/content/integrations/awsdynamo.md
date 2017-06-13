--- title: Datadog-AWS DynamoDB Integration integration_title: AWS DynamoDB kind: integration git_integration_title: amazon_dynamodb
newhlevel: true
---
# 概要

![DynamoDB default dashboard](/static/images/dynamodb.png)

Amazon DynamoDB is a fully managed NoSQL database cloud service, part of the AWS portfolio. Fast and easily scalable, it is meant to serve applications which require very low latency, even when dealing with large amounts of data. It supports both document and key-value store models, and has properties of both a database and a distributed hash table.


Learn more about how to monitor DynamoDB performance metrics thanks to [our series of posts](https://www.datadoghq.com/blog/top-dynamodb-performance-metrics/). We detail the key performance metrics, how to collect them, and how [Medium](https://medium.com/) monitors DynamoDB using Datadog.


# インストール

`dynamodb:list*``dynamodb:describe*`This integration requires the permissions  and  to be fully enabled.

# メトリックス

<%= get_metrics_from_git()%> 

AWSから取得した各メトリックスには、AWSコンソールに表示されるタグと同じものが割り当てられます（ホスト名、セキュリティグループなどです）。