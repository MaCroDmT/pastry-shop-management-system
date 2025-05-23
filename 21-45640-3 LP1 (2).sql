1. Select sysdate from dual;

2. select lower(ename) from emp;

3.select concat(ename,deptno) from emp;

4. select sal,ename,ROUND(sal/300) "SALDIVIDEBY300"
from  emp
where ename ='FORD' or ename='KING';

5. select sal,ename,sal/comm "Salary divided by commission"
from  emp
where job ='SALESMAN';

6.select empno,hiredate,MONTHS_BETWEEN ('11-NOV-22','01-MAY-81')
from emp
where ename='BLAKE';

7. select TO_CHAR(ADD_MONTHS('01-JAN-18', 11), 'DD-MON-YYYY') "date"
FROM dual;

8. select empno,hiredate,ROUND(SYSDATE-hiredate)/30 MONTHS
from emp;

9. select empno,hiredate,TRUNC(SYSDATE-hiredate)/30 MONTHS
from emp;

10. select TO_CHAR(sal,'00') sal
from emp
where ename like 'BLAKE';

11. select TO_CHAR(hiredate , 'DD-MONTH-YEAR') "HIREDATE"
FROM emp; 

12. Select current_timestamp
from dual;  

13. select ename, nvl (to_char (comm), 'No Commission Yet') comm 
from emp;

14. select NULLIF(ename,job) 
from emp;

15. select NVL(comm,'not null')
from emp;

16. select job, sal,
DECODE(job, 'SALESMAN',  SAL+2000,'MANAGER',   SAL+3000,'PRESIDENT', SAL+4000,SAL) UPDATEDSALARY
from   emp;

17. select avg(sal) AVG,max(sal) MAX,min(sal) MIN
from emp;

18. select deptno,avg(sal) AVG,max(sal) MAX,min(sal) MIN
from emp
group by deptno;

19. select job,avg(sal) AVG,max(sal) MAX,min(sal) MIN
from emp
group by job;

20. select deptno, min(sal)
from emp
where sal>800
group by deptno;

21. select count(job)
from emp
where job='SALESMAN';

22. select job,sum(sal)
from emp
group by job;

23. select deptno,sum(sal)
from emp
group by deptno;

24. select sum(sal)
from emp
group by deptno,job
having sum(sal)>5000;

25. select count(deptno)
from emp
where deptno=20;






