install.packages("ggplot2")
install.packages("dplyr")
library(dplyr)
library(ggplot2)

setwd("C:/Users/natta/Desktop/AI-Powered Job Market Insights/dataset")
getwd()
jobmkgt <- read.csv("ai_job_dataset_cleaned.csv")
timemkgt <- read.csv("time_table_dataset.csv")
jobreq <- read.csv("job_requirement_dataset.csv")
jobreq_name <- read.csv("job_requirement_dataset_name.csv")

head(jobmkgt["salary_usd"])

job_join_time <- merge(jobmkgt, timemkgt, by.x = "ID_cleaned", by.y = "ID_cleaned")

jobai <- merge(jobmkgt, job_join_time, by.x = "ID_cleaned", by.y= "ID_cleaned")

## Histrogram on Salary Dsitribution in USD

graph1 <- ggplot(data = job_join_time, aes(x = salary_usd))

salary_hist1 <- graph1 + geom_histogram(binwidth = 10000, aes(fill = experience_level_cleaned), colour = "Black") +
  labs(title = "Salary Distribution in USD") + xlab("Quantity of Salary(bin=10000)") + ylab("Frequency Count") +
  guides(fill=guide_legend(title = "Experience Level"))

salary_hist2 <- salary_hist1 

salary_hist2

annotation <- data.frame(
  x = c(
      round(min(jobai$salary_usd), 0),
      round(mean(jobai$salary_usd), 0),
      round(max(jobai$salary_usd), 0)
  ),
  
  y = c(700, 1150, 100),
  
  label = c("Min : ", "Mean : ", "Max : ")
)

salary_hist3 <- salary_hist2 + geom_text(
  data = annotation,
  aes(
    x = x,
    y = y,
    label = paste(label, x)
  ),
  size = 4,
  fontface = "bold"
)

salary_hist <-  salary_hist3 + theme_gray() + 
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.title = element_text(size = 50)
  )

salary_hist

