INSERT INTO
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2),
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1),
	(0, '제목6', '게시글 내용6', 0, 1),
	(0, '제목4', '게시글 내용4', 0, 2),
	(0, '제목5', '게시글 내용5', 0, 2),
	(0, '제목6', '게시글 내용6', 0, 2);
	
# 각각의 글쓴이 마다 작성한 게시글 개수 

/*서브 쿼리문*/

# 컬럼들의 값이 전부다 출력이 되면서 총 게시글이 몇 개인지 보이게 출력
SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id)
	# 전체를 기준으로 count 해주기 때문에 group by를 굳이 해주지 않아도 된다.
	/* 
	같은 컬럼안에 작성자가 다르기 때문에
	그것을 구분 지어주기 위해 bm과 bm2로 만들어준다.
	*/
FROM
	board_mst bm;
	
SELECT
	COUNT(1)
FROM
	board_mst bm2
WHERE
	bm2.writer_id = 1;
	
/*서브 쿼리문*/	

SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id) AS writer_count
FROM
	board_mst bm;

SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count
	FROM
		board_mst
	GROUP BY
		writer_id) wc ON (wc.writer_id = bm.writer_id);

SET profiling = 1;
SHOW PROFILES;
