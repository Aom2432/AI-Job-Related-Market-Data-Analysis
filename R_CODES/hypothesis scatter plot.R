install.packages("ggplot2")
install.packages("dplyr")
install.packages('patchwork')

library(ggplot2)
library(dplyr)
library(patchwork)

setwd("C:\\Users\\natta\\Desktop\\AI-Powered Job Market Insights\\SQL\\LM accept hypothesis")
getwd()

#All results assigned to their own variables
ai_research_scientist_yrs_exp_df <- read.csv("ai_research_scientist_yrs_exp.csv")
ai_specialist_yrs_exp_df <- read.csv("ai_specialist_yrs_exp.csv")
ase_to_yrs_exp_df <- read.csv("ase_to_yrs_exp.csv")
consulting_yrs_exp_df <- read.csv("consulting_yrs_exp.csv")
Experience_Level_Required_Mid_level_df <- read.csv("Experience_Level_Required-Mid-level.csv")
gaming_yrs_exp_df <- read.csv("gaming_yrs_exp.csv")
media_yrs_exp_df <- read.csv("media_yrs_exp.csv")
mle_yrs_exp_df <- read.csv("mle_yrs_exp.csv")
real_estate_yrs_exp_df <- read.csv("real_estate_yrs_exp.csv")
retail_yrs_exp_df <- read.csv("retail_yrs_exp.csv")
industry_salary_usd <- read.csv("industry_salary_usd.csv")


# Plotting graph for ai_research_scientist_yrs_exp_df and Pearson's Correlation

plot_ai_research_scientist_yrs_exp <- ggplot(data = ai_research_scientist_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + geom_point(show.legend = FALSE, color = "brown", size = 5)

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "blue", linewidth = 1)

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + xlab("Years of Experience")

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + ylab("Salary(USD)")

plot_ai_research_scientist_yrs_exp <- plot_ai_research_scientist_yrs_exp + labs(title = "AI-Research Scientist by Years of Experience", subtitle = "P-value = 0.019371 & R-squared = 0.7428416")

plot_ai_research_scientist_yrs_exp

