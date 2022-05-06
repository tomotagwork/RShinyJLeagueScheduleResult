output$textOutputYear_point <- renderText({
  return(paste0("Target Year: ",input$selectInputYear))
})

output$plotly_point <- renderPlotly({
  func_getData(input$selectInputYear)
  if (nrow(dfTeamData)>0){
    # set factor levels for legend order
    dfTeamData_plot <- dfTeamData
    dfTeamData_plot$target_team <- factor(dfTeamData_plot$target_team, levels=teamOrder)
    dfTeamData_plot$matchday <- as.Date(dfTeamData_plot$matchday)
    
    # plot graph
    # plotPoint <- ggplot2::ggplot(dfTeamData_plot, aes(x=as.Date(matchday), y=target_team_cumpoint, color=target_team)) + 
    #   geom_line() +   geom_point() +
    #   labs(x="date", y="points") +
    #   scale_x_date(labels=date_format("%Y/%m/%d")) +
    #   scale_color_manual(
    #     name = "team",
    #     values = teamColorMapping
    #   )
    
    plotPoint <- ggplot2::ggplot(dfTeamData_plot, aes(x=matchday, y=target_team_cumpoint, color=target_team)) + 
      geom_line() +   geom_point() +
      labs(x="date", y="points") +
      #scale_x_date(labels=date_format("%m/%d")) +
      scale_x_date(date_labels = "%Y/%m/%d") + 
      scale_color_manual(
        name = "team",
        values = teamColorMapping
      )
    
    ggplotly(plotPoint)
  }
  
})

