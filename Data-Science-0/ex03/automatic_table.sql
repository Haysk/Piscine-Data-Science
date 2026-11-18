DROP TYPE IF EXISTS ev_type CASCADE;
CREATE TYPE ev_type AS ENUM ('view', 'cart', 'remove_from_cart', 'purchase');

DO $$
  DECLARE
    f text;
    table_name text;
  BEGIN
    FOR f IN SELECT name FROM pg_ls_dir('/subject/customer') as name WHERE name LIKE '%.csv' LOOP
      table_name := regexp_replace(f, '\.csv$', '');
      EXECUTE format('DROP TABLE IF EXISTS %I;', table_name);
      EXECUTE format('CREATE TABLE %I (
        event_time timestamptz,
        event_type ev_type,
        product_id integer,
        price numeric(10, 2),
        user_id bigint,
        user_session uuid
      );', table_name);
      EXECUTE format('COPY %I FROM %L WITH (FORMAT csv, HEADER true);', table_name, '/subject/customer/' || f);
    END LOOP;
END $$;
