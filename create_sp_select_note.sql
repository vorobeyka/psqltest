create or replace function select_note(note_id uuid) returns table(
    id uuid,
    header varchar(128),
    body varchar(1024),
    is_deleted boolean,
    modified_at timestamp with time zone,
    user_id integer,
    first_name varchar(128),
    last_name varchar(128)
) as $$
    select n.*, u.first_name, u.last_name from notes n
    left join users u on u.id = n.user_id
    where n.id = note_id;
$$ language sql;