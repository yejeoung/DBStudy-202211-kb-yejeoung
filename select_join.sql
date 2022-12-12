SELECT
	om.id AS '주문번호',
	od.proder_id AS '제품번호',
	pm.product_name,
	pm.product_price,
	od.order_stock,
	om.user_id,
	um.name
FROM
	order_mst AS om
	LEFT OUTER JOIN order_dtl AS od ON(od.order_id = om.id)
	LEFT OUTER JOIN product_mst pm ON(pm.id = od.proder_id)
	LEFT OUTER JOIN user_mst um ON(om.user_id = um.id)
ORDER BY
	od.id;
	
/*------------------------------------------------------------*/

SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni. notice id = nm.id);

/*-------------------12/12-----------------------*/

SELECT
	*
FROM
	user_mst
	LEFT OUTER JOIN user_dtl ON (user_mst.id = user_dtl.id);
	/*두 개의 키값이 일치하는 것만 출력*/
	
SELECT
	*
FROM
	user_mst AS um;
	LEFT OUTER JOIN user_dtl AS ud ON (ud.id = um.id);
	/*AS um = um이라는 별명을 만들어줌
	앞에 AS(알리아스)를 생략해도 별명을 만든다고 인식을 함*/
	
SELECT
	*
FROM
	user_dtl;
	
/*--------------------------------------------------------*/	
	
SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	LEFT OUTER JOIN user_mst um ON (um.id = om.user_id);
	/*
	order_dtl의 조건을 order_mst에 붙여라
	user_mset의 조건을 order_mst에 붙여라
	
	대상이 앞에 오고 값이 뒤에 온다.*/

SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN order_mst om ON (om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id);
	
/*--------------------------------------------------------*/


	