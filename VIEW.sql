/*
	뷰(VIEW)
    자주 조회하는 select문을 저장하는 방법
*/

create view course_view
as
#select문의 결과가 course_view의 결과로 들어간다.
select
# id 컬럼이 겹치는 것이 많이 때문에 잡아주어야한다.
	cm.id as course_id,
    cm.subject_id,
    sjm.`name` as subject_name,
    cm.student_id,
    stm.`name` as student_name,
    status_id
from
	course_mst cm
    left outer join subject_mst sjm on(sjm.id = cm.subject_id)
    left outer join student_mst stm on(stm.id = cm.student_id);
    
select
	*board_mst
from
	course_view
where
	course_id > 5;