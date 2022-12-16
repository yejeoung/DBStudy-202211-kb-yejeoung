/*
	TCL
    1. COMMIT		- 트랜잭션 확정
    2. ROLLBACK		- 트랜잭션 취소
    3. SAVEPOINT	- 중간지점 저장
*/

set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transaction_study;

create table `transaction_study`.`emp_mst` (
	`id` INT not null auto_increment,
    `name` varchar(15) default null,
    primary key(`id`) #primary키는 따로 준다.
);

select @@autocommit; #확인차

start transaction; # 트랜잭션 시작지점
savepoint p1; # 트랜잭션 마무리 시점
insert into emp_mst
values
	(0, '일이일'),
	(0, '일이이'),
	(0, '일이삼'),
	(0, '일이사');
    
select * from emp_mst;

select * from emp_mst;

savepoint p2;

update emp_mst
set
	`name` = '일이오'
where
	id = 4;
    
rollback to p2;
select * from emp_mst;
rollback to p1;
select * from emp_mst;

commit; # 전체 값 저장
# commit을 하고 나면 savepoint를 할 수 없다.
# commit을 하는 순간 다 내보내지기 때문이다.