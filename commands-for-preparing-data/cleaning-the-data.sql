--Clean Up the Data
Value format update for the Cheese Production Table
UPDATE cheese_production SET value = REPLACE(value, ',', '');


Value format update for the Honey Production Table
UPDATE honey_production SET value = REPLACE(value, ',', '');


Value format update for the Milk Production Table
UPDATE milk_production SET value = REPLACE(value, ',', '');


Value format update for the Coffee Production Table
UPDATE coffee_production SET value = REPLACE(value, ',', '');


Value format update for the Egg Production Table
UPDATE egg_production SET value = REPLACE(value, ',', '');


Value format update for the Yogurt Production Table
UPDATE yogurt_production SET value = REPLACE(value, ',', '');
