# Conclusion of the Analysis

Artificial intelligence and machine learning have seen a massive growth in recent years. The market demand for AI development role related are increasing over the short-period of time. Informatics degree programs are scrambling to meet the demanding that have rapidly increase over a short amount period of time by the job market.(Amit Verma, Lamsal, Payal Verma. 2021) Also, the growing usage of Artificial Intelligence(AI) was used in all sector of economy, but there are no formally defined AI knowledge and competencies framework. It is still use knowledge that similar to software engineering and data science and adapt for the Artificial Intelligence(AI) development. Many Artificial Intelligence(AI) that developed are used the existing knowledge of Computer Science, Data Science or Machine Learning Programs, but they still not cover in the important knowledge areas.(Y. Demchenko, O. Chertov, J. Vreeburg. 2024)

In this report I’ll be analyze the trend and job market demanding in artificial intelligence development field to give a guidelines on how artificial intelligence job field trends have been at and to see what’s kind of job or skill that worth learning or applying for. Due to a demanding requirement of AI usage and employment to work in AI-development related field. I’ve formed an objective that will answer our questions on what job, skills, industries should we aimed for.

### Overview of the AI-Job Market related
![image.png](attachment:c5af7865-8439-408b-9f81-04c59b44ff95:image.png)

- As we can see, the overall average salary is on 115.35K USD from 2024 - 2025
- The most number of salaries is 60,000 - 80,000 USD
- The most used tools or skills is Python, which is still the number 1 high level language that is still commonly used in IT industry.
    - And second is SQL(Structured Query Language) which is the most popular for working with data related field.
- The most average salary by job title is “AI Specialist”.

As for the non-executive positions as the outliers, here’s the results.
![image.png](attachment:fa8ad3a6-d002-4b3c-80fc-4c0320053dab:image.png)
- The average salary is now moved down to 91.14K USD from 2024 - 2025
- The most number of salaries is still 60,000 - 80,000 USD.
- The most used tools or skills is still Python and second is SQL.
- The most average salary by job title is “Data Engineer” with 93.61K USD and 565 number of data engineer jobs opened between 2024 - 2025, here’s the details about Data Engineer’s role.
  ![image.png](attachment:a66a1c2e-67f1-4934-96f0-e2305ae1d5d7:image.png)

## Answering Objectives

### Required Skills

- **What is the most required skills or tools in the AI job-market?**
    ![Salary Distribution by Number of Skills2.png](attachment:8a6e0e25-1832-4b67-9ecc-9ca092361a49:Salary_Distribution_by_Number_of_Skills2.png)
  - The most required skills is Python in every job market.
  - Python is the standard in any IT industries which is a high level programming language that can do all common IT job, such as machine learning, data analyst and supported many data and AI libraries.
 
- **How each skill related to the salary level and compared to other skills salaries?**
  ![salary distribution boxplot.png](attachment:961d57f1-12eb-41dc-b4a3-81e1bbf9a1ff:salary_distribution_boxplot.png)
  As we can see here, this is the boxplot graph that shows how all of skills salaries distribution range of payment. All of them have similar range of distribution and median some might be a bit better than others but not might make a significance impact over the one another. It’s might not worth by substitute another or learn specific skills to get more earnings. Here’s the proof that skills does not affect salary by hypothesis testing by analysis of variance to see if they’re distributed differently.

  I’ve set the original hypothesis that salary are not affected by type of tools or skills learned or required. And if it’s false, there is another assumption that salaries are affected by the type of the skills learned or required by the job. Here’s the test I’ve run and it says that all of skills listed in this dataset doesn’t have any significance impact on how much compensation are distributed. Everything are all the same whether skills or tools we’re using, the chance that this assumption true is 57.2% which means it’s more than 50/50 chance that these skills are not affected on how much you’ve earned.

  - **Analysis of Variance Testing by skills/tools to salary**
                                 Df    Sum Sq   Mean Sq F value Pr(>F)
    salary_group$skill_name    17 5.538e+10 3.258e+09   0.901  0.572
    Residuals               46131 1.667e+14 3.615e+09

  - **What is the trend in salary of required skills over time?**
      Another key factor to talk about is their trend, I’m going to analyze each of tools/skills by their salary over time. The reason I choose salary not the number of required skills on specific tools that to show how their payment have changed over time to show if they’re valuable in the AI-Job market, the number of required skills are only indicate their commodity in the market, not their values. If they’ve higher payment level over time rapidly, that skill/tools is more valuable and it’s worth to learn. And if they’ve less payment level over time rapidly, that skill/tools is less valuable and it’s might not worth to learn it, better learn the substitute tool that have better trend over time. Here’s the relationship between tools/skills to salary over days cumulative period using scatter plot graph.
      ![Scatter Plot of skills by time.png](attachment:9460fc41-20c7-4194-8429-75553af49e05:Scatter_Plot_of_skills_by_time.png)
      As we can see, the point that plotting to the left of the graph, which is more time period are not directly move in to the same direction. They’re scattered everywhere which show the weak relationship in salary level of each tools/skills by time. The R-squared value is the calculated value by Pearson’s correlation method that displays between (-1, 1), if the value get closer to 1 that means very strong positive relationship between values, if the value get closer to -1 that means very strong negative relationship between value and if the value get closer to 0 that means very weak relationship whether positive or negative value. In this case the value getting very close to 0 that means there’s very weak relationship of each skills/tools salaries by skills over time. So it’s not worth to be picky to learn each skills by their payment trend. To compare each of tools/skills, I’ve made a graph with R-square value to compare which one have positive/negative relationship and their strength of their relationship.
      ![correlation_salarybyskills_to_dayscumulative.png](attachment:05504bf0-4f39-44b9-9de2-e5fa4bb46b93:correlation_salarybyskills_to_dayscumulative.png)
      Here’s the detailed in Statistics summary, order by median from highest at the top to lowest at the bottom.

