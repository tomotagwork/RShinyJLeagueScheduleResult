output$textOutputYear_ResultAll <- renderText({
  refreshTable_ResultAll()
  return(paste0("Target Year: ",input$selectInputYear))
})

refreshTable_ResultAll <- reactive({
  
  totalNumberOfMaches <- (length(teamListAll[[input$selectInputYear]])-1)*2
  
  output$dataTable_ResultAll <- renderDataTable({
    func_getData(input$selectInputYear)
    if (nrow(dfTeamData)>0) {
      dfTempMatch <- dplyr::select(dfTeamData, target_team, section_num, target_team_matchdetail,match_link)
      dfTempMatch$section_num <- as.numeric(stringi::stri_trans_nfkc(stringr::str_sub(dfTempMatch$section_num, 2,-2)))
      
      splitedMatchInfo <- stringr::str_split(dfTempMatch$target_team_matchdetail, "_", simplify=TRUE)
      tempOppnentInfo <- splitedMatchInfo[,1]
      tempResult <-  splitedMatchInfo[,2]
      dfTempMatch$target_team_matchdetail <- ifelse(dfTempMatch$match_link != "", 
                                                    paste0(tempOppnentInfo, '<br>','<a href="', dfTempMatch$match_link, '"target="_blank">', tempResult, '</a>'), 
                                                    paste0(tempOppnentInfo, '<br>',tempResult))
      
      dfTempMatch <- reshape2::dcast(dfTempMatch, target_team ~ section_num, value.var="target_team_matchdetail")
      
      dfTempRanking <- dplyr::select(dfTeamStandings, ranking, target_team, point, num_of_matches, win, draw, lose, goalfor, goalagainst, goaldiff)
      dfTeamScheduleResult <- dplyr::left_join(dfTempRanking, dfTempMatch, by="target_team")
      
      dfTeamScheduleResult
    }
  }, server=FALSE,
     rownames=FALSE, 
     escape=FALSE,
     #colnames=c("順位"=1, "チーム"=2),
     colnames=c("順位","チーム", "勝点", "試合","勝","分","負","得点","失点","差",paste0("第",c(1:totalNumberOfMaches),"節")),
     extensions=c("FixedColumns"),
     options=list(pageLength = 20,
                  searchHighlight = TRUE,
                  #ordering=FALSE,
                  autoWidth = TRUE, columnDefs = list(list(width = '80px', targets = c(1, 10:(totalNumberOfMaches+9))),
                                                      list(className = 'dt-center', targets = c(0:totalNumberOfMaches+9))),
                  dom = 'lftipr', scrollX = TRUE, fixedColumns = list(leftColumns = 2)
                  )
  )

})
