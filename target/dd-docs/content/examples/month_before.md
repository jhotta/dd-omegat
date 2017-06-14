--- title: Using month_before() function kind: example tags:  - "Graphing Functions"  - Dashboards  - JSON Editing  - "AWS Metrics"
summary：month_before（）関数を使用すると、前の月のデータを現在のデータにオーバーレイすることができます。
---
[Graphing Primer]（http://docs.datadoghq.com/graphing/）ページには、グラフに適用できる関数のリストがあります。そこには、パターン<timeperiod> _before（）の1組の関数が存在する。これらの関数は、対応する期間の値をグラフに表示します。それ自体では、価値が高いわけではないかもしれませんが、現在の価値と合わせて、アプリケーションのパフォーマンスに有用な情報を提供するかもしれません。 

次に、aws.ec2.cpuutilizationの例を示します。この例では、month_before値が細い実線で示されています。 

![simple.month_before.example](/static/images/simple_month_before_example.png)

[fuzzy]今のところ、day_beforeのような関数を使うのは、グラフィカルエディタの対象外ですので、JSONエディタを使う必要があります。このグラフのJSONは次のとおりです。


#!json
{
  [fuzzy]要求(R)
    [fuzzy]要求(R)
      "q": "avg:aws.ec2.cpuutilization{*}",
      "type": "line",
      "style": {
        "palette": "cool",
        "width": "normal",
        "type": "dotted"
      }
    },
    [fuzzy]要求(R)
      "q": "month_before(avg:aws.ec2.cpuutilization{*})",
      "type": "line",
      "style": {
        "width": "thin"
      }
    }
  ],
  "viz": "timeseries"
}
