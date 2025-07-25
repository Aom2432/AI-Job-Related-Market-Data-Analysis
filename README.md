# AI-Job-Related-Market-Data-Analysis

## Data Overview

The "AI-Powered Job Market Insights" dataset provides a synthetic but realistic snapshot of the modern job market, particularly focusing on the role of artificial intelligence (AI) and automation across various industries. This dataset includes 500 unique job listings, each characterized by different factors like industry, company size, AI adoption level, automation risk, required skills, and job growth projections. It is designed to be a valuable resource for researchers, data scientists, and policymakers exploring the impact of AI on employment, job market trends, and the future of work.

## Data Dictionary(Variables Description)

1. **Job_Title** :
    - **Description**: The title of the job role.
    - **Type**: Categorical
    - **Example Values**: "Data Scientist", "Software Engineer", "HR Manager"
2. **Industry** :
    - **Description**: The industry in which the job is located.
    - **Type**: Categorical
    - **Example Values**: "Technology", "Healthcare", "Finance"
3. **Company_Size** :
    - **Description**: The size of the company offering the job.
    - **Type**: Categorical
    - **Categories**: "Small", "Medium", "Large"
4. **Location** :
    - **Description**: The geographic location of the job.
    - **Type**: Categorical
    - **Example Values**: "New York", "San Francisco", "London"
5. **AI_Adoption_Level** :
    - **Description**: The extent to which the company has adopted AI in its operations.
    - **Type**: Categorical
    - **Categories**: "Low", "Medium", "High"
6. **Automation_Risk** :
    - **Description**: The estimated risk that the job could be automated within the next 10 years.
    - **Type**: Categorical
    - **Categories**: "Low", "Medium", "High"
7. **Required_Skills** :
    - **Description**: The key skills required for the job role.
    - **Type**: Categorical
    - **Example Values**: "Python", "Data Analysis", "Project Management"
8. **Salary_USD** :
    - **Description**: The annual salary offered for the job in USD.
    - **Type**: Numerical
    - **Value Range**: $30,000 - $200,000
9. **Remote_Friendly** :
    - **Description**: Indicates whether the job can be performed remotely.
    - **Type**: Categorical
    - **Categories**: "Yes", "No"
10. **Job_Growth_Projection** :
    - **Description**: The projected growth or decline of the job role over the next five years.
    - **Type**: Categorical
    - **Categories**: "Decline", "Stable", "Growth"

## Potential Use Cases

- **AI and Job Market Research** : Analyzing the impact of AI adoption on different industries and job roles.
- **Skill Gap Analysis** : Understanding which skills are in demand across industries and how AI influences this demand.
- **Policy Making** : Assisting policymakers in identifying job roles at high risk of automation and strategizing for workforce transitions.
- **Salary Analysis** : Exploring the correlation between AI adoption and salary ranges across different job titles and locations.

## Objective

Because I want to analyze the job market on which skill is the most popularity and required and level of AI involvement in specific industry by comparing skills that need to the salary offer. To develop the right and actual skill on that role and industry demanding. And also analysis the long-term of job security whether it’s trend of the salary and growth rate in that industry to see it’s worth to see if the developing these particular skill for specific role or industry is worth.

### List of To-do Analysis.

- Analytical of **REQUIRED SKILLS** in tools in the AI job market (eg. coding language like Python, SQL, Java or software for data manipulation like Tableau, Golang etc.)
    - How this skill related to the salary level and compared to other skills salaries?
    - What is the most required skills or tools in the AI job-market?
    - What is the trend in salary of required skills over time?
- Analytical of **JOBS NAME LIST** in the AI job market (eg. Data Scientist, Software Engineer, AI-Consultant, etc.)
    - How this job related to the salary level and compared to other skills salaries?
        - By measuring with each job’s entry level to be most fair because with same job but different job’s entry level, has a different salary.
    - What is the most count number of jobs in the market?
    - What is the trend in number of job’s posting in the market?
- Analytical of **INDUSTRY LIST** in the AI job market (eg. Corporate, Government, FMCG, etc.)
    - What are each industries number of jobs?
        - To find out the popularity level of each industry.
    - How’s the pay rate of each industries?
        - To find out the most profitable industries to work in AI field.
    - Is industry has an effect to salaries level?
- Analytical of **YEARS OF EXPERIENCE** required on the jobs.
    - How is years of experience affect the level of salary on each years of experience required?
        - To see the distribution and average of salaries on each years of experience requirement in jobs.
## Cleaning Data

### Microsoft Excel

- **Acronyms cleaning**
    - Start off, the original data has some acronyms to use in experience_level, employment_type, company_size columns, which is very unclear what’s each of them in these columns meaning as seen below.
        
        ![image.png](attachment:53e2ee63-77f2-4798-9788-2b086cdd93da:image.png)
        
    - So I’ve decided to list all of the acronyms in each columns to give me the full name as it related to the columns name. The results are as it is.
        
        ![image.png](attachment:4fe72658-4803-4ea4-9f67-5b9cd2bbc5d1:image.png)
        
        - And then I’ve used the Power Query in Excel to replace all of these acronyms with their full name because Power Query is very convenient tools, easiest and very fast when compared to other tools like SQL, Python when doing the basic cleaning. By comparing original name column and original name with cleaned, the results are as follows.
            
            ![image.png](attachment:16a820b9-ddfc-435b-9b6b-470371bb8fdc:image.png)
            
- **ID Cleaning**
    - in job_id columns there is an unnecessary letters in front of all the numbers which is “AI” and the numbers before the non-zero value in every rows, I’ve removed all of the unnecessary value and turn them into INT(Number) values only to have it easier working with ID whether joining table or recall the data directly by ID. Here’s the difference between original ID column and cleaned ID column.
        
        ![image.png](attachment:4dd7614d-2f89-460d-be2f-2434c052d48a:image.png)
        
- **Time Cleaning**
    - Use the Power Query to Parse Dates in posting_date, application_deadline to make time operation functionable.
- **Required Skills Cleaning**
    - This is a difficult columns to clean because the value in this columns contains a lot of uncategorized list name of required skills in each jobs. I’ve decided to find all the distinct name of all the value in required_skills columns by using ChatGPT by pasting the sample value(500 rows of required_skills columns) to separate all the values into new columns that are specified for each skills only. Which have all the list of 24 distinct name of skills as the following.
        
        | # | Skill |
        | --- | --- |
        | 1 | AWS |
        | 2 | Azure |
        | 3 | Computer Vision |
        | 4 | Data Visualization |
        | 5 | Deep Learning |
        | 6 | Docker |
        | 7 | GCP |
        | 8 | Git |
        | 9 | Hadoop |
        | 10 | Java |
        | 11 | Kubernetes |
        | 12 | Linux |
        | 13 | Mathematics |
        | 14 | MLOps |
        | 15 | NLP |
        | 16 | PyTorch |
        | 17 | Python |
        | 18 | R |
        | 19 | SQL |
        | 20 | Scala |
        | 21 | Spark |
        | 22 | Statistics |
        | 23 | Tableau |
        | 24 | TensorFlow |
    
    - I’ve removed some of the value that’s too generic in an unclear skills that doesn’t specific the name of tools required to use (eg. Data Analytics, Project Management) because it’s too broad to be specify non-hard skills.
    - Then I’ve made a new column for each of all skills that include the binary type of value to find the skills for that particular skills, which I would like to discuss further in new variable topic.

### Unused Columns

- **benefits_score**
    - I’ve no idea how this value in this column work, because there is no any information that indicate how this column meaning or any measure indicate how it’s came up with all of these numbers. So, I’ve dropped this column for cleaned .csv file to reduce the variable to be easier to work with.
- **company_name**
    - The Company name columns has a value that is very specific only to related to the company name only. There is no value of indication that is going to have a significance statistical impact to give any our valuable info on our objectives. I’ve dropped this column for cleaned .csv file to reduce the variable that I’m going to work with.
- **salary_currency**
    - There is the salary_usd column that use the USD currency already. There is no point to indicates a different another currency by their own job’s country pay their employees with. I’ve decided to dropped this column for cleaned .csv file to only use USD currency.
- **job_description_length**
    - job_description_length has the value of number of letters that posted in the job description. There’s no indicator that more letter in the job description requires more skill than less letter in the description. I’ve dropped this columns for cleaned .csv file to reduce the variable to work with.
- **employees_residence**
    - I’m not going to include this variable in our analysis because in terms of country on employees residence it very complex and involves a lot of factor. For example each country of different of micro and macro economics situation, whether it’s GDP, CPI, GDP per head and a lot of details that in their own economics system on their earnings which is very hard to measure and this is just one factor, there might be many factor more than economics such as politics that made a huge factor, etc.



# Creating New Variable and Table


### Job Requirement Dataset

Our purpose of this is to create a new table that include all binary variable for each job in our cleaned list of skills required for all of the job to make it possible for my analysis.

I’ve created a new columns for each of the job by using Power Query to detect a string in required_skills column. If it’s have the specified skills, it’ll return 1. If none, it’ll return 0.

![Screenshot 2025-07-12 103032.png](attachment:50268b2e-cd3f-422b-9a6d-8daae5fcfa65:Screenshot_2025-07-12_103032.png)

- I’ve to create a new 24 columns to specify that each of the job have a checklist of each of the skill required. Here’s the result for all of the columns.

![image.png](attachment:339ac037-639b-4611-a9bc-54e04672dbeb:image.png)

- then I create a new .csv file for all of the skills columns only to have it join by the ID, it’ll be the dimension table that deep dive info of all the required skills by each job.

<aside>
📁

**Job Requirement Dataset CSV File**

[job_requirement_dataset.csv](attachment:12301e47-83cf-4cbb-a7d2-0a637ebe71cf:job_requirement_dataset.csv)

</aside>

- **Job Requirement Dataset but value as name of the job**
    - I’ve created another version of the job_requirement_dataset table to have a value of their own name instead of binary INT value of 0,1 to make a backup when it’s need for another type of analysis that might use to have the name value only instead of INT value.
        - By using Power Query to replace all of the value of each skills in the columns from 1 to each name of specific skills, by leaving the row that has value of 0 to NULL or BLANK for the same type as the string rather than include 0. So, it’s easier to work with.
            
            ![image.png](attachment:a6b51aa6-0558-4fe6-8c3a-4fd152b8c7d5:image.png)
            
    - Here’s the finished results after replacement of all of the value. And then, create a new table named “job_requirement_dataset_name”
        
        ![image.png](attachment:4fb7e4f0-f735-4af4-bdcc-fe22b20301dd:image.png)
        
**Job Requirement Dataset/Name Values CSV File**

[job_requirement_dataset_name.csv](attachment:efe3eb38-f48b-43ad-8e50-ceaf30dbf99f:job_requirement_dataset_name.csv)


### Salary by Skills

After I’ve created a new 2 table, which is job_requirement_dataset.csv and job_requirement_dataset_name.csv I’ve created another table for a salaries by each of the skills that is required.

By first off I’ve used Pandas, Data analysis library for Python for extract value in salary_usd columns to replace the TRUE value of each columns in job_requirement_dataset_name.csv table because this is a little bit of complex operation where Power Query and Excel can’t do, to be able to analyze into further stages of each individual skills.

Here is the code I’ve written before export to Excel for name of column headers correction.

import pandas as pd
import matplotlib as plot

# Import all dataset

dfmain = pd.read_csv("ai_job_dataset_cleaned.csv", index_col = "ID_cleaned")
dfjobreqname = pd.read_csv("job_requirement_dataset_name.csv", index_col = "ID_cleaned")
dfjobreq = pd.read_csv("job_requirement_dataset.csv", index_col = "ID_cleaned")
dftime = pd.read_csv("time_table_dataset.csv", parse_dates = ["posting_date", "application_deadline"], index_col = "ID_cleaned")

# main dataframe
dfmain
# job requirement with name
dfjobreqname
# job requirement boolean for calculations
dfjobreq
# time intelligence
dftime

# Merge Main Fact Table and job_requirement_name_dataset.csv
dfmainjobreq = dfmain.merge(dfjobreqname, how = "left", on = "ID_cleaned")

#Assign the fillter to find the name of each TRUE(has name of the skill) to replace with salary_usd value

dfmainjobreqisaws = dfmainjobreq["is_AWS_required_skills"] == "AWS"
salary_aws = dfmainjobreq.loc[dfmainjobreqisaws, "salary_usd"]

dfmainjobreqisazure = dfmainjobreq["is_Azure_required_skills"] == "Azure"
salary_azure = dfmainjobreq.loc[dfmainjobreqisazure, "salary_usd"]

dfmainjobreqisdocker = dfmainjobreq["is_Docker_required_skills"] == "Docker"
salary_docker = dfmainjobreq.loc[dfmainjobreqisdocker, "salary_usd"]

