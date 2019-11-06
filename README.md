# STL-CRIME-AND-BUILDING-PERMITS


In this ETL project , we sought out to find a relationship between the given crime rate of a neighboorhood and the number of building permits issued by the local saint louis government. 

1-Data source
https://www.slmpd.org/Crimereports.shtml

These data files were downloaded for the last full year available  (2018). 

Building permit data was downloaded from 
https://www.stlouis-mo.gov/data/building-permits/neighborhoods.cfm?permitType=all&startYear=2018&endYear=2018&sortBy=neighborhood

2- Data cleaning. 


1.	Source of data extract from:
a.	SLMPD (st. louis metro police department) crime csv for 12 months of 2018
i.	Combined all 12 months of 2018 into one dataframe
ii.	Dropped: FlagCrime, FlagUnfounded, FlagAdministrative, FlagCleanup, LocationName, LocationComment
iii.	Dropped all rows with ‘-1’ count value due to that crime being changed into a new one
1.	Example: assault reported originally, 2 months later victim dies, now converted to murder (preventing duplicate incidents from carrying over)
iv.	Replaced all blank values with Null value
v.	Converted all column heads to lower case (makes it easier for pgadmin to join)
b.	City of St.Louis obtained csv for district numbers and their neighborhood name
i.	Converted all column heads to lower case (makes it easier for pgadmin to join)
ii.	heads to lower case
c.	City of St. Louis obtained csv for building permits issues in all of 2018
i.	Shows number of permits, average day to issue permit, and dollar amount of all permits issued for each neighborhood
ii.	Converted all column heads to lower case (makes it easier for pgadmin to join)
2.	Import cleaned crime data frame, neighborhood/district number dataframe, and building permits dataframe to pgadmin database: stl_crime6. RELATIONAL DATABASE

3.	Now we have three tables in pgadmin and we need to have one database to query data to answer our hypothetical question. 

a.	Under ‘Views’ in Schemas, create a hard database of all the three tables joined with the columns we are interested in (joined on neighborhood name, nei_name). Big advantage of this is so that we can always go directly to the cleaned database without having to select and join the tables and our colleagues can easily just work directly with the database in Views. 

