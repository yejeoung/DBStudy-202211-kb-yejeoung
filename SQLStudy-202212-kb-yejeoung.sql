/*
C(reate)R(ead)U(pdate)D(elete)

INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D

데이터베이스는 대소문자 구분을 하지 않는다.
카멜표기법을 사용하지 않고, 스네이크 표기법을 사용한다.
큰따옴표를 사용하지 않고 작은따옴표를 사용한다.
*/

INSERT INTO product_mst
/*(id, product_name, product_price) 생략가능*/
/*데이터에 순서대로 들어가있거나, values에 값이 빠짐 없이 들어갔을 경우 생략 가능*/

VALUES
(0, '스타벅스 블랙 머그컵', 15000),
(0, '스타벅스 화이트 머그컵', 20000),
(0, '스타벅스 블루 머그컵', 25000);

SELECT 
	id,
 	product_name, 
 	product_price 
FROM
	product_mst;
/* product_mst 안에서 선택을 하겠다.
SELECT 순서 변경 가능
SELECT는 문장이 거의 항상 길어지기 때문에 정렬을 아래로 해주는 것이 좋다.*/

INSERT INTO student_mst

VALUES
(0, '임지현', 1, 80),
(0, '신경수', 2, 90),
(0, '고희주', 3, 75),
(0, '문승주', 1, 85),
(0, '장건녕', 2, 95),
(0, '박수현', 3, 90),
(0, '황석민', 1, 80),
(0, '박준현', 2, 85),
(0, '이승아', 3, 90),
(0, '김수현', 1, 75);

SELECT
	id,
	`name`,
	/* name은기본적으로 제공되어지는 대문자로 자동변환된 키워드가
	있는 경우 컬럼 또는 값을 가라라고 명령해주기 위해
	백쿼더 ` 를 사용해준다.
	SELECT의 마지막에는 절대 쉼표를 찍지 않는다.*/
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 and score > 80
	OR/*and 안에 or가 들어갈 경우 괄호를 묶어서 표기를 해준다.*/
	(student_year = 3 and score = 75);
	/*student_year 안에 1인 것들만 뽑아낸다.
	= -> 대입이 아닌 equls
	UPDATE에서는 대입으로 쓰인다.
	=는 어디에 쓰이냐에 따라 쓰임이 달라진다.*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` LIKE '%수%' AND `name` NOT LIKE '%수';
	/*not student_year = 3;
	/* not, !=  => 아닌 것
	/*`name` LIKE '%수%';
	/*LIKE => ~처럼
	%수 => 맨뒤에 '수'로 끝나는 것을 찾아라.
	%수% => 앞 뒤로 '수'가 붙는 것을 찾아라.*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year NOT IN(1, 2);
	/* IN() 포함이 되어 있는 경우
	NOT IN() 포함되어있지 않은 경우
	
	연산자 기호를 쓸 경우 NOT이 앞으로,
	IN, LIKE, BETWEEN과 같은 키워드를 쓸 경우 NOT을 앞에 쓴다. ???????????
	*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	score NOT BETWEEN 80 AND 90; 
	/*80과 90 사이에 있는 값들을 전부 뽑아낸다.
	BETWEEN => 무엇과 무엇의 사이*/
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS NOT NULL;
	/*다음에 쿼리가 있을 경우 꼭 세미콜론을 찍어주어야한다.
	다음에 쿼리가 없을 경우 굳이 찍지 않아도 상관이 없다.*/
	
	