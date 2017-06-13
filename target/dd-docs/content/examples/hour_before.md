--- title: Using hour_before() function kind: example tags:  - "Graphing Functions"  - Dashboards  - JSON Editing  - "OS Metrics"
summary: The hour_before() function allows you to overlay data from the previous hour on your current data.
---
[Graphing Primer]（http://docs.datadoghq.com/graphing/）ページには、グラフに適用できる関数のリストがあります。そこには、パターン<timeperiod> _before（）の1組の関数が存在する。これらの関数は、対応する期間の値をグラフに表示します。それ自体では、価値が高いわけではないかもしれませんが、現在の価値と合わせて、アプリケーションのパフォーマンスに有用な情報を提供するかもしれません。 

Here is an example of system.load.1 with the hour_before value shown as a dotted line. In this particular example, you can see the machine was started at 6:30am and the hour_before values show up at the 7:30 mark. Of course this example was created specifically so you can see the hour_before values match up with the actual values.

![simple.hour_before.example](/static/images/simple_hour_before_example.png)

[fuzzy]今のところ、day_beforeのような関数を使うのは、グラフィカルエディタの対象外ですので、JSONエディタを使う必要があります。このグラフのJSONは次のとおりです。


#!json
{ "viz": "timeseries",
  [fuzzy]要求(R)
    {
      "q": "avg:system.load.1{host:MyMachine.local}",
      "style": {
        "width": "thin",
        "palette": "cool",
        "type": "solid"
      },
      "type": "area"
    },
    {
      "q": "hour_before(avg:system.load.1{host:MyMachine.local})",
      "style": {
        "width": "thin",
        "palette": "warm",
        "type": "dashed"
      },
      "type": "line"
    }
  ],
  [fuzzy]イベント
