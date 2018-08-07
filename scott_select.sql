select *
from emp;


select *
from emp
where deptno = 30;

insert into emp values (7910, 'Rudy','IT',7698,trunc(sysdate),3000,null,30);

insert into emp values (7911, 'Michael','IT',7698,trunc(sysdate),3500,null,30);

insert into emp values (7912, 'Brian','Marketing',7698,trunc(sysdate),3500,null,30);

update emp set sal = 3400 where empno = 7912;

select * from mv_emp
where empno = 7912;

select *
from MLOG$_EMP;

select *
from user_triggers;




