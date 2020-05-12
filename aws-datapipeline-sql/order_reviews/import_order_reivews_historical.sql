select 
review_id,
order_id,
review_score,
review_comment_title,
review_comment_message,
case when review_creation_date like '%0000%' then NULL else review_creation_date end review_creation_date,
case when review_answer_timestamp like '%0000%' then NULL else review_answer_timestamp end review_answer_timestamp
from ecommerce_db.order_reviews 
where 
date(review_creation_date)<='2018-09-31'