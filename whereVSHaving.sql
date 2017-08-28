select department_id MIN(salary)
from employees
where salary >5000
group by department_id



select department_id, MIN(salary)
from employees
group by department_id
having min (salary)>5000