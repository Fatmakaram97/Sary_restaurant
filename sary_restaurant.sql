PGDMP                           z            sary_restaurant    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    sary_restaurant    DATABASE     �   CREATE DATABASE sary_restaurant WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE sary_restaurant;
                postgres    false            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16425    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    221            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    220            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    223            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    222            �            1259    16419    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16418    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    218            �            1259    16442 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16451    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16450    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    227            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    226            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    225            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    224            �            1259    16458    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16457 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    229            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    228            �            1259    16517    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16516    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    231            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    230            �            1259    16410    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16409    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    216            �            1259    16401    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16400    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    215            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    214            �            1259    16555    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16638    restaurant_admin    TABLE     �   CREATE TABLE public.restaurant_admin (
    id integer NOT NULL,
    admin_name character varying(255) NOT NULL,
    admin_password integer NOT NULL
);
 $   DROP TABLE public.restaurant_admin;
       public         heap    postgres    false            �            1259    16637    restaurant_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.restaurant_admin_id_seq;
       public          postgres    false    236            �           0    0    restaurant_admin_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.restaurant_admin_id_seq OWNED BY public.restaurant_admin.id;
          public          postgres    false    235            �            1259    16645    restaurant_employee    TABLE     �   CREATE TABLE public.restaurant_employee (
    id integer NOT NULL,
    employee_number integer NOT NULL,
    employee_password integer NOT NULL
);
 '   DROP TABLE public.restaurant_employee;
       public         heap    postgres    false            �            1259    16644    restaurant_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.restaurant_employee_id_seq;
       public          postgres    false    238            �           0    0    restaurant_employee_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.restaurant_employee_id_seq OWNED BY public.restaurant_employee.id;
          public          postgres    false    237            �            1259    16594    restaurant_newemployee    TABLE     �   CREATE TABLE public.restaurant_newemployee (
    id integer NOT NULL,
    newempnumber integer NOT NULL,
    newemppasswprd character varying(255) NOT NULL
);
 *   DROP TABLE public.restaurant_newemployee;
       public         heap    postgres    false            �            1259    16593    restaurant_newemployee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_newemployee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.restaurant_newemployee_id_seq;
       public          postgres    false    234            �           0    0    restaurant_newemployee_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.restaurant_newemployee_id_seq OWNED BY public.restaurant_newemployee.id;
          public          postgres    false    233            �            1259    16652    restaurant_reservation    TABLE     �   CREATE TABLE public.restaurant_reservation (
    id integer NOT NULL,
    customername character varying(255) NOT NULL,
    size integer NOT NULL,
    tablenumber integer NOT NULL
);
 *   DROP TABLE public.restaurant_reservation;
       public         heap    postgres    false            �            1259    16651    restaurant_reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.restaurant_reservation_id_seq;
       public          postgres    false    240            �           0    0    restaurant_reservation_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.restaurant_reservation_id_seq OWNED BY public.restaurant_reservation.id;
          public          postgres    false    239            �            1259    16659    restaurant_table    TABLE     �   CREATE TABLE public.restaurant_table (
    id integer NOT NULL,
    table_number_added integer NOT NULL,
    number_of_seats integer NOT NULL
);
 $   DROP TABLE public.restaurant_table;
       public         heap    postgres    false            �            1259    16658    restaurant_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.restaurant_table_id_seq;
       public          postgres    false    242            �           0    0    restaurant_table_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.restaurant_table_id_seq OWNED BY public.restaurant_table.id;
          public          postgres    false    241            �           2604    16429    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16422    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16445    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16454    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16461    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16520    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16413    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16404    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16641    restaurant_admin id    DEFAULT     z   ALTER TABLE ONLY public.restaurant_admin ALTER COLUMN id SET DEFAULT nextval('public.restaurant_admin_id_seq'::regclass);
 B   ALTER TABLE public.restaurant_admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16648    restaurant_employee id    DEFAULT     �   ALTER TABLE ONLY public.restaurant_employee ALTER COLUMN id SET DEFAULT nextval('public.restaurant_employee_id_seq'::regclass);
 E   ALTER TABLE public.restaurant_employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    16597    restaurant_newemployee id    DEFAULT     �   ALTER TABLE ONLY public.restaurant_newemployee ALTER COLUMN id SET DEFAULT nextval('public.restaurant_newemployee_id_seq'::regclass);
 H   ALTER TABLE public.restaurant_newemployee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16655    restaurant_reservation id    DEFAULT     �   ALTER TABLE ONLY public.restaurant_reservation ALTER COLUMN id SET DEFAULT nextval('public.restaurant_reservation_id_seq'::regclass);
 H   ALTER TABLE public.restaurant_reservation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    16662    restaurant_table id    DEFAULT     z   ALTER TABLE ONLY public.restaurant_table ALTER COLUMN id SET DEFAULT nextval('public.restaurant_table_id_seq'::regclass);
 B   ALTER TABLE public.restaurant_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �          0    16426 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    221   W�       �          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    223   t�       �          0    16419    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   ��       �          0    16442 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    225   n�       �          0    16451    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    227   "�       �          0    16458    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    229   ?�       �          0    16517    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    231   \�       �          0    16410    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    217   �       �          0    16401    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   ��       �          0    16555    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   ׵       �          0    16638    restaurant_admin 
   TABLE DATA           J   COPY public.restaurant_admin (id, admin_name, admin_password) FROM stdin;
    public          postgres    false    236   ��       �          0    16645    restaurant_employee 
   TABLE DATA           U   COPY public.restaurant_employee (id, employee_number, employee_password) FROM stdin;
    public          postgres    false    238   %�       �          0    16594    restaurant_newemployee 
   TABLE DATA           R   COPY public.restaurant_newemployee (id, newempnumber, newemppasswprd) FROM stdin;
    public          postgres    false    234   V�       �          0    16652    restaurant_reservation 
   TABLE DATA           U   COPY public.restaurant_reservation (id, customername, size, tablenumber) FROM stdin;
    public          postgres    false    240   ��       �          0    16659    restaurant_table 
   TABLE DATA           S   COPY public.restaurant_table (id, table_number_added, number_of_seats) FROM stdin;
    public          postgres    false    242   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 23, true);
          public          postgres    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);
          public          postgres    false    214            �           0    0    restaurant_admin_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.restaurant_admin_id_seq', 6, true);
          public          postgres    false    235            �           0    0    restaurant_employee_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.restaurant_employee_id_seq', 2, true);
          public          postgres    false    237            �           0    0    restaurant_newemployee_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.restaurant_newemployee_id_seq', 5, true);
          public          postgres    false    233            �           0    0    restaurant_reservation_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.restaurant_reservation_id_seq', 1, true);
          public          postgres    false    239            �           0    0    restaurant_table_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.restaurant_table_id_seq', 4, true);
          public          postgres    false    241            �           2606    16544    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    221            �           2606    16474 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    223    223            �           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    223            �           2606    16431    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    221            �           2606    16465 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            �           2606    16424 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            �           2606    16456 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    227            �           2606    16489 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    227    227            �           2606    16447    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    225            �           2606    16463 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    229            �           2606    16503 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    229    229            �           2606    16539     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    225            �           2606    16525 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    231            �           2606    16417 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    217    217            �           2606    16415 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    217            �           2606    16408 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215            �           2606    16561 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232            �           2606    16643 &   restaurant_admin restaurant_admin_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.restaurant_admin
    ADD CONSTRAINT restaurant_admin_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.restaurant_admin DROP CONSTRAINT restaurant_admin_pkey;
       public            postgres    false    236            �           2606    16650 ,   restaurant_employee restaurant_employee_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.restaurant_employee
    ADD CONSTRAINT restaurant_employee_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.restaurant_employee DROP CONSTRAINT restaurant_employee_pkey;
       public            postgres    false    238            �           2606    16599 2   restaurant_newemployee restaurant_newemployee_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.restaurant_newemployee
    ADD CONSTRAINT restaurant_newemployee_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.restaurant_newemployee DROP CONSTRAINT restaurant_newemployee_pkey;
       public            postgres    false    234            �           2606    16657 2   restaurant_reservation restaurant_reservation_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.restaurant_reservation
    ADD CONSTRAINT restaurant_reservation_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.restaurant_reservation DROP CONSTRAINT restaurant_reservation_pkey;
       public            postgres    false    240            �           2606    16664 &   restaurant_table restaurant_table_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.restaurant_table
    ADD CONSTRAINT restaurant_table_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.restaurant_table DROP CONSTRAINT restaurant_table_pkey;
       public            postgres    false    242            �           1259    16545    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    221            �           1259    16485 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    223            �           1259    16486 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    223            �           1259    16471 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            �           1259    16501 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    227            �           1259    16500 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    227            �           1259    16515 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    229            �           1259    16514 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    229            �           1259    16540     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    225            �           1259    16536 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    231            �           1259    16537 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    231            �           1259    16563 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            �           1259    16562 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            �           2606    16480 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    223    219    3267            �           2606    16475 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    223    3272    221            �           2606    16466 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    219    217    3262            �           2606    16495 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    221    227    3272            �           2606    16490 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    225    227    3280            �           2606    16509 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    229    219    3267            �           2606    16504 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    229    225    3280            �           2606    16526 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    231    217    3262            �           2606    16531 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    225    231    3280            �      x������ � �      �      x������ � �      �   �  x�]�[n�@E�gV�
����ۨT�0J�xD@Re�s���|$�I�W�%eU%MOB7o�����k)}&������`.`�01��,|�Ᏸ���!�=����X���DM�h���aO֏X���D���.��>�χ�EP�}�i�9����iC�$S���h���
X}Z���b�
�v X�Gݍ��^�����w��Ւ��� h-���������g��S5w���F�1�_�(¨|FyW���+����+$VѤ����at'1B�3
�20��[1E�D[!1���z�~���}+��9%�Y�Nig����3,����U[w�"���s��m? t	' �6@<0�k����!���Xl���,%�,	�H&��5�4�Symfb��K��| ���1a���`�I�Hw���=���i�����Ф��qq������߲j�      �   �   x�]�A�0��ۯ��M�ךN�$E�A1K�Ҝ���7����ᅇ��0�
��a.SOppԊ�}�m�
$w�4�be��sԣ�E�Z[��t�m�����@@��ON�L@$3F(�EH��ҽ��Fw�.�V�OR6����'4&��(���/c���0�      �      x������ � �      �      x������ � �      �   �  x��Իn�0�Z����������\��%)��6�*���=�V�B��@��{0/�5��ѳd����o������K�z�x������ӏ�����t�����_]�p�
B��
�q�$�{``/�FQ;Ot������t��P�����Q�S5��`ff6�O�d���������(�V2	��������LE�)�d٢I*I6�TKq ��x:�V�nJ���`��r���lS{C�K�7(��,Y���GqO��n%�y�]݆�R�x�����Z�@���n7��`pʾ�ވ-���}g��+��e¾�#�� (G�k8�w&�U�6��L-�S/�=I��h"�Q�DQE�B���=?v��v�r�%H��u�*/�egs�"@�67����_q�yZ      �   �   x�M�K�0C�3�A����&�Tj>�����V���g[�#�c�)�&�;��^�!aTS��FI%�q3E!|�G��̬fhk�L�u�?���">��|m�"!��o���Ev��!�)U��k��~ZXײ���}�1�HwU�      �   (  x���ݎ�8������D�*�?�H���0�a��;��[v�Lf�B��||����ӔN��qN�N�=�S�
�o�/�
Σ�B6ଐ�/�/�����s���
����==��-j�,�W	��?p��GұO���C��7R�:3ԕAW�B|���~t��~��;����f�~�?�Y���p�Ǵ�"������Mi�4�q�%e}8�ߡK��j%��(��hA]F~K��vO)
AC���"o)���ӟ�?أL)��P��.�S���]��C��1�P`�hv�ץV{��!��1��:\�i�R�c����c9�4��i��OoQ�bЊ���<�Y�q��;ȕ�<����҂�>Q �a�/�a$��o�b \�lQ
���q��m�B'f�nH�/C<M�;\K�j>'�Ӳ�S�!!q޺���yd � N����Gl@]f�
�͓�͹�?ҵ�Q���
=�8�کbB��a�w�2�%yA���<7�����Q�2��:��h,B�:��?[u#q�^�F	#�XVb��K|��\ՐՂզ1��9��*��/�q�F]���\�U�rطU�4@FϑD[���h���|��<��$�+WV1��3�̰�萤ʁS�3��s�@�@�d�����H�Re�x����O竰�t\CZUz����ޔ)�;�r�żh10[V�fXO�ᝡ�U���w�Qq�5<�P;��-�����X�<�+h�0�\pTE����(�� ZF%U�D��E�,�<|��B�!��(�呚�7�/�����˿>b��      �     x�=��o�0����/���1���5���E �v�:|��t�ݿy�O���c�ó���ݮ�]��0	'�q�3 v��<�\o���zn$u��?��ׅ�z�ɦv�87�-�)LL$�YP8��vWfj��G����ob�6���D���%�N�Q��$+��V�ުC�����Y�v3���=��Z����T6S�Y��u�ȯ��HY����H�Kj�q�O6~:a���;�����{1769�� ��"x�)|L�4�x_#��~�j      �      x�3�tK,�M�442615����� 1�      �   !   x�3�4426�f\F�@�LXXr��qqq ]�`      �   %   x�3�4426�4 .#$�1��m
b�B�1z\\\ L@	�      �      x�3����H�MM�4�4����� 1      �      x�3�4�4�2�4��2�4�4����� "W�     