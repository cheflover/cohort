DROP TEMPORARY TABLE IF EXISTS first_rental
CREATE TEMPORARY TABLE first_rental
SELECT
 rental.customer_id,
 MIN(rental.rental_date) first_time
FROM customer, rental
WHERE customer.customer_id = rental.customer_id
GROUP BY 1
;