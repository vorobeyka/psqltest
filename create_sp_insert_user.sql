CREATE PROCEDURE insert_user(
    first_name VARCHAR(128),
    last_name VARCHAR(128)
)
AS
INSERT INTO users VALUES(first_name, last_name)