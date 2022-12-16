/*
	계정생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; -> 내부 IP 접속
    CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
		> create user 'yejeoung'@localhost identified by 'root';
        > grant all privileges on *.* to yejeoung@localhost;
        > flush privileges;
    
	DCL(권한 관련)
    1. GRANT(데이터베이스, 테이블 사용자 권한 부여)
		- GRANT 권한 TO 사용자 계정
        - GRANT 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정 (많이 사용)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@localhost -> 내부IP(현재 pc에서만 접근 가능)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@% -> 외부IP(다른 pc에서도 접근 가능)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@200.100.% -> 외부IP(해당 ip를 포함하고 있는 pc에서만 접근 가능)
    2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		- REVOKE 권한 TO 사용자 계정
        - REVOKE 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
			> REVOKE insert, update, create ON *.*(모든 데이터베이스의 모든 테이블) TO root@localhost;(insert, update, create 권한 해제)
            > REVOKE ALL ON *.* TO root@localhost;(모든 권한 해제)
*/

select @@autocommit;
set autocommit = 0;