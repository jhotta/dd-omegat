--- title: Datadog-Elasticsearch Integration integration_title: Elasticsearch kind: integration newhlevel: true git_integration_title: elasticsearch
updated_for_agent: 5.8.5
---

# 概要

![Elasticsearch](/static/images/elasticsearchgraph.png)

Connect Elasticsearch to Datadog in order to:

* Visualize Elasticsearch performance.
* Correlate Elasticsearch performance with the rest of your applications.



# インストール

No installation steps are required for this integration

# 設定

1.  Edit your conf.d/elastic.yaml file as follows:

    init_config:

instances:
  - url: http://elastic:9200
    # The format for the url entry is url: http://servername:port

1.  Restart the agent

<%= insert_example_links(conf: "elastic", check: "elastic")%>

# Validation

```datadog-agent info```To validate that the integration is working, run . You should see results similar to the following:

Checks
======

    ntp
    ---
      - instance #0 [OK]
      - Collected 1 metric, 0 events & 2 service checks

    disk
    ----
      - instance #0 [OK]
      - Collected 32 metrics, 0 events & 1 service check

    elastic
    -------
      - instance #0 [OK]
      - Collected 97 metrics, 0 events & 3 service checks

# メトリックス

<%= get_metrics_from_git()%>


