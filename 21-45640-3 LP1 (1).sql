1. select * from emp;

2. SELECT * FROM dept;

3. SELECT * FROM salgrade;

4. SELECT ename
 FROM emp ;

5. SELECT losal
 FROM salgrade ;

6. SELECT ename,sal
 FROM emp ;

7. SELECT ename,deptno
 FROM emp ;

8. SELECT sal, comm, (sal+1200)-(sal*34)
 FROM emp ;

9. SELECT ename AS "Employee name"
 FROM emp ;

10. SELECT DISTINCT deptno
 FROM emp ;

11. SELECT dname || loc
 FROM dept;

12. SELECT ename || 'gets paid' || sal
 FROM emp;

13. SELECT ename,salary
 FROM emp
where salary>2850;

14. SELECT ename,deptno
 FROM emp
where empno=7566;

15. SELECT ename,job,hiredate
   FROM emp
  WHERE hiredate between '20-February-81' AND '01-May-81'
 ORDER BY hiredate asc;
 
16. SELECT ename,deptno
 FROM emp
WHERE deptno between 10 and 30
ORDER by ename;

17. SELECT ename,hiredate
 FROM emp
WHERE hiredate between '1-January-1982' and '31-December-1982';

18. SELECT ename,job
 FROM emp
WHERE job not in 'MANAGER';

19. SELECT ename,sal,comm
 FROM emp
   order by sal desc;

20 SELECT ename
 FROM emp
   where ename like '__A%';

21. Select ename as "name"
from emp
where ename like '%LL%';

22. select losal,hisal
from salgrade
where losal>1100 and losal<1500;
