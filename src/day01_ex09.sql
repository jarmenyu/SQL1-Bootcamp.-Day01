select id, name
from pizzeria
where id not in (
    select pizzeria_id
    from person_visits
);

select id, name
from pizzeria as p
where not exists (
    select 1
    from person_visits as pv 
    where pv.pizzeria_id = p.id
);