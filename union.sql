select
	name,
    email,
    0 as score
from
	user_dtl
    
union all
    
select
	name,
    null as email,
    score
from
	score_mst
where
	score > 80;
    
    