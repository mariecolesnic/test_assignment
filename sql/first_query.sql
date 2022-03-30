-----------------------------------------------
CREATE TABLE purchase (
  purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER UNIQUE NOT NULL,
  item_id INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  date_time_of_purchase TIMESTAMP NOT NULL
); 
-----------------------------------------------
CREATE INDEX user_id_index ON purchase (user_id)
-----------------------------------------------
CREATE INDEX date_time_of_purchase_index ON purchase (date_time_of_purchase)
-----------------------------------------------
SELECT * FROM purchase WHERE user_id = 127
-----------------------------------------------
SELECT * FROM purchase WHERE date_time_of_purchase BETWEEN '2022-01-30 15:00' AND '2022-02-28 15:00'  
-----------------------------------------------
SELECT * FROM purchase WHERE item_id = 246235231
-----------------------------------------------
ALTER TABLE purchase
ADD COLUMN cost INTEGER;