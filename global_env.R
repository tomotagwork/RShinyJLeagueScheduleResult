Sys.setenv(TZ="Asia/Tokyo")

### Options ###################################################################
options(scipen=100)
options(digits.secs=6)
options(shiny.maxRequestSize=1*1024*1024*1024)

### Variables ###################################################################
targetYearList <- c("2019","2020","2021","2022","2023")
targetYear <- "2023"

teamList2019 <- c("札幌" ,"仙台","鹿島", "浦和", "FC東京", "川崎Ｆ", "横浜FM", "湘南", "松本", "清水", "磐田", "名古屋", "Ｇ大阪", "Ｃ大阪", "神戸", "広島", "鳥栖", "大分")
teamList2020 <- c("札幌" ,"仙台","鹿島", "浦和", "柏", "FC東京", "川崎Ｆ", "横浜FM", "横浜FC", "湘南", "清水", "名古屋", "Ｇ大阪", "Ｃ大阪", "神戸", "広島", "鳥栖", "大分")
teamList2021 <- c("札幌" ,"仙台","鹿島", "浦和", "柏", "FC東京", "川崎Ｆ", "横浜FM", "横浜FC", "湘南", "清水", "名古屋", "Ｇ大阪", "Ｃ大阪", "神戸", "広島", "徳島", "福岡", "鳥栖", "大分")
teamList2022 <- c("札幌" ,"鹿島", "浦和", "柏", "FC東京", "川崎Ｆ", "横浜FM", "湘南", "清水", "磐田","名古屋", "京都","Ｇ大阪", "Ｃ大阪", "神戸", "広島", "福岡", "鳥栖")
teamList2023 <- c("札幌" ,"鹿島", "浦和", "柏", "FC東京", "川崎Ｆ", "横浜FM", "横浜FC", "湘南", "新潟" ,"名古屋", "京都","Ｇ大阪", "Ｃ大阪", "神戸", "広島", "福岡", "鳥栖")

teamListAll <- list("2019"=teamList2019, "2020"=teamList2020, "2021"=teamList2021,"2022"=teamList2022,"2023"=teamList2023)

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
colorNiigata <- "#FF6600"
colorMatsumoto <- "#006600"
colorShimizu <- "#FF9809" 
colorIwata <- "#6b9ad3"
colorNagoya <- "#D80C18"
colorKyoto <- "#6F0E6C"
colorGOsaka <- "#0E3192"
colorCOsaka <- "#F21E8C"
colorKobe <- "#9D0020"
colorHiroshima <- "#372674"
colorTosu <- "#3aadde"
colorOita <- "#000080"
colorTokushima <- "#0000cc"
colorFukuoka <- "#141433"

teamColorMapping <- c(
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
  新潟 = colorNiigata,
  松本 = colorMatsumoto, 
  清水 = colorShimizu, 
  磐田 = colorIwata, 
  名古屋 = colorNagoya,
  京都 = colorKyoto,
  Ｇ大阪 = colorGOsaka,
  Ｃ大阪 = colorCOsaka,
  神戸 = colorKobe,
  鳥栖 = colorTosu,
  広島 = colorHiroshima,
  大分 = colorOita,
  徳島 = colorTokushima,
  福岡 = colorFukuoka
)

