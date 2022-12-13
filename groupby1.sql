SELECT
	SUM(score) AS `총합`,
	AVG(score) AS `평균`
	/*
	sum => 총 합계를 구하는 것
	avg => 총 평균을 구하는 것
	*/
FROM
	score_mst
GROUP BY # 컬럼들을 묶어서 select 해준다.
	course_id
HAVING
	`총합` > 100;
/*
from에 대한 group by기준으로  묶고
select에 대한 조건 having을 돌린 후 출력
 */
 
 /*--------------------------12/13------------------------------*/
 
SELECT
 	product_name,
 	COUNT(order_id), # order_id의 개수를 세라.
 	# 행(product_name)의 개수가 몇 개인지 찾아주는 기능
 	SUM(stock), # stock의 합을 구해라.
	MIN(stock), # stock의 최솟값을 구해라.
	MAX(stock), # stock의 최댓값을 구해라.
	SUM(stock) / COUNT(1), # stock을 합산해서 stock의 개수 7만큼 나누어라. =  평균
	AVG(stock) # stock의 평균을 구해라.
FROM
	order_mst
GROUP BY
	product_name;
# 컬럼의 같은 값들을 묶어서 출력하고 order_id의 개수를 세라

#FROM -> GROUP BY -> SELECT

/*-------------------------------------------------------*/

SELECT
	product_name,
	SUM(price * stock) AS total_price
	# 상품마다의 총합을 구해라.
FROM
	order_mst
GROUP BY
	product_name;
	
/*-------------------------------------------------------*/
	
SELECT
	*,
	price * stock AS total_price
FROM
	order_mst;

/*-------------------------------------------------------*/

# MAX가 100 이상인 것을 구해라.

SELECT
 	product_name,
 	COUNT(order_id) AS order_count,
 	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	max_stock > 49
ORDER BY
	order_count desc,
	stock_sum DESC
LIMIT 0, 2;

/*-------------------------------------------------------*/

SELECT
	*
FROM
	order_mst
LIMIT 3, 3;
	subquery_study