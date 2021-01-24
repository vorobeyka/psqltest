create or replace function update_note_mark_deleted(note_id uuid) returns void as $$
    update notes
    set is_deleted = true, modified_at=CURRENT_TIMESTAMP
    where id = note_id;
$$ language sql;