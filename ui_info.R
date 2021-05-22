tabItem_info <- tabItem("tab_info",
                        div(p("[2021/05/22, ver2.1]"),align="right"),
                        div(img(src="shika02_maru.gif", width="75px", height="75px"),align="center"),
                        h1("Jリーグ 日程結果"),
                        hr(),
                        h2("Information"),
                        a("J.League Data Site", href="https://data.j-league.or.jp/SFMS01/", target="_blank"), 
                        div("上のサイトから情報を取得してデータを加工しています。"),
                        div("対象年: 2019-2021 / 対象リーグ: J1"),
                        div("コードについての詳細は以下の記事をご参照下さい。"),
                        a("Qiita: R - ShinyアプリでJリーグの勝点推移グラフを作成してみた", 
                          href="https://qiita.com/tomotagwork/items/3162cfef78c71ef4b977",
                          target="_blank"),
                        hr(),
                        h3("勝点推移"),
                        p("横軸を日付、縦軸を勝点とした折れ線グラフ"),
                        
                        h3("日程/結果"),
                        p("一覧: 全チームのこれまでの結果と今後の予定の一覧表"),
                        p("チーム別: チーム毎のこれまでの結果、今後の予定の詳細"),
                        hr()
                        

)