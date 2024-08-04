use ig_clone;
# A) Marketing Analysis:
# 1. Loyal User Reward: 
select username from users order by created_at limit 5;
#2. Inactive User Engagement:
select username from users where id not in (select user_id from photos);
#3. Contest Winner Declaration:
select username from users where id = (select user_id from photos where id = (select photo_id from likes group by photo_id order by count(photo_id) desc limit 1));
#4. Hashtag Research:
select tag_name from tags inner join photo_tags on tags.id = photo_tags.tag_id group by tag_name order by count(*) desc limit 5;
#5 Ad Campaign Launch:
select dayofweek(created_at) as day_of_week,count(*) from users group by day_of_week order by count(*) desc ;
# B) Investor Metrics:
# 1. User Engagement:
select avg(post_count) as avg_post_count from (select count(*) as post_count from photos group by user_id) as user_post;
select ((select count(*) from photos) /(select count(*) from users)) as avg_post;
# 2. Bots & Fake Accounts:
select username from users inner join likes on users.id = likes.user_id group by username having count(*) = (select count(*) from photos);