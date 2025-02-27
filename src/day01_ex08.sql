select order_date, concat(name, ' age:', age) as person_information
from person_order
natural join person
order by order_date asc, person_information asc;