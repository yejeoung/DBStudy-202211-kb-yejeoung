INSERT INTO
	user_mst
VALUES
	(0, 'aaa', '1234', '김준일', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'bbb', '1234', '김준일', 'bbb@gmail.com', NOW(), NOW()),
	(0, 'ccc', '1234', '김준일', 'ccc@gmail.com', NOW(), NOW()),
	(0, 'ddd', '1234', '김준일', 'ddd@gmail.com', NOW(), NOW());

DELETE
FROM
	user_mst
WHERE
	id = 1;
	/*id 3번째에 있는 것을 삭제해라.*/