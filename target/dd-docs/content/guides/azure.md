--- title: Deploying the Datadog Agent to Azure kind: guide
listorder: 8
---

This guide assumes you are deploying an Azure Cloud Service.

### Install the Agent on instance startup`installDatadogAgent.cmd`**Create** a file called  with the following contents:


set log=datadog-install.log
set api_key=%1

sc query | findstr DatadogAgent
if ERRORLEVEL 1 (
    echo "Datadog Agent service not detected" >> %log%
    echo "Starting the installation" >> %log%

    if exist ddagent.msi (
        echo "Already has the installer" >> %log%
    ) else (
        echo "Fetching the Agent Installer" >> %log%
        powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://s3.amazonaws.com/ddagent-windows-stable/ddagent-cli.msi', 'ddagent.msi')"
    )

    echo "Starting the installer" >>%log%
    msiexec.exe /qn /i ddagent.msi APIKEY=%api_key% /L+ %log%
) else (
    echo "Agent already exists, skipping install" >>%log%
)

echo "Finished Install" >>%log%
exit 0

If you are using Visual Studio, make sure that the file is included in the package: Set the *Copy to Output Directory* property of the file to *Copy Always* and make sure that the *Build Action* is *Content* .`ServiceDefinition.csdef``<Startup>`**Add** the installation task to your  file by adding the following in the  section:

<Task commandLine="installDatadogAgent.cmd YOUR_API_KEY" executionContext="elevated" />


`YOUR_API_KEY`Be sure to replace  with your API key found at [here](https://app.datadoghq.com/account/settings#api).


The created file will download and install the latest version of the Agent on application deploy.

### Deploy your app

`installDatadogAgent.cmd``Publish`You should now repackage your app's cloud service package file (*.cspkg), making sure to include the  file in the package. You can also directly upload from Visual Studio using the  button.

On deploy you should see your new hosts appear on your infrastructure overview:

<img src="/static/images/azure_infrastructure_overview.png" alt="infrastructure view"/>
