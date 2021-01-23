create or replace function insert_note(
    note_id UUID,
    note_header VARCHAR(128),
    note_body VARCHAR(1024),
    note_user_id integer
) returns void
as $$
    insert into notes(id, header, body, is_deleted, user_id)
    values(note_id, note_header, note_body, false, note_user_id);
$$ language sql;