select order_date as action_date, (select name from person where person.id = person_order.person_id) as person_name
from person_order
where (person_id, order_date) in (
    select person_id, visit_date
    from person_visits
)
UNION
SELECT visit_date AS action_date, (select name from person where person.id = person_visits.person_id) as person_name
FROM person_visits
WHERE (person_id, visit_date) IN (
    SELECT person_id, order_date
    FROM person_order
)
order by action_date asc, person_name desc;