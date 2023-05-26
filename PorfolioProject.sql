/*
Covid 2020-2022 Data Exploration 
Skills used: Joins, CTE's, Windows Functions, Aggregate Functions, Creating Views
*/

Use sql_test;

-- Create view of joining covid_death and covid_vaccination tables -------------------------------------------------------------------------------
Create View covid_data As
Select * 
From covid_death cd
Join covid_vaccination cv
    using (iso_code, continent, location, date);

-- Total cases, total deaths, death percentage, total number and percentage of people get full vaccinated in the world
Select location, population, Sum(new_cases) as total_cases, Sum(new_deaths) as total_deaths, (Sum(new_deaths)/Sum(new_cases))*100 as death_percentage,
Max(people_fully_vaccinated) as total_people_fully_vaccinated, (Max(people_fully_vaccinated)/population)*100 as fully_vaccinated_percentage
From covid_data
Where location = 'World'
Group by population;

-- new cases, new deaths in every continents and countries daily from 2020 - 2022
Select continent, location, date, Sum(new_cases) as new_cases, Sum(new_deaths) as new_deaths
From covid_data
Where continent <> 'null'
Group by continent,location, date
Order by continent, location;

-- The country that has the highest death count
Select location, continent, Sum(new_deaths) as total_deaths
From covid_death
Where continent <> 'null'
Group by location, continent
Order by total_deaths DESC
Limit 1;

-- Explore the infected percentage and death percentage in each country

Select location, population, Sum(new_cases) as total_cases, (Sum(new_cases)/population)*100 as infected_percentage, 
Sum(new_deaths) as total_deaths, (Sum(new_deaths)/Sum(new_cases))*100 as death_percentage
From covid_data
Where continent <> 'null'
Group by location, population
Order by location;


-- Total vaccination break down into continents and countries by date
Select continent, location, date, Sum(new_vaccinations) as total_vaccinations
From covid_data
Where continent <> 'null'
Group by continent, location, date
Order by location,date;