dfmainjobreqisgcp = dfmainjobreq["is_GCP_required_skills"] == "GCP"
salary_gcp = dfmainjobreq.loc[dfmainjobreqisgcp, "salary_usd"]

dfmainjobreqisgit = dfmainjobreq["is_git_required_skills"] == "Git"
salary_git = dfmainjobreq.loc[dfmainjobreqisgit, "salary_usd"]

dfmainjobreqishadoop = dfmainjobreq["is_Hadoop_required_skills"] == "Hadoop"
salary_hadoop = dfmainjobreq.loc[dfmainjobreqishadoop, "salary_usd"]

dfmainjobreqisjava = dfmainjobreq["is_Java_required_skills"] == "Java"
salary_java = dfmainjobreq.loc[dfmainjobreqisjava, "salary_usd"]

dfmainjobreqiskubernetes = dfmainjobreq["is_Kubernetes_required_skills"] == "Kubernetes"
salary_kubernetes = dfmainjobreq.loc[dfmainjobreqiskubernetes, "salary_usd"]

dfmainjobreqismlops = dfmainjobreq["is_MLOps_required_skills"] == "MLOps"
salary_mlops = dfmainjobreq.loc[dfmainjobreqismlops, "salary_usd"]

dfmainjobreqismlp = dfmainjobreq["is_MLP_required_skills"] == "MLP"
salary_mlp = dfmainjobreq.loc[dfmainjobreqismlp, "salary_usd"]

dfmainjobreqispytorch = dfmainjobreq["is_PyTorch_required_skills"] == "PyTorch"
salary_pytorch = dfmainjobreq.loc[dfmainjobreqispytorch, "salary_usd"]

dfmainjobreqispython = dfmainjobreq["is_Python_required_skills"] == "Python"
salary_python = dfmainjobreq.loc[dfmainjobreqispython, "salary_usd"]

dfmainjobreqisR = dfmainjobreq["is_R_required_skills"] == "R"
salary_R = dfmainjobreq.loc[dfmainjobreqisR, "salary_usd"]

dfmainjobreqisSQL = dfmainjobreq["is_SQL_required_skills"] == "SQL"
salary_SQL = dfmainjobreq.loc[dfmainjobreqisSQL, "salary_usd"]

dfmainjobreqisscala = dfmainjobreq["is_Scala_required_skills"] == "Scala"
salary_scala = dfmainjobreq.loc[dfmainjobreqisscala, "salary_usd"]

dfmainjobreqispyspark = dfmainjobreq["is_Pyspark_required_skills"] == "PySpark"
salary_pyspark = dfmainjobreq.loc[dfmainjobreqispyspark, "salary_usd"]

dfmainjobreqistableau = dfmainjobreq["is_Tableau_required_skills"] == "Tableau"
salary_tableau = dfmainjobreq.loc[dfmainjobreqistableau, "salary_usd"]

dfmainjobreqistensorflow = dfmainjobreq["is_TensorFlow_required_skills"] == "TensorFlow"
salary_tensorflow = dfmainjobreq.loc[dfmainjobreqistensorflow, "salary_usd"]

# Create a new dataframe that have a new replaced value of all skills column
salary_by_skills = pd.DataFrame(
    data = [dfmainjobreq["job_title"],
            salary_aws,
            salary_azure,
            salary_docker,
            salary_gcp,
            salary_git,
            salary_hadoop,
            salary_java,
            salary_kubernetes,
            salary_mlops,
            salary_mlp,
            salary_pytorch,
            salary_python,
            salary_R,
            salary_SQL,
            salary_scala,
            salary_pyspark,
            salary_tableau,
            salary_tensorflow,                     
                ]
    )
    
# transpose the model to flip from rows to columns
salary_by_skills = salary_by_skills.transpose()
# New Dataset Salary by skills
salary_by_skills

# Export to .csv for columns header cleaning
salary_by_skills.to_csv("salary_by_skills_edited.csv", index = True)

- Before cleaning name of column headers.
    
    ![image.png](attachment:36875348-ea5b-4ae7-b866-a68de051dd85:image.png)
    
- After cleaning name of column headers.
    
    ![image.png](attachment:563169ca-c663-4cbf-85d9-6d0937dce968:image.png)
    
And that’s the finished of making a new table that stores salary values by skills that required.

## Time Intelligence Table

In order to use Pearson’s correlation analysis to analyze if two variable are dependent and if they did, which way they’re heading by their dependent relationship affection.

By that I’ve know the original time value, which is datetime value cannot be used as an another variable to measure their correlation because it’s not an integer value that is quantitative. So, I’ve decided to convert datetime value to cumulative number of days by their starting point. This way I can turn datetime value into a quantitative value that has a value how long from the starting date of the data to the end date. This way I can tell the correlation of all quantitative variables to an quantitative days that cumulative time by the difference of the current date to the start date.

- By creating new column named “days_subtraction_period”. in the value of the columns, type this formula
    
    = B2 - MIN($B$2:$B$15001)
    
    - Return the subtracted each of the datetime value by the first datetime days value.
    
    ![image.png](attachment:e029910e-1ab0-488d-9956-153053b293b4:image.png)
    
- This way, I can have the value for correlation analysis for quantitative value by time.

- **Time Intelligence by month for count of job titles**
    - In this case, my objectives is to analyze the trend of job numbers over time. But by using the days cumulative that done in the previous step. It’ll be very little impact because the number of job post per days is very low and not enough data to calculate the correlation. Instead, I’ve convert days period to month period and collect each count job postings by using Tableau’s Pivot table and then turn into .csv and download it.
        
        ![WIP table month cumulative.png](attachment:9f68e159-188a-49f4-9c42-bf4c75b2f0ef:WIP_table_month_cumulative.png)
        
        After that, I’ve used Excel to do operation by find the difference of the each month by the starting month by using this formula.
        
        =MONTH(A2 - MIN(A2:A17))
        
        - For the first Month
        
        =MONTH(A3 - MIN(A3:A18)) +1
        
        - For the second month to December, the last month of the year.
        
        =MONTH(A14 - MIN(A14:A29)) + W13
        
        - For January of the second year, till the end of the timeline.
        
        ![image.png](attachment:5c3547e6-52cf-4285-9d64-26ff5446bd97:image.png)
        
        Here’s the finished results, It doesn’t include ID because I want to analyze only the correlation of the number of post job by title by month only.


### Fact Table Cleaned

It is the table from the previous cleaning step but most of the columns get separate into another table to be join.

- **Category : Salary Level(salary_distribution_usd)**
    
    To Create a Dashboard, I’ve need to categorize by grouping the range of salary together to be displayable in graph in Power BI. I’ve created these value for the following range below.
    
    ![image.png](attachment:fe6d4818-0c1f-4e52-95cf-9829169da69e:image.png)
    
    Here’s the remaining of the columns in the main fact table
    
    ![image.png](attachment:661f8f28-3cb8-43d3-aebe-d68224015824:image.png)



# Database Diagram

![drawSQL-image-export-2025-07-12.png](attachment:31bec927-6e27-43c2-97f3-5de3c319a667:drawSQL-image-export-2025-07-12.png)

To explain this database diagram, This is a star schema pattern that have 1 fact table and 4 dimension tables. ai_job_dataset_cleaned is the main fact table that serves as a main data category and the other 4 dimension table serves as a table that contains main variable that’s have a lots of columns that can be call using join or merge table, the table that is dimensions table contains job_requirement_dataset, job_requirement_dataset_name, salary_by_skills and time_table_dataset as explained in the previous section about creating new job requirement table, new columns of skills used and time intelligence table that convert datetime to days and months cumulative to be able to perform Pearson’s correlation analysis.

All of the table have to join id by ID_cleaned to be able to join all dimensions table by having one to many relationship model.

# Data Visualization Creation

### Outliers

There is an outlier for executive level of job experience that is dragging the mean of salary variable to the left as seen the histogram that shows salary distribution below.

![Salary_Distribution_USD.jpeg](attachment:aefba14d-cfec-4ffd-a1dd-8636b6810be2:Salary_Distribution_USD.jpeg)

- This is a histogram that’ve been written in R but about the details I’ll explained later about this histogram in detailed analysis about code that used, but in this section I’m going to talk about executive level of job that created an outlier to the salary distribution.
- As we can see, executive level positions made a quarter of margin of all the job posted. I’ve decided to keep this because when remove all of the executive positions it’ll break the statistical structure that going to shift in another results that is completely different.
- But I’ve made an executive dashboard version that is interactable to disable the level of position of the job. So you can disable the executive positions to find out how the data visualize and given statistical results.

### Power BI Executive Dashboard

For the general overview of what’s happening within the AI-job market. I’ve created the overall dashboard that have a quick-peek review broadly, not into detailed that very much. So, here’s the finish product of the dashboard and I’ll explain about the graph, KPI metrics, table briefly how I’ve created it.

![image.png](attachment:ddd106f4-b91a-49c5-ac02-44a1ab47fa52:image.png)

- **KPI Metrics**
    - There is 3 KPI metrics that shown in the dashboard.
    - First is the average salary by using the DAX measure by AVG syntax. It can be filterable throughout the job selection and positions level.
    - Second is the count of jobs by using the DAX measure by COUNT syntax. It can be filterable throughout the job selection and positions level as well as average salary.
    - Third is the most average salary by job title. It’ll display the job title that has the most average salary. By using job_title as visual filter and then use top N filter type and set to top 1 only and display the job title. Although it can be filterable as well as the rest of the KPI.
    - This will assist the objective by answer the salary level that is been highlighted and filtered. Also, the number of job count in the current AI-job market as well.
- **Average Salary by job title and company size table**
    - This is a matrix table that show a columns of company’s size and row of job’s title with the value of their average salary in the job market that obtained by using AVG syntax.
    - It still can be filterable and highlightable with job title, selection in the matrix and position level as well.
- **Salary Distribution Bar Charts**
    - In Power BI, there is no histrogram chart where it’s can distribute all the value by bin size. I’ve created a new dimensional value columns called salary_distribution_usd to simulate as a categorial value in salary_usd to count the value of salary range in category and then use a bar chart as a substitute to the histogram.
    - The Problem is it not sorted by order which I want it to be sort by their quantity, but it’s was sort by alphabet because the value is discrete and not measuring type.
        
        ![image.png](attachment:c7cf9634-10b1-4b4d-b1ac-31a65c3bec40:image.png)
        
    - In order to have it sort by my own value, I’ve to give them a custom list of order by creating a new table and then assigned an order for each salary distribution discrete value.
    - Then, I’ve created a new table that contains 2 columns. 1. salary_distribution_usd distinct value 2. Number of order that assigned to each value in salary_distribution_usd. Here what’s the table looks like.
        
        ![image.png](attachment:12fe3e6d-a2bc-4874-9c56-6801c3be60b8:image.png)
        
    - And then link them in model view to the fact table to join by salary_distribution_usd columns.
        
        ![image.png](attachment:f7e4a13b-71d8-4269-aa21-33cd08590b8c:image.png)
        
    - Now the salary distribution is sorted in order from lowest to highest.
- **Demanding Skills**
    - It’s the Tree diagram that shows how many number of skills used in the job market. I’ve tried using bar chart to demonstrate the number of each skill count but it isn’t workings because they were too many bar chart that going to display in the visual, which is would be very hard to see. So, the tree diagram works better for this data.
    - By highlighting with this tree diagram is un-highlightable, the caused issue is unknown.
- **Filter**
    - I’ve created a multi selection drop-down box that can be filtered for job-title selection and position level selection for detailed analysis based on job-title and position level to be according to my objective that I want to know about job title and their salary distribution.
- **Button**
    - I’ve created a bookmarks to get back to it’s own default view, then assigned the bookmarks action to a button and place it on the top left corner of the dashboard.
- **Model View**
    - It’s very similar to the database that I’ve mentioned first. But there’s no job_requirement_dataset_name because the name version is not necessary for operation in the Power BI dashboard version.
        
        ![image.png](attachment:3fb1eb2c-96a8-4f53-8d95-f3fa20952df9:image.png)
        
        - The Measurement table is the table that includes only measurement, which is only 2 measure are “Average” and “Count”.
     

## Tableau Charts

