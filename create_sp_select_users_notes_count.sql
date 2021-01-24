create or replace function select_users_notes_count()
returns table(id integer, first_name varchar(128), last_name varchar(128), notes_count bigint) as $$
    select u.*, count(n.is_deleted) from users u
    left join notes n on u.id = n.user_id
    where n.is_deleted = false
    group by u.id;
$$ language sql;