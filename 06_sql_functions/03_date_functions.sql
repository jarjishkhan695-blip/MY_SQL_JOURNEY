-- Date functions

USE sql_journey;

SELECT CURRENT_DATE() AS today;
SELECT CURRENT_TIME() AS current_time_value;
SELECT NOW() AS current_datetime;

-- Example date calculations
SELECT
    DATEDIFF('2026-12-31', CURRENT_DATE()) AS days_until_year_end;