I want to display a distribution and a common summary of statistics value to see the overall of quantitative analysis in simple way and also in detailed way visualization, I’ve decided to use a boxplot graph because it’s very detailed and also very simple when back out to see the overall situation, by using columns as a factor variable for each graph(job title, skills/tools, industries) and quantitative in row pill is salaries quantity. Another one is bar graph to show how many number of factor variable are there and compared them by visualize and sort them by number of count of each factor that appear to be duplicated in the dataset. Here’s all the bar and boxplot graph.
![Job Count Overall Graph.png](attachment:6b9ee174-55d6-4ad9-9988-fabb1948f58b:Job_Count_Overall_Graph.png)
![Salary Distribution by Number of Skills2.png](attachment:1a9efb88-8cfd-4181-9721-2c8073e0efef:Salary_Distribution_by_Number_of_Skills2.png)
![Salary by Job Title Distribution.png](attachment:bf5bc1dd-c6d1-4477-b21b-8a39d7d48922:Salary_by_Job_Title_Distribution.png)
![salary distribution boxplot.png](attachment:fe93365c-1a8a-4235-8ea7-e057ddf148f9:salary_distribution_boxplot.png)
![Salary Distribution by Industry.png](attachment:68f5b4d1-8f0f-41ca-a37e-d3c9c058d1c5:Salary_Distribution_by_Industry.png)
![Salary Distribution by Years of Experience.png](attachment:71c10e72-3241-4c22-ac4a-ffe8f97d5d7c:Salary_Distribution_by_Years_of_Experience.png)


## SQL(Structured Query Language)

To analyze the summary and then save into a csv to display the results. Every summary contains :

- Minimum
- 1st Quartile
- Mean
- 3rd Quartile
- Maximum

To see in actual detail of summary of descriptive statistics and be able to group by variables. Here’s the code that I’ve written and results(Sort by Mean from highest to lowest)

-- summary of industry

SELECT
	industry AS Industry,
    MIN(salary_usd) AS Minimum,
    MAX(CASE WHEN Quartile = 1 THEN salary_usd END) AS "1st Quartile",
    AVG(salary_usd) AS Mean,
	MAX(CASE WHEN Quartile = 3 THEN salary_usd END) AS "3rd Quartile",
    MAX(salary_usd) AS Maximum
FROM
	(SELECT
		industry,
		salary_usd,
        NTILE(4) OVER (ORDER BY salary_usd) AS "Quartile"
	FROM
		ai_job_dataset_cleaned) AS SubQueryalias
GROUP BY
	industry;

+---------------------+----------+--------------+----------+--------------+----------+
| Industry            | Minimum  | 1st Quartile |   Mean   | 3rd Quartile | Maximum  |
+---------------------+----------+--------------+----------+--------------+----------+
| Consulting          |  33,172  |     70,093   | 117,602  |    146,369   | 371,087  |
| Manufacturing       |  33,314  |     70,149   | 116,163  |    145,922   | 364,585  |
| Media               |  33,376  |     70,013   | 116,128  |    145,993   | 353,055  |
| Education           |  33,280  |     70,094   | 116,027  |    145,735   | 346,789  |
| Real Estate         |  32,587  |     70,173   | 115,919  |    146,375   | 379,134  |
| Technology          |  33,546  |     70,073   | 115,832  |    146,154   | 383,142  |
| Government          |  33,804  |     70,034   | 115,694  |    146,127   | 343,803  |
| Finance             |  32,542  |     70,179   | 115,323  |    146,336   | 350,761  |
| Telecommunications  |  32,666  |     70,047   | 115,291  |    146,162   | 339,526  |
| Energy              |  32,519  |     69,936   | 115,188  |    146,407   | 381,575  |
| Transportation      |  33,114  |     70,163   | 114,838  |    146,138   | 388,754  |
| Retail              |  32,692  |     70,084   | 114,776  |    146,198   | 399,419  |
| Healthcare          |  32,907  |     70,167   | 114,434  |    146,263   | 379,418  |
| Automotive          |  33,220  |     70,061   | 113,987  |    145,802   | 398,084  |
| Gaming              |  33,013  |     70,168   | 112,980  |    146,370   | 364,635  |
+---------------------+----------+--------------+----------+--------------+----------+

-- summary of job_title

SELECT
	job_title AS "Job Title",
    MIN(salary_usd) AS Minimum,
    MAX(CASE WHEN Quartile = 1 THEN salary_usd END) AS "1st Quartile",
    AVG(salary_usd) AS Mean,
	MAX(CASE WHEN Quartile = 3 THEN salary_usd END) AS "3rd Quartile",
    MAX(salary_usd) AS Maximum
FROM
	(SELECT
		job_title,
		salary_usd,
        NTILE(4) OVER (ORDER BY salary_usd) AS "Quartile"
	FROM
		ai_job_dataset_cleaned) AS SubQueryAlias
GROUP BY
	job_title;

+-------------------------------+----------+--------------+----------+--------------+----------+
| Job Title                     | Minimum  | 1st Quartile |   Mean   | 3rd Quartile | Maximum  |
+-------------------------------+----------+--------------+----------+--------------+----------+
| AI Specialist                 |  34,174  |   69,914     | 120,571  |   146,407    | 390,292  |
| Machine Learning Engineer     |  34,286  |   69,876     | 118,828  |   146,076    | 344,427  |
| Head of AI                    |  32,907  |   69,991     | 118,543  |   145,872    | 361,718  |
| AI Research Scientist         |  33,092  |   70,149     | 117,898  |   146,170    | 394,917  |
| AI Architect                  |  33,220  |   70,128     | 117,437  |   146,369    | 398,084  |
| Robotics Engineer             |  32,692  |   70,173     | 116,471  |   146,293    | 346,789  |
| Principal Data Scientist      |  33,185  |   69,873     | 116,305  |   146,375    | 364,635  |
| Research Scientist            |  34,179  |   70,139     | 116,067  |   146,154    | 339,526  |
| Data Engineer                 |  33,951  |   70,029     | 115,971  |   146,336    | 359,044  |
| Data Scientist                |  32,977  |   70,168     | 115,819  |   146,370    | 388,754  |
| ML Ops Engineer               |  33,056  |   69,952     | 115,431  |   146,269    | 352,006  |
| AI Product Manager            |  33,770  |   70,163     | 114,681  |   145,785    | 381,575  |
| AI Software Engineer          |  33,013  |   70,045     | 114,273  |   146,072    | 379,418  |
| Deep Learning Engineer        |  32,926  |   70,167     | 113,726  |   145,783    | 362,503  |
| AI Consultant                 |  33,959  |   70,179     | 113,672  |   146,156    | 366,957  |
| Computer Vision Engineer      |  32,519  |   70,094     | 113,473  |   146,067    | 366,957  |
| NLP Engineer                  |  32,587  |   69,967     | 112,671  |   145,898    | 357,880  |
| Machine Learning Researcher   |  33,114  |   70,154     | 112,622  |   144,602    | 399,095  |
| Autonomous Systems Engineer   |  32,790  |   70,100     | 111,397  |   146,198    | 364,585  |
| Data Analyst                  |  32,542  |   69,760     | 111,321  |   145,481    | 361,541  |
+-------------------------------+----------+--------------+----------+--------------+----------+

Due to years_experience in quartiles return in null values. I’ve decided to only use Minimum, Mean, Maximum of calculation only. Here’s the code and the results.

+----------------------------+----------+----------+----------+
| Years of Experience        | Minimum  |   Mean   | Maximum  |
+----------------------------+----------+----------+----------+
| 0                          | 32,519   |  63,112  | 129,909  |
| 1                          | 32,542   |  63,155  | 131,006  |
| 2                          | 45,917   |  88,824  | 175,899  |
| 3                          | 45,900   |  87,116  | 177,470  |
| 4                          | 45,948   |  87,933  | 174,000  |
| 5                          | 64,907   | 120,383  | 247,271  |
| 6                          | 64,869   | 124,130  | 245,832  |
| 7                          | 64,824   | 120,107  | 240,570  |
| 8                          | 66,161   | 124,215  | 231,259  |
| 9                          | 65,158   | 122,247  | 245,376  |
| 10                         | 87,076   | 190,284  | 399,095  |
| 11                         | 87,805   | 187,485  | 390,292  |
| 12                         | 88,881   | 195,266  | 394,917  |
| 13                         | 86,961   | 190,892  | 379,418  |
| 14                         | 86,560   | 185,750  | 354,999  |
| 15                         | 88,053   | 184,671  | 398,084  |
| 16                         | 88,007   | 181,208  | 388,704  |
| 17                         | 86,536   | 185,309  | 352,707  |
| 18                         | 87,501   | 186,480  | 366,957  |
| 19                         | 88,328   | 190,342  | 372,206  |
+----------------------------+----------+----------+----------+

![yrs_exp_summary.png](attachment:67a9e93b-0765-448c-95c9-2eba000fbc39:yrs_exp_summary.png)

## R Programming

- **Salary Distribution Histogram Chart**
    - I’ve want to see how’s the salary distribution in overall AI job market. I’ve decided to use R because R language is easy and give a specific to statistical data visualization by using ggplot2 library. By using count of salary as y-value, value of salary on x-value by bin size = 10,000 and use position level as the category by color. Here’s the code I’ve written and the results from what I’ve talked about the outlier by using this graph.


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

After run the salary_hist variable it’ll display this chart.

![Salary_Distribution_USD.jpeg](attachment:c14954b4-c4db-4abe-ab97-14a0831a7e77:Salary_Distribution_USD.jpeg)


### **Pearson Correlation Analysis**

- For measuring each skill salary by days cumulative to find trend of the skills by having a relationship upward or downward with time. The value in return of the functions is going to return by R squared that is measure between (-1, 1)
- To answer my objective that I want to see the trend of the skills that it’s relevant and valued by the AI job market.
    - If R squared going positive to 1 that means level of salary is increasing over time and it’s might worth learning that skills.
    - If R squared going negative to -1 that means level of salary is decreasing over time and it’s might not be required by job market and not worth learning that skills.
    
    - Here’s the code I’ve written in R, I’ve concluded use = “pairwise.complete.obs” to let corr function ignore NULL values and able to calculate correlation without error. Here’s each result for each of the value I’ve assigned by all of correlation function.

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

> corraws 
[1] 0.004196442
> corrazure 
[1] 0.04428797
> corrdocker
[1] 0.006385887
> corrgcp
[1] 0.01004505
> corrgit
[1] -0.02291673
> corrhadoop 
[1] -0.006394584
> corrjava
[1] 0.02684857
> corrkubernetes 
[1] 0.004879112
> corrmlops 
[1] 0.03457214
> corrmlp 
[1] -0.002652202
> corrpytorch 
[1] 0.005938099
> corrpython 
[1] -0.005951421
> corrR 
[1] -0.02302701
> corrsql 
[1] 0.0169024
> corrscala 
[1] 0.04774365
> corrpyspark 
[1] -0.02199253
> corrtableau 
[1] 0.01616387
> corrtensorflow 
[1] 0.008017187


- And another correlation analysis I’ve perform is the number of job title over month cumulative by using Pearson’s correlation value by R squared that returned from running a function.
- To answer my objective that I want to see the trend of the number of job that is valuable and in demand by AI-job market.
    - If R squared going positive to 1 that means the AI job market demand is increasing over time.
    - If R squared going negative to -1 that means the AI job market demand is decreasing over time.
 
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

This is the results from each of the value I’ve assigned by all of correlation function.

> corr2ai.architect
[1] -0.306845
> corr2ai.consultant
[1] 0.2892077
> corr2ai.productmanager
[1] -0.353647
> corr2ai.researchscientist
[1] -0.3003795
> corr2ai.softwareengineer
[1] -0.2385738
> corr2ai.specialist
[1] -0.05697457
> corr2ai.awe
[1] 0.1779553
> corr2ai.cve
[1] -0.6195869
> corr2ai.dataanalyst
[1] -0.09394907
> corr2ai.dataengineer
[1] -0.1692976
> corr2ai.datascientist
[1] -0.09556521
> corr2ai.dle
[1] -0.05225439
> corr2ai.headai
[1] -0.2564498
> corr2ai.mle
[1] 0.13373
> corr2ai.mlr
[1] 0.2114899
> corr2ai.mlops.e
[1] 0.3583543
> corr2ai.nlp.e
[1] -0.6611041
> corr2ai.pds
[1] 0.08272167
> corr2ai.researchscientist
[1] -0.3003795
> corr2ai.roboticsengineer
[1] 0.01511655


As for the correlation visualization, I’ve used a scatter plot to analyze the cluttering of data and how all the value were headed on the graph. With the assist of linear model in R, it can visualize the correlation direction with indicates relationship were heading and strengh of correlation. Here’s the code in R for each test for scatter plot and after that are visualization of scatter plots.

## Scatter Plot of Skills by Time Cumulative

-- scatter plot visualization for salary_usd by time_cumulative

plot1 <- ggplot(salary_analysis, aes(x = days_subtraction_period, y = salary_usd, color = factor(skill_name)))

plot1 <- plot1 + geom_point(show.legend = FALSE)

plot1 <- plot1 + scale_y_continuous(labels = scales::comma)

plot1 <- plot1 + facet_wrap("skill_name", ncol = 3)

plot1 <- plot1 + xlab("Days Cumulative/Days")

plot1 <- plot1 + ylab("Salary/USD")

plot1

