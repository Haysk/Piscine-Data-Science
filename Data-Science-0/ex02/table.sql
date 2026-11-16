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