![image.png](attachment:b1c7cfda-6dbb-4d3d-946c-3b17a34f22d8:image.png)

### Job’s Title

- **What is the most count number of jobs in the market?**
![Job Count Overall Graph.png](attachment:d7d08376-731f-4703-8af4-2160af4de703:Job_Count_Overall_Graph.png)
The most job posted in 2024 - 2025 is Machine Learning(ML) Researcher with 808 count of job posted. The least job posted in 2024 - 2025 is AI Consultant with 704 count of job posted. Machine Learning(ML) Researcher is a software engineer who predictive machine learning, to build analytics, analyze, experimenting with predictive models that provides and forecast on the existing data, the common tools and skills that used are machine learning, linear regression, random forest, Bayesian statistics to calculate the probabilities in the future data. Mostly using the programming languages like Python, Kubernetes, SQL, etc.
![image.png](attachment:7aea78ea-81cc-4ba5-8dfe-9d99bc44cca5:image.png)
For AI Consultant, they’re professional who specialized in AI who giving business an advice and to bridge a gap between AI-technological development and business needs to make sure that business side can achieve realistic goals based on technological abilities. While AI consultant doesn’t have required much technical skills, but they’re very good in their business consultation skills which required very good  communication skills to bridging the gap between AI-technology developers team and business related team to understand and cooperates with each other.
![image.png](attachment:d1afed52-8226-48b0-80c4-9c22a1423634:image.png)
- **How this job related to the salary level and compared to other skills salaries?**
  In the job’s title and their responsibilities(which isn’t shown in the database) without other factors involved, there is no difference in their distribution and their affection that leads to different level of earnings. There is no point to switch job position for better earnings without any factor to backup because there is no evidence that have a significant impact that job switching would be worth it. In job switching, it would cost a lot of time and effort to have a training for each of the job requirement for each of the skill that’ll make us qualified for that role, which is not worth it for that matter of higher payment for different job title and responsibility alone.
  Here’s hypothesis test to enforce the belief that all job’s title makes no significant impact on how much we earn. I’ve analyze by using an ANOVA(Analysis of Variance) to prove that by setting the original assumption that there is no difference in their distributional pattern by having p-value(Pr>F) less than 0.05. And if the test was in another way my alternative assumption will be one or more of the job title is distributed differently from the rest by having p-value(Pr>F) more than 0.05.
  By in this test the results came out that P-value is more than 0.05 that means my original assumption is true that job’s title and responsibilities doesn’t impact on how much you earn with the chance that this assumption is true are 15.6% or approximately 1 in 7 chance which is might be applied into some factor or certain scenario like Geographic, Demographic that going to affect how much you earn for particular job role.
  - Analysis of Variance Testing by skills/tools to salary
                      Df         Sum Sq    Mean Sq F value Pr(>F)
    main$job_title    19    91317739440 4806196813   1.324  0.156
    Residuals      14980 54375765017149 3629890856
But their is some point that different job has different difficulties by how different workload on each job, one might be easier and less workload than another job but still get paid the same. For example, AI Software Engineer might have less responsibilities and don’t need to work overtime unlike AI Architect but all their median and quartile level of salaries are very similar, this might be worth to go for AI Software Engineer because the pay per workload is much better than AI Architect.