![Scatter Plot of skills by time.png](attachment:3ce5a4f8-69f1-40ef-905f-c6d89d525dc5:Scatter_Plot_of_skills_by_time.png)

These graphs doesn’t include scatter plot because the correlation strength is very little. Instead, I’ve include an R squared value on the top-left corner of each graphs.

## Scatter Plot of Number of Job Postings by Month Cumulative

# Scatter plot visualization for job count by time_cumulative(WIP)

plot2 <- ggplot(job_count_categorized, aes(x = Month_Cumulative, y = Number_of_Job_Posted, color = factor(Job_Title)))

plot2 <- plot2 + geom_point(show.legend = FALSE, size = 3)

plot2 <- plot2 + geom_line(show.legend = FALSE)

plot2 <- plot2 + scale_y_continuous(labels = scales::comma)

plot2 <- plot2 + geom_smooth(method='lm', formula= y~x, color = "red", size = 0.2)

plot2 <- plot2 + facet_wrap("Job_Title", ncol = 3)

plot2 <- plot2 + xlab("Month Cumulative/Months")

plot2 <- plot2 + ylab("Number of Job Posted")

plot2

![Job Postings with Time Graph Plot.png](attachment:eaf23af0-09be-4d1a-8541-68ebec001e0b:Job_Postings_with_Time_Graph_Plot.png)

The grey band is the distribution from the mean with confidence level of 95%


### Hypothesis Testing

- **Is Industry Affects Your Salary?**
    
    There’s is a rumor that what’s industry you’re in affects your compensation rate, some are higher than other. So if it’s a good idea to avoid some industry that compensation rate is very low. I’m going to prove if this rumor is true by measuring data distribution for each industry together and to see that if they’re distributed differently. By using the ANOVA(Analysis of the Variance) one factor test which is industry by salaries. Here’s all the hypothesis, the code and the results in general and specific pairs.
    
    - **Hypothesis**
        - H0(Null Hypothesis) : All of industry are not affected how much compensation pays.
            - If p-value > 0.05, the null hypothesis is accepted.
        - H1(Alternative Hypothesis): At least one or more industry are affected how much compensation pays.
            - if p-value < 0.05, the null hypothesis is rejected and alternative is accepted.
        - With Confidence level(Alpha) of 95%(0.05)
    - **The Code and The Results**
        summary(aov(lm(main$salary_usd ~ main$industry, main)))
        TukeyHSD(aov(lm(main$salary_usd ~ main$industry, main)))
      - The Results
                             Df    Sum Sq       Mean Sq F   value    Pr(>F)
            main$industry    14    1.636e+10    1.169e+09   0.322    0.992
            Residuals     14985    5.445e+13    3.634e+09

      In Pr(>F) or p-value is 0.992 which is more than 0.05 say that I need to accept the null hypothesis and I’ve failed to reject it and accept the alternative hypothesis that is the rumor. It’s all of industry are not affected how much compensates, every industry that’s in this dataset is paid all the same with whatever industry we’re working with, you still going to get the same rate of compensation.


The Results by Each Pairs(Cleaned) : Sort by P-value(Adjusted)

Fit: aov(formula = lm(main$salary_usd ~ main$industry, main))

$`main$industry`

+------------------------------------+--------------+-------------+-------------+---------------------+
| Comparison Name                    | Difference   | Lower       | Upper       | P-value(Adjustment) |
+------------------------------------+--------------+-------------+-------------+---------------------+
| Gaming / Consulting                | -4622.56718  | -13799.337  | 4554.202    | 0.9309839           |
| Consulting / Automotive            | 3614.90098   | -5438.654   | 12668.456   | 0.9908937           |
| Healthcare / Consulting            | -3168.25851  | -12273.878  | 5937.361    | 0.9977567           |
| Media / Gaming                     | 3148.15517   | -5975.037   | 12271.347   | 0.9979465           |
| Manufacturing / Gaming             | 3183.3138    | -6127.112   | 12493.74    | 0.9981394           |
| Gaming / Education                 | -3047.22837  | -12372.289  | 6277.833    | 0.9988624           |
| Real Estate / Gaming               | 2939.52036   | -6266.031   | 12145.072   | 0.9991188           |
| Retail / Consulting                | -2825.77903  | -11787.308  | 6135.75     | 0.9992343           |
| Technology / Gaming                | 2852.24896   | -6344.377   | 12048.875   | 0.9993643           |
| Transportation / Consulting        | -2764.33975  | -11869.959  | 6341.28     | 0.9995009           |
| Government / Gaming                | 2714.74667   | -6511.116   | 11940.609   | 0.999651            |
| Energy / Consulting                | -2413.70568  | -11568.73   | 6741.318    | 0.9999041           |
| Telecommunications / Consulting    | -2310.73092  | -11416.35   | 6794.889    | 0.9999395           |
| Gaming / Finance                   | -2343.8234   | -11601.928  | 6914.281    | 0.9999413           |
| Telecommunications / Gaming        | 2311.83626   | -6916.303   | 11539.976   | 0.9999483           |
| Finance / Consulting               | -2278.74378  | -11414.73   | 6857.243    | 0.999951            |
| Gaming / Energy                    | -2208.8615   | -11485.753  | 7068.03     | 0.9999723           |
| Media / Automotive                 | 2140.48897   | -6858.755   | 11139.733   | 0.9999726           |
| Manufacturing / Automotive         | 2175.6476    | -7013.356   | 11364.651   | 0.9999741           |
| Education / Automotive             | 2039.56217   | -7164.269   | 11243.394   | 0.9999887           |
| Real Estate / Automotive           | 1931.85416   | -7150.873   | 11014.581   | 0.9999932           |
| Government / Consulting            | -1907.82051  | -11011.133  | 7195.492    | 0.9999944           |
| Technology / Automotive            | 1844.58276   | -7229.098   | 10918.264   | 0.9999962           |
| Transportation / Gaming            | 1858.22743   | -7369.912   | 11086.367   | 0.9999966           |
| Retail / Gaming                    | 1796.78815   | -7289.204   | 10882.781   | 0.9999973           |
| Technology / Consulting            | -1770.31822  | -10843.999  | 7303.363    | 0.9999978           |
| Manufacturing / Healthcare         | 1729.00512   | -7511.3     | 10969.31    | 0.9999987           |
| Government / Automotive            | 1707.08047   | -7396.232   | 10810.393   | 0.9999987           |
| Media / Healthcare                 | 1693.84649   | -7357.775   | 10745.468   | 0.9999987           |
| Real Estate / Consulting           | -1683.04682  | -10765.774  | 7399.68     | 0.9999988           |
| Education / Consulting             | -1575.33881  | -10779.17   | 7628.493    | 0.9999996           |
| Healthcare / Education             | -1592.9197   | -10847.971  | 7662.131    | 0.9999996           |
| Media / Consulting                 | -1474.41201  | -10473.656  | 7524.832    | 0.9999998           |
| Real Estate / Healthcare           | 1485.21168   | -7649.414   | 10619.837   | 0.9999998           |
| Technology / Healthcare            | 1397.94029   | -7727.691   | 10523.572   | 0.9999999           |
| Retail / Manufacturing             | -1386.52565  | -10484.874  | 7711.823    | 0.9999999           |
| Finance / Automotive               | 1336.1572    | -7799.829   | 10472.144   | 0.9999999           |
| Retail / Media                     | -1351.36702  | -10258.024  | 7555.29     | 0.9999999           |
| Healthcare / Gaming                | 1454.30868   | -7773.831   | 10682.448   | 0.9999999           |
| Manufacturing / Consulting         | -1439.25338  | -10628.257  | 7749.75     | 0.9999999           |
| Telecommunications / Government    | -402.91041   | -9558.005   | 8752.184    | 1                   |
| Transportation / Government        | -856.51924   | -10011.613  | 8298.575    | 1                   |
| Technology / Government            | 137.50229    | -8985.827   | 9260.831    | 1                   |
| Transportation / Retail            | 61.43928     | -8952.687   | 9075.565    | 1                   |
| Real Estate / Government           | 224.77369    | -8907.552   | 9357.1      | 1                   |
| Media / Government                 | 433.4085     | -8615.891   | 9482.708    | 1                   |
| Manufacturing / Government         | 468.56713    | -8769.465   | 9706.599    | 1                   |
| Healthcare / Government            | -1260.43799  | -10415.532  | 7894.656    | 1                   |
| Telecommunications / Technology    | -540.4127    | -9666.044   | 8585.219    | 1                   |
| Retail / Government                | -917.95852   | -9929.754   | 8093.837    | 1                   |
| Telecommunications / Real Estate   | -627.6841    | -9762.31    | 8506.942    | 1                   |
| Real Estate / Manufacturing        | -243.79344   | -9461.541   | 8973.954    | 1                   |
| Telecommunications / Healthcare    | 857.52758    | -8299.861   | 10014.916   | 1                   |
| Transportation / Healthcare        | 403.91876    | -8753.47    | 9561.307    | 1                   |
| Media / Manufacturing              | -35.15863    | -9170.657   | 9100.339    | 1                   |
| Technology / Manufacturing         | -331.06484   | -9539.899   | 8877.769    | 1                   |
| Telecommunications / Manufacturing | -871.47754   | -10111.783  | 8368.828    | 1                   |
| Transportation / Manufacturing     | -1325.08637  | -10565.392  | 7915.219    | 1                   |
| Real Estate / Media                | -208.63481   | -9237.227   | 8819.957    | 1                   |
| Telecommunications / Retail        | 515.04811    | -8499.078   | 9529.174    | 1                   |
| Telecommunications / Media         | -836.31891   | -9887.94    | 8215.302    | 1                   |
| Transportation / Media             | -1289.92774  | -10341.549  | 7761.693    | 1                   |
| Retail / Real Estate               | -1142.73221  | -10133.733  | 7848.268    | 1                   |
| Technology / Real Estate           | -87.2714     | -9190.061   | 9015.518    | 1                   |
| Technology / Retail                | 1055.46081   | -7926.401   | 10037.323   | 1                   |
| Transportation / Real Estate       | -1081.29293  | -10215.919  | 8053.333    | 1                   |
| Retail / Healthcare                | 342.47947    | -8671.646   | 9356.605    | 1                   |
| Technology / Media                 | -295.90621   | -9315.398   | 8723.585    | 1                   |
| Healthcare / Finance               | -889.51472   | -10077.099  | 8298.069    | 1                   |
| Telecommunications / Finance       | -31.98714    | -9219.571   | 9155.597    | 1                   |
| Technology / Education             | -194.97941   | -9418.609   | 9028.651    | 1                   |
| Retail / Education                 | -1250.44022  | -10363.764  | 7862.884    | 1                   |
| Real Estate / Education            | -107.70801   | -9340.237   | 9124.821    | 1                   |
| Media / Education                  | 100.9268     | -9049.486   | 9251.339    | 1                   |
| Manufacturing / Education          | 136.08543    | -9201.015   | 9473.186    | 1                   |
| Government / Education             | -332.4817    | -9585.263   | 8920.299    | 1                   |
| Telecommunications / Education     | -735.39211   | -9990.443   | 8519.659    | 1                   |
| Finance / Education                | -703.40497   | -9988.334   | 8581.524    | 1                   |
| Transportation / Automotive        | 850.56123    | -8255.058   | 9956.181    | 1                   |
| Telecommunications / Automotive    | 1304.17006   | -7801.45    | 10409.79    | 1                   |
| Retail / Automotive                | 789.12195    | -8172.407   | 9750.651    | 1                   |
| Healthcare / Automotive            | 446.64247    | -8658.977   | 9552.262    | 1                   |
| Gaming / Automotive                | -1007.6662   | -10184.436  | 8169.103    | 1                   |
| Energy / Automotive                | 1201.1953    | -7953.829   | 10356.219   | 1                   |
| Energy / Education                 | -838.36687   | -10142.029  | 8465.295    | 1                   |
| Transportation / Education         | -1189.00094  | -10444.052  | 8066.05     | 1                   |
| Finance / Energy                   | 134.9619     | -9101.588   | 9371.512    | 1                   |
| Government / Energy                | 505.88517    | -8698.348   | 9710.118    | 1                   |
| Technology / Finance               | 508.42556    | -8647.506   | 9664.357    | 1                   |
| Retail / Finance                   | -547.03525   | -9591.835   | 8497.765    | 1                   |
| Real Estate / Finance              | 595.69696    | -8569.2     | 9760.593    | 1                   |
| Media / Finance                    | 804.33177    | -8277.837   | 9886.5      | 1                   |
| Manufacturing / Finance            | 839.4904     | -8430.74    | 10109.721   | 1                   |
| Transportation / Technology        | -994.02153   | -10119.653  | 8131.61     | 1                   |
| Government / Finance               | 370.92327    | -8814.374   | 9556.221    | 1                   |
| Transportation / Energy            | -350.63407   | -9557.149   | 8855.881    | 1                   |
| Telecommunications / Energy        | 102.97476    | -9103.54    | 9309.49     | 1                   |
| Technology / Energy                | 643.38746    | -8531.541   | 9818.315    | 1                   |
| Retail / Energy                    | -412.07335   | -9476.102   | 8651.956    | 1                   |
| Real Estate / Energy               | 730.65886    | -8453.215   | 9914.533    | 1                   |
| Media / Energy                     | 939.29367    | -8162.025   | 10040.612   | 1                   |
| Manufacturing / Energy             | 974.4523     | -8314.541   | 10263.446   | 1                   |
| Healthcare / Energy                | -754.55282   | -9961.068   | 8451.962    | 1                   |
| Transportation / Finance           | -485.59597   | -9673.18    | 8701.988    | 1                   |
| Transportation / Telecommunications| -453.60883   | -9610.997   | 8703.78     | 1                   |
+------------------------------------+--------------+-------------+-------------+---------------------+
By each p adj(p-value) of each pair, there’s none of these have a p-value < 0.05 to break the null hypothesis. Which is very clear that none of the industry having an advantage of the compensation or difference over one another.


