create materialized view log on emp with primary key ;

--drop materialized view log on emp;

create materialized view mv_emp
nologging
cache
build immediate
refresh on demand--fast on commit
as
select *
from emp
where
deptno=30;

select *
from MLOG$_EMP;


