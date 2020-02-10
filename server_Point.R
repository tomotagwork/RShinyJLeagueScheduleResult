output$textOutputYear_point <- renderText({
  return(paste0("Target Year: ",input$selectInputYear))
})

output$plotly_point <- renderPlotly({
  func_getData(input$selectInputYear)
  if (nrow(dfTeamData)>0){
    # set factor levels for legend order
    dfTeamData_plot <- dfTeamData
    dfTeamData_plot$target_team <- factor(dfTeamData_plot$target_team, levels=teamOrder)
    
    # plot graph
    plotPoint <- ggplot2::ggplot(dfTeamData_plot, aes(x=as.Date(matchday), y=target_team_cumpoint, color=target_team)) + 
      geom_line() +   geom_point() +
      labs(x="date", y="points") +
      scale_x_date(labels=date_format("%Y/%m/%d")) +
      scale_color_manual(
        name = "team",
        values = c(
          札幌 = colorSapporo,
          仙台 = colorSendai,
          鹿島 = colorKashima,
          浦和 = colorUrawa,
          柏 = colorKashiwa,
          FC東京 = colorFCTokyo,
          川崎Ｆ = colorKawasaki,
          横浜FM = colorYokohamaFM,
          横浜FC = colorYokohamaFC,
          湘南 = colorShonan,
          松本 = colorMatsumoto, 
          清水 = colorShimizu, 
          磐田 = colorIwata, 
          名古屋 = colorNagoya,
          Ｇ大阪 = colorGOsaka,
          Ｃ大阪 = colorCOsaka,
          神戸 = colorKobe,
          鳥栖 = colorTosu,
          広島 = colorHiroshima,
          大分 = colorOita
        )
      )
    
    ggplotly(plotPoint)
  }
  
})

