CREATE TYPE ev_type AS ENUM ('view', 'cart', 'remove_from_cart', 'purchase');

CREATE TABLE data_2022_oct (
  event_time timestamptz,
  event_type ev_type,
  product_id integer,
  price numeric(10, 2),
  user_id bigint,
  user_session uuid
);

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

COPY data_2022_oct FROM '/home/adylewsk/Downloads/subject/customer/data_2022_oct.csv' WITH (FORMAT csv, HEADER true);
COPY data_2022_nov FROM '/home/adylewsk/Downloads/subject/customer/data_2022_nov.csv' WITH (FORMAT csv, HEADER true);
COPY data_2022_dec FROM '/home/adylewsk/Downloads/subject/customer/data_2022_dec.csv' WITH (FORMAT csv, HEADER true);
COPY data_2023_jan FROM '/home/adylewsk/Downloads/subject/customer/data_2023_jan.csv' WITH (FORMAT csv, HEADER true);