- **Is Type of Skill Affects Your Salary?**
    
    There’s hypothesis I would like to test about. It is that learning some skills is worth more than learning other skills? There might be alternative way to use the skills that might substitute the existing skill that required for the job but we might get paid higher than the substituted skill. I’m going to use the ANOVA(Analysis of the Variance) one-factor test for required skills by salary to see if these skills distributed salaries level differently.
    
    - **Hypothesis**
        - H0(Null Hypothesis) : All of skills are not affected how much compensation pays.
            - If p-value > 0.05, the null hypothesis is accepted.
        - H1(Alternative Hypothesis): At least one or more skills are affected how much compensation pays.
            - if p-value < 0.05, the null hypothesis is rejected and alternative is accepted.
        - With Confidence level(Alpha) of 95%(0.05)
    - **The Code and The Results**
                           Df    Sum Sq   Mean Sq F value Pr(>F)
salary_group$skill_name    17 5.538e+10 3.258e+09   0.901  0.572
Residuals               46131 1.667e+14 3.615e+09

- In Pr(>F) or p-value is 0.572 which is more than 0.05 say that I need to accept the null hypothesis and I’ve failed to reject it and accept the alternative hypothesis that is the rumor. It’s all of skill are not affected how much compensates, every industry that’s in this dataset is paid all the same with whatever skills we’re trying to substitute with or specific learning that skill only and there is no sign of significance level that any skills affect our salaries level.


- **The Results by Each Pairs(Cleaned) : Sort by P-value(Adjusted)**
  Tukey multiple comparisons of means
95% family-wise confidence level

Fit: aov(formula = lm(salary_group$salary_usd ~ salary_group$skill_name))

$`salary_group$skill_name`
+------------------------------------+--------------+-------------------+-------------------+-------------------+
| Comparison Name                    | Differences  | Lower             | Upper             | P-value(Adjusted) |
+------------------------------------+--------------+-------------------+-------------------+-------------------+
| Gaming /  Consulting               | -4622.56718  | -13799.337        | 4554.202          | 0.9309839         |
| Consulting /  Automotive           | 3614.90098   | -5438.654         | 12668.456         | 0.9908937         |
| Healthcare /  Consulting           | -3168.25851  | -12273.878        | 5937.361          | 0.9977567         |
| Media /  Gaming                    | 3148.15517   | -5975.037         | 12271.347         | 0.9979465         |
| Manufacturing /  Gaming            | 3183.31380   | -6127.112         | 12493.740         | 0.9981394         |
| Gaming /  Education                | -3047.22837  | -12372.289        | 6277.833          | 0.9988624         |
| Real Estate /  Gaming              | 2939.52036   | -6266.031         | 12145.072         | 0.9991188         |
| Retail /  Consulting               | -2825.77903  | -11787.308        | 6135.750          | 0.9992343         |
| Technology /  Gaming               | 2852.24896   | -6344.377         | 12048.875         | 0.9993643         |
| Transportation /  Consulting       | -2764.33975  | -11869.959        | 6341.280          | 0.9995009         |
| Government /  Gaming               | 2714.74667   | -6511.116         | 11940.609         | 0.9996510         |
| Energy /  Consulting               | -2413.70568  | -11568.730        | 6741.318          | 0.9999041         |
| Telecommunications /  Consulting   | -2310.73092  | -11416.350        | 6794.889          | 0.9999395         |
| Gaming /  Finance                  | -2343.82340  | -11601.928        | 6914.281          | 0.9999413         |
| Telecommunications /  Gaming       | 2311.83626   | -6916.303         | 11539.976         | 0.9999483         |
| Finance /  Consulting              | -2278.74378  | -11414.730        | 6857.243          | 0.9999510         |
| Gaming /  Energy                   | -2208.86150  | -11485.753        | 7068.030          | 0.9999723         |
| Media /  Automotive                | 2140.48897   | -6858.755         | 11139.733         | 0.9999726         |
| Manufacturing /  Automotive        | 2175.64760   | -7013.356         | 11364.651         | 0.9999741         |
| Education /  Automotive            | 2039.56217   | -7164.269         | 11243.394         | 0.9999887         |
| Real Estate /  Automotive          | 1931.85416   | -7150.873         | 11014.581         | 0.9999932         |
| Government /  Consulting           | -1907.82051  | -11011.133        | 7195.492          | 0.9999944         |
| Technology /  Automotive           | 1844.58276   | -7229.098         | 10918.264         | 0.9999962         |
| Transportation /  Gaming           | 1858.22743   | -7369.912         | 11086.367         | 0.9999966         |
| Retail /  Gaming                   | 1796.78815   | -7289.204         | 10882.781         | 0.9999973         |
| Technology /  Consulting           | -1770.31822  | -10843.999        | 7303.363          | 0.9999978         |
| Manufacturing /  Healthcare        | 1729.00512   | -7511.300         | 10969.310         | 0.9999987         |
| Government /  Automotive           | 1707.08047   | -7396.232         | 10810.393         | 0.9999987         |
| Media /  Healthcare                | 1693.84649   | -7357.775         | 10745.468         | 0.9999987         |
| Real Estate /  Consulting          | -1683.04682  | -10765.774        | 7399.680          | 0.9999988         |
| Education /  Consulting            | -1575.33881  | -10779.170        | 7628.493          | 0.9999996         |
| Healthcare /  Education            | -1592.91970  | -10847.971        | 7662.131          | 0.9999996         |
| Media /  Consulting                | -1474.41201  | -10473.656        | 7524.832          | 0.9999998         |
| Real Estate /  Healthcare          | 1485.21168   | -7649.414         | 10619.837         | 0.9999998         |
| Technology /  Healthcare           | 1397.94029   | -7727.691         | 10523.572         | 0.9999999         |
| Retail /  Manufacturing            | -1386.52565  | -10484.874        | 7711.823          | 0.9999999         |
| Finance /  Automotive              | 1336.15720   | -7799.829         | 10472.144         | 0.9999999         |
| Retail /  Media                    | -1351.36702  | -10258.024        | 7555.290          | 0.9999999         |
| Healthcare /  Gaming               | 1454.30868   | -7773.831         | 10682.448         | 0.9999999         |
| Manufacturing /  Consulting        | -1439.25338  | -10628.257        | 7749.750          | 0.9999999         |
| Telecommunications /  Government   | -402.91041   | -9558.005         | 8752.184          | 1.0000000         |
| Transportation /  Government       | -856.51924   | -10011.613        | 8298.575          | 1.0000000         |
| Technology /  Government           | 137.50229    | -8985.827         | 9260.831          | 1.0000000         |
| Transportation /  Retail           | 61.43928     | -8952.687         | 9075.565          | 1.0000000         |
| Real Estate /  Government          | 224.77369    | -8907.552         | 9357.100          | 1.0000000         |
| Media /  Government                | 433.40850    | -8615.891         | 9482.708          | 1.0000000         |
| Manufacturing /  Government        | 468.56713    | -8769.465         | 9706.599          | 1.0000000         |
| Healthcare /  Government           | -1260.43799  | -10415.532        | 7894.656          | 1.0000000         |
| Telecommunications /  Technology   | -540.41270   | -9666.044         | 8585.219          | 1.0000000         |
| Retail /  Government               | -917.95852   | -9929.754         | 8093.837          | 1.0000000         |
| Telecommunications /  Real Estate  | -627.68410   | -9762.310         | 8506.942          | 1.0000000         |
| Real Estate /  Manufacturing       | -243.79344   | -9461.541         | 8973.954          | 1.0000000         |
| Telecommunications /  Healthcare   | 857.52758    | -8299.861         | 10014.916         | 1.0000000         |
| Transportation /  Healthcare       | 403.91876    | -8753.470         | 9561.307          | 1.0000000         |
| Media /  Manufacturing             | -35.15863    | -9170.657         | 9100.339          | 1.0000000         |
| Technology /  Manufacturing        | -331.06484   | -9539.899         | 8877.769          | 1.0000000         |
| Telecommunications /  Manufacturing| -871.47754   | -10111.783        | 8368.828          | 1.0000000         |
| Transportation /  Manufacturing    | -1325.08637  | -10565.392        | 7915.219          | 1.0000000         |
| Real Estate /  Media               | -208.63481   | -9237.227         | 8819.957          | 1.0000000         |
| Telecommunications /  Retail       | 515.04811    | -8499.078         | 9529.174          | 1.0000000         |
| Telecommunications /  Media        | -836.31891   | -9887.940         | 8215.302          | 1.0000000         |
| Transportation /  Media            | -1289.92774  | -10341.549        | 7761.693          | 1.0000000         |
| Retail /  Real Estate              | -1142.73221  | -10133.733        | 7848.268          | 1.0000000         |
| Technology /  Real Estate          | -87.27140    | -9190.061         | 9015.518          | 1.0000000         |
| Technology /  Retail               | 1055.46081   | -7926.401         | 10037.323         | 1.0000000         |
| Transportation /  Real Estate      | -1081.29293  | -10215.919        | 8053.333          | 1.0000000         |
| Retail /  Healthcare               | 342.47947    | -8671.646         | 9356.605          | 1.0000000         |
| Technology /  Media                | -295.90621   | -9315.398         | 8723.585          | 1.0000000         |
| Healthcare /  Finance              | -889.51472   | -10077.099        | 8298.069          | 1.0000000         |
| Telecommunications /  Finance      | -31.98714    | -9219.571         | 9155.597          | 1.0000000         |
| Technology /  Education            | -194.97941   | -9418.609         | 9028.651          | 1.0000000         |
| Retail /  Education                | -1250.44022  | -10363.764        | 7862.884          | 1.0000000         |
| Real Estate /  Education           | -107.70801   | -9340.237         | 9124.821          | 1.0000000         |
| Media /  Education                 | 100.92680    | -9049.486         | 9251.339          | 1.0000000         |
| Manufacturing /  Education         | 136.08543    | -9201.015         | 9473.186          | 1.0000000         |
| Government /  Education            | -332.48170   | -9585.263         | 8920.299          | 1.0000000         |
| Telecommunications /  Education    | -735.39211   | -9990.443         | 8519.659          | 1.0000000         |
| Finance /  Education               | -703.40497   | -9988.334         | 8581.524          | 1.0000000         |
| Transportation /  Automotive       | 850.56123    | -8255.058         | 9956.181          | 1.0000000         |
| Telecommunications /  Automotive   | 1304.17006   | -7801.450         | 10409.790         | 1.0000000         |
| Retail /  Automotive               | 789.12195    | -8172.407         | 9750.651          | 1.0000000         |
| Healthcare /  Automotive           | 446.64247    | -8658.977         | 9552.262          | 1.0000000         |
| Gaming /  Automotive               | -1007.66620  | -10184.436        | 8169.103          | 1.0000000         |
| Energy /  Automotive               | 1201.19530   | -7953.829         | 10356.219         | 1.0000000         |
| Energy /  Education                | -838.36687   | -10142.029        | 8465.295          | 1.0000000         |
| Transportation /  Education        | -1189.00094  | -10444.052        | 8066.050          | 1.0000000         |
| Finance /  Energy                  | 134.96190    | -9101.588         | 9371.512          | 1.0000000         |
| Government /  Energy               | 505.88517    | -8698.348         | 9710.118          | 1.0000000         |
| Technology /  Finance              | 508.42556    | -8647.506         | 9664.357          | 1.0000000         |
| Retail /  Finance                  | -547.03525   | -9591.835         | 8497.765          | 1.0000000         |
| Real Estate /  Finance             | 595.69696    | -8569.200         | 9760.593          | 1.0000000         |
| Media /  Finance                   | 804.33177    | -8277.837         | 9886.500          | 1.0000000         |
| Manufacturing /  Finance           | 839.49040    | -8430.740         | 10109.721         | 1.0000000         |
| Transportation /  Technology       | -994.02153   | -10119.653        | 8131.610          | 1.0000000         |
| Government /  Finance              | 370.92327    | -8814.374         | 9556.221          | 1.0000000         |
| Transportation /  Energy           | -350.63407   | -9557.149         | 8855.881          | 1.0000000         |
| Telecommunications /  Energy       | 102.97476    | -9103.540         | 9309.490          | 1.0000000         |
| Technology /  Energy               | 643.38746    | -8531.541         | 9818.315          | 1.0000000         |
| Retail /  Energy                   | -412.07335   | -9476.102         | 8651.956          | 1.0000000         |
| Real Estate /  Energy              | 730.65886    | -8453.215         | 9914.533          | 1.0000000         |
| Media /  Energy                    | 939.29367    | -8162.025         | 10040.612         | 1.0000000         |
| Manufacturing /  Energy            | 974.45230    | -8314.541         | 10263.446         | 1.0000000         |
| Healthcare /  Energy               | -754.55282   | -9961.068         | 8451.962          | 1.0000000         |
| Transportation /  Finance          | -485.59597   | -9673.180         | 8701.988          | 1.0000000         |
| Transportation /  Telecommunications| -453.60883  | -9610.997        | 8703.780           | 1.0000000         |
+------------------------------------+--------------+-------------------+-------------------+-------------------+
By each p adj(p-value) of each pair, there’s none of these have a p-value < 0.05 to break the null hypothesis. Which is very clear that none of the skills having an advantage of the compensation or difference over one another.

