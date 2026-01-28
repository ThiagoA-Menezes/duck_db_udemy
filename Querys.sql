
select a.IBAN as iban, 
    count(t.dt) as transactions, 
    sum(t.amount) as total
from accounts a 
left join transactions t on t.account_id = a.id

group by a.iban
order by total desc;


select
    c.visited_on as visited_on, 
    sum(c.amount) as total_amount, 
    avg(c.amount) as avg_amount

from customers as c
group by visited_on;

max 2019-05-30
min 2019-05-01


select
    c.visited_on as visited_on, 
    sum(c.amount) as total_amount, 
    AVG(SUM(amount)) over (
            order by visited_on
            rows between 6 PRECEDING and CURRENT ROW
    ) as average_amount

from customers as c
group by visited_on;