create or replace function select_user_notes(integer)
returns table(
    id UUID,
    header varchar(128),
    body varchar(1024),
    is_deleted boolean,
    modified_at timestamp with time zone,
    user_id INTEGER
) as $$
    select * from notes
    where user_id = $1 and is_deleted = false;
$$ language sql;