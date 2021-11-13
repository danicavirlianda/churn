SELECT location.city, population.population FROM population
INNER JOIN location ON location.zip_code = population.zip_code
WHERE population.population = (SELECT MAX(population) FROM population);
LIMIT 1;