- **What is the trend in number of job’s posting in the market?**
    I’ve analyze the trend of job openings number by the number of months that passed by. To analyze the relationship of number of each job title posted/open for applications by time(in months) If the job title have more number of job posted over time, that means that job is in demand by AI-Job market, have a lot of options of other factor variety eg. company name, salaries offer, company perks., but in trade of it’s highly competitive job position. And if the job title have less number of job posted over time, that means that job is not in demand by AI-job market, very limited options of other factor variety, but also low in competitive level. (Demiral and Mollerstrom. 2024) Here’s we’ll take a look by visualize all relationships with scatter plot graph, the line shows a linear line that display relationship directional and the band shows the value distribution range.
![Job Postings with Time Graph Plot.png](attachment:e523d148-fe52-4888-866e-021e2df82608:Job_Postings_with_Time_Graph_Plot.png)
“R squared : Correlation strength between (-1, 1) If positive means the relationship goes upward, if it’s negative means the relationship goes downward”

The relationship test use Pearson’s correlation tool to calculate a relationship between number of job title posted and time by month cumulative. As we can see, most majority of the relationship are strong relations that go steep or incline, but some of them are a little bit weak. The relationship strength are stronger when compared to relationship of salary payment by skills over time of days cumulative. I’ve a bar graph that shows comparison of relationship value.
![correlation_job_count_to_monthcumulative.png](attachment:cc1639aa-8be1-477a-87bc-08531a0584f1:correlation_job_count_to_monthcumulative.png)

In this chart, we can summarize that the job that are heavily declining are NLP(Natural Language Processing) Engineer, the role of this job is to cleaning and pre-processing to prepare data for research purposes, scientific experiments or ad-hoc needs, machine learning model integration from software engineer, model optimization, model testing. This position has high qualifications requirement as it requires mostly master degree, strong coding skills eg. Python with machine learning libraries and heavily experience background related to AI. (World Bank. NA) And another job that is strongly negatively correlated is Computer Vision Engineer, the role of this job is related to turning computer idea to visionary that can be usage in the real world such as picture and video processing, algorithm designing, research by identifying pattern from real-world visual. This job-field qualification requires a bachelor degree, strong foundation in mathematics, programming using Python and machine learning libraries like PyTorch.
The real reason why they’re in a decline state is unknown, but if we’re interested to applying these two jobs, they’re not a lot of competitiveness but in trade they’re also not a lot of options too.
Here’s the detailed of summary of simple descriptive statistics values.
![job_title_summary_stat.png](attachment:2cccf7d8-cca6-48c2-8e9f-0ab758ff7f8c:job_title_summary_stat.png)

## Industries
- **What are number of jobs in each industry?**
  ![image.png](attachment:7a270314-2e29-4629-89fe-ea3209738171:image.png)
  As in the heatmap table above, it shows that the grand total of all company size have number of job postings distributed almost the same to each other size of companies. But for industry, Retail came on number one spot for the most number of job posted in AI-Job market.

  **How’re salaries of each industry and different to each other**
  ![Salary Distribution by Industry.png](attachment:aa481ca2-a829-4a3e-8bc7-19054d8aafe3:Salary_Distribution_by_Industry.png)
  In this boxplot with scatter plot density that salaries are affected by industry type(without considering other factor and independently factor) There’s very similar distribution, median, quartile that similar to each other. To check that if each industry are compensated differently, I need to form and test the hypothesis that every industry are compensated differently without another factor. I decided to use ANOVA(Analysis of Variance)to see that there might be one or more industry have a compensation that distributed differently, but is there isn’t enough evidence to make my assumption true. There is an original assumption that said we can’t find any of these industry that are compensated distributed differently to each other.

In which to make clear of my assumption, I’ve call it as a hypothesis with 2 hypothesis that I’ve form from my both assumption. First, that there’s not enough weight that one or more of the industry have distributed their own compensation to other industries, which is Pr(>F) or P-value more than 0.05. Second, there’s enough weight that one or more of the industry have distributed their own compensation to other industries, which is Pr(>F) or P-value less than 0.05. Here’s the results of the test.
- **Analysis of Variance Testing by industry to salaries**
                   Df    Sum Sq       Mean Sq F   value    Pr(>F)
  main$industry    14    1.636e+10    1.169e+09   0.322    0.992
  Residuals     14985    5.445e+13    3.634e+09
  With P-value more than 0.05 we need to accept our first assumption that there’s not enough evidence that one or more of the industry have distributed their own compensation to other industries, which is a total of 15 industries. Also, as our original assumption is true. There is a chance that original assumption that will be true is 99.2% which said that this assumption is always true. In conclusion, you still get the same salary whether industry you’re entered in AI-Job related field.
