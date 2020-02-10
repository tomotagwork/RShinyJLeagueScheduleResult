Sys.setenv(TZ="Asia/Tokyo")

### Options ###################################################################
options(scipen=100)
options(digits.secs=6)
options(shiny.maxRequestSize=1*1024*1024*1024)

### Variables ###################################################################
targetYearList <- c("2019","2020")
targetYear <- "2020"

teamList2019 <- c("札幌" ,"仙台","鹿島", "浦和", "FC東京", "川崎Ｆ", "横浜FM", "湘南", "松本", "清水", "磐田", "名古屋", "Ｇ大阪", "Ｃ大阪", "神戸", "鳥栖", "広島", "大分")
teamList2020 <- c("札幌" ,"仙台","鹿島", "浦和", "柏", "FC東京", "川崎Ｆ", "横浜FM", "横浜FC", "湘南", "清水", "名古屋", "Ｇ大阪", "Ｃ大阪", "神戸", "鳥栖", "広島", "大分")
teamListAll <- list("2019"=teamList2019, "2020"=teamList2020)


colorSapporo <- "#D6000F"
colorSendai <- "#ffcc33"
colorKashima <- "#af011c"
colorUrawa <- "#e60412"
colorKashiwa <- "#FFF000"
colorFCTokyo <- "#000080"
colorKawasaki <- "#27bfe5"
colorYokohamaFM <- "#0000ff"
colorYokohamaFC <- "#33CCFF"
colorShonan <- "#6DBA2E"
colorMatsumoto <- "#006600"
colorShimizu <- "#FF9809" 
colorIwata <- "#6b9ad3"
colorNagoya <- "#D80C18"
colorGOsaka <- "#0E3192"
colorCOsaka <- "#F21E8C"
colorKobe <- "#9D0020"
colorTosu <- "#3aadde"
colorHiroshima <- "#372674"
colorOita <- "#000080"

