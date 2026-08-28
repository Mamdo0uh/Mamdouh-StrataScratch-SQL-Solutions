select h.nationality,count( u.unit_type) as apartment_count
FROM (
    SELECT DISTINCT host_id, nationality, age 
    FROM airbnb_hosts
) h 
JOIN airbnb_units u ON h.host_id = u.host_id
where h.age < 30 and u.unit_type ='Apartment'
group by h.nationality
order by apartment_count desc
