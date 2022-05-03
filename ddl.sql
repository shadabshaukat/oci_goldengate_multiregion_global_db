
create table customers (
  customer_id     integer ,
  email_address   varchar2(255 char) not null,
  full_name       varchar2(255 char) not null)
;

create table stores (
  store_id          integer ,
  store_name        varchar2(255 char) not null,
  web_address       varchar2(100 char),
  physical_address  varchar2(512 char),
  latitude          number,
  longitude         number,
  logo_mime_type    varchar2(512 char),
  logo_filename     varchar2(512 char),
  logo_charset      varchar2(512 char),
  logo_last_updated date)
;

create table products (
  product_id         integer ,
  product_name       varchar2(255 char) not null,
  unit_price         number(10,2),
  image_mime_type    varchar2(512 char),
  image_filename     varchar2(512 char),
  image_charset      varchar2(512 char),
  image_last_updated date)
;

create table orders (
  order_id        integer ,
  order_datetime  timestamp not null,
  customer_id     integer not null,
  order_status    varchar2(10 char) not null,
  store_id        integer not null)
;

create table shipments (
  shipment_id          integer ,
  store_id             integer not null,
  customer_id          integer not null,
  delivery_address     varchar2(512 char) not null,
  shipment_status      varchar2(100 char) not null)
;

create table order_items (
  order_id        integer not null,
  line_item_id    integer not null,
  product_id      integer not null,
  unit_price      number(10,2) not null,
  quantity        integer not null,
  shipment_id     integer)
;

create table inventory (
  inventory_id          integer,
  store_id              integer not null,
  product_id            integer not null,
  product_inventory     integer not null)
;

create table customers_seq (
  customer_id     NUMBER PRIMARY KEY ,
  email_address   varchar2(255 char) not null,
  full_name       varchar2(255 char) not null)
;


create index customers_name_i on customers ( full_name );
create index orders_customer_id_i on orders ( customer_id );
create index orders_store_id_i on orders ( store_id );
create index shipments_store_id_i on shipments ( store_id );
create index shipments_customer_id_i on shipments ( customer_id );
create index order_items_shipment_id_i on order_items ( shipment_id );
create index inventory_product_id_i on inventory ( product_id );

-- Sydney Sequence --
create sequence member_seq_syd start with 100 increment by 4 cache 100;

-- Singapore Sequence --
create sequence member_seq_sgp start with 101 increment by 4 cache 100;

-- Frankfurt Sequence --
create sequence member_seq_fra start with 102 increment by 4 cache 100;

-- Ashburn Sequence --
create sequence member_seq_iad start with 103 increment by 4 cache 100;




 -- Delete Data -- 
 
--   truncate table order_items;

--   truncate table inventory;

--   delete shipments cascade;

--   delete orders cascade;

--   delete stores cascade;

--   delete customers cascade;

--   delete products cascade;

--   delete customers_seq cascade;
   
--   drop table customers cascade constraints;
   
--   drop table orders cascade constraints;
   
--   drop table order_items; 
  
--   drop table products; 
   
--   drop table shipments; 
   
--   drop table stores; 

--   drop table customers_seq; 

--   drop table inventory; 

--   drop table CKPT;

--   drop table CKPt_LOX;
  