Subquery:
1.Select ename,sal From emp Where sal>(Select sal From emp Where ename='SMITH');
2.Select ename,job From emp Where job=(Select job From emp Where ename='JONES');
3.Select ename,sal From emp Where sal=(Select sal From emp Where ename='MARTIN');
4.Select ename,hiredate From emp Where hiredate>(Select hiredate From emp Where ename='KING');
5.Select ename,job,deptno From emp Where deptno in(Select deptno From dept Where job='CLERK');


Joining:
1.Select emp.ename,dept.deptno,dept.Loc from emp,dept Where emp.deptno=dept.deptno AND dept.loc='DALLAS';
2.Select emp.ename,emp.deptno,dept.dname From emp,dept Where emp.deptno=dept.deptno ;
3.Select emp.ename,emp.deptno,dept.dname From emp,dept Where emp.deptno=dept.deptno AND sal>3000;
4.Select worker.ename,worker.hiredate,manager.hiredate ,worker.deptno From emp worker,emp manager Where manager.empno=worker.mgr AND worker.hiredate<manager.hiredate;
5.Select emp.ename,emp.mgr From emp Where emp.empno=emp.mgr AND emp.mgr='NO MANAGER';
6.
7.Select emp.ename,dept.dname,dept.deptno from emp,dept Where emp.deptno(+)=dept.deptno ;


Subquery:
1.Select ename,dname,deptno From emp,dept Where deptno in(Select deptno From dept Where dname='RESEARCH');
Joining:
1.Select emp.ename,dept.deptno,dept.dname From emp,dept where emp.deptno=dept.deptno AND dept.dname='RESEARCH';
