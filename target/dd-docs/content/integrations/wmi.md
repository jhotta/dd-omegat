--- title: Datadog-WMI Integration integration_title: WMI kind: integration newhlevel: true
git_integration_title: wmi
---

# 概要

![WMI Metric](/static/images/wmimetric.png)

Get metrics from your Windows applications/servers with Windows Management Instrumentation (WMI) in real time to

* Visualize their performance.
* Correlate their activity with the rest of your applications.

<%= insert_example_links(conf:"wmi_check", check:"wmi_check")%>

# インストール

If you are only collecting standard metrics from Microsoft Windows and other packaged applications, there are no installation steps. If you need to define new metrics to collect from your application, then you have a few options:

1.  Submit perfomance counters using System.Diagnostics in .NET, then access them via WMI.
2.  Implement a COM-based WMI provider for your application. You would typically only do this if you are using a non-.NET language.

[]To learn more about using System.Diagnostics, refer to the MSDN documentation here(https://msdn.microsoft.com/en-us/library/system.diagnostics.performancecounter(v=vs.110).aspx). After adding your metric you should be able to find it in WMI. To browse the WMI namespaces you may find this tool useful: [WMI Explorer](https://wmie.codeplex.com/). You can find the same information with Powershell [here](https://msdn.microsoft.com/en-us/powershell/scripting/getting-started/cookbooks/getting-wmi-objects--get-wmiobject-). Also review the information in the [Datadog Knowledge Base article](https://help.datadoghq.com/hc/en-us/articles/205016075-How-to-retrieve-WMI-metrics).

If you assign the new metric a category of My_New_Metric, the WMI path will be `\\<ComputerName>\ROOT\CIMV2:Win32_PerfFormattedData_My_New_Metric`

`winmgmt /resyncperf`If the metric isn't showing up in WMI, try running  to force the computer to reregister the performance libraries with WMI.


# Configuration

1.  Click the **Install Integration** button on the WMI Integration Tile. 
2.  Open the Datadog Agent Manager on the Windows server.
3.  Edit the `Wmi Check` configuration.
  
    init_config:

instances:
  - class: Win32_OperatingSystem
    metrics:
      - [NumberOfProcesses, system.proc.count, gauge]
      - [NumberOfUsers, system.users.count, gauge]

  - class: Win32_PerfFormattedData_PerfProc_Process
    metrics:
      - [ThreadCount, proc.threads.count, gauge]
      - [VirtualBytes, proc.mem.virtual, gauge]
      - [PercentProcessorTime, proc.cpu_pct, gauge]
    tag_by: Name

  - class: Win32_PerfFormattedData_PerfProc_Process
    metrics:
      - [IOReadBytesPerSec, proc.io.bytes_read, gauge]
    tag_by: Name
    tag_queries:
      - [IDProcess, Win32_Process, Handle, CommandLine]

    Note that the default configuration uses the filter clause to limit the metrics pulled. Either set the filters to valid values or remove them as shown above to collect the metrics.

    The metrics definitions include three components: class property in WMI, metric name as it appears in Datadog, and the metric type. 

4.  Restart the agent.

## Configuration Options

`class``metrics``host``namespace``filters``provider``tag_by``constant_tags``tag_queries`Each WMI query has 2 required options,  and  and six optional options, , , , , ,  and .

`class``Win32_OperatingSystem``Win32_PerfFormattedData_PerfProc_Process``Win32_FormattedData_*` is the name of the WMI class, for example  or . You can find many of the standard class names on the [MSDN docs](http://msdn.microsoft.com/en-us/library/windows/desktop/aa394084.aspx). The  classes provide many useful performance counters by default.

`metrics` is a list of metrics you want to capture, with each item in the list being a set of [WMI property name, metric name, metric type].

- `NumberOfUsers``ThreadCount`The property name is something like  or .  The standard properties are also available on the MSDN docs for each  class.

- The metric name is the name you want to show up in Datadog.

- The metric type is from the standard choices for all agent checks, such as gauge, rate, histogram or counter.

`host``localhost` is the optional target of the WMI query,  is assumed by default. If you set this option, make sure that Remote Management is enabled on the target host [see here](https://technet.microsoft.com/en-us/library/Hh921475.aspx) for more information.

`namespace``cimv2` is the optionnal WMI namespace to connect to (default to ). 

`filters` is a list of filters on the WMI query you may want. For example, for a process-based WMI class you may want metrics for only certain processes running on your machine, so you could add a filter for each process name. You can also use the '%' character as a wildcard.

`provider``32``64``32``64` is the optional WMI provider (default to  on Datadog Agent 32-bit or ). It is used to request WMI data from the non-default provider. Available options are:  or . See [MSDN](https://msdn.microsoft.com/en-us/library/aa393067.aspx) for more information.

`tag_by` optionally lets you tag each metric with a property from the WMI class you're using. This is only useful when you will have multiple values for your WMI query. The examples below show how you can tag your process metrics with the process name (giving a tag of "name:app_name").

`constant_tags` optionally lets you tag each metric with a set of fixed values.

`tag_queries` optionally lets you specify a list of queries, to tag metrics with a target class property. Each item in the list is a set of [link source property, target class, link target class property, target property] where:

- 'link source property' contains the link value

- 'target class' is the class to link to

- 'link target class property' is the target class property to link to

- 'target property' contains the value to tag with

It translates to a WMI query:
 
SELECT 'target property' FROM 'target class' WHERE 'link target class property' = 'link source property'

Note: setting this will cause any instance number to be removed from tag_by values  i.e. name:process#1 => name:process

This feature is available starting with version 5.3 of the agent




# Validation

To validate your installation and configuration, click the Agent Status menu from the Logs and Status button. The output should contain a section similar to the following:

![wmivalidate](/static/images/wmivalidate.png) {: style="width:400px;"}




