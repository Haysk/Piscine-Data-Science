CREATE TYPE ev_type AS ENUM ('view', 'cart', 'remove_from_cart', 'purchase');

CREATE TABLE data_2022_oct (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

copy data_2022_oct FROM 'customer/data_2022_oct.csv' WITH (FORMAT csv, HEADER true)

CREATE TABLE data_2022_nov (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

CREATE TABLE data_2022_dec (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

CREATE TABLE data_2023_jan (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

-- Load the CSV files (paths are relative to the directory psql is run from)
\copy data_2022_oct FROM 'customer/data_2022_oct.csv' WITH (FORMAT csv, HEADER true)
\copy data_2022_nov FROM 'customer/data_2022_nov.csv' WITH (FORMAT csv, HEADER true)
\copy data_2022_dec FROM 'customer/data_2022_dec.csv' WITH (FORMAT csv, HEADER true)
\copy data_2023_jan FROM 'customer/data_2023_jan.csv' WITH (FORMAT csv, HEADER true)