cor_ai_research_scientist_yrs_exp <- cor(ai_research_scientist_yrs_exp_df$years_experience, ai_research_scientist_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_ai_research_scientist_yrs_exp

# Plotting graph for ai_specialist_yrs_exp_df and Pearson's Correlation

plot_ai_specialist_yrs_exp <- ggplot(data = ai_specialist_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + geom_point(show.legend = FALSE, color = "black", size = 5)

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "red", linewidth = 1)

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + xlab("Years of Experience")

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + ylab("Salary(USD)")

plot_ai_specialist_yrs_exp <- plot_ai_specialist_yrs_exp + labs(title = "AI-Specialist by Years of Experience", subtitle = "P-value = 0.027302 & R-squared = 0.7318383")

plot_ai_specialist_yrs_exp

cor_ai_specialist_yrs_exp <- cor(ai_specialist_yrs_exp_df$years_experience, ai_specialist_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_ai_specialist_yrs_exp

# Plotting graph for ase_to_yrs_exp_df and Pearson's Correlation

plot_ase_to_yrs_exp <- ggplot(data = ase_to_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + geom_point(show.legend = FALSE, color = "blue", size = 5)

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "red", linewidth = 1)

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + xlab("Years of Experience")

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + ylab("Salary(USD)")

plot_ase_to_yrs_exp <- plot_ase_to_yrs_exp + labs(title = "Autonomous System Engineer by Years of Experience", subtitle = "P-value = 0.00000465 & R-squared = 0.7068234")

plot_ase_to_yrs_exp

cor_ase_to_yrs_exp <- cor(ase_to_yrs_exp_df$years_experience, ase_to_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_ase_to_yrs_exp

# Plotting graph for consulting_yrs_exp_df and Pearson's Correlation

plot_consulting_yrs_exp <- ggplot(data = consulting_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + geom_point(show.legend = FALSE, color = "green", size = 5)

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "blue", linewidth = 1)

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + xlab("Years of Experience")

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + ylab("Salary(USD)")

plot_consulting_yrs_exp <- plot_consulting_yrs_exp + labs(title = "Industry : Consultant by Years of Experience", subtitle = "P-value = 0.019925 & R-squared = 0.7127624")

plot_consulting_yrs_exp

cor_consulting_yrs_exp <- cor(consulting_yrs_exp_df$years_experience, consulting_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_consulting_yrs_exp

# Plotting graph for gaming_yrs_exp_df and Pearson's Correlation

plot_gaming_yrs_exp <- ggplot(data = gaming_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + geom_point(show.legend = FALSE, color = "purple", size = 5)

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "black", linewidth = 1)

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + xlab("Years of Experience")

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + ylab("Salary(USD)")

plot_gaming_yrs_exp <- plot_gaming_yrs_exp + labs(title = "Industry : Gaming by Years of Experience", subtitle = "P-value = 0.003715 & R-squared = 0.7731853")

plot_gaming_yrs_exp

cor_gaming_yrs_exp <- cor(gaming_yrs_exp_df$years_experience, gaming_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_gaming_yrs_exp

# Plotting graph for media_yrs_exp_df and Pearson's Correlation

plot_media_yrs_exp <- ggplot(data = media_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_media_yrs_exp <- plot_media_yrs_exp + geom_point(show.legend = FALSE, color = "orange", size = 5)

plot_media_yrs_exp <- plot_media_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_media_yrs_exp <- plot_media_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "red", linewidth = 1)

plot_media_yrs_exp <- plot_media_yrs_exp + xlab("Years of Experience")

plot_media_yrs_exp <- plot_media_yrs_exp + ylab("Salary(USD)")

plot_media_yrs_exp <- plot_media_yrs_exp + labs(title = "Industry : Media by Years of Experience", subtitle = "P-value = 0.000810 & R-squared = 0.7431101")

plot_media_yrs_exp

cor_media_yrs_exp <- cor(media_yrs_exp_df$years_experience, media_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_media_yrs_exp

# Plotting graph for mle_yrs_exp_df and Pearson's Correlation

plot_mle_yrs_exp <- ggplot(data = mle_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_mle_yrs_exp <- plot_mle_yrs_exp + geom_point(show.legend = FALSE, color = "darkgreen", size = 5)

plot_mle_yrs_exp <- plot_mle_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_mle_yrs_exp <- plot_mle_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "pink", linewidth = 1)

plot_mle_yrs_exp <- plot_mle_yrs_exp + xlab("Years of Experience")

plot_mle_yrs_exp <- plot_mle_yrs_exp + ylab("Salary(USD)")

plot_mle_yrs_exp <- plot_mle_yrs_exp + labs(title = "Machine Learning Engineer by Years of Experience", subtitle = "P-value = 0.019555 & R-squared = 0.7527464")

plot_mle_yrs_exp

cor_mle_yrs_exp <- cor(mle_yrs_exp_df$years_experience, mle_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_mle_yrs_exp

# Plotting graph for real_estate_yrs_exp_df and Pearson's Correlation

plot_real_estate_yrs_exp <- ggplot(data = real_estate_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + geom_point(show.legend = FALSE, color = "darkcyan", size = 5)

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "pink", linewidth = 1)

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + xlab("Years of Experience")

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + ylab("Salary(USD)")

plot_real_estate_yrs_exp <- plot_real_estate_yrs_exp + labs(title = "Industry : Real Estate by Years of Experience", subtitle = "P-value = 0.030370 & R-squared = 0.7320532")

plot_real_estate_yrs_exp

cor_real_estate_yrs_exp <- cor(real_estate_yrs_exp_df$years_experience, real_estate_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_real_estate_yrs_exp

# Plotting graph for retail_yrs_exp_df and Pearson's Correlation

plot_retail_yrs_exp <- ggplot(data = retail_yrs_exp_df, aes(x = years_experience, y = salary_usd))

plot_retail_yrs_exp <- plot_retail_yrs_exp + geom_point(show.legend = FALSE, color = "darkorange", size = 5)

plot_retail_yrs_exp <- plot_retail_yrs_exp + scale_y_continuous(labels = scales::comma)

plot_retail_yrs_exp <- plot_retail_yrs_exp + geom_smooth(method='lm', formula= y~x, color = "darkred", linewidth = 1)

plot_retail_yrs_exp <- plot_retail_yrs_exp + xlab("Years of Experience")

plot_retail_yrs_exp <- plot_retail_yrs_exp + ylab("Salary(USD)")

plot_retail_yrs_exp <- plot_retail_yrs_exp + labs(title = "Industry : Retail by Years of Experience", subtitle = "P-value = 0.000673 & R-squared = 0.7541286")

plot_retail_yrs_exp

cor_retail_yrs_exp <- cor(retail_yrs_exp_df$years_experience, retail_yrs_exp_df$salary_usd, use = "pairwise.complete.obs")
cor_retail_yrs_exp

# Combined View

plot_ai_research_scientist_yrs_exp
plot_ai_specialist_yrs_exp
plot_ase_to_yrs_exp
plot_consulting_yrs_exp
plot_gaming_yrs_exp
plot_media_yrs_exp
plot_mle_yrs_exp
plot_real_estate_yrs_exp
plot_retail_yrs_exp

(plot_ai_research_scientist_yrs_exp | plot_ai_specialist_yrs_exp | plot_ase_to_yrs_exp) /
(plot_consulting_yrs_exp | plot_gaming_yrs_exp | plot_media_yrs_exp) /
(plot_mle_yrs_exp | plot_real_estate_yrs_exp | plot_retail_yrs_exp)








