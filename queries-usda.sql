--Finding the total milk production for the year 2023 (expected result:91812000000)
SELECT sum(VALUE) as total_milk_produced
from milk_production
where year=2023;

--calculating total cofee production for the year 2015(expected result:6600000)
SELECT sum(Value) as total_coffee_produced
FROM coffee_production
WHERE year=2015;

--Finding the average honey production for the year 2022 (expected result:3133275.0)
SELECT avg(Value) as average_honey_produced
FROM honey_production
where year=2022;

--Geting the state names with their corresponding ANSI codes from the state_lookup table.
--bonus What number is Iowa? (expected reponse:19)
SELECT *
FROM state_lookup;

--Finding the highest yogurt production value for the year 2022(expected result:793256000)
SELECT max(Value) as highest_yogurt_production_value 
FROM yogurt_production
WHERE Year=2022

-- States with both honey and milk production in 2022 
--Bonus question :Did State_ANSI "35" produce both honey and milk in 2022? (the correct answer:no)
SELECT *
FROM state_lookup s
WHERE s.State_ANSI IN (
    SELECT h.State_ANSI
    FROM honey_production h
    WHERE h.Year = 2022 AND h.Value > 0
      AND h.State_ANSI IN (
          SELECT m.State_ANSI
          FROM milk_production m
          WHERE m.Year = 2022 AND m.Value > 0));
 
-- Finding the total yogurt production for states that also produced cheese in 2022 (expected result=1,171,095,000)
SELECT 
    SUM(y.Value) AS total_yogurt_production,
    s.State AS state_that_produced_yogurt_and_cheese
FROM yogurt_production y
JOIN state_lookup s ON s.State_ANSI = y.State_ANSI
WHERE y.Value > 0 
  AND y.Year = 2022 
  AND y.State_ANSI IN (
      SELECT c.State_ANSI
      FROM cheese_production c
      WHERE c.Year = 2022 AND c.Value > 0 )
GROUP BY s.State_ANSI;