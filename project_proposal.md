## Project Proposal

###### Question/need:

According to MTA authority, only 27% of the 493 subway and Staten Island Railway stations are currrenlty accessible to riders who use wheel chairs or have other mobility challenges. The MTA and Department of City Planning are pushing the "Elevate Transit: Zoning for Accessibility" proposal to have private real estate developers build and maintain elevators to increase "Americans with Diasbilities Act-compliant"(ADA) stations in the MTA system.

This Exploratory Data Analysis model is built for private real estate developers who are looking into participating in the ADA stations project to improve access for riders with disabilities. The goal is to utilize the MTA data set and recommend placement of subway accessibility upgrades in stations with higher population of disabilities and which day of week or time of day to focus on for the development teams.

###### Data Description:

The approach is to utilize the MTA turnstile data retrieved online for the period from January to March 2021 to recommend the day of week and time of day with the lowest amount of ridership, as well as access the American Community Survey data from to identify the area with higher population of disabilities. 

###### Tools:

I plan to ingest the raw data into a SQL database and querying from that database into Python via SQLAlchemy. I intend to do exploratory data analysis in pandas and data visualization with python libraries such as matplotlib and seaborn. If time allows, I'll explore more advanced visualization tools.

###### MVP Goal:

Use data analytics to provide private real estate developers with a list of recommendation of the top 5 stations for accessibility upgrade, as well as the weekday and time frame recommendations for development work based on the diabilities population in NYC.

