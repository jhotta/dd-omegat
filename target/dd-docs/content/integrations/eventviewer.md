--- title: Datadog-Event Viewer Integration integration_title: Event Viewer
kind: integration
---

### 概要

Connect Event Viewer to Datadog in order to:

* Track system and application events in Datadog.
* Correlate system and application events with the rest of your application.


### Configuration


Use the Windows Event Viewer GUI to list all the event logs you can capture with this integration.

To determine the exact values you can set your filters to, use the following PowerShell command:

Get-WmiObject -Class Win32_NTLogEvent

`Security`For instance, to see the latest event logged in the  LogFile, use:

Get-WmiObject -Class Win32_NTLogEvent -Filter "LogFile='Security'" | select -First 1

`win32_event_log.yaml`The values listed in the output of the command are the ones you can set in  to capture the same kind of events.`Get-EventLog``Get-WmiObject``Get-WmiObject`**Note**: the information given by the  PowerShell command or the Windows Event Viewer GUI may slightly differ from , so we recommend you to double-check your filters' values with  if the integration does not capture the events you set up.

<%= insert_example_links(conf: "win32_event_log", check: "win32_event_log")%>
