
#read csv file for quiz2
csv_file_path <- 'Downloads/covid.csv'
your_dataframe1 <- read.csv(csv_file_path,header = TRUE)

your_dataframe1
2
your_dataframe1$Hospitalization.type <-factor(your_dataframe1$Hospitalization.type)
your_dataframe1$Symptoms<-factor(your_dataframe1$Symptoms)
your_dataframe1$Outcome <-factor(your_dataframe1$Outcome)
your_dataframe1$Epidemiological.link...Notes <- as.character(your_dataframe1$Epidemiological.link...Notes)
3
your_dataframe1 <-  your_dataframe1[order(your_dataframe1$Date.of.diagnosis),]
4
your_dataframe1$More_Info <- ifelse(your_dataframe1$Hospitalization.type =='Home isolation' & your_dataframe1$Symptoms == 'Asymptomatic','Yes','No')
names(your_dataframe1)[names(your_dataframe1) == 'More_Info'] <-'Home_Asymptomatic'
barplot(table(your_dataframe1$Home_Asymptomatic), main = "Cases by Home_Asymptomatic", xlab = "Home_Asymptomatic", ylab = "Frequency")
5
your_dataframe1$Date.of.birth <- as.numeric(substr(your_dataframe1$Date.of.birth,1,4))
your_dataframe1$Date.of.birth
count <- sum((your_dataframe1$Date.of.birth > 1981 & your_dataframe1$Outcome == "Healed" & your_dataframe1$Hospitalization.type == "Home isolation") |
               (your_dataframe1$Date.of.birth <= 1981 & your_dataframe1$Outcome == "Healed" & your_dataframe1$Hospitalization.type == "Home isolation"))

cat("Number of cases meeting the conditions: ", count, "\n")
6.
your_dataframe1 <- read.csv(csv_file_path,header = TRUE)
current_date <- Sys.Date()
your_dataframe1$Age <- as.integer(difftime(current_date,your_dataframe1$Date.of.birth, units='days')/365)
your_dataframe1$Age
\7,8,9,10
Maneskin <-seq(1, 1000)
divisible_by_3_not_7 <- Maneskin[Maneskin %% 3 == 0 & Maneskin %% 7 != 0]
divisible_by_7_not_3 <- Maneskin[Maneskin %% 7 == 0 & Maneskin %% 3 != 0]
cat("Divisible by 3 but not by 7: ", divisible_by_3_not_7, "\n")
cat("Divisible by 7 but not by 3: ", divisible_by_7_not_3, "\n")
your_dataframe1
for(chosen in 1:length(Maneskin)) {
  if(chosen %% 3 == 0 && chosen %% 7 != 0){
    cat('Zitti')
  if(chosen %% 7 == 0 && chosen %% 3 != 0){
    cat('Buoni')
  }
  else{
    cat(chosen)
  }
  }
    
  
}

11.
#it will create wrong sequence and make issue out of that.

#https://chat.openai.com/share/926da934-0d6c-460b-b387-466168be0294

