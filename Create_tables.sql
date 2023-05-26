/*
Covid from 2020 - 2022 create tables to import csv file to MySQL through load data infile
Skills used: Create table, load data infile
*/

-- Create tables to import csv file through load infile
Drop table if exists `covid_death`;
Drop table if exists `covid_vaccination`;

Create table `covid_death` (
`iso_code` varchar(255),
`continent` varchar(255),
`location` varchar(255),
`date` date,
`population` bigint,
`total_cases` int,
`new_cases` int,
`new_cases_smoothed` double,
`total_deaths` int,
`new_deaths` int,
`new_deaths_smoothed` double,
`total_cases_per_million` double,
`new_cases_per_million` double,
`new_cases_smoothed_per_million` double,
`total_deaths_per_million` double,
`new_deaths_per_million` double,
`new_deaths_smoothed_per_million` double,
`reproduction_rate` double,
`icu_patients` int,
`icu_patients_per_million` double,
`hosp_patients` int,
`hosp_patients_per_million` double,
`weekly_icu_admissions` int,
`weekly_icu_admissions_per_million` double,
`weekly_hosp_admissions` int,
`weekly_hosp_admissions_per_million` double
);

Create table `covid_vaccination` (
`iso_code` varchar(255),
`continent` varchar(255),
`location` varchar(255),
`date` date,
`total_tests` bigint,
`new_tests` bigint,
`total_tests_per_thousand` double,
`new_tests_per_thousand` double,
`new_tests_smoothed` bigint,
`new_tests_smoothed_per_thousand` double,
`positive_rate` double,
`tests_per_case` double,
`tests_units` varchar(255),
`total_vaccinations` bigint,
`people_vaccinated` bigint,
`people_fully_vaccinated` bigint,
`total_boosters` bigint,
`new_vaccinations` bigint,
`new_vaccinations_smoothed` bigint,
`total_vaccinations_per_hundred` double,
`people_vaccinated_per_hundred` double,
`people_fully_vaccinated_per_hundred` double,
`total_boosters_per_hundred` double,
`new_vaccinations_smoothed_per_million` bigint,
`new_people_vaccinated_smoothed` bigint,
`new_people_vaccinated_smoothed_per_hundred` double, 
`stringency_index` double,
`population_density` double,
`median_age` double,
`aged_65_older` double,
`aged_70_older` double,
`gdp_per_capita` double,
`extreme_poverty` double,
`cardiovasc_death_rate` double,
`diabetes_prevalence` double,
`female_smokers` double,
`male_smokers` double,
`handwashing_facilities` double,
`hospital_beds_per_thousand` double,
`life_expectancy` double,
`human_development_index` double,
`excess_mortality_cumulative_absolute` double,
`excess_mortality_cumulative` double,
`excess_mortality` double,
`excess_mortality_cumulative_per_million` double
);

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/covid_death.csv'
into table covid_death
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
Ignore 1 rows;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/covid_vaccination.csv'
into table covid_death
FIELDS TERMINATED BY ","
ENCLOSED BY '"'
LINES TERMINATED BY "\n"
Ignore 1 rows;