- **Is Job Title affects Your Salary?**
    
    By testing job title means different job title have a different list of responsibilities. Some job title might have a lot more list of responsibilities than some other job which might be paid more than others that have less. By job title as a variable doesn’t include other factors such as level of experience required eg. entry-level, mid-level, senior, etc. but have different job responsibilities and role that differ than others. I’m going to use ANOVA(Analysis of Variance) test to see that each salaries is distributed differently to each other. Here’s the hypothesis that I’ve formulated.
    
    - **Hypothesis**
        - H0(Null Hypothesis) : All of job title are not affected how much compensation pays.
            - If p-value > 0.05, the null hypothesis is accepted.
        - H1(Alternative Hypothesis): At least one or more job title are affected how much compensation pays.
            - if p-value < 0.05, the null hypothesis is rejected and alternative is accepted.
        - With Confidence level(Alpha) of 95%(0.05)
    - **The Code and The Results**
                          Df         Sum Sq    Mean Sq F value Pr(>F)
        main$job_title    19    91317739440 4806196813   1.324  0.156
        Residuals      14980 54375765017149 3629890856

      In Pr(>F) or p-value is 0.156 which is more than 0.05 say that I need to accept the null hypothesis and I’ve failed to reject it and accept the alternative hypothesis that is my assumption above. It’s all of job title and responsibilities are not affected how much compensates, every industry that’s in this dataset is paid all the same with whatever job title we’ve applied to different positions while not considering other factors and there is no sign of significance level that any job title affect our salaries level.

    - **The Results by Each Pairs(Cleaned) : Sort by P-value(Adjusted)**

Tukey multiple comparisons of means
95% family-wise confidence level

Fit: aov(formula = lm(main$salary_usd ~ main$job_title))

$`main$job_title`

+-------------------------------------------------------------+--------------+-------------------+-------------------+-------------------+
| Comparison Name                                             | Difference   | Lower             | Upper             | P-value(Adjusted) |
+-------------------------------------------------------------+--------------+-------------------+-------------------+-------------------+
| Data Analyst / AI Specialist                                | -9249.57774  | -20327.639        | 1828.483          | 0.2541097         |
| Autonomous Systems Engineer / AI Specialist                 | -9174.20097  | -20189.262        | 1840.86           | 0.2583427         |
| Machine Learning Researcher / AI Specialist                 | -7949.01072  | -18861.381        | 2963.359          | 0.519224          |
| NLP Engineer / AI Specialist                                | -7899.82123  | -18967.201        | 3167.559          | 0.5601908         |
| Machine Learning Engineer / Data Analyst                    | 7506.73919   | -3408.994         | 18422.472         | 0.6327406         |
| Machine Learning Engineer / Autonomous Systems Engineer     | 7431.36242   | -3420.428         | 18283.153         | 0.6406648         |
| Head of AI / Data Analyst                                   | 7221.78813   | -3718.676         | 18162.252         | 0.7064593         |
| Head of AI / Autonomous Systems Engineer                    | 7146.41136   | -3730.255         | 18023.078         | 0.7143128         |
| Computer Vision Engineer / AI Specialist                    | -7098.05106  | -18306.440        | 4110.338          | 0.7724458         |
| AI Specialist / AI Consultant                               | 6898.8875    | -4389.043         | 18186.818         | 0.8210585         |
| Deep Learning Engineer / AI Specialist                      | -6845.12593  | -18076.971        | 4386.719          | 0.8246202         |
| Data Analyst / AI Research Scientist                        | -6576.74543  | -17549.594        | 4396.103          | 0.8445317         |
| Autonomous Systems Engineer / AI Research Scientist         | -6501.36865  | -17410.609        | 4407.872          | 0.850976          |
| Machine Learning Researcher / Machine Learning Engineer     | -6206.17216  | -16953.712        | 4541.368          | 0.8831229         |
| AI Specialist / AI Software Engineer                        | 6297.55671   | -4693.692         | 17288.805         | 0.8902107         |
| NLP Engineer / Machine Learning Engineer                    | -6156.98268  | -17061.875        | 4747.91           | 0.9026547         |
| Data Analyst / AI Architect                                 | -6115.33312  | -17034.575        | 4803.909          | 0.9090359         |
| Autonomous Systems Engineer / AI Architect                  | -6039.95635  | -16895.276        | 4815.364          | 0.913937          |
| Machine Learning Researcher / Head of AI                    | -5921.2211   | -16693.878        | 4851.436          | 0.9225383         |
| NLP Engineer / Head of AI                                   | -5872.03162  | -16801.679        | 5057.616          | 0.9367549         |
| AI Specialist / AI Product Manager                          | 5889.84842   | -5246.456         | 17026.153         | 0.9452425         |
| Machine Learning Researcher / AI Research Scientist         | -5276.1784   | -16081.723        | 5529.366          | 0.9751059         |
| Machine Learning Engineer / Computer Vision Engineer        | 5355.21251   | -5692.763         | 16403.188         | 0.9769439         |
| NLP Engineer / AI Research Scientist                        | -5226.98892  | -16189.053        | 5735.076          | 0.9806413         |
| Robotics Engineer / Data Analyst                            | 5149.61265   | -5812.366         | 16111.592         | 0.9835317         |
| Robotics Engineer / Autonomous Systems Engineer             | 5074.23588   | -5824.072         | 15972.544         | 0.9850714         |
| Machine Learning Engineer / AI Consultant                   | 5156.04895   | -5972.616         | 16284.714         | 0.9858647         |
| Machine Learning Engineer / Deep Learning Engineer          | 5102.28738   | -5969.484         | 16174.059         | 0.9866849         |
| ML Ops Engineer / AI Specialist                             | -5139.42307  | -16343.936        | 6065.089          | 0.9873643         |
| Head of AI / Computer Vision Engineer                       | 5070.26145   | -6002.150         | 16142.673         | 0.9876024         |
| Principal Data Scientist / Data Analyst                     | 4984.03885   | -6070.887         | 16038.965         | 0.9896147         |
| Machine Learning Researcher / AI Architect                  | -4814.76609  | -15565.870        | 5936.338          | 0.990384          |
| Principal Data Scientist / Autonomous Systems Engineer      | 4908.66207   | -6083.131         | 15900.455         | 0.9906935         |
| NLP Engineer / AI Architect                                 | -4765.57661  | -15673.982        | 6142.828          | 0.9928065         |
| Head of AI / AI Consultant                                  | 4871.09789   | -6281.825         | 16024.021         | 0.9928293         |
| Head of AI / Deep Learning Engineer                         | 4817.33632   | -6278.818         | 15913.491         | 0.9933228         |
| Research Scientist / Data Analyst                           | 4745.32219   | -6279.266         | 15769.91          | 0.993976          |
| Research Scientist / Autonomous Systems Engineer            | 4669.94542   | -6291.335         | 15631.226         | 0.9946785         |
| Data Scientist / AI Specialist                              | -4751.74991  | -15975.738        | 6472.238          | 0.9950729         |
| Data Engineer / Data Analyst                                | 4649.54046   | -6348.966         | 15648.047         | 0.9951596         |
| Machine Learning Engineer / AI Software Engineer            | 4554.71816   | -6272.901         | 15382.337         | 0.9954446         |
| Data Engineer / Autonomous Systems Engineer                 | 4574.16369   | -6360.885         | 15509.212         | 0.9957492         |
| Data Engineer / AI Specialist                               | -4600.03728  | -15714.245        | 6514.17           | 0.9962741         |
| Data Scientist / Data Analyst                               | 4497.82783   | -6611.603         | 15607.259         | 0.9971778         |
| Research Scientist / AI Specialist                          | -4504.25555  | -15644.273        | 6635.762          | 0.9972249         |
| Data Scientist / Autonomous Systems Engineer                | 4422.45106   | -6624.158         | 15469.06          | 0.9975552         |
| Computer Vision Engineer / AI Research Scientist            | -4425.21874  | -15529.630        | 6679.192          | 0.9976956         |
| Head of AI / AI Software Engineer                           | 4269.7671    | -6582.783         | 15122.318         | 0.9980483         |
| Principal Data Scientist / AI Specialist                    | -4265.5389   | -15435.581        | 6904.503          | 0.9986827         |
| Machine Learning Engineer / AI Product Manager              | 4147.00986   | -6827.828         | 15121.848         | 0.9988562         |
| AI Research Scientist / AI Consultant                       | 4226.05519   | -6958.637         | 15410.748         | 0.9988571         |
| Deep Learning Engineer / AI Research Scientist              | -4172.29361  | -15300.380        | 6955.792          | 0.9989701         |
| ML Ops Engineer / Data Analyst                              | 4110.15467   | -6979.599         | 15199.909         | 0.9991196         |
| Robotics Engineer / AI Specialist                           | -4099.96509  | -15178.026        | 6978.096          | 0.9991365         |
| ML Ops Engineer / Autonomous Systems Engineer               | 4034.7779    | -6992.043         | 15061.598         | 0.9992612         |
| Computer Vision Engineer / AI Architect                     | -3963.80644  | -15015.249        | 7087.636          | 0.9994396         |
| Robotics Engineer / Machine Learning Researcher             | 3849.04562   | -6945.461         | 14643.552         | 0.9994836         |
| Head of AI / AI Product Manager                             | 3862.0588    | -7137.377         | 14861.494         | 0.9995842         |
| Robotics Engineer / NLP Engineer                            | 3799.85614   | -7151.328         | 14751.04          | 0.9996485         |
| Principal Data Scientist / Machine Learning Researcher      | 3683.47182   | -7205.411         | 14572.355         | 0.9997557         |
| AI Consultant / AI Architect                                | -3764.64288  | -14896.749        | 7367.463          | 0.9997567         |
| Deep Learning Engineer / AI Architect                       | -3710.88131  | -14786.112        | 7364.35           | 0.9997873         |
| AI Software Engineer / AI Research Scientist                | -3624.7244   | -14509.921        | 7260.472          | 0.9998055         |
| Principal Data Scientist / NLP Engineer                     | 3634.28234   | -7409.940         | 14678.504         | 0.9998365         |
| Research Scientist / Machine Learning Researcher            | 3444.75517   | -7413.326         | 14302.836         | 0.9999048         |
| Machine Learning Researcher / Data Engineer                 | -3348.97344  | -14180.572        | 7482.625          | 0.9999354         |
| Research Scientist / NLP Engineer                           | 3395.56569   | -7618.289         | 14409.42          | 0.9999381         |
| ML Ops Engineer / Machine Learning Engineer                 | -3396.58452  | -14440.628        | 7647.459          | 0.9999404         |
| Data Analyst / AI Product Manager                           | -3359.72932  | -14380.565        | 7661.106          | 0.9999478         |
| NLP Engineer / Data Engineer                                | -3299.78395  | -14287.532        | 7687.964          | 0.9999585         |
| Autonomous Systems Engineer / AI Product Manager            | -3284.35255  | -14241.859        | 7673.154          | 0.9999597         |
| Machine Learning Researcher / Data Scientist                | -3197.26081  | -14141.475        | 7746.954          | 0.9999729         |
| AI Software Engineer / AI Architect                         | -3163.31209  | -13994.469        | 7667.844          | 0.999973          |
| AI Research Scientist / AI Product Manager                  | 3217.0161    | -7814.631         | 14248.663         | 0.9999736         |
| AI Specialist / AI Architect                                | 3134.24462   | -7901.529         | 14170.018         | 0.9999826         |
| NLP Engineer / Data Scientist                               | -3148.07133  | -14246.851        | 7950.708          | 0.9999829         |
| ML Ops Engineer / Head of AI                                | -3111.63346  | -14180.121        | 7956.854          | 0.9999851         |
| Machine Learning Engineer / Data Scientist                  | 3008.91136   | -8054.890         | 14072.713         | 0.9999912         |
| Data Analyst / AI Software Engineer                         | -2952.02103  | -13826.261        | 7922.219          | 0.9999915         |
| Robotics Engineer / Computer Vision Engineer                | 2998.08597   | -8095.584         | 14091.756         | 0.9999921         |
| Autonomous Systems Engineer / AI Software Engineer          | -2876.64426  | -13686.696        | 7933.407          | 0.9999938         |
| Machine Learning Engineer / Data Engineer                   | 2857.19873   | -8095.217         | 13809.614         | 0.9999955         |
| ML Ops Engineer / Machine Learning Researcher               | 2809.58765   | -8114.653         | 13733.828         | 0.9999964         |
| Principal Data Scientist / Computer Vision Engineer         | 2832.51216   | -8353.011         | 14018.035         | 0.9999972         |
| Research Scientist / Machine Learning Engineer              | -2761.41699  | -13740.023        | 8217.189          | 0.9999975         |
| AI Product Manager / AI Architect                           | -2755.60379  | -13733.932        | 8222.724          | 0.9999976         |
| Robotics Engineer / AI Consultant                           | 2798.92241   | -8375.107         | 13972.952         | 0.9999977         |
| NLP Engineer / ML Ops Engineer                              | -2760.39816  | -13839.482        | 8318.686          | 0.9999979         |
| Robotics Engineer / Deep Learning Engineer                  | 2745.16084   | -8372.207         | 13862.529         | 0.9999982         |
| Head of AI / Data Scientist                                 | 2723.96029   | -8364.241         | 13812.162         | 0.9999983         |
| AI Specialist / AI Research Scientist                       | 2672.83232   | -8415.985         | 13761.649         | 0.9999988         |
| Head of AI / Data Engineer                                  | 2572.24767   | -8404.816         | 13549.311         | 0.9999992         |
| Principal Data Scientist / AI Consultant                    | 2633.34861   | -8631.878         | 13898.575         | 0.9999993         |
| Research Scientist / Computer Vision Engineer               | 2593.79551   | -8561.745         | 13749.336         | 0.9999993         |
| Principal Data Scientist / Deep Learning Engineer           | 2579.58703   | -8629.440         | 13788.614         | 0.9999994         |
| Principal Data Scientist / Machine Learning Engineer        | -2522.70034  | -13531.771        | 8486.37           | 0.9999995         |
| Data Engineer / Computer Vision Engineer                    | 2498.01378   | -8631.752         | 13627.78          | 0.9999996         |
| Research Scientist / Head of AI                             | -2476.46593  | -13479.661        | 8526.729          | 0.9999996         |
| ML Ops Engineer / AI Research Scientist                     | -2466.59075  | -13567.089        | 8633.908          | 0.9999997         |
| Deep Learning Engineer / Machine Learning Researcher        | 2345.65997   | -8818.895         | 13510.215         | 0.9999998         |
| Deep Learning Engineer / ML Ops Engineer                    | -2372.48488  | -13476.607        | 8731.637          | 0.9999998         |
| Robotics Engineer / Data Engineer                           | 2353.26315   | -8752.480         | 13458.977         | 0.9999998         |
| Research Scientist / Data Engineer                          | 95.78173     | -10965.127        | 11156.691         | 1                 |
| Research Scientist / Data Scientist                         | 247.49436    | -10923.719        | 11418.708         | 1                 |
| Research Scientist / ML Ops Engineer                        | 635.16752    | -10516.478        | 11786.813         | 1                 |
| Research Scientist / Principal Data Scientist               | -238.71665   | -11355.728        | 10878.295         | 1                 |
| Robotics Engineer / AI Architect                            | -965.72047   | -11884.962        | 9953.522          | 1                 |
| Robotics Engineer / AI Product Manager                      | 1789.88332   | -9230.952         | 12810.719         | 1                 |
| Robotics Engineer / AI Research Scientist                   | -1427.13278  | -12399.981        | 9545.716          | 1                 |
| Robotics Engineer / AI Software Engineer                    | 2197.59162   | -8676.648         | 13071.831         | 1                 |
| Robotics Engineer / AI Consultant                           | 2798.92241   | -8375.107         | 13972.952         | 0.9999977         |
| Robotics Engineer / Computer Vision Engineer                | 2998.08597   | -8095.584         | 14091.756         | 0.9999921         |
| Robotics Engineer / Data Analyst                            | 5149.61265   | -5812.366         | 16111.592         | 0.9835317         |
| Robotics Engineer / Data Engineer                           | 2353.26315   | -8752.480         | 13458.977         | 0.9999998         |
| Robotics Engineer / Data Scientist                          | 2201.55052   | -8907.037         | 13310.138         | 0.9999999         |
| Robotics Engineer / Deep Learning Engineer                  | 2745.16084   | -8372.207         | 13862.529         | 0.9999982         |
| Robotics Engineer / Head of AI                              | 1888.17558   | -9095.648         | 12871.999         | 1                 |
| Robotics Engineer / Machine Learning Engineer               | -1466.83556  | -12469.752        | 9536.081          | 1                 |
| Robotics Engineer / Machine Learning Researcher             | 3849.04562   | -6945.461         | 14643.552         | 0.9994836         |
| Robotics Engineer / ML Ops Engineer                         | 2745.16084   | -8372.207         | 13862.529         | 0.9999982         |
| Robotics Engineer / NLP Engineer                            | 3799.85614   | -7151.328         | 14751.04          | 0.9996485         |
| Robotics Engineer / Principal Data Scientist                | 3014.66589   | -8070.783         | 14100.115         | 0.9999908         |
| Robotics Engineer / Research Scientist                      | 2966.45324   | -8107.085         | 14039.992         | 0.9999918         |
+-------------------------------------------------------------+--------------+-------------------+-------------------+-------------------+

