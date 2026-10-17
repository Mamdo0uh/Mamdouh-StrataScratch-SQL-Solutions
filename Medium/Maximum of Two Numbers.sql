select  number1,number2,case when number1 > number2 then number1 else number2 end as max_number
from (select d1.number as number1 ,d2.number as number2
from deloitte_numbers d1 cross join deloitte_numbers d2
) as newtable

