create or replace function get_uuid() returns uuid
as $$
    select uuid_in(md5(random()::text || now()::text)::cstring);
$$ language sql;