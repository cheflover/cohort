DROP TEMPORARY TABLE IF EXISTS first_rental;
CREATE TEMPORARY TABLE first_rental
SELECT
 rental.customer_id,
 MIN(rental.rental_date) first_time
FROM customer, rental
WHERE customer.customer_id = rental.customer_id
GROUP BY 1
;

DROP TEMPORARY TABLE IF EXISTS cohort_table;
CREATE TEMPORARY TABLE cohort_table
SELECT
 LEFT(first_time, 7) Month,
 COUNT(*) num

FROM first_rental
GROUP BY 1

;