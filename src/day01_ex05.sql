select person.id as person_id,
       person.name as person_name,
       age, gender,
       address,
       pizzeria.id as pizzeria_id,
       pizzeria.name as pizzeria_name,
       rating
from person cross join pizzeria
order by person_id;