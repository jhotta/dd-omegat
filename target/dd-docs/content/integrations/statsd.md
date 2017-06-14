--- title: Datadog-StatsD integration_title: StatsD kind: integration
git_integration_title: statsd
---

# 概要

This Agent check monitors the availability and uptime of non-Datadog StatsD servers. It also tracks the rate StatsD servers are receiving metrics.

This check does NOT forward application metrics from StatsD servers to Datadog.

# 設定

`/etc/dd-agent/conf.d/statsd.yaml`To configure the Agent to connect to StatsD, edit . An example configuration can be found at [statsd.yaml.example](https://github.com/gphat/dd-agent/blob/master/conf.d/statsd.yaml.example).

init_config:

instances:
  - host: localhost
    port: 8126
**HOST**: Set the host name or ip address of the StatsD server being monitored.**PORT**: The admin port of the StatsD server being monitored.

<%= insert_example_links%>

# Validation

`/etc/init.d/datadog-agent info`Execute the [info command](http://docs.datadoghq.com/guides/basic_agent_usage/) ( on *NIX) and verify that the integration check was successful.*
