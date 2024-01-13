create schema cars;
use cars;

       -- Read Cars data --

select * from car_dekho

       -- total cars: to get a count of total records --

select count(*) from car_dekho;

       -- The manager asked the employee How many cars will be available in 2023? --
       
       select count(*) from car_dekho where year=2023;
       
       -- the manager asked the employee how many cars is availble in 2020,2021,2022? --
       
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

      -- Client asked me to print the total cars by year --

select year, count(*) from car_dekho group by year;

	  -- client asked to car dealer agent how many diesel car will be there 2020?
      
select count(*) from car_dekho where year=2020 and fuel = "diesel";

      -- Client requested a car dealer agent how many petrol cars will there be in 2020?
      
select count(*) from car_dekho where year=2020 and fuel = "petrol";

	  -- The manager told the employee to give a print All the fuel cars --

select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

      -- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
      
select year, count(*) from car_dekho group by year having count(*)>100;

	  -- The manager said to the employeee All cars count details between 2015 and 2023, we need a complete list..
      
select count(*) from car_dekho where year between 2015 and 2023;

      -- The manager said to the employee All cars detail between 2015 to 2023 we need complete list --
      
select * from car_dekho where year between 2015 and 2023;













       
       
       