We can say that there’s no profitable industries that having advantage in salary over to one another. But there’s might be other factor that might make it an advantage that isn’t salary. For example, some industry have an better growth rate in their job field like getting promoted to upper position faster. Another factor that might be considered are competitive level that if there is more position opening in that industry, the more likely to have higher competitive level or an industry that have much more big top-tier firm than other industry. (Demiral and Mollerstrom. 2024)
Here’s the detailed of summary of simple descriptive statistics values.
![job_title_summary_stat.png](attachment:bc46e6c7-70cc-428a-99ee-73f2e16a1954:job_title_summary_stat.png)

## Years of Experience
- **How is years of experience affect the level of salary on each years of experience required?**
    
  This might be an clear answer that more years of experience make us earn higher more than less years of experience that possibly correlated to the skill improvement, but still I want to see that how much or how strongly affect our compensation quantity. I’ve created a boxplot graph of analyze each year of experienced by job qualification that posted in job description. Here’s the graph.
  ![Salary Distribution by Years of Experience.png](attachment:81cf847a-85f7-4d48-be11-467b13fc484a:Salary_Distribution_by_Years_of_Experience.png)
  Here’s the detailed of summary of simple descriptive statistics values.
  ![yrs_exp_summary.png](attachment:d59accf6-3b11-44b2-8700-d643bfa7c77d:yrs_exp_summary.png)
  That’s provide a very clear answer that years of experience have positive relationship of how much you’ll earned. From 0 - 10 years of experience it was very clear but after 10 years of experience there are very stable that salary doesn’t move upper more than that at all.
  I’ve formed an overall assumptions, for the original assumption that years of experience doesn’t affect quantity of compensation(that’s kind of weird because we all know this isn’t true but I have to insert it first for original assumptions) and for alternative assumption is years of experience does have affect quantity of compensation. In this case we didn’t ask if it’s true or false but we asking how much does it affect our compensation for years of experience. I’ve decided to use linear regression model to calculate if compensation affected by increasingly years of experience. Here’s the results of the test.

Call:
lm(formula = years_experience ~ salary_usd, data = main)

Residuals:
     Min       1Q   Median       3Q      Max 
-15.5129  -2.3702  -0.7026   1.7141  14.5809 

Coefficients:
              Estimate Std. Error t value Pr(>|t|    
(Intercept) -1.576e+00  6.604e-02  -23.87   <2e-16 ***
salary_usd   6.788e-05  5.075e-07  133.76   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.745 on 1499 degrees of freedom
Multiple R-squared:  0.544,	Adjusted R-squared:  0.544 
F-statistic: 1.789e+04 on 1 and 14998 DF,  p-value: < 2.2e-16

  The results said that years of experience have a significant impact on compensation and say that there’s 0.000000000000002% chance that is the extreme condition will happen, which is years of experience doesn’t impact on compensation quantity which is really impossible. That’s hold to confirm if we want to increase how much we’ve paid, we need to have more experience in our job. But this might not include other factors such as skills that after we have more experience, we gained a tacit knowledge that doesn’t come by explicit knowledge, apply and immediate effect immediately, but it comes from our self learning experience by a long time of doing that job eg. social interactions, coding skills, internal company systems, etc.
  The relationship is moderate positive direction with 54.4% of Pearson’s Correlation Value(R-squared) Take a look at a scatter plot graph, which is similar to boxplot above. The red line is correlation linear line to show relationship directional.
  ![Linear Regression_Years of experience by Salary.png](attachment:d97e9196-d1c1-433c-8cbf-02d417a58567:Linear_Regression_Years_of_experience_by_Salary.png)
  The same for 10 or more years of experience to compensation quantity. Form the same assumptions. Here’s the results that I’ve tested using the same linear regression model by filter value that have 10 or more years of experience.

Call:
lm(formula = years_experience ~ salary_usd, data = filtered_main)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.6041 -2.4826  0.4089  2.4905  4.7459 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)  1.471e+01  1.549e-01   94.97   <2e-16 ***
salary_usd  -1.227e-06  7.868e-07   -1.56    0.119    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.862 on 3758 degrees of freedom
Multiple R-squared:  0.0006472,	Adjusted R-squared:  0.0003813 
F-statistic: 2.434 on 1 and 3758 DF,  p-value: 0.1188

The results show that if we have 10 or more years of experience, it’s have no significant impact on how much we’re getting paid. with P-value more than 0.05. Also, there is 11.9% chance that if we have 10 or more years of experience, it’s have no significant impact on compensation. That means there is 11.9% for who is 10 or more years of experience will receive the same compensation after that.
The relationship is very weak positive direction with 0.065% of Pearson’s Correlation Value(R-squared) Take a look at a scatter plot graph, which is similar to boxplot with 10 and above years of experience. The red line is correlation linear line to show relationship directional.

