--- title: Tracing API kind: documentation autotocdepth: 2 hideguides: true
customnav: tracingnav
---

### 概要

DatadogのAPMを使用すると、コードをトレースしてパフォーマンスメトリックスを収集することができます。これらメトリックスを把握することによりアプリケーションのどの部分が遅く、非効率かを判断することができます。

トレースデータは、HTTP APIを介してDatadog Agentに送信されます。Datadog Agentへのメトリクス送信を簡素化するためにいくつかの[公式ライブラリ]（/ tracing /＃instrument-your-application）を公開していますが、APIを直接使用してライブラリが使用できないアプリケーションや、公式のDatadog Tracingライブラリが存在していないプログラミング言語で書かれたアプリケーションのメトリクスを送信することができます。

### API

<%  # Some shortcuts for the columns.  left_side_div = '<div class="col-xs-12 col-md-6 api-left tracing-api">'  right_side_div = '<div class="col-xs-12 col-md-6 api-right tracing-api">'

  no_args = '<em>This end point takes no JSON arguments.</em>'  no_response = '<em>This end point does not return JSON on successful requests.</em>' %>

<!--div class="btn-toolbar">
  <div class="btn-group language-links btn-group-sm">
    <div lang="console" class="active lang-btn btn btn-default gradient">Shell</div>
    <div lang="python" class="lang-btn btn btn-default gradient">Python</div>
    <div lang="ruby" class="lang-btn btn btn-default gradient">Ruby</div>
    <div lang="golang" class="lang-btn btn btn-default gradient">Go</div>
  </div>
</div-->
<h4 id="traces" class="tracing-api">Traces</h4>
<div class="row">
  <%= left_side_div %>
    [fuzzy]引数(A):
    <ul class="arguments">
      <%= argument('traces', 'A list of traces. トレースはスパン情報を含むJSONオブジェクトとしてスパンのリストです：
        <ul>
          <li><code>trace_id</code> - <em>Required.</em> The unique integer (64-bit unsigned) ID of the trace containing this span.</li>
          <li><code>span_id</code> - <em>Required.</em> The span integer (64-bit unsigned) ID.</li>
          <li><code>name</code> - <em>Required.</em> The span name.</li>
          <li><code>resource</code> - <em>Required.</em> The resource you are tracing.</li>
          <li><code>service</code> - <em>Required.</em>The service name.</li>
          <li><code>type</code> - <em>Required.</em> The type of request.</li>
          <li><code>start</code> - <em>Required.</em> The start time of the request in nanoseconds from the unix epoch.</li>
          <li><code>duration</code> - <em>Required.</em> The duration of the request in nanoseconds.</li>
          <li><code>parent_id</code> - <em>Optional.</em> The span integer ID of the parent span.</li>
          <li><code>error</code> - <em>Optional.</em> Set this value to 1 to indicate if an error occured. If an error occurs, you should pass additional information, such as the error message, type and stack information in the <code>meta</code> property.</li>
          <li><code>meta</code> - <em>Optional.</em> A dictionary of key-value metadata. e.g. tags.</li>
        </ul>
      ') %>
    </ul>

    注：複数のスパンを、単一のトレース配列内で送信することができます。トレース配列内の各スパンには同じtrace_idを使用する必要があります。複数のトレースを送信することもできます。

    <h5>レスポンス</ h5>

    トレースが正常に配信された場合、Agentは200ステータスコードとテキスト「OK」を返します。配信に失敗すると、500のステータスコードとエラーメッセージが返されます。配信が成功した場合でも、トレースが受け付けられていない時もあるので注意してください。トレースは、正常に配信された後にドロップされる可能性があります。トレースの詳細については、エージェントのログを参照してください。

  </div>
  <%= right_side_div %>  <h5>Signature</h5>  <code>PUT /v0.3/traces</code>

<h5>Example Request</h5>
<% %w{sh}.each do |f| %>
  <%= snippet_code_block "trace-api-traces.#{f}", :nocomments => true %>
<% end %>

<h5>Example Response</h5>
<% %w{sh}.each do |f| %>
  <%= snippet_result_code_block "trace-api-traces.#{f}" %>
<% end %>
  </div> </div>

<h4 id="services" class="tracing-api">Services</h4>
<div class="row">
  <%= left_side_div %>
    [fuzzy]引数(A):
    <ul class="arguments">
      <%= argument('service', 'A service as a JSON object containing the service name mapped to application and application type information:
        <ul>
          <li><code>service</code> - <em>Required.</em>The service name as a dictionary key.</li>
          <li><code>app</code> - <em>Required.</em> The name of the application.</li>
          <li><code>app_type</code> - <em>Required.</em> The type of application.</li>
        </ul>
      ') %>
    </ul>

    <h5>レスポンス</ h5>

    サービスが正常に配信された場合、Agentは200ステータスコードとテキスト「OK」を返します。配信に失敗すると、500のステータスコードとエラーメッセージが返されます。サービスの詳細については、エージェントのログを参照してください。

  </div>
  <%= right_side_div %>  <h5>Signature</h5>  <code>PUT /v0.3/services</code>

<h5>Example Request</h5>
<% %w{sh}.each do |f| %>
  <%= snippet_code_block "trace-api-services.#{f}", :nocomments => true %>
<% end %>

<h5>Example Response</h5>
<% %w{sh}.each do |f| %>
  <%= snippet_result_code_block "trace-api-services.#{f}" %>
<% end %>
  </div> </div>

<% content_for :javascript do %>  <script type="text/javascript">  $(DD_docs.apiPage);

  </script> <% end %>
