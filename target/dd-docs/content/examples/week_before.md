--- title: Using week_before() function kind: example tags:  - "Graphing Functions"  - Dashboards  - JSON Editing  - "Cassandra Metrics"
[fuzzy]summary：month_before（）関数を使用すると、前の月のデータを現在のデータにオーバーレイすることができます。
---
[Graphing Primer]（http://docs.datadoghq.com/graphing/）ページには、グラフに適用できる関数のリストがあります。そこには、パターン<timeperiod> _before（）の1組の関数が存在する。これらの関数は、対応する期間の値をグラフに表示します。それ自体では、価値が高いわけではないかもしれませんが、現在の価値と合わせて、アプリケーションのパフォーマンスに有用な情報を提供するかもしれません。 

Here is an example of cassandra.db.read_count with the week_before value shown as a dotted line. In this example, you can see about three weeks' worth of data which makes the week_before data easy to identify.

![simple.week_before.example](/static/images/simple_week_before_example.png)

For now, using functions like week_before is out of scope for the graphical editor so you have to use the JSON editor. このグラフのJSONは次のとおりです。


#!json
{
  [fuzzy]要求(R)
    [fuzzy]要求(R)
      "q": "week_before(avg:cassandra.db.read_count{*})",
      "type": "line",
      "style": {
        "palette": "cool",
        "width": "normal",
        "type": "dotted"
      }
    },
    [fuzzy]要求(R)
      "q": "avg:cassandra.db.read_count{*}",
      "style": {
        "palette": "orange"
      },
      "type": "line"
    }
  ],
  "viz": "timeseries"
}
