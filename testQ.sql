SELECT
  LEFT(r.rental_date, 7),
  COUNT(*),
  COUNT(DISTINCT r.customer_id) "영화갯수",
  COUNT(*) / COUNT(DISTINCT r.customer_id) "AVG rental"
FROM rental r

GROUP BY 1
;
