PGDMP     5    6                {            Proyecto1_DA3    15.3    15.3 %    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    24734    Proyecto1_DA3    DATABASE     �   CREATE DATABASE "Proyecto1_DA3" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE "Proyecto1_DA3";
                postgres    false            �            1259    24742 	   campaigns    TABLE     �   CREATE TABLE public.campaigns (
    campaign_id integer NOT NULL,
    campaign_type character varying(255),
    campaign_mediatype character varying(255),
    startdate date,
    finishdate date
);
    DROP TABLE public.campaigns;
       public         heap    postgres    false            �            1259    24749    category    TABLE     �   CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(255),
    category_description text
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    24756 	   customers    TABLE     N  CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    customer_name character varying(255),
    customer_adress text,
    customer_age integer,
    customer_city character varying(255),
    customer_phone character varying(255),
    customer_email character varying(255),
    customer_gender character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    24763 	   employees    TABLE     �   CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    store_id integer,
    employee_name character varying(255),
    employee_gender character varying(255),
    employee_birthdate date,
    employee_phone character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    24770 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    product_id integer,
    product_sold integer,
    product_quantity integer,
    product_available integer
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    24775    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    supplier_id integer,
    category_id integer,
    product_name character varying(255),
    product_price numeric
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    24735    sales    TABLE     �   CREATE TABLE public.sales (
    sales_id integer NOT NULL,
    customer_id integer,
    employee_id integer,
    shipment_id integer,
    campaign_id integer,
    salesdate date,
    totalsales numeric
);
    DROP TABLE public.sales;
       public         heap    postgres    false            �            1259    24782    salesdetails    TABLE     �   CREATE TABLE public.salesdetails (
    salesdetails_id integer NOT NULL,
    sales_id integer,
    product_id integer,
    store_id integer,
    product_quantity integer
);
     DROP TABLE public.salesdetails;
       public         heap    postgres    false            �            1259    24787    shipment    TABLE     �   CREATE TABLE public.shipment (
    shipment_id integer NOT NULL,
    shipper_name character varying(255),
    shipper_phone character varying(255)
);
    DROP TABLE public.shipment;
       public         heap    postgres    false            �            1259    24794    stores    TABLE     �   CREATE TABLE public.stores (
    store_id integer NOT NULL,
    store_adress character varying(255),
    store_type character varying(255)
);
    DROP TABLE public.stores;
       public         heap    postgres    false            �            1259    24801 	   suppliers    TABLE       CREATE TABLE public.suppliers (
    supplier_id integer NOT NULL,
    supplier_name character varying(255),
    supplier_adress character varying(255),
    supplier_country character varying(255),
    supplier_email character varying(255),
    supplier_phone character varying(255)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            1          0    24742 	   campaigns 
   TABLE DATA           j   COPY public.campaigns (campaign_id, campaign_type, campaign_mediatype, startdate, finishdate) FROM stdin;
    public          postgres    false    215   T+       2          0    24749    category 
   TABLE DATA           T   COPY public.category (category_id, category_name, category_description) FROM stdin;
    public          postgres    false    216   q+       3          0    24756 	   customers 
   TABLE DATA           �   COPY public.customers (customer_id, customer_name, customer_adress, customer_age, customer_city, customer_phone, customer_email, customer_gender) FROM stdin;
    public          postgres    false    217   �+       4          0    24763 	   employees 
   TABLE DATA           ~   COPY public.employees (employee_id, store_id, employee_name, employee_gender, employee_birthdate, employee_phone) FROM stdin;
    public          postgres    false    218   �+       5          0    24770 	   inventory 
   TABLE DATA           p   COPY public.inventory (inventory_id, product_id, product_sold, product_quantity, product_available) FROM stdin;
    public          postgres    false    219   �+       6          0    24775    products 
   TABLE DATA           e   COPY public.products (product_id, supplier_id, category_id, product_name, product_price) FROM stdin;
    public          postgres    false    220   �+       0          0    24735    sales 
   TABLE DATA           t   COPY public.sales (sales_id, customer_id, employee_id, shipment_id, campaign_id, salesdate, totalsales) FROM stdin;
    public          postgres    false    214   ,       7          0    24782    salesdetails 
   TABLE DATA           i   COPY public.salesdetails (salesdetails_id, sales_id, product_id, store_id, product_quantity) FROM stdin;
    public          postgres    false    221   ,       8          0    24787    shipment 
   TABLE DATA           L   COPY public.shipment (shipment_id, shipper_name, shipper_phone) FROM stdin;
    public          postgres    false    222   <,       9          0    24794    stores 
   TABLE DATA           D   COPY public.stores (store_id, store_adress, store_type) FROM stdin;
    public          postgres    false    223   Y,       :          0    24801 	   suppliers 
   TABLE DATA           �   COPY public.suppliers (supplier_id, supplier_name, supplier_adress, supplier_country, supplier_email, supplier_phone) FROM stdin;
    public          postgres    false    224   v,       �           2606    24748    campaigns campaigns_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.campaigns
    ADD CONSTRAINT campaigns_pkey PRIMARY KEY (campaign_id);
 B   ALTER TABLE ONLY public.campaigns DROP CONSTRAINT campaigns_pkey;
       public            postgres    false    215            �           2606    24755    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    216            �           2606    24762    customers customers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    217            �           2606    24769    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    218            �           2606    24774    inventory inventory_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    219            �           2606    24781    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    220            �           2606    24741    sales sales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sales_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public            postgres    false    214            �           2606    24786    salesdetails salesdetails_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.salesdetails
    ADD CONSTRAINT salesdetails_pkey PRIMARY KEY (salesdetails_id);
 H   ALTER TABLE ONLY public.salesdetails DROP CONSTRAINT salesdetails_pkey;
       public            postgres    false    221            �           2606    24793    shipment shipment_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.shipment
    ADD CONSTRAINT shipment_pkey PRIMARY KEY (shipment_id);
 @   ALTER TABLE ONLY public.shipment DROP CONSTRAINT shipment_pkey;
       public            postgres    false    222            �           2606    24800    stores stores_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (store_id);
 <   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
       public            postgres    false    223            �           2606    24807    suppliers suppliers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (supplier_id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    224            1      x������ � �      2      x������ � �      3      x������ � �      4      x������ � �      5      x������ � �      6      x������ � �      0      x������ � �      7      x������ � �      8      x������ � �      9      x������ � �      :      x������ � �     