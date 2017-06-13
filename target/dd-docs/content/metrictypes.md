--- title: Metric Types
kind: documentation
---

A metric's Datadog in-app type affects how its data is interpreted in query results and graph visualizations across the app. The metric type visible on the metric summary page is the Datadog in-app type. You should only change the type if you have started submitting this metric with a new type, and should be aware that changing the type may render historical data nonsensical.

## How do submission types relate to Datadog in-app types?
Datadog accepts metrics submitted from a variety of sources, and as a result the submission type does not always map exactly to the Datadog in-app type:

`api.Metric.send(...)``dog.gauge(...)``dog.increment(...)``dog.histogram(...)``dog.set(...)``self.gauge(...)``self.increment(...)``self.rate(...)``self.count(...)``self.monotonic_count(...)``self.histogram(...)``self.set(...)`| Submission Source | Submission Method (python) | Submission Type | Datadog In-App Type | |-------------------|-------------------|-----------------|--------------| | [API](http://docs.datadoghq.com/api/#metrics) |  | gauge | gauge | | [dogstatsd](http://docs.datadoghq.com/guides/dogstatsd/) |  | gauge | gauge | | [dogstatsd](http://docs.datadoghq.com/guides/dogstatsd/) |  | counter | rate | | [dogstatsd](http://docs.datadoghq.com/guides/dogstatsd/) |  | histogram | gauge, rate | | [dogstatsd](http://docs.datadoghq.com/guides/dogstatsd/) |  | set | gauge | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | gauge | gauge | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | counter | rate | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | rate | gauge | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | count | count | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | monotonic_count | count | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | histogram | gauge, rate | | [agent check](http://docs.datadoghq.com/guides/agent_checks/#sending-metrics) |  | set | gauge | {:.table}

## What's a use case for changing a metric's type?

1. `app.requests.served``gauge``gauge`A user has a metric  that counts requests served, she accidently submits it via dogstatsd as a . The metric's Datadog type is therefore .

2. `counter``sum:app.requests.served{*}``gauge`She realizes she should have submitted it as a dogstatsd  metric, that way she can do time aggregation to answer questions like "How many total requests were served in the past day?" by querying  (this would not make sense for a -type metric.)

3. `app.requests.served``counter``app.requests.served`She likes the name  so rather than submitting a new metric name with the more appropriate  type, she'll change the type of .

    `dogstatsd.increment('app.requests.served', N)`a. She updates her submission code, calling  after N requests are served.

    `rate`b. She updates the Datadog in-app type via the metric summary page to .

`app.requests.served``gauge``rate``gauge``app.requests.served`This will cause data submitted before the type change for  to behave incorrectly because it was stored in a format to be interpreted as an in-app  not a . Data submitted after steps 3a and 3b will be interpreted properly. If she was not willing to lose the historical data submitted as a  she would have created a new metric name with the new type, leaving the type of  unchanged.