- **How much is years of experience affect to your salary?**
    
    I want to measure and calculate how much is the salaries make a difference between each of the years of experience, we already know that years of experience affect how much you’ve earn but the questions is how much?, I’ve set up 2 test for each sample that I’ve selected by 1. all years of experience 2. 10 and more years of experience because after 10 years of experience, their salary distribution are very similar and then I can focused on each years of experience by how much they’re affect each other by using Linear Regression. Here’s all the hypothesis for each test.
    
    - Is years of experience affect how much you’ve compensated
        - H0(Null Hypothesis) : None of salary quantity are affected no matter how many years of experience we have.
        - H1(Alternative Hypothesis): Years of experience affected on how much you’ll be compensated.
     
**Linear Regression Model years of experience to salary(All Years)**

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

The results from the test said that years_experience have a significant impact on salary_usd by Pr(>| t |) < 0.05 leads to reject the null hypothesis and accept the alternative hypothesis. And to explain further that if the null hypothesis is true, there is 0.000000000000002% chance that years of experience doesn’t have an impact on compensation quantity. For relationship direction by using Pearson’s Correlation(Adjusted R-squared) shows that the correlation value is going positive by 54.4% upward which is moderate positive relationship. To visualize more, here’s the scatter plot to show how directions of relationships between two variable correlated.

![Linear Regression_Years of experience by Salary.png](attachment:9a24b4e7-3f97-4a82-b258-e83e3c9efcfd:Linear_Regression_Years_of_experience_by_Salary.png)

**Linear Regression Model years of experience to salary(All Years)**

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

The results from the test said that years_experience that have more or equal to 10 doesn’t have a significant impact on salary_usd, which is Pr(>| t |) > 0.05 leads to accept the null hypothesis and rejected the alternative hypothesis. And to explain further that if the null hypothesis is true, there is 11.9% chance that 10 or more years of experience doesn’t have an impact on compensation quantity. For relationship direction by using Pearson’s Correlation(Adjusted R-squared) shows that the correlation value is going positive by 0.003% upward which is very weak positive relationship. To visualize more, here’s the scatter plot to show how directions of relationships between two variable correlated.
![Linear Regression_Years of experience(10+) by Salary.png](attachment:3ab0dd21-59e4-4d9e-a7dc-17ad2e360c80:Linear_Regression_Years_of_experience(10)_by_Salary.png)

- **How is years of experience affect the level of salary with other factor combined?**
    
    After I’ve got a significance test that find the factor that affect on salaries. I think further questions will be “How about other factor that’ll combined with years of experience, will they differ from other factor?” To see what factor should we considered and what’s the best way to earn salary in AI-job related field. I still use linear regression model that combine other descriptive factor with years of experience as a covariance factor to affect other descriptive factor I’ve tested. Here’s the diagram of this linear regression model and relationship of tested variable that I’ve form.

  ![lm2_variable_diagram.png](attachment:c66e716a-3783-45ba-b171-adfa6d876434:lm2_variable_diagram.png)

  This diagram says “All 4 independent variables, which is skill_name, industry, experience_level, job_title is covariate by their years_experience. How do they affect the dependent variable, salary_usd?” It will print out each of independent variable by category to see that what’s dimensions of data is affected in the test. Here’s both of bypothesis the model in R that I’ve written in code.

  H0(Null hypothesis) : That factor with years of experience combined has no affect with salary.
  H1(Alternative hypothesis): That factor with years of experience combined has an effect with salary.

R code :

more_factor6 <- lm(data = main_and_salary, salary_usd.x ~ job_title * years_experience + skill_name * years_experience + industry * years_experience + experience_level_cleaned * years_experience)

And R console print out the results by each independent variable all of them(Sort by P-value from lowest to highest)

