SELECT pro.province_name
FROM patients pat 
	join province_names pro on pat.province_id = pro.province_id
GROUP BY pro.province_name
HAVING 
	COUNT( case when gender = 'M' then 1 end) > count( case when gender = 'F' Then 1 end);