-----------------------------------------------
CREATE TABLE user (
  id INTEGER UNIQUE NOT NULL,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  email VARCHAR(256) 
); 
-----------------------------------------------
CREATE INDEX id_index ON user (id)
-----------------------------------------------
CREATE INDEX name_index ON user (name)
-----------------------------------------------
SELECT * FROM user WHERE id = 127
-----------------------------------------------
SELECT * FROM user WHERE name = 'Ann'
-----------------------------------------------
SELECT * FROM user WHERE age  >= 21
-----------------------------------------------
ALTER TABLE user
ADD COLUMN address TEXT;