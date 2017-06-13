--- title: Datadog-Consul Integration integration_title: Consul kind: integration git_integration_title: consul
newhlevel: true
---

# 概要

Connect Consul to Datadog in order to:

* Correlate the performance of Consul with the rest of your applications
* Monitor the health of your Consul cluster

<%= insert_example_links%>


# メトリックス

<%= get_metrics_from_git() %>

`consul.catalog.nodes_up``consul_service_id``consul.catalog.service_u``consul_node_id``consul.check`For each service that you're monitoring we'll create the  gauge metric tagged by  that will let you know how many Consul nodes are running each service. We'll also collect  tagged by  that measures how many services a node is running. Finally, we perform a service check  that will report on the state of each service.

`consul.peers``mode:leader``mode:follower`The other consul metrics collected are not service bound but node bound, and only  is tagged with  or .