![Linear Regression_Years of experience(10+) by Salary.png](attachment:8b1eb1f6-77d5-482a-bdeb-eda82453cc7b:Linear_Regression_Years_of_experience(10)_by_Salary.png)
So we’re clearly know that more years of experience, the more likely to get higher paid. But I need to test more is there’s combined factor that affect salaries when combined with years of experience combined. For example, each industry if combined with years of experience will they distributed differently for each other. This will give us a clear insight if we work long enough on some industry, will they give better results on how much we earned from each other?

- **How is years of experience affect the level of salary on each years of experience required with each factor combined?**
  I’ve set up more test with linear regression model to find out if there’s years of experience combined with other factor that I’ve tested above to see which one is better if it’s all affected by years of experience. I have an original assumption is that factor have a results that doesn’t affected the salary by years of experience and alternative assumption is that factor have a results that affected the salary by years of experience. Here’s the results that was accepted.
  - Job Title : AI Research Scientist / Years of Experience
  - Job Title : AI Specialist / Years of Experience
  - Job Title : Autonomous Systems Engineer / Years of Experience
  - Job Title : Machine Learning Engineer / Years of Experience
  - Industry : Gaming / Years of Experience
  - Industry : Consulting / Years of Experience
  - Industry : Media / Years of Experience
  - Industry : Real Estate / Years of Experience
  - Industry : Retail / Years of Experience
 
![plot_combined.jpeg](attachment:bc7d3bd5-7264-4cd3-b52e-ead74171dddd:plot_combined.jpeg)

In conclusion, some pairs of the 3 dimensional factors except skill/tools used in jobs with years of experience as variable factor have a significant impact on how much you’ll be earn by a list of pair above. All job title, industry and experience level(doesn’t include in scatter plot because it’s have no correlation) might have affected on some of the jobs, industry and experience level depends on all of listed above that might different to others.
But we still don’t know what caused them to have a different compensation when years of experience in work came of consider factor like a career path that each job role have differently from each other.

# Summary and Recommendation

### Summary
The best way to increase how much we’ve got compensated. Having more years of experience made an overall impact for this scenario. The higher the time you’ve spent on the job, the more you’ll be paid. When we don’t have any time of working experience, how much we’ve paid are not much varied. When the time pass and more years of experience, the more varied range of salary are also more but higher or lower might depends on our level of skills and our abilities to do that job. When combined Years of experience with other factors such as industry, position level, job role have an significant impact level on how much we’ll be earned in some particular list eg. AI Research Scientist might be earn more than other job when we have more experience over time. But all of these have a very similar pattern of salary by years of experience that have a little impact and might be little advantage except for skills/tools don’t have any significance impact on salary when combined with years of experience. Industry, Skills/Tools, Job roles have no affect on how much we’ll be earn by significant level in any means.
Trends on job role has been very strong but mostly negative overtime, the strongly negative are NLP(Natural Language Processing) Engineer and Computer Vision Engineer that are going downward means might less in competitive but also harder to find both of these job role too. Job role that are positive in rising number of demand overtime from most to least are ML(Machine Learning) Ops Engineer, AI Consultant, Machine Learning Researcher, Machine Learning Engineer with correlation range from 0% - 35.8% While skills/tools have very little impact over time which have correlation range less than 10%

### Recommendation
We should focus on improving our skill combined with earning more time in experience to have an advantage for a chance to get more earnings and job growth in AI-job related field. Whether job role, industry or skills/tools that we would like to, it might be some industry and job role that have some advantage when having more experience overtime, but still have similar salary growth pattern according to overall years of experience. By that we’ll still need to train some specific skills and having experience for that particular job or industry that we would like to apply, to create competency over our competitors that applying to same job role and a chance for higher salary.
Another one would be try to avoid some job role that going rapidly decline, as it was less demand by the job market and we’ll have less probability getting a job on that role, especially NLP(Natural Language Processing) Engineer and Computer Vision Engineer that are in heavy decline in 1 years, they might be less competitive but in return it’s very hard to find jobs. Unlike the one that are going positive trend are ML(Machine Learning) Ops Engineer, AI Consultant, Machine Learning Researcher, Machine Learning Engineer that might have highly in competitive overtime but if we’re an outstanding talent, we might get more profits for our talent whether years of experience or soft-to-hard skills that made impact to our how much we’ll get paid.





  
