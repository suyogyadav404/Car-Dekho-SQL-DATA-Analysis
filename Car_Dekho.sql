create schema cars;
USE cars;

-- Q1. Read Data --  

SELECT * FROM car_dekho;

-- Q2. Total Cars: To the get the count of total records --

SELECT count(*) FROM car_dekho;

-- Q3. The manager asked the employeer how many cars will be available in the year 2023? --

SELECT count(*) AS Cars_Available FROM car_dekho
WHERE year = 2023;

-- Q4. How many cars are available in 2020, 2021, 2022? --

SELECT count(*) AS Cars_Available FROM car_dekho
WHERE year in (2020,2021,2022)
GROUP BY year;

-- Q5. Client asked me to print total of all cars by the year. I don't see all the details. --

SELECT year, count(*) AS Total_Cars FROM car_dekho
GROUP BY year;

-- Q6. Client asked to the car dealer that how many diesel cars was available in 2020? --

SELECT year, count(*) AS total_diesel_cars FROM car_dekho
WHERE fuel = "Diesel" AND year = 2020;

-- Q7. How many petrol cars are available in the year 2020? -- 

SELECT year, count(*) AS Petrol_cars_Available FROM car_dekho
WHERE fuel = "Petrol" AND year = 2020;

-- Q8. Manager asked employee to give the print of all type of fuel cars with respect to years. --

SELECT year, fuel, count(*) AS Cars_Available FROM car_dekho
WHERE fuel IN ("Petrol")
GROUP BY year;

SELECT year, fuel, count(*) AS Cars_Available FROM car_dekho
WHERE fuel IN ("Diesel")
GROUP BY year;

SELECT year, fuel, count(*) AS Cars_Available FROM car_dekho
WHERE fuel IN ("CNG")
GROUP BY year;

-- Q9. Which year has more than 100 cars ? --

SELECT year , count(*) AS Car_Count FROM car_dekho
GROUP BY year
HAVING count(*) >100;

-- Q10. All cars count details between 2015 and 2023.

SELECT count(*) AS Car_Count FROM car_dekho
WHERE year between 2015 AND 2023;

-- Q11.  Manager asked employee for the complete list of all cars details from 2015 to 2023. 

SELECT * FROM car_dekho
WHERE year between 2015 AND 2023;

-- Thank You --