+---------------------------------------------------------------+-----------+-------------+----------+------------+-----+
| Factors                                                      | Estimate  | Std. Error  | t-value  | Pr(>|t|)   | Sig |
+---------------------------------------------------------------+-----------+-------------+----------+------------+-----+
| Experience Level Required : Mid-level                        | 26,750    | 1,425       | 18.768   | 2.00E-16   | *** |
| Experience Level Required : Senior                           | 55,650    | 1,845       | 30.167   | 2.00E-16   | *** |
| Experience Level Required : Executive                        | 134,600   | 1,881       | 71.565   | 2.00E-16   | *** |
| (Intercept)                                                  | 64,520    | 2,149       | 30.027   | 2.00E-16   | *** |
| Job Title : Autonomous Systems Engineer / Years of Experience| -918.3    | 200.5       | -4.581   | 0.00000465 | *** |
| Years of Experience / Industry : Retail                      | 583.2     | 171.5       | 3.400    | 0.000673   | *** |
| Years of Experience / Industry : Media                       | 569.3     | 170.0       | 3.349    | 0.000810   | *** |
| Industry : Media                                             | -4,383    | 1,432       | -3.062   | 0.002203   | **  |
| Years of Experience / Industry : Gaming                      | 507.9     | 175.0       | 2.902    | 0.003715   | **  |
| Industry : Gaming                                            | -3,707    | 1,429       | -2.595   | 0.009470   | **  |
| Job Title : AI Research Scientist / Years of Experience      | 463.4     | 198.2       | 2.338    | 0.019371   | *   |
| Job Title : Machine Learning Engineer / Years of Experience  | 469.7     | 201.2       | 2.335    | 0.019555   | *   |
| Years of Experience / Industry : Consulting                  | 401.4     | 172.4       | 2.328    | 0.019925   | *   |
| Job Title : Autonomous Systems Engineer                      | 3,782     | 1,662       | 2.275    | 0.022884   | *   |
| Job Title : AI Specialist / Years of Experience              | 443.0     | 200.7       | 2.207    | 0.027302   | *   |
| Years of Experience / Industry : Real Estate                 | 378.9     | 175.0       | 2.165    | 0.030370   | *   |
| Industry : Energy                                            | -3,149    | 1,455       | -2.164   | 0.030471   | *   |
| Industry : Consulting                                        | -2,789    | 1,443       | -1.933   | 0.053271   | .   |
| Job Title : ML Ops Engineer / Years of Experience            | -378.4    | 204.3       | -1.853   | 0.063915   | .   |
| Job Title : Machine Learning Engineer                        | -3,181    | 1,723       | -1.847   | 0.064787   | .   |
| Job Title : Head of AI / Years of Experience                 | 360.2     | 200.3       | 1.799    | 0.072077   | .   |
| Job Title : Principal Data Scientist / Years of Experience   | 364.1     | 203.2       | 1.791    | 0.073222   | .   |
| Job Title : AI Consultant                                    | 3,040     | 1,724       | 1.763    | 0.077826   | .   |
| Industry : Retail                                            | -2,483    | 1,409       | -1.763   | 0.077942   | .   |
| Job Title : AI Consultant / Years of Experience              | -360.0    | 209.8       | -1.715   | 0.086278   | .   |
| Years of Experience / Skill Name : Kubernetes                | -314.4    | 214.4       | -1.466   | 0.142612   |     |
| Years of Experience / Skill Name : R                         | 282.9     | 223.9       | 1.264    | 0.206280   |     |
| Years of Experience / Skill Name : Git                       | -259.2    | 220.6       | -1.175   | 0.239863   |     |
| Job Title : Machine Learning Researcher                      | -1,804    | 1,641       | -1.099   | 0.271665   |     |
| Job Title : Data Engineer                                    | 1,853     | 1,704       | 1.088    | 0.276751   |     |
| Years of Experience / Skill Name : Tensorflow                | -225.2    | 213.4       | -1.055   | 0.291322   |     |
| Years of Experience / Industry : Education                   | -185.7    | 176.4       | -1.052   | 0.292675   |     |
| Job Title : Research Scientist                               | 1,731     | 1,679       | 1.031    | 0.302559   |     |
| Years of Experience / Skill Name : MLP                       | 231.9     | 226.3       | 1.025    | 0.305390   |     |
| Years of Experience / Industry : Transportation              | -179.9    | 175.9       | -1.023   | 0.306428   |     |
| Years of Experience / Industry : Telecommunications          | -175.0    | 177.0       | -0.989   | 0.322808   |     |
| Years of Experience / Skill Name : Java                      | -217.6    | 220.6       | -0.987   | 0.323878   |     |
| Job Title : Computer Vision Engineer                         | 1,652     | 1,711       | 0.966    | 0.334284   |     |
| Industry : Technology                                        | -1,314    | 1,443       | -0.910   | 0.362764   |     |
| Years of Experience / Experience Level Required : Executive  | -651.4    | 718.9       | -0.906   | 0.364912   |     |
| Industry : Real Estate                                       | -1,257    | 1,432       | -0.878   | 0.379959   |     |
| Years of Experience / Experience Level Required : Senior     | 621.3     | 751.1       | 0.827    | 0.408132   |     |
| Industry : Healthcare                                        | -1,186    | 1,446       | -0.820   | 0.411976   |     |
| Skill Name : MLP                                             | -1,518    | 1,905       | -0.797   | 0.425502   |     |
| Years of Experience / Industry : Energy                      | 136.4     | 171.8       | 0.794    | 0.427434   |     |
| Years of Experience / Industry : Government                  | 140.4     | 177.3       | 0.792    | 0.428251   |     |
| Years of Experience / Industry : Technology                  | 134.5     | 175.0       | 0.769    | 0.442192   |     |
| Job Title : NLP Engineer                                     | -1,280    | 1,682       | -0.761   | 0.446883   |     |
| Skill Name : Kubernetes                                      | 1,346     | 1,792       | 0.751    | 0.452598   |     |
| Job Title : Data Analyst / Years of Experience               | -148.0    | 203.9       | -0.726   | 0.468062   |     |
| Industry : Government                                        | -1,044    | 1,445       | -0.723   | 0.469800   |     |
| Job Title : Deep Learning Engineer / Years of Experience     | -145.5    | 204.1       | -0.713   | 0.476008   |     |
| Job Title : ML Ops Engineer                                  | 1,221     | 1,717       | 0.711    | 0.476781   |     |
| Job Title : Data Scientist                                   | 1,190     | 1,705       | 0.698    | 0.485263   |     |
| Job Title : Deep Learning Engineer                           | 1,185     | 1,704       | 0.695    | 0.486838   |     |
| Skill Name : R                                               | -1,306    | 1,879       | -0.695   | 0.486850   |     |
| Experience Level Required : Mid-level                         |    26750   |    1425   |   18.768 |   2e-16    | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Experience Level Required : Senior                            |    55650   |    1845   |    30.167|   2e-16   | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Experience Level Required : Executive                         |   134600   |    1881   |    71.565 |   2e-16    | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| (Intercept)                                                   |    64520   |    2149   |    30.027 |   2e-16    | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Job Title : Autonomous Systems Engineer / Years of Experience |     -918.3 |     200.5 |    -4.581 |   4.65e-06 | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Years of Experience / Industry : Retail                       |      583.2 |     171.5 |     3.4   |   0.000673 | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Years of Experience / Industry : Media                        |      569.3 |     170   |     3.349 |   0.00081  | ***   |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Industry : Media                                              |    -4383   |    1432   |    -3.062 |   0.002203 | **    |
+------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Years of Experience / Industry : Gaming                       |      507.9 |        175   |     2.902 |   0.003715 | **    |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+
| Industry : Gaming                                             |    -3707   |       1429   |    -2.595 |   0.00947  | **    |
+---------------------------------------------------------------+------------+--------------+-----------+------------+-------+

| Correlation |  
| Multiple R-squared : | 60.52% |
| Adjusted R-squared : | 60.42% |

F-statistics : 659 on 107 and 46,037 DF
Overall P-value: 	< 0.000000000000002	***

| Residuals: |
| Min | 1st Quarter | Median | 3rd Quarter | Max |
| (110,455) | (23,092) | (4,230) | 18,815 | 215,897 |

  After I’ve got the results and significance pair, I need to filter the test results pair by checking their standard error to see is this level of error acceptable. I used the percentage error by comparing the current standard error value of each pair to maximum of standard error. If the error is ≤ 75% that pair will be accept, but if the error ≥ 75% that pair is unacceptable because it’s too much error and might provide misleading facts. Here’s the descriptive of Std. error analysis and all the results that passed the test.

+-------------------------------+----------------+
| Std. Error Summary Analysis   |                |
+===============================+================+
| Mean                          |    964.749     |
+-------------------------------+----------------+
| Standard Error                |     71.6115    |
+-------------------------------+----------------+
| Median                        |   1118.05      |
+-------------------------------+----------------+
| Mode                          |    175         |
+-------------------------------+----------------+
| Standard Deviation            |    744.209     |
+-------------------------------+----------------+
| Sample Variance               | 553847         |
+-------------------------------+----------------+
| Kurtosis                      |     -1.88535   |
+-------------------------------+----------------+
| Skewness                      |      0.0387987 |
+-------------------------------+----------------+
| Range                         |   1979         |
+-------------------------------+----------------+
| Minimum                       |    170         |
+-------------------------------+----------------+
| Maximum                       |   2149         |
+-------------------------------+----------------+
| Sum                           | 104193         |
+-------------------------------+----------------+
| Count                         |    108         |
+-------------------------------+----------------+

The table that analyze on Std. Error.

![Hypothesis_LM2_table_error_analysis.jpg](attachment:e91523c3-ca8d-46d2-82bc-857c89185c26:Hypothesis_LM2_table_error_analysis.jpg)

And here’s the results that have a significant test there P-value < 0.05.

![Hypothesis_LM2_table_error_analysis_truesig.jpg](attachment:847fc37f-c037-4ad2-97f2-ccaf3eb9b309:Hypothesis_LM2_table_error_analysis_truesig.jpg)

The test pair that have been dropped are :

- Experience Level Required : Executive
- Experience Level Required : Senior
- Job Title : Autonomous Systems Engineer

of having more than 75% of Percentile Std. Error, the rest are accepted. Here’s all of the matrix that show all scatter plot to see their relationship of each other factors(Experience Level Required : Mid-level, because it’s have only 2 years of experience level jobs that can’t display correlation and scatter plot, it’s doesn’t have a slope of the graph)

- Using SQL to extract all data and assigned each of them to csv

  CREATE DATABASE AI_job_market;

USE AI_job_market;

-- Experience Level Required : Mid-level

SELECT
    id_cleaned,
    experience_level_cleaned,
    years_experience,
    salary_usd
FROM
    ai_job_dataset_cleaned
WHERE
    experience_level_cleaned = 'Mid-level'
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : Autonomous Systems Engineer / Years of Experience

SELECT
	ai_job_dataset_cleaned.id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "Autonomous Systems Engineer"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Retail

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Retail"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Media

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Media"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Gaming

SELECT
	id_cleaned,
    industry,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Gaming"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : AI Research Scientist / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "AI Research Scientist"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : Machine Learning Engineer / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "Machine Learning Engineer"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Consulting

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Consulting"
ORDER BY years_experience ASC, salary_usd ASC;

-- Job Title : AI Specialist / Years of Experience

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	job_title LIKE "AI Specialist"
ORDER BY years_experience ASC, salary_usd ASC;

-- Years of Experience / Industry : Real Estate

SELECT
	id_cleaned,
    job_title,
    years_experience,
    salary_usd
FROM
	ai_job_dataset_cleaned
WHERE
	industry LIKE "Real Estate"
ORDER BY years_experience ASC, salary_usd ASC;

Setting up the R workspace by installing packages and import csv file then assigned each dataframe to their own variable.

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

![plot_ai_research_scientist_yrs_exp_hyptrue.jpeg](attachment:02d307f9-55c9-4dab-a33b-059542c9aadc:plot_ai_research_scientist_yrs_exp_hyptrue.jpeg)

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

![plot_ai_specialist_yrs_exp_hyptrue.jpeg](attachment:5dd983b2-3abd-4e5c-94f5-3409ff7ed45a:plot_ai_specialist_yrs_exp_hyptrue.jpeg)

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

![plot_ase_to_yrs_exp_hyptrue.jpeg](attachment:15c05d75-25b7-499d-8b38-aea8463ab1e4:plot_ase_to_yrs_exp_hyptrue.jpeg)

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

![plot_consulting_yrs_exp_hyptrue.jpeg](attachment:7b51b840-90a7-43ed-83e4-6a743be0de2c:plot_consulting_yrs_exp_hyptrue.jpeg)

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

![plot_gaming_yrs_exp_hyptrue.jpeg](attachment:4907ff2e-943d-4d02-830b-18610a487787:plot_gaming_yrs_exp_hyptrue.jpeg)

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

![plot_media_yrs_exp_hyptrue.jpeg](attachment:1dc77daf-6b43-4679-a11a-ce86b2bf4683:plot_media_yrs_exp_hyptrue.jpeg)

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

![plot_mle_yrs_exp_hyptrue.jpeg](attachment:2faae606-d9e7-4dfc-9f87-7734b1ce1472:plot_mle_yrs_exp_hyptrue.jpeg)

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

![plot_real_estate_yrs_exp_hyptrue.jpeg](attachment:481f30e8-2089-4e21-84a0-5afe18cbead2:plot_real_estate_yrs_exp_hyptrue.jpeg)

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

![plot_retail_yrs_exp_hyptrue.jpeg](attachment:3e4a466b-174f-4a3b-8631-d277411d2030:plot_retail_yrs_exp_hyptrue.jpeg)

And then combined all of these 9 scatter plot together in one page.

(plot_ai_research_scientist_yrs_exp | plot_ai_specialist_yrs_exp | plot_ase_to_yrs_exp) /
(plot_consulting_yrs_exp | plot_gaming_yrs_exp | plot_media_yrs_exp) /
(plot_mle_yrs_exp | plot_real_estate_yrs_exp | plot_retail_yrs_exp)

Here’s the results.

![plot_combined.jpeg](attachment:8cec538d-061a-44a6-94ae-4175df5c65ce:plot_combined.jpeg)

All of the graph that display in the matrix have a similar level of correlation, which are positive correlation. That’s prove why they’ve significant results of test. The list of them are :

- Job Title : AI Research Scientist / Years of Experience
- Job Title : AI Specialist / Years of Experience
- Job Title : Autonomous Systems Engineer / Years of Experience
- Job Title : Machine Learning Engineer / Years of Experience
- Industry : Gaming / Years of Experience
- Industry : Consulting / Years of Experience
- Industry : Media / Years of Experience
- Industry : Real Estate / Years of Experience
- Industry : Retail / Years of Experience
- Industry : Media (Dropped)
- Industry : Energy (Dropped)
- Industry : Gaming (Dropped)
- Experience Level Required : Mid-level


## Excel Correlation Comparison

I’ve made an Excel sheet to store a correlation value and made a graph comparison to show the visualization to make it easier to see and compare the correlation for each of the skills by time cumulative and job count by month cumulative, here are the graphs.

![correlation_salarybyskills_to_dayscumulative.png](attachment:05504bf0-4f39-44b9-9de2-e5fa4bb46b93:correlation_salarybyskills_to_dayscumulative.png)
![correlation_job_count_to_monthcumulative.png](attachment:6c9b5db9-fe37-4bd1-8f8a-0004208189bf:correlation_job_count_to_monthcumulative.png)


  
