install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("ggpubr")
options(scipen=999)

library(dplyr)
library(ggplot2)
library(tidyverse)
library(ggpubr)


setwd("C:/Users/natta/Desktop/AI-Powered Job Market Insights/dataset")
getwd()
salary_by_skills <- read.csv("salary_by_skills.csv")
time_table <- read.csv("time_table_dataset.csv")
time_by_job_count <- read.csv("correlation2_dataset.csv")
main <- read.csv("ai_job_dataset_cleaned.csv")
salary_group <- read.csv("salary_category.csv")
job_count_categorized <- read.csv("category_job_by_month.csv")

# Merge dataframe to be able to do analysis
salary_analysis <- merge(salary_group, time_table, by.x = "ID_cleaned", by.y = "ID_cleaned")
analysis <- merge(salary_by_skills, time_table, by.x = "ID_cleaned", by.y = "ID_cleaned")
main_and_salary <- merge(main, salary_group, by.x = "ID_cleaned", by.y = "ID_cleaned")
main_and_salary <- merge(main_and_salary, salary_by_skills, by.x = "ID_cleaned", by.y = "ID_cleaned")
main_and_salary


# Correlation test between Salary by skills to Days subtraction period
corraws <- cor(analysis$AWS, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrazure <- cor(analysis$Azure, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrdocker <- cor(analysis$Docker, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrgcp <- cor(analysis$GCP, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrgit <- cor(analysis$Git, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrhadoop <- cor(analysis$Hadoop, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrjava <- cor(analysis$Java, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrkubernetes <- cor(analysis$Kubernetes, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrmlops <- cor(analysis$MLOps, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrmlp <- cor(analysis$MLP, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrpytorch <- cor(analysis$PyTorch, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrpython <- cor(analysis$Python, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrR <- cor(analysis$R, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrsql <- cor(analysis$SQL, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrscala <- cor(analysis$Scala, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrpyspark <- cor(analysis$PySpark, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrtableau <- cor(analysis$Tableau, analysis$days_subtraction_period, use = "pairwise.complete.obs")
corrtensorflow <- cor(analysis$Tensorflow, analysis$days_subtraction_period, use = "pairwise.complete.obs")

corraws 
corrazure 
corrdocker
corrgcp
corrgit
corrhadoop 
corrjava
corrkubernetes 
corrmlops 
corrmlp 
corrpytorch 
corrpython 
corrR 
corrsql 
corrscala 
corrpyspark 
corrtableau 
corrtensorflow

# Average job count post over time

corr2ai.architect <- cor(time_by_job_count$AI.Architect, time_by_job_count$month_subtraction_period)
corr2ai.consultant <- cor(time_by_job_count$AI.Consultant, time_by_job_count$month_subtraction_period)
corr2ai.productmanager <- cor(time_by_job_count$AI.Product.Manager, time_by_job_count$month_subtraction_period)
corr2ai.researchscientist <- cor(time_by_job_count$AI.Research.Scientist, time_by_job_count$month_subtraction_period)
corr2ai.softwareengineer <- cor(time_by_job_count$AI.Software.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.specialist <- cor(time_by_job_count$AI.Specialist, time_by_job_count$month_subtraction_period)
corr2ai.awe <- cor(time_by_job_count$Autonomous.Systems.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.cve <- cor(time_by_job_count$Computer.Vision.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.dataanalyst <- cor(time_by_job_count$Data.Analyst, time_by_job_count$month_subtraction_period)
corr2ai.dataengineer <- cor(time_by_job_count$Data.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.datascientist <- cor(time_by_job_count$Data.Scientist, time_by_job_count$month_subtraction_period)
corr2ai.dle <- cor(time_by_job_count$Deep.Learning.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.headai <- cor(time_by_job_count$Head.of.AI, time_by_job_count$month_subtraction_period)
corr2ai.mle <- cor(time_by_job_count$Machine.Learning.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.mlr <- cor(time_by_job_count$Machine.Learning.Researcher, time_by_job_count$month_subtraction_period)
corr2ai.mlops.e <- cor(time_by_job_count$ML.Ops.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.nlp.e <- cor(time_by_job_count$NLP.Engineer, time_by_job_count$month_subtraction_period)
corr2ai.pds <- cor(time_by_job_count$Principal.Data.Scientist, time_by_job_count$month_subtraction_period)
corr2ai.researchscientist <- cor(time_by_job_count$Research.Scientist, time_by_job_count$month_subtraction_period)
corr2ai.roboticsengineer <- cor(time_by_job_count$Robotics.Engineer, time_by_job_count$month_subtraction_period)

corr2ai.architect
corr2ai.consultant
corr2ai.productmanager
corr2ai.researchscientist
corr2ai.softwareengineer
corr2ai.specialist
corr2ai.awe
corr2ai.cve
corr2ai.dataanalyst
corr2ai.dataengineer
corr2ai.datascientist
corr2ai.dle
corr2ai.headai
corr2ai.mle
corr2ai.mlr
corr2ai.mlops.e
corr2ai.nlp.e
corr2ai.pds
corr2ai.researchscientist
corr2ai.roboticsengineer

#is industry has effect in your salary?

summary(aov(lm(main$salary_usd ~ main$industry)))

TukeyHSD(aov(lm(main$salary_usd ~ main$industry)))

#Is skills has effect in your salary?

summary(aov(lm(salary_group$salary_usd ~ salary_group$skill_name)))

TukeyHSD(aov(lm(salary_group$salary_usd ~ salary_group$skill_name)))

#Is Job Title has affect in your salary?

summary(aov(lm(main$salary_usd ~ main$job_title)))

TukeyHSD(aov(lm(main$salary_usd ~ main$job_title)))

#Is yrs exp made significant impact on salary?

filtered_main <- filter(main, years_experience >= 10)
filtered_main

# General yrs lm model
general_yrs <- lm(years_experience ~ salary_usd, data = main)
general_yrs <- summary(general_yrs)
general_yrs

# More than 10+yrs lm model
ten_yrs <- lm(years_experience ~ salary_usd, data = filtered_main)
ten_yrs <- summary(ten_yrs)
ten_yrs

# Testing yrs of exp affects for each job_title?

more_factor1 <- lm(data = main, salary_usd ~ job_title * years_experience)
more_factor1 <- summary(more_factor1)
more_factor1

# Testing yrs of exp affects for each industry?

more_factor3 <- lm(data = main, salary_usd ~ years_experience * industry)
more_factor3 <- summary(more_factor3)
more_factor3

# Testing is years_exp to skill_name to job_title effects salary_usd?

more_factor4 <- lm(data = main_and_salary, salary_usd.x ~ job_title * skill_name * years_experience)
more_factor4 <- summary(more_factor4)
more_factor4

# Testing is years_exp to industry to job_title effects salary_usd?

more_factor5 <- lm(data = main_and_salary, salary_usd.x ~ industry * job_title * years_experience)
more_factor5 <- summary(more_factor5)
print(more_factor5)

more_factor6 <- lm(data = main_and_salary, salary_usd.x ~ job_title * years_experience + skill_name * years_experience + industry * years_experience + experience_level_cleaned * years_experience)
more_factor6 <- summary(more_factor6)
more_factor6
# scatter plot visualization for salary_usd by time_cumulative

plot1 <- ggplot(salary_analysis, aes(x = days_subtraction_period, y = salary_usd, color = factor(skill_name)))

plot1 <- plot1 + geom_point(show.legend = FALSE)

plot1 <- plot1 + scale_y_continuous(labels = scales::comma)

plot1 <- plot1 + facet_wrap("skill_name", ncol = 3)

plot1 <- plot1 + xlab("Days Cumulative/Days")

plot1 <- plot1 + ylab("Salary/USD")

plot1

# Scatter plot visualization for job count by time_cumulative

plot2 <- ggplot(job_count_categorized, aes(x = Month_Cumulative, y = Number_of_Job_Posted, color = factor(Job_Title)))

plot2 <- plot2 + geom_point(show.legend = FALSE, size = 3)

plot2 <- plot2 + geom_line(show.legend = FALSE)

plot2 <- plot2 + scale_y_continuous(labels = scales::comma)

plot2 <- plot2 + geom_smooth(method='lm', formula= y~x, color = "red", size = 0.2)

plot2 <- plot2 + facet_wrap("Job_Title", ncol = 3)

plot2 <- plot2 + xlab("Month Cumulative/Months")

plot2 <- plot2 + ylab("Number of Job Posted")

plot2

# Scatter plot visualization for yrs exp by salary_usd

plot3 <- ggplot(main, aes(x = years_experience, y = salary_usd))

plot3 <- plot3 + geom_point(show.legend = FALSE, color = "orange")

plot3 <- plot3 + scale_y_continuous(labels = scales::comma)

plot3 <- plot3 + geom_smooth(method='lm', formula = y~x, color = "red", size = 0.2)

plot3 <- plot3 + xlab("Years of Experience")

plot3 <- plot3 + ylab("Salary(USD)")

plot3

# Scatter plot visualization for 10+yrs exp by salary_usd

plot4 <- ggplot(filtered_main, aes(x = years_experience, y = salary_usd))

plot4 <- plot4 + geom_point(show.legend = FALSE, color = "black", size = 2.5)

plot4 <- plot4 + scale_y_continuous(labels = scales::comma)

plot4 <- plot4 + geom_smooth(method='lm', formula = y~x, color = "red", size = 0.2)

plot4 <- plot4 + xlab("Years of Experience")

plot4 <- plot4 + ylab("Salary(USD)")

plot4

# Scatter Plot visualization for lm model more factor 4 and correlation value

ai_specialist_mlops <- filter(main_and_salary, main_and_salary$job_title == "AI Specialist" & main_and_salary$skill_name == "MLOps")
ai_specialist_mlops

plot5 <- ggplot(ai_specialist_mlops, aes(x = years_experience, y = salary_usd.x))

plot5 <- plot5 + geom_point(show.legend = FALSE, color = "red", size = 3)

plot5 <- plot5 + scale_y_continuous(labels = scales::comma)

plot5 <- plot5 + geom_smooth(method = 'lm', formula = y~x, color = "blue", size = 0.2)

plot5 <- plot5 + xlab("Years of Experience")

plot5 <- plot5 + ylab("Salary(USD)")

plot5

cor_ai_specialist_mlops <- cor(ai_specialist_mlops$years_experience, ai_specialist_mlops$salary_usd.x, use = "pairwise.complete.obs")
cor_ai_specialist_mlops

ai_specialist_gcp <- filter(main_and_salary, main_and_salary$job_title == "AI Specialist" & main_and_salary$skill_name == "GCP")
ai_specialist_gcp

plot5 <- ggplot(ai_specialist_gcp, aes(x = years_experience, y = salary_usd.x))

plot5 <- plot5 + geom_point(show.legend = FALSE, color = "brown", size = 3)

plot5 <- plot5 + scale_y_continuous(labels = scales::comma)

plot5 <- plot5 + geom_smooth(method = 'lm', formula = y~x, color = "blue", size = 0.2)

plot5 <- plot5 + xlab("Years of Experience")

plot5 <- plot5 + ylab("Salary(USD)")

plot5

cor_ai_specialist_gcp <- cor(ai_specialist_gcp$years_experience, ai_specialist_gcp$salary_usd.x, use = "pairwise.complete.obs")
cor_ai_specialist_gcp

# Scatter Plot visualization for lm model more factor 1 and correlation value

ase <- filter(main, main$job_title == "AI Specialist")
ase

plot6 <- ggplot(ase, aes(x = years_experience, y = salary_usd))

plot6 <- plot6 + geom_point(show.legend = FALSE, color = "darkgreen", size = 3)

plot6 <- plot6 + scale_y_continuous(labels = scales::comma)

plot6 <- plot6 + geom_smooth(method = 'lm', formula = y~x, color = "red", size = 0.2)

plot6 <- plot6 + xlab("Years of Experience")

plot6 <- plot6 + ylab("Salary(USD)")

plot6

cor_ase <- cor(ase$years_experience, ase$salary_usd, use = "pairwise.complete.obs")
cor_ase

# Scatter Plot visualization for lm model more factor 5 and correlation value

  