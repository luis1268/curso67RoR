select * from friendships;
SELECT * FROM users 

select users.first_name, users.last_name from users 
left join friendships fs on users.id=fs.user_id where fs.friend_id=4;
select users.first_name, users.last_name from users 
left join friendships fs on users.id=fs.user_id where fs.friend_id=(select id from users where first_name = 'Kermit');

select users.first_name, users.last_name from users 
left join friendships fs on users.id=fs.user_id where fs.friend_id=4;





select user_id, count(user_id) from friendships
group by user_id;
