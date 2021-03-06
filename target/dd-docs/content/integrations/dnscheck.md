--- title: Datadog-DNS Service Check integration_title: DNS Service Check kind: integration doclevel: basic
newhlevel: true
---

# 概要

The DNS Service Check allows you to monitor the resolution of host names against a specified DNS server. This will allow you to monitor the availability and response times of your DNS infrastructure, as well as validate that key host names are resolvable.

# 設定

To configure the DNS Service Check, edit the dns_check.yaml file in your conf.d directory.

init_config:
  default_timeout: 4

instances:
  - hostname: www.example.org
    nameserver: 127.0.0.1
    timeout: 8

<%= insert_example_links(conf: "dns_check", check: "dns_check")%>

# Validation

`datadog-agent info`To validate that the DNS Service Check is working, run . You should see something like the following:

Checks
======

  [...]
  dns_check
  ---------
    - instance #0 [OK]
    - Collected 1 metric, 0 events & 2 service checks

# Usage

`dns.response_time``nameserver:<nameserver_in_yaml_file>``resolved_hostname:<hostname_in_yaml>`When the data has been submitted to Datadog, you will have one new metric: . This will have the tags  and .
