select
  case 
  	when patient_id % 2 = 0 then 
      'Yes'
  else
      'No'
  end as has_insurance,
  sum(case when patient_id % 2 = 0 then
     12
  else 
      70

  end) as cost_after_insurance  
from 
	admissions
group by has_insurance;