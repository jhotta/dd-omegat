--- title: HTTP check integration_title: HTTP Check kind: integration newhlevel: true
update_for_agent: 5.8.5
---
# 概要

HTTP checks run in the agent and can verify whether or not a website is up or down, responds in a certain time, and/or contains specific text on the page.

Also see the related [TCP Checks](/integrations/tcpcheck)

# インストール

No installation is required

# 設定

`http_check.yaml``conf.d``network.http.response_time`Edit the  file in your agent's  directory. The following yaml file will check the Datadog home page for the text "Cloud-Scale Monitoring" within 5 seconds. The response time will be available in the metric .

init_config:

instances:
  - name: My first service
    url: https://datadoghq.com
    timeout: 5

    content_match: 'Cloud-Scale Monitoring'
    collect_response_time: true
    skip_event: true

    [fuzzy]タグ(T):
      - url:datadoghq.com
      - env:production

Other settings available include:

`url``timeout``method``data``content_match``username``password``http_response_status_code``401``4\d\d``include_content``true``false``collect_response_time``network.http.response_time``false``disable_ssl_validation``false``ignore_ssl_warning``ca_certs``init_config``check_certificate_expiration``check_certificate_expiration``disable_ssl_validation``days_warning``days_critical``check_certificate_expiration``headers``skip_event``false``no_proxy``false``allow_redirects``true``tags`| Setting | Description | |---|---| |  | The URL to test. | |  | The time in seconds to allow for a response. | |  | The HTTP method. This setting defaults to GET, though many other HTTP methods are supported, including POST and PUT. | |  | The data option is only available when using the POST method. Data should be included as key-value pairs and will be sent in the body of the request. | |  | A string or Python regular expression. The HTTP check will search for this value in the response and will report as DOWN if the string or expression is not found. | |  &  | If your service uses basic authentication, you can provide the username and password here. | |  | A string or Python regular expression for an HTTP status code. This check will report DOWN for any status code that does not match. This defaults to 1xx, 2xx and 3xx HTTP status codes. For example:  or .| |  | When set to , the check will include the first 200 characters of the HTTP response body in notifications. デフォルト値| |  | By default, the check will collect the response time (in seconds) as the metric . To disable, set this value to . | |  | This setting will skip SSL certificate validation and is enabled by default. If you require SSL certificate validation, set this to . | |  | When SSL certificate validation is enabled (see setting above), this setting will allow you to disable security warnings. | |  | This setting will allow you to override the default certificate path as specified in  | |  | When  is enabled, the service check will check the expiration date of the SSL certificate. Note that this will cause the SSL certificate to be validated, regardless of the value of the  setting. | |  &  | When  is enabled, these settings will raise a warning or critical alert when the SSL certificate is within the specified number of days from expiration. | |  | This parameter allows you to send additional headers with the request. Please see the [example YAML file](https://github.com/DataDog/integrations-core/blob/master/http_check/conf.yaml.example) for additional information and caveats. | |  | When enabled, the check will not create an event. This is useful to avoid duplicates with a server side service check. This defaults to . | |  | If set, the check will bypass proxy settings and attempt to reach the check url directly. This defaults to . | |  | This setting allows the service check to follow HTTP redirects and defaults to . |  | A list of arbitrary tags that will be associated with the check. For more information about tags, please see our [Guide to tagging](/guides/tagging/) and blog post, [The power of tagged metrics](https://www.datadoghq.com/blog/the-power-of-tagged-metrics/) | {:.table}

<%= insert_example_links%>

# Validation

Execute the agent info command and verify that the integration check was successful. The output should contain a section similar to the following:

http_check
----------
  - instance #0 [OK]
  - Collected 0 metrics, 0 events & 1 service check
