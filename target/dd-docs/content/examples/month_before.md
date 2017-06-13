--- title: Using month_before() function kind: example tags:  - "Graphing Functions"  - Dashboards  - JSON Editing  - "AWS Metrics"
summary: The month_before() function allows you to overlay data from the previous month on your current data.
---
[Graphing Primer]（http://docs.datadoghq.com/graphing/）ページには、グラフに適用できる関数のリストがあります。そこには、パターン<timeperiod> _before（）の1組の関数が存在する。これらの関数は、対応する期間の値をグラフに表示します。それ自体では、価値が高いわけではないかもしれませんが、現在の価値と合わせて、アプリケーションのパフォーマンスに有用な情報を提供するかもしれません。 

Here is an example of aws.ec2.cpuutilization with the month_before value shown as a thin, solid line. 

![simple.month_before.example](/static/images/simple_month_before_example.png)

For now, using functions like month_before is out of scope for the graphical editor so you have to use the JSON editor. このグラフのJSONは次のとおりです。


#!json
{
  [fuzzy]要求(R)
    {
      "q": "avg:aws.ec2.cpuutilization{*}",
      "type": "line",
      "style": {
        "palette": "cool",
        "width": "normal",
        "type": "dotted"
      }
    },
    {
      "q": "month_before(avg:aws.ec2.cpuutilization{*})",
      "type": "line",
      "style": {
        "width": "thin"
      }
    }
  ],
  "viz": "timeseries"
}
