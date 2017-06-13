--- title: Datadog-Ceph Integration integration_title: Ceph kind: integration git_integration_title: ceph
newhlevel: true
---
# 概要

Enable the Datadog-Ceph integration to:

  * Track disk usage across storage pools
  * Receive service checks in case of issues
  * Monitor I/O performance metrics


# インストール

The integration is meant to be enabled on each Ceph monitor host.

# Configuration

`/usr/bin/ceph``ceph_cmd`Adjust the configuration file to match your environment. By default the check will use  to retrieve metrics; this can be overriden by using the  option. If sudo access is required to run it, please enable the use_sudo flag.

`tags`Any extra tags specific to the cluster can be specified under , as usual.

<%= insert_example_links%>

# Validation

`/etc/init.d/datadog-agent info`Execute the info command  and verify that the integration check was successful. The output should contain a section similar to the following:

    [fuzzy]{0} を検査中...
    ======

      [...]

      ceph
      ----
          - instance #0 [OK]
          - Collected 19 metrics, 0 events & 2 service checks


# メトリックス

<%= get_metrics_from_git() %>
