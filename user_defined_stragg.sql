select deptno, stragg( parms(ename) ) sa
from scott.emp
group by deptno
;

select deptno, stragg( parms(ename,'|') ) sa
from scott.emp
group by deptno;
