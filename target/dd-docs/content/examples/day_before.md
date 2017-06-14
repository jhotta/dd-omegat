--- title: Using day_before() function kind: example tags:  - "Graphing Functions"  - Dashboards  - JSON Editing  - "Nginx Metrics"
summary: The day_before() function allows you to overlay data from the previous day on your current data.
---
[Graphing Primer]（http://docs.datadoghq.com/graphing/）ページには、グラフに適用できる関数のリストがあります。そこには、パターン<timeperiod> _before（）の1組の関数が存在する。これらの関数は、対応する期間の値をグラフに表示します。それ自体では、価値が高いわけではないかもしれませんが、現在の価値と合わせて、アプリケーションのパフォーマンスに有用な情報を提供するかもしれません。 

次に、nginx.net.connectionsのday_before値を軽く細い線として表示した例を示します。この例では、day_beforeデータを簡単に識別できる1週間分のデータが表示されます。

![simple.day_before.example](/static/images/simple_day_before_example.png)

今のところ、day_beforeのような関数を使うのは、グラフィカルエディタの対象外ですので、JSONエディタを使う必要があります。このグラフのJSONは次のとおりです。


#!json
{
  [fuzzy]要求(R)
    [fuzzy]要求(R)
      "q": "day_before(avg:nginx.net.connections{*})",
      "type": "line",
      "style": {
        "palette": "cool",
        "width": "thin"
      }
    },
    [fuzzy]要求(R)
      "q": "avg:nginx.net.connections{*}",
      "style": {
        "palette": "warm"
      }
    }
  ],
  "viz": "timeseries"
}
