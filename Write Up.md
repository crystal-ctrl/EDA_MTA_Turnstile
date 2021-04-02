# MTA Traffic Analysis for Station Accessibility Upgrade

Crystal Huang

## Abstract

The goal of this EDA project is to utilize the MTA dataset and recommend placement of subway accessibility upgrades in stations with higher traffic and identity the lower traffic days and times at those popular stations for work schedule to minimize exposure and risk during pandemic. I worked with the weekly MTA turnstile data and the MTA station info data. I used SQL to generate a database for the data and used pandas, groupby, and pivot table to perform data cleaning, aggregationa, as well as exploratory data analysis. And after doing an exploratory data analysis, I built some histogram, barplots and heatmaps to visualize and communicate my results.

## Design

This exploratory data analysis project is built upon the recent decision of MTA inviting private construction companies to work on station accessibility upgrades and increase amount of "Americans with Disabilities Act-compliant" stations (ADA stations). A fictional elevator construction comapny, Lift Inc., is looking into joining the program. They wanted a data analysis on the subway traffic flow during pandemic to figure out their employee work schedule. Assuming the higher traffic stations would be prioritized for upgrades, the company wants to identify the times of days during a week at those popular stations so that they can minimize exposure and risk for their empolyees during pandemic.

## Data

The datasets used in this project include the weekly MTA turnstile data from 3/21/2020 to 3/20/2021 (start of NYC Work from home order to most recent available week) and the MTA station information data that contains the ADA information of each stations. Those data were web scraped with urllib.request and ingested into the same database as two tables with SQL. I also created a new table by joining both tables. These data were accessed in Python with sqlalchemy in jupyter notebook.

## Algorithms

*Cleaning* 

In the first stage of data cleaning process, I standardized column names, converted column datatype and dropped unnecessary rows and columns. Throughout the EDA, I also managed missing values and duplicate data. 

*Aggregation*

One of the major data preparation is obtaining the entry and exit counts difference, since the data shows the accumulative counts. After getting the counts from the difference between each timestamp at each turnstile, the initial analysis showed some error data such as negative counts or extremely high counts. To fix those error data, I used absolute values to fix the negative counts. For the outliers, I replaced them with mean values of before and after the timestamp at the turnstile. Lastly, I made a total traffic count by adding the entry and exit counts together. 

The data also has multiple different timestamps which can be hard to do analysis with different time intervals. So I made the decision to unify the time intervals to 4 hour intervals. Lastly, the data was grouped by each turnstile, station, and datetime to get a table of each stations count at each datetime. I did a last data cleaning by dropping unnecessary columns before saving it to a csv file for further analysis.

For the second part of my analysis, I merged the station info data with the cleaned dataset to filter out the stations that are not ADA compliant and made visualizations on them as well.

*Visualization*

Using Matplotlib and seaborn, I created histogram to see the distribution of traffic across stations during pandemic and highlighted the top ten stations in the plot, which is shown as the outliers. I made a barplot to visualize the traffic distribution among the top ten stations. Lastly, I created pivot tables and passed them into seaborn to create heatmaps that demonstrate the traffic pattern of the ten stations in days and time. 

Same visualizations were done for the top ten non-ADA stations. 

## Tools

* SQLite for creating database and tables and joining tables
* sqlalchemy for accessing SQL database in Python
* Numpy and Pandas for data manipulation
* Matplotlib and Seaborn for plotting
* Bokeh for interactive plot in future work

## Communication

In addition to the slides and visual presented, Bokeh plot will be embedded on my personal blog





