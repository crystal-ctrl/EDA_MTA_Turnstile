# MTA Traffic Analysis for Station Accessibility Upgrade

Exploratory Data Analysis Project with Data Visualization

## Goal

The goal of this EDA project is to utilize the MTA dataset and recommend placement of subway accessibility upgrades in stations with higher traffic and identity the lower traffic days and times at those popular stations for work schedule to minimize exposure and risk during pandemic. I worked with the weekly MTA turnstile data and the MTA station info data. I used SQL to generate a database for the data and used pandas, groupby, and pivot table to perform data cleaning, aggregationa, as well as exploratory data analysis. And after doing an exploratory data analysis, I built some histogram, barplots and heatmaps to visualize and communicate my results.

To learn more, see my [blog post](https://crystalhuang-ds.medium.com/mta-traffic-analysis-for-station-accessibility-upgrade-28744b8e6586) and [presentation slides](MTA_EDA_presentation.pdf). 

## Workflow

 1. [Data scraping](1_data_scraper.ipynb)
 2. [Data cleaning and preparation](2_data_cleaning_n_prep.ipynb)
 3. [EDA and visualization](3_EDA_data_vis.ipynb)
 4. [SQL merge tables](4_mta_merged.sql)
 5. [EDA on merged results](5_merge_ADA_Analysis.ipynb)
 6. [Future work](6_Future_work.ipynb)

## Technologies

* SQLite
* Python (sqlalchemy, Numpy and Pandas)
* Matplotlib and Seaborn
* Bokeh
