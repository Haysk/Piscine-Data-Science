DROP TYPE IF EXISTS ev_type CASCADE;
CREATE TYPE ev_type AS ENUM ('view', 'cart', 'remove_from_cart', 'purchase');

DROP TABLE IF EXISTS data_2022_oct;
CREATE TABLE data_2022_oct (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

COPY data_2022_oct FROM '/subject/customer/data_2022_oct.csv' WITH (FORMAT csv, HEADER true);
