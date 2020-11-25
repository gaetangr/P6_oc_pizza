PGDMP     #        	        
    x            db_pizza    12.5    12.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    22439    db_pizza    DATABASE     f   CREATE DATABASE db_pizza WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE db_pizza;
                postgres    false            �            1259    22469    Address    TABLE       CREATE TABLE public."Address" (
    id integer NOT NULL,
    street_name character varying(200),
    zip_code character varying(40),
    city character varying(100),
    phone_number character varying(50),
    "id_User" integer,
    "id_Order" integer,
    "id_Restaurant" integer
);
    DROP TABLE public."Address";
       public         heap    postgres    false            �            1259    22467    Address_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Address_id_seq";
       public          postgres    false    209            �           0    0    Address_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Address_id_seq" OWNED BY public."Address".id;
          public          postgres    false    208            �            1259    22499    Carte    TABLE     �   CREATE TABLE public."Carte" (
    id integer NOT NULL,
    description character varying(100),
    "id_Restaurant" integer,
    "id_Product" integer
);
    DROP TABLE public."Carte";
       public         heap    postgres    false            �            1259    22497    Carte_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Carte_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Carte_id_seq";
       public          postgres    false    215            �           0    0    Carte_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Carte_id_seq" OWNED BY public."Carte".id;
          public          postgres    false    214            �            1259    22547    Category    TABLE     w   CREATE TABLE public."Category" (
    id integer NOT NULL,
    name character varying(100),
    "id_Product" integer
);
    DROP TABLE public."Category";
       public         heap    postgres    false            �            1259    22545    Category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Category_id_seq";
       public          postgres    false    227            �           0    0    Category_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Category_id_seq" OWNED BY public."Category".id;
          public          postgres    false    226            �            1259    22515    DelivreryMode    TABLE     a   CREATE TABLE public."DelivreryMode" (
    id integer NOT NULL,
    type character varying(30)
);
 #   DROP TABLE public."DelivreryMode";
       public         heap    postgres    false            �            1259    22513    DelivreryMode_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DelivreryMode_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."DelivreryMode_id_seq";
       public          postgres    false    219            �           0    0    DelivreryMode_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DelivreryMode_id_seq" OWNED BY public."DelivreryMode".id;
          public          postgres    false    218            �            1259    22453    Order    TABLE     �   CREATE TABLE public."Order" (
    id integer NOT NULL,
    description character varying(100),
    "id_User" integer,
    "id_PaymentMethod" integer,
    "id_DelivreryMode" integer,
    "id_OrderStatus" integer
);
    DROP TABLE public."Order";
       public         heap    postgres    false            �            1259    22563 	   OrderLine    TABLE     �   CREATE TABLE public."OrderLine" (
    id integer NOT NULL,
    quantity character varying(100),
    price numeric(100,0),
    "id_Order" integer,
    "id_Product" integer
);
    DROP TABLE public."OrderLine";
       public         heap    postgres    false            �            1259    22561    OrderLine_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrderLine_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."OrderLine_id_seq";
       public          postgres    false    231            �           0    0    OrderLine_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."OrderLine_id_seq" OWNED BY public."OrderLine".id;
          public          postgres    false    230            �            1259    22507    OrderStatus    TABLE     �   CREATE TABLE public."OrderStatus" (
    id integer NOT NULL,
    created_date character varying(40),
    updated_date character varying(40)
);
 !   DROP TABLE public."OrderStatus";
       public         heap    postgres    false            �            1259    22505    OrderStatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."OrderStatus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."OrderStatus_id_seq";
       public          postgres    false    217                        0    0    OrderStatus_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."OrderStatus_id_seq" OWNED BY public."OrderStatus".id;
          public          postgres    false    216            �            1259    22451    Order_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Order_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Order_id_seq";
       public          postgres    false    205                       0    0    Order_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Order_id_seq" OWNED BY public."Order".id;
          public          postgres    false    204            �            1259    22461    PaymentMethod    TABLE     a   CREATE TABLE public."PaymentMethod" (
    id integer NOT NULL,
    type character varying(30)
);
 #   DROP TABLE public."PaymentMethod";
       public         heap    postgres    false            �            1259    22459    PaymentMethod_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PaymentMethod_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."PaymentMethod_id_seq";
       public          postgres    false    207                       0    0    PaymentMethod_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."PaymentMethod_id_seq" OWNED BY public."PaymentMethod".id;
          public          postgres    false    206            �            1259    22539    Product    TABLE     v   CREATE TABLE public."Product" (
    id integer NOT NULL,
    name character varying(100),
    "id_Recette" integer
);
    DROP TABLE public."Product";
       public         heap    postgres    false            �            1259    22537    Product_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Product_id_seq";
       public          postgres    false    225                       0    0    Product_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Product_id_seq" OWNED BY public."Product".id;
          public          postgres    false    224            �            1259    22555    Recette    TABLE     \   CREATE TABLE public."Recette" (
    id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public."Recette";
       public         heap    postgres    false            �            1259    22553    Recette_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Recette_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Recette_id_seq";
       public          postgres    false    229                       0    0    Recette_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Recette_id_seq" OWNED BY public."Recette".id;
          public          postgres    false    228            �            1259    22488 
   Restaurant    TABLE     z   CREATE TABLE public."Restaurant" (
    id integer NOT NULL,
    name character varying(1000),
    "id_Reviews" integer
);
     DROP TABLE public."Restaurant";
       public         heap    postgres    false            �            1259    22486    Restaurant_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Restaurant_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Restaurant_id_seq";
       public          postgres    false    213                       0    0    Restaurant_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Restaurant_id_seq" OWNED BY public."Restaurant".id;
          public          postgres    false    212            �            1259    22477    Reviews    TABLE     `   CREATE TABLE public."Reviews" (
    id integer NOT NULL,
    content character varying(1000)
);
    DROP TABLE public."Reviews";
       public         heap    postgres    false            �            1259    22475    Reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reviews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Reviews_id_seq";
       public          postgres    false    211                       0    0    Reviews_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Reviews_id_seq" OWNED BY public."Reviews".id;
          public          postgres    false    210            �            1259    22523    Role    TABLE     X   CREATE TABLE public."Role" (
    id integer NOT NULL,
    role character varying(30)
);
    DROP TABLE public."Role";
       public         heap    postgres    false            �            1259    22521    Role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Role_id_seq";
       public          postgres    false    221                       0    0    Role_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Role_id_seq" OWNED BY public."Role".id;
          public          postgres    false    220            �            1259    22531 	   StockLine    TABLE     �   CREATE TABLE public."StockLine" (
    id integer NOT NULL,
    description character varying(100),
    quantity integer,
    "id_Restaurant" integer,
    "id_Product" integer
);
    DROP TABLE public."StockLine";
       public         heap    postgres    false            �            1259    22529    StockLine_id_seq    SEQUENCE     �   CREATE SEQUENCE public."StockLine_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."StockLine_id_seq";
       public          postgres    false    223                       0    0    StockLine_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."StockLine_id_seq" OWNED BY public."StockLine".id;
          public          postgres    false    222            �            1259    22442    User    TABLE     �   CREATE TABLE public."User" (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    email character varying(150),
    password character varying(250),
    "id_Role" integer
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    22440    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          postgres    false    203            	           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          postgres    false    202                       2604    22472 
   Address id    DEFAULT     l   ALTER TABLE ONLY public."Address" ALTER COLUMN id SET DEFAULT nextval('public."Address_id_seq"'::regclass);
 ;   ALTER TABLE public."Address" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    22502    Carte id    DEFAULT     h   ALTER TABLE ONLY public."Carte" ALTER COLUMN id SET DEFAULT nextval('public."Carte_id_seq"'::regclass);
 9   ALTER TABLE public."Carte" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    22550    Category id    DEFAULT     n   ALTER TABLE ONLY public."Category" ALTER COLUMN id SET DEFAULT nextval('public."Category_id_seq"'::regclass);
 <   ALTER TABLE public."Category" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    22518    DelivreryMode id    DEFAULT     x   ALTER TABLE ONLY public."DelivreryMode" ALTER COLUMN id SET DEFAULT nextval('public."DelivreryMode_id_seq"'::regclass);
 A   ALTER TABLE public."DelivreryMode" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    22456    Order id    DEFAULT     h   ALTER TABLE ONLY public."Order" ALTER COLUMN id SET DEFAULT nextval('public."Order_id_seq"'::regclass);
 9   ALTER TABLE public."Order" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            !           2604    22566    OrderLine id    DEFAULT     p   ALTER TABLE ONLY public."OrderLine" ALTER COLUMN id SET DEFAULT nextval('public."OrderLine_id_seq"'::regclass);
 =   ALTER TABLE public."OrderLine" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    22510    OrderStatus id    DEFAULT     t   ALTER TABLE ONLY public."OrderStatus" ALTER COLUMN id SET DEFAULT nextval('public."OrderStatus_id_seq"'::regclass);
 ?   ALTER TABLE public."OrderStatus" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    22464    PaymentMethod id    DEFAULT     x   ALTER TABLE ONLY public."PaymentMethod" ALTER COLUMN id SET DEFAULT nextval('public."PaymentMethod_id_seq"'::regclass);
 A   ALTER TABLE public."PaymentMethod" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    22542 
   Product id    DEFAULT     l   ALTER TABLE ONLY public."Product" ALTER COLUMN id SET DEFAULT nextval('public."Product_id_seq"'::regclass);
 ;   ALTER TABLE public."Product" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                        2604    22558 
   Recette id    DEFAULT     l   ALTER TABLE ONLY public."Recette" ALTER COLUMN id SET DEFAULT nextval('public."Recette_id_seq"'::regclass);
 ;   ALTER TABLE public."Recette" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229                       2604    22491    Restaurant id    DEFAULT     r   ALTER TABLE ONLY public."Restaurant" ALTER COLUMN id SET DEFAULT nextval('public."Restaurant_id_seq"'::regclass);
 >   ALTER TABLE public."Restaurant" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    22480 
   Reviews id    DEFAULT     l   ALTER TABLE ONLY public."Reviews" ALTER COLUMN id SET DEFAULT nextval('public."Reviews_id_seq"'::regclass);
 ;   ALTER TABLE public."Reviews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    22526    Role id    DEFAULT     f   ALTER TABLE ONLY public."Role" ALTER COLUMN id SET DEFAULT nextval('public."Role_id_seq"'::regclass);
 8   ALTER TABLE public."Role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221                       2604    22534    StockLine id    DEFAULT     p   ALTER TABLE ONLY public."StockLine" ALTER COLUMN id SET DEFAULT nextval('public."StockLine_id_seq"'::regclass);
 =   ALTER TABLE public."StockLine" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    22445    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    22469    Address 
   TABLE DATA           z   COPY public."Address" (id, street_name, zip_code, city, phone_number, "id_User", "id_Order", "id_Restaurant") FROM stdin;
    public          postgres    false    209   w�       �          0    22499    Carte 
   TABLE DATA           Q   COPY public."Carte" (id, description, "id_Restaurant", "id_Product") FROM stdin;
    public          postgres    false    215   ��       �          0    22547    Category 
   TABLE DATA           <   COPY public."Category" (id, name, "id_Product") FROM stdin;
    public          postgres    false    227   ʓ       �          0    22515    DelivreryMode 
   TABLE DATA           3   COPY public."DelivreryMode" (id, type) FROM stdin;
    public          postgres    false    219   �       �          0    22453    Order 
   TABLE DATA           w   COPY public."Order" (id, description, "id_User", "id_PaymentMethod", "id_DelivreryMode", "id_OrderStatus") FROM stdin;
    public          postgres    false    205   �       �          0    22563 	   OrderLine 
   TABLE DATA           T   COPY public."OrderLine" (id, quantity, price, "id_Order", "id_Product") FROM stdin;
    public          postgres    false    231   Y�       �          0    22507    OrderStatus 
   TABLE DATA           G   COPY public."OrderStatus" (id, created_date, updated_date) FROM stdin;
    public          postgres    false    217   ��       �          0    22461    PaymentMethod 
   TABLE DATA           3   COPY public."PaymentMethod" (id, type) FROM stdin;
    public          postgres    false    207   ̔       �          0    22539    Product 
   TABLE DATA           ;   COPY public."Product" (id, name, "id_Recette") FROM stdin;
    public          postgres    false    225   �       �          0    22555    Recette 
   TABLE DATA           -   COPY public."Recette" (id, name) FROM stdin;
    public          postgres    false    229   w�       �          0    22488 
   Restaurant 
   TABLE DATA           >   COPY public."Restaurant" (id, name, "id_Reviews") FROM stdin;
    public          postgres    false    213   ~�       �          0    22477    Reviews 
   TABLE DATA           0   COPY public."Reviews" (id, content) FROM stdin;
    public          postgres    false    211   ܖ       �          0    22523    Role 
   TABLE DATA           *   COPY public."Role" (id, role) FROM stdin;
    public          postgres    false    221   ȗ       �          0    22531 	   StockLine 
   TABLE DATA           _   COPY public."StockLine" (id, description, quantity, "id_Restaurant", "id_Product") FROM stdin;
    public          postgres    false    223   �       �          0    22442    User 
   TABLE DATA           W   COPY public."User" (id, last_name, first_name, email, password, "id_Role") FROM stdin;
    public          postgres    false    203   @�       
           0    0    Address_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Address_id_seq"', 1, true);
          public          postgres    false    208                       0    0    Carte_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Carte_id_seq"', 8, true);
          public          postgres    false    214                       0    0    Category_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Category_id_seq"', 6, true);
          public          postgres    false    226                       0    0    DelivreryMode_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."DelivreryMode_id_seq"', 2, true);
          public          postgres    false    218                       0    0    OrderLine_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."OrderLine_id_seq"', 3, true);
          public          postgres    false    230                       0    0    OrderStatus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."OrderStatus_id_seq"', 4, true);
          public          postgres    false    216                       0    0    Order_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Order_id_seq"', 3, true);
          public          postgres    false    204                       0    0    PaymentMethod_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."PaymentMethod_id_seq"', 3, true);
          public          postgres    false    206                       0    0    Product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Product_id_seq"', 5, true);
          public          postgres    false    224                       0    0    Recette_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Recette_id_seq"', 9, true);
          public          postgres    false    228                       0    0    Restaurant_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Restaurant_id_seq"', 10, true);
          public          postgres    false    212                       0    0    Reviews_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Reviews_id_seq"', 9, true);
          public          postgres    false    210                       0    0    Role_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Role_id_seq"', 4, true);
          public          postgres    false    220                       0    0    StockLine_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."StockLine_id_seq"', 6, true);
          public          postgres    false    222                       0    0    User_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."User_id_seq"', 21, true);
          public          postgres    false    202            )           2606    22474    Address Address_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pk" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_pk";
       public            postgres    false    209            +           2606    22585    Address Address_uq 
   CONSTRAINT     V   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_uq" UNIQUE ("id_User");
 @   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_uq";
       public            postgres    false    209            -           2606    22592    Address Address_uq1 
   CONSTRAINT     X   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_uq1" UNIQUE ("id_Order");
 A   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_uq1";
       public            postgres    false    209            /           2606    22621    Address Address_uq2 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_uq2" UNIQUE ("id_Restaurant");
 A   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_uq2";
       public            postgres    false    209            5           2606    22504    Carte Carte_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public."Carte"
    ADD CONSTRAINT "Carte_pk" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "Carte_pk";
       public            postgres    false    215            A           2606    22552    Category Category_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pk" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pk";
       public            postgres    false    227            C           2606    22609    Category Category_uq 
   CONSTRAINT     [   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_uq" UNIQUE ("id_Product");
 B   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_uq";
       public            postgres    false    227            9           2606    22520    DelivreryMode DelivreryMode_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public."DelivreryMode"
    ADD CONSTRAINT "DelivreryMode_pk" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."DelivreryMode" DROP CONSTRAINT "DelivreryMode_pk";
       public            postgres    false    219            G           2606    22568    OrderLine OrderLine_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public."OrderLine"
    ADD CONSTRAINT "OrderLine_pk" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."OrderLine" DROP CONSTRAINT "OrderLine_pk";
       public            postgres    false    231            7           2606    22512    OrderStatus OrderStatus_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public."OrderStatus"
    ADD CONSTRAINT "OrderStatus_pk" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."OrderStatus" DROP CONSTRAINT "OrderStatus_pk";
       public            postgres    false    217            %           2606    22458    Order Order_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pk" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "Order_pk";
       public            postgres    false    205            '           2606    22466    PaymentMethod PaymentMethod_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public."PaymentMethod"
    ADD CONSTRAINT "PaymentMethod_pk" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."PaymentMethod" DROP CONSTRAINT "PaymentMethod_pk";
       public            postgres    false    207            ?           2606    22544    Product Product_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pk" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pk";
       public            postgres    false    225            E           2606    22560    Recette Recette_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."Recette"
    ADD CONSTRAINT "Recette_pk" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Recette" DROP CONSTRAINT "Recette_pk";
       public            postgres    false    229            3           2606    22496    Restaurant Restaurant_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Restaurant"
    ADD CONSTRAINT "Restaurant_pk" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Restaurant" DROP CONSTRAINT "Restaurant_pk";
       public            postgres    false    213            1           2606    22485    Reviews Reviews_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public."Reviews"
    ADD CONSTRAINT "Reviews_pk" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Reviews" DROP CONSTRAINT "Reviews_pk";
       public            postgres    false    211            ;           2606    22528    Role Role_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pk" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pk";
       public            postgres    false    221            =           2606    22536    StockLine StockLine_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public."StockLine"
    ADD CONSTRAINT "StockLine_pk" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."StockLine" DROP CONSTRAINT "StockLine_pk";
       public            postgres    false    223            #           2606    22450    User User_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pk" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pk";
       public            postgres    false    203            K           2606    22610    Order DelivreryMode_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "DelivreryMode_fk" FOREIGN KEY ("id_DelivreryMode") REFERENCES public."DelivreryMode"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "DelivreryMode_fk";
       public          postgres    false    219    3129    205            L           2606    22627    Order OrderStatus_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "OrderStatus_fk" FOREIGN KEY ("id_OrderStatus") REFERENCES public."OrderStatus"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "OrderStatus_fk";
       public          postgres    false    3127    205    217            N           2606    22586    Address Order_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Order_fk" FOREIGN KEY ("id_Order") REFERENCES public."Order"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Order_fk";
       public          postgres    false    205    3109    209            W           2606    22622    OrderLine Order_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderLine"
    ADD CONSTRAINT "Order_fk" FOREIGN KEY ("id_Order") REFERENCES public."Order"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY public."OrderLine" DROP CONSTRAINT "Order_fk";
       public          postgres    false    205    3109    231            J           2606    22593    Order PaymentMethod_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "PaymentMethod_fk" FOREIGN KEY ("id_PaymentMethod") REFERENCES public."PaymentMethod"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "PaymentMethod_fk";
       public          postgres    false    3111    207    205            V           2606    22603    Category Product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Product_fk" FOREIGN KEY ("id_Product") REFERENCES public."Product"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Product_fk";
       public          postgres    false    3135    227    225            X           2606    22637    OrderLine Product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."OrderLine"
    ADD CONSTRAINT "Product_fk" FOREIGN KEY ("id_Product") REFERENCES public."Product"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY public."OrderLine" DROP CONSTRAINT "Product_fk";
       public          postgres    false    3135    231    225            R           2606    22647    Carte Product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Carte"
    ADD CONSTRAINT "Product_fk" FOREIGN KEY ("id_Product") REFERENCES public."Product"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 >   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "Product_fk";
       public          postgres    false    225    3135    215            T           2606    22657    StockLine Product_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."StockLine"
    ADD CONSTRAINT "Product_fk" FOREIGN KEY ("id_Product") REFERENCES public."Product"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 B   ALTER TABLE ONLY public."StockLine" DROP CONSTRAINT "Product_fk";
       public          postgres    false    223    3135    225            U           2606    22632    Product Recette_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Recette_fk" FOREIGN KEY ("id_Recette") REFERENCES public."Recette"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 @   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Recette_fk";
       public          postgres    false    3141    225    229            O           2606    22615    Address Restaurant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Restaurant_fk" FOREIGN KEY ("id_Restaurant") REFERENCES public."Restaurant"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Restaurant_fk";
       public          postgres    false    3123    213    209            Q           2606    22642    Carte Restaurant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Carte"
    ADD CONSTRAINT "Restaurant_fk" FOREIGN KEY ("id_Restaurant") REFERENCES public."Restaurant"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY public."Carte" DROP CONSTRAINT "Restaurant_fk";
       public          postgres    false    215    3123    213            S           2606    22652    StockLine Restaurant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."StockLine"
    ADD CONSTRAINT "Restaurant_fk" FOREIGN KEY ("id_Restaurant") REFERENCES public."Restaurant"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public."StockLine" DROP CONSTRAINT "Restaurant_fk";
       public          postgres    false    213    223    3123            P           2606    22598    Restaurant Reviews_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Restaurant"
    ADD CONSTRAINT "Reviews_fk" FOREIGN KEY ("id_Reviews") REFERENCES public."Reviews"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public."Restaurant" DROP CONSTRAINT "Reviews_fk";
       public          postgres    false    213    211    3121            H           2606    22569    User Role_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "Role_fk" FOREIGN KEY ("id_Role") REFERENCES public."Role"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 :   ALTER TABLE ONLY public."User" DROP CONSTRAINT "Role_fk";
       public          postgres    false    221    203    3131            I           2606    22574    Order User_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "User_fk" FOREIGN KEY ("id_User") REFERENCES public."User"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 ;   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "User_fk";
       public          postgres    false    203    205    3107            M           2606    22579    Address User_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "User_fk" FOREIGN KEY ("id_User") REFERENCES public."User"(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;
 =   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "User_fk";
       public          postgres    false    203    3107    209            �      x������ � �      �   &   x�3�tN,*IU(Ȭ�J,�4�4�@2
��qqq P�      �      x������ � �      �   #   x�3��L��--�2�tI��,+J-������ n��      �   /   x�3�t���M�KIU(J-.I,-J�+�44�4A.c��FP�=... �]�      �      x�3�4�4a.cNcNsK ӈ+F��� +�7      �   5   x�3�42�70�7202P04�2�D0
pq���1AScL�9&D����� ��o      �   +   x�3�L.JM�,QHN,J�2�LN,��2�,H�,H������ � 	�      �   `   x�3�Ȭ�JT0�PH+��MLO-�4�2��&�a�B^iIjNN"P�*Q�Z\��P����i�eL��/M.�*�4�t�ONTp�������� az!!      �   �   x�%��N�0E��)����Ă,,!u��Ԏ�UߞT�`��=��|� vM�=&P�!�����dEq��| ׂ@,�pC������+��t@��ke�NYX}&��y�B��̅G� ����� �q&hy��p��<c�[��U�($_���y;{B=u�yo�YS���25��K��Ia����FSo*��:��Z�x�P��3g�g�Ia�(��c9�d^�Z}�u�^�9�㬵�fAvG      �   N   x�3�t�H�Rp+JM��4�2�Ȭ�Rp�PrL9}R�R�3��<3N���\� Ϩ( �U��>K}�(c���� ��      �   �   x���N1���)����D�(��&�5��q;��x�񸘱��O�y��w阥f�5�ex�R��T³�uT6w�B�X*6J�"\�φM�(�c�W�
�,ф&���p��G�7�è�6����,q�it�?në8�S�c�pg.*%u�����	�հx"�}xۉvP�B��۪���v6;�Cx��ZZ��^pIٯ&�����f1      �   >   x�3�L.-.��M-�2�LL����2��M�KL��p���d��UƧ���W��r��qqq �,�      �      x�3���4�4�4�2C0c���� ;��      �   <  x�U�Ɏ�:EǮ����	�,�M
*zJ��� ��9��VM ����>�qt��9�*��zCO�{�?�	�����C�m����7�h�cg�5?=>�^��#��S�@{���;�K)�c�|� ��C<zp�1�=�?@�[�
L4)l�|0�A��/�h��"���}m�+�u���K~Ln	��D�ݠ$��
���A_y�^����b�J�Ο�:�m�΍uӚ��"�"*.B���������	I�1G�"���$�u=� &/��1�љ��3(\��X�㦽�ft28��n�8w��G�,C6�	%e )F$�c*s�'��7��EF�I�P��݃7�U�fF��~�%Z�f���
�0��	,�lBA���8��#0J��R㺸���;�_��z[f4���
7���򴈳����;*;���\JvKj�������&H �&PbcH	J~��my����ގ�'�*���_og�u�}Yn{����y�|v��ql`B&�XY��!@Z�X��~���IT��zW��{�>9�N�>���*E��c.cw��o`�($���E���)����3ëZ�n�e�a�/@~t��g�7�.v޾L�h�9�T�`�E�������a���/R8�)�OV7[�mw��Xdw%ؠ�0�^�Kvls�d���O<�`�8�C"k��I�K��h��Ȭ�e�����?�8c�v^���󔳗�|���e�-iX�k��A��\c���� 0J�v������?���B/��P#v����>���ͬ~�Z��]ѵb���N��iW�ג{M�iz1D��W�~��`�ݬ��זwG3�8��ΐ��Z���M�����4t��J�o�)D2���?�Og�a��UI?V�ǀX��i~l�Q�W���sߟ�k��sHc�9����Y*��� ��kF[�o�a�|R#��,\TIy}{�W��k�C�Vz�A��2�HU4���byv�b����!����+����ν0v��a�v��T�u��X��3v�Y���t�5��[`'���H�+�33��|ɏ���*���
�vg�g�C�/��vu�,��z�wG�E��)����y�����!�Ci]D�xM�}���[���#w��rW[uӮ���l�z�T+��H
��-&rK,9)߇2���H)���{~c�8���<V3^�٨���,;��J���?�>v�=��j�?:f�*a��C� �����k�!����ȍ��Χ�P9u����f���lݝ{���.-oR���W�>�x�W��*�������7ɘ���F}�n�V�=k�����Z�p˟{+�����ﷷ��bV_k     