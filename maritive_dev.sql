PGDMP                         z           maritime_dev    14.5    14.5 ?    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    25007    maritime_dev    DATABASE     g   CREATE DATABASE maritime_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Greek_Greece.1253';
    DROP DATABASE maritime_dev;
                postgres    false            ?            1259    25195    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            ?            1259    25194    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    215            @           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    214            ?            1259    25171 
   migrations    TABLE     ?   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            ?            1259    25170    migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    210            A           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    209            ?            1259    25188    password_resets    TABLE     ?   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            ?            1259    25207    personal_access_tokens    TABLE     ?  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            ?            1259    25206    personal_access_tokens_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    217            B           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    216            ?            1259    25178    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    25177    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            C           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            ?            1259    25242    vessel_opexes    TABLE       CREATE TABLE public.vessel_opexes (
    id integer NOT NULL,
    vessel_id integer NOT NULL,
    opex_date timestamp(0) without time zone NOT NULL,
    expenses numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.vessel_opexes;
       public         heap    postgres    false            ?            1259    25241    vessel_opexes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vessel_opexes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.vessel_opexes_id_seq;
       public          postgres    false    223            D           0    0    vessel_opexes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.vessel_opexes_id_seq OWNED BY public.vessel_opexes.id;
          public          postgres    false    222            ?            1259    25219    vessels    TABLE     ?   CREATE TABLE public.vessels (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "IMO_number" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.vessels;
       public         heap    postgres    false            ?            1259    25218    vessels_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.vessels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vessels_id_seq;
       public          postgres    false    219            E           0    0    vessels_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.vessels_id_seq OWNED BY public.vessels.id;
          public          postgres    false    218            ?            1259    25230    voyages    TABLE     ?  CREATE TABLE public.voyages (
    id integer NOT NULL,
    vessel_id integer NOT NULL,
    voy_start timestamp(0) without time zone NOT NULL,
    voy_end timestamp(0) without time zone NOT NULL,
    status character varying(255) NOT NULL,
    revenues numeric(8,2) NOT NULL,
    expenses numeric(8,2) NOT NULL,
    profit numeric(8,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.voyages;
       public         heap    postgres    false            ?            1259    25229    voyages_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.voyages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.voyages_id_seq;
       public          postgres    false    221            F           0    0    voyages_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.voyages_id_seq OWNED BY public.voyages.id;
          public          postgres    false    220            ?           2604    25198    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ~           2604    25174    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    25210    personal_access_tokens id    DEFAULT     ?   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    25181    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    25245    vessel_opexes id    DEFAULT     t   ALTER TABLE ONLY public.vessel_opexes ALTER COLUMN id SET DEFAULT nextval('public.vessel_opexes_id_seq'::regclass);
 ?   ALTER TABLE public.vessel_opexes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    25222 
   vessels id    DEFAULT     h   ALTER TABLE ONLY public.vessels ALTER COLUMN id SET DEFAULT nextval('public.vessels_id_seq'::regclass);
 9   ALTER TABLE public.vessels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    25233 
   voyages id    DEFAULT     h   ALTER TABLE ONLY public.voyages ALTER COLUMN id SET DEFAULT nextval('public.voyages_id_seq'::regclass);
 9   ALTER TABLE public.voyages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            1          0    25195    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    215   ?K       ,          0    25171 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    210   ?K       /          0    25188    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    213   lL       3          0    25207    personal_access_tokens 
   TABLE DATA           ?   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ?L       .          0    25178    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    212   ?L       9          0    25242    vessel_opexes 
   TABLE DATA           c   COPY public.vessel_opexes (id, vessel_id, opex_date, expenses, created_at, updated_at) FROM stdin;
    public          postgres    false    223   ?L       5          0    25219    vessels 
   TABLE DATA           Q   COPY public.vessels (id, name, "IMO_number", created_at, updated_at) FROM stdin;
    public          postgres    false    219   ?L       7          0    25230    voyages 
   TABLE DATA           ?   COPY public.voyages (id, vessel_id, voy_start, voy_end, status, revenues, expenses, profit, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ?M       G           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    214            H           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 7, true);
          public          postgres    false    209            I           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    216            J           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    211            K           0    0    vessel_opexes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.vessel_opexes_id_seq', 1, false);
          public          postgres    false    222            L           0    0    vessels_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.vessels_id_seq', 1, true);
          public          postgres    false    218            M           0    0    voyages_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.voyages_id_seq', 1, true);
          public          postgres    false    220            ?           2606    25203    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    215            ?           2606    25205 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    215            ?           2606    25176    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    210            ?           2606    25214 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    217            ?           2606    25217 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    217            ?           2606    25187    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    212            ?           2606    25185    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            ?           2606    25247     vessel_opexes vessel_opexes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.vessel_opexes
    ADD CONSTRAINT vessel_opexes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.vessel_opexes DROP CONSTRAINT vessel_opexes_pkey;
       public            postgres    false    223            ?           2606    25228 !   vessels vessels_imo_number_unique 
   CONSTRAINT     d   ALTER TABLE ONLY public.vessels
    ADD CONSTRAINT vessels_imo_number_unique UNIQUE ("IMO_number");
 K   ALTER TABLE ONLY public.vessels DROP CONSTRAINT vessels_imo_number_unique;
       public            postgres    false    219            ?           2606    25226    vessels vessels_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.vessels
    ADD CONSTRAINT vessels_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.vessels DROP CONSTRAINT vessels_pkey;
       public            postgres    false    219            ?           2606    25235    voyages voyages_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.voyages
    ADD CONSTRAINT voyages_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.voyages DROP CONSTRAINT voyages_pkey;
       public            postgres    false    221            ?           1259    25193    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    213            ?           1259    25215 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     ?   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    217    217            ?           2606    25248 -   vessel_opexes vessel_opexes_vessel_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.vessel_opexes
    ADD CONSTRAINT vessel_opexes_vessel_id_foreign FOREIGN KEY (vessel_id) REFERENCES public.vessels(id);
 W   ALTER TABLE ONLY public.vessel_opexes DROP CONSTRAINT vessel_opexes_vessel_id_foreign;
       public          postgres    false    223    3225    219            ?           2606    25236 !   voyages voyages_vessel_id_foreign    FK CONSTRAINT     ?   ALTER TABLE ONLY public.voyages
    ADD CONSTRAINT voyages_vessel_id_foreign FOREIGN KEY (vessel_id) REFERENCES public.vessels(id);
 K   ALTER TABLE ONLY public.voyages DROP CONSTRAINT voyages_vessel_id_foreign;
       public          postgres    false    221    219    3225            1      x?????? ? ?      ,   ?   x?]???0F??Øu̿w1i
T?.?l???v?M/???Ae4X?`P??42>"??#5?+PfB?ӇG?R'????iʙ??;??&?v??{;??$HߓCj[???;??܊i?????????Ipv???5,!?Ӆ3?/Q ????~???F)??g?      /      x?????? ? ?      3      x?????? ? ?      .      x?????? ? ?      9      x?????? ? ?      5   ?   x?5??
?@Eי??/(?#?X?Mх??&?P
2??n?zS!?ܛ?c?Bu?RH?:0c????0^e??;?>T'iA?b??X?
^?r=T~.1???Z?癩?ce?2?=???g8㴽?L????%R??彖e???@?(????SJ? ?~18      7   W   x?-ȱ? ??n
??p?	??V??Z???Q(??`?ux???%X??N??l?9??Ku#????Y?H?ڼ%w?GGR??>E     