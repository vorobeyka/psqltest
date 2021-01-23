CREATE OR REPLACE FUNCTION insert_user(user_first_name VARCHAR(128), user_last_name VARCHAR(128))
RETURNS VOID AS $$
    INSERT INTO users(first_name, last_name)
    VALUES(user_first_name, user_last_name);
$$ LANGUAGE SQL;
