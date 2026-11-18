DROP TABLE IF EXISTS items;
CREATE TABLE items (
  product_id integer,
  category_id bigint,
  category_code text,
  brand text
);

COPY items FROM '/subject/item/item.csv' WITH (FORMAT csv, HEADER true);
