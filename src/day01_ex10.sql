select person.name as person_name,
        menu.pizza_name as pizza_name,
        pizzeria.name as pizzeria_name
from person_order as p
join person on p.person_id = person.id
join menu on p.menu_id = menu.id
join pizzeria on menu.pizzeria_id = pizzeria.id
order by person_name asc,
        pizzeria_name asc,
        pizza_name asc;