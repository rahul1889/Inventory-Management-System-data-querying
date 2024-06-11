CREATE TABLE IF NOT EXISTS Address  (
  add_id int PRIMARY KEY NOT NULL,
  delivery_address1 varchar(200) NOT NULL,
  delivery_address2 varchar(200) NULL DEFAULT NULL,
  delivery_city varchar(50) NOT NULL,
  delivery_zipcode varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers  (
  cust_id int PRIMARY KEY NOT NULL,
  cust_firstname varchar(50) NOT NULL,
  cust_lastname varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS ingredient  (
  ing_id varchar(10) PRIMARY KEY NOT NULL,
  ing_name varchar(200) NOT NULL,
  ing_weight int NOT NULL,
  ing_meas varchar(20) NOT NULL,
  ing_price decimal(5, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS inventory (
  inv_id int PRIMARY KEY NOT NULL,
  item_id varchar(10) NOT NULL,
  quantity int NOT NULL
) ;

CREATE TABLE IF NOT EXISTS item  (
  item_id varchar(10) PRIMARY KEY NOT NULL,
  sku varchar(20) NOT NULL,
  item_name varchar(100) NOT NULL,
  item_cat varchar(100) NOT NULL,
  item_size varchar(10) NOT NULL,
  item_price decimal(10, 2) NOT NULL
);
	
CREATE TABLE IF NOT EXISTS orders  (
  row_id int PRIMARY KEY NOT NULL,
  order_id varchar(10) NOT NULL,
  created_at timestamp NOT NULL,
  item_id varchar(10) NOT NULL,
  quantity int NOT NULL,
  cust_id int NOT NULL,
  delivery smallint NOT NULL,
  add_id int NOT NULL
);

CREATE TABLE IF NOT EXISTS recipe (
  row_id int PRIMARY KEY NOT NULL,
  recipe_id varchar(20) NOT NULL,
  ing_id varchar(10) NOT NULL,
  quantity int NOT NULL
);

CREATE TABLE IF NOT EXISTS rota  (
  row_id int PRIMARY KEY NOT NULL,
  rota_id varchar(20) NOT NULL,
  date date NOT NULL,
  shift_id varchar(20) NOT NULL,
  staff_id varchar(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS shift  (
  shift_id varchar(20) PRIMARY KEY NOT NULL,
  day_of_week varchar(20) NOT NULL,
  start_time time NOT NULL,
  end_time time NOT NULL
);


CREATE TABLE IF NOT EXISTS staff  (
  staff_id varchar(20) PRIMARY KEY NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  Designation varchar(100) NOT NULL,
  hourly_rate decimal(5, 2) NOT NULL
) 