--- title: Datadog-etcd Integration integration_title: etcd kind: integration
git_integration_title: etcd
---

### 概要

Capture etcd metrics in Datadog to:

* Monitor the health of your etcd cluster.
* Know when host configurations may be out of sync.
* Correlate the performance of etcd with the rest of your applications.

<%= insert_example_links%>

## メトリックス

<%= get_metrics_from_git() %>

`etcd_state:leader``etcd_state:follower`Furthermore, etcd metrics are tagged with  or , depending on the node status, so you can easily aggregate metrics by status.
