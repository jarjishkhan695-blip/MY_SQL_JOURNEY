-- Numeric functions

USE sql_journey;

SELECT
    course_name,
    fee,
    ROUND(fee, 0) AS rounded_fee,
    CEIL(fee) AS ceiling_fee,
    FLOOR(fee) AS floor_fee
FROM courses;

SELECT ABS(-25) AS absolute_value;
