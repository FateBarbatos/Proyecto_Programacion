PGDMP                      |           proyectoProgramacion    16.2    16.2 Z    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    58845    proyectoProgramacion    DATABASE     �   CREATE DATABASE "proyectoProgramacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 &   DROP DATABASE "proyectoProgramacion";
                FateBarbatos    false            �            1259    58880    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    FateBarbatos    false            �            1259    58887    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    FateBarbatos    false            �            1259    58946    donaciones_recibidas    TABLE     �   CREATE TABLE public.donaciones_recibidas (
    id bigint NOT NULL,
    "fechaDonacion" date NOT NULL,
    "cantidadDonacion" numeric(8,2) NOT NULL,
    "idEmpleadoReceptor" bigint
);
 (   DROP TABLE public.donaciones_recibidas;
       public         heap    FateBarbatos    false            �            1259    58945    donaciones_recibidas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donaciones_recibidas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.donaciones_recibidas_id_seq;
       public          FateBarbatos    false    235            3           0    0    donaciones_recibidas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.donaciones_recibidas_id_seq OWNED BY public.donaciones_recibidas.id;
          public          FateBarbatos    false    234            �            1259    58924 	   empleados    TABLE     #  CREATE TABLE public.empleados (
    id bigint NOT NULL,
    "nombreEmpleado" character varying(50) NOT NULL,
    "apellidoEmpleado" character varying(50) NOT NULL,
    "duiEmpleado" integer NOT NULL,
    "generoEmpleado" character varying(1) NOT NULL,
    "edadEmpleado" integer NOT NULL
);
    DROP TABLE public.empleados;
       public         heap    FateBarbatos    false            �            1259    58923    empleados_id_seq    SEQUENCE     y   CREATE SEQUENCE public.empleados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.empleados_id_seq;
       public          FateBarbatos    false    229            4           0    0    empleados_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.empleados_id_seq OWNED BY public.empleados.id;
          public          FateBarbatos    false    228            �            1259    58912    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    FateBarbatos    false            �            1259    58911    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          FateBarbatos    false    227            5           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          FateBarbatos    false    226            �            1259    58931    herramientas    TABLE     �   CREATE TABLE public.herramientas (
    id bigint NOT NULL,
    "tipoHerramienta" character varying(40) DEFAULT 'Sin categoria'::character varying,
    nombre_herramienta character varying(30) NOT NULL,
    cantidad_herramienta integer NOT NULL
);
     DROP TABLE public.herramientas;
       public         heap    FateBarbatos    false            �            1259    58930    herramientas_id_seq    SEQUENCE     |   CREATE SEQUENCE public.herramientas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.herramientas_id_seq;
       public          FateBarbatos    false    231            6           0    0    herramientas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.herramientas_id_seq OWNED BY public.herramientas.id;
          public          FateBarbatos    false    230            �            1259    58904    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    FateBarbatos    false            �            1259    58895    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    FateBarbatos    false            �            1259    58894    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          FateBarbatos    false    224            7           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          FateBarbatos    false    223            �            1259    58847 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    FateBarbatos    false            �            1259    58846    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          FateBarbatos    false    216            8           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          FateBarbatos    false    215            �            1259    58864    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    FateBarbatos    false            �            1259    58972    proyectos_realizados    TABLE     �   CREATE TABLE public.proyectos_realizados (
    id bigint NOT NULL,
    "idHerramienta" bigint,
    "idMaquina" bigint,
    "nombreProyecto" character varying(100) NOT NULL
);
 (   DROP TABLE public.proyectos_realizados;
       public         heap    FateBarbatos    false            �            1259    58971    proyectos_realizados_id_seq    SEQUENCE     �   CREATE SEQUENCE public.proyectos_realizados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.proyectos_realizados_id_seq;
       public          FateBarbatos    false    237            9           0    0    proyectos_realizados_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.proyectos_realizados_id_seq OWNED BY public.proyectos_realizados.id;
          public          FateBarbatos    false    236            �            1259    58871    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    FateBarbatos    false            �            1259    58939 	   tractores    TABLE     �   CREATE TABLE public.tractores (
    id bigint NOT NULL,
    "tipoTractor" character varying(40) NOT NULL,
    "nombreTractor" character varying(40) NOT NULL,
    "numeroMatricula" integer NOT NULL,
    "numeroPlaca" integer NOT NULL
);
    DROP TABLE public.tractores;
       public         heap    FateBarbatos    false            �            1259    58938    tractores_id_seq    SEQUENCE     y   CREATE SEQUENCE public.tractores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tractores_id_seq;
       public          FateBarbatos    false    233            :           0    0    tractores_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tractores_id_seq OWNED BY public.tractores.id;
          public          FateBarbatos    false    232            �            1259    58854    users    TABLE     x  CREATE TABLE public.users (
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
       public         heap    FateBarbatos    false            �            1259    58853    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          FateBarbatos    false    218            ;           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          FateBarbatos    false    217            _           2604    58949    donaciones_recibidas id    DEFAULT     �   ALTER TABLE ONLY public.donaciones_recibidas ALTER COLUMN id SET DEFAULT nextval('public.donaciones_recibidas_id_seq'::regclass);
 F   ALTER TABLE public.donaciones_recibidas ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    235    234    235            [           2604    58927    empleados id    DEFAULT     l   ALTER TABLE ONLY public.empleados ALTER COLUMN id SET DEFAULT nextval('public.empleados_id_seq'::regclass);
 ;   ALTER TABLE public.empleados ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    229    228    229            Y           2604    58915    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    227    226    227            \           2604    58934    herramientas id    DEFAULT     r   ALTER TABLE ONLY public.herramientas ALTER COLUMN id SET DEFAULT nextval('public.herramientas_id_seq'::regclass);
 >   ALTER TABLE public.herramientas ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    231    230    231            X           2604    58898    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    223    224    224            V           2604    58850    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    216    215    216            `           2604    58975    proyectos_realizados id    DEFAULT     �   ALTER TABLE ONLY public.proyectos_realizados ALTER COLUMN id SET DEFAULT nextval('public.proyectos_realizados_id_seq'::regclass);
 F   ALTER TABLE public.proyectos_realizados ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    236    237    237            ^           2604    58942    tractores id    DEFAULT     l   ALTER TABLE ONLY public.tractores ALTER COLUMN id SET DEFAULT nextval('public.tractores_id_seq'::regclass);
 ;   ALTER TABLE public.tractores ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    232    233    233            W           2604    58857    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          FateBarbatos    false    217    218    218                      0    58880    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          FateBarbatos    false    221   �k                 0    58887    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          FateBarbatos    false    222   �k       *          0    58946    donaciones_recibidas 
   TABLE DATA           m   COPY public.donaciones_recibidas (id, "fechaDonacion", "cantidadDonacion", "idEmpleadoReceptor") FROM stdin;
    public          FateBarbatos    false    235   �k       $          0    58924 	   empleados 
   TABLE DATA           ~   COPY public.empleados (id, "nombreEmpleado", "apellidoEmpleado", "duiEmpleado", "generoEmpleado", "edadEmpleado") FROM stdin;
    public          FateBarbatos    false    229   *l       "          0    58912    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          FateBarbatos    false    227   el       &          0    58931    herramientas 
   TABLE DATA           g   COPY public.herramientas (id, "tipoHerramienta", nombre_herramienta, cantidad_herramienta) FROM stdin;
    public          FateBarbatos    false    231   �l                  0    58904    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          FateBarbatos    false    225   �l                 0    58895    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          FateBarbatos    false    224   �l                 0    58847 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          FateBarbatos    false    216   �l                 0    58864    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          FateBarbatos    false    219   �m       ,          0    58972    proyectos_realizados 
   TABLE DATA           b   COPY public.proyectos_realizados (id, "idHerramienta", "idMaquina", "nombreProyecto") FROM stdin;
    public          FateBarbatos    false    237   �m                 0    58871    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          FateBarbatos    false    220   n       (          0    58939 	   tractores 
   TABLE DATA           i   COPY public.tractores (id, "tipoTractor", "nombreTractor", "numeroMatricula", "numeroPlaca") FROM stdin;
    public          FateBarbatos    false    233   �o                 0    58854    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          FateBarbatos    false    218   �o       <           0    0    donaciones_recibidas_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.donaciones_recibidas_id_seq', 1, true);
          public          FateBarbatos    false    234            =           0    0    empleados_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.empleados_id_seq', 1, true);
          public          FateBarbatos    false    228            >           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          FateBarbatos    false    226            ?           0    0    herramientas_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.herramientas_id_seq', 1, true);
          public          FateBarbatos    false    230            @           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          FateBarbatos    false    223            A           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 8, true);
          public          FateBarbatos    false    215            B           0    0    proyectos_realizados_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.proyectos_realizados_id_seq', 1, true);
          public          FateBarbatos    false    236            C           0    0    tractores_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tractores_id_seq', 1, true);
          public          FateBarbatos    false    232            D           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          FateBarbatos    false    217            p           2606    58893    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            FateBarbatos    false    222            n           2606    58886    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            FateBarbatos    false    221            �           2606    58951 .   donaciones_recibidas donaciones_recibidas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.donaciones_recibidas
    ADD CONSTRAINT donaciones_recibidas_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.donaciones_recibidas DROP CONSTRAINT donaciones_recibidas_pkey;
       public            FateBarbatos    false    235            {           2606    58929    empleados empleados_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            FateBarbatos    false    229            w           2606    58920    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            FateBarbatos    false    227            y           2606    58922 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            FateBarbatos    false    227            }           2606    58937    herramientas herramientas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.herramientas
    ADD CONSTRAINT herramientas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.herramientas DROP CONSTRAINT herramientas_pkey;
       public            FateBarbatos    false    231            u           2606    58910    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            FateBarbatos    false    225            r           2606    58902    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            FateBarbatos    false    224            b           2606    58852    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            FateBarbatos    false    216            h           2606    58870 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            FateBarbatos    false    219            �           2606    58977 .   proyectos_realizados proyectos_realizados_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.proyectos_realizados
    ADD CONSTRAINT proyectos_realizados_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.proyectos_realizados DROP CONSTRAINT proyectos_realizados_pkey;
       public            FateBarbatos    false    237            k           2606    58877    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            FateBarbatos    false    220                       2606    58944    tractores tractores_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tractores
    ADD CONSTRAINT tractores_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tractores DROP CONSTRAINT tractores_pkey;
       public            FateBarbatos    false    233            d           2606    58863    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            FateBarbatos    false    218            f           2606    58861    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            FateBarbatos    false    218            s           1259    58903    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            FateBarbatos    false    224            i           1259    58879    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            FateBarbatos    false    220            l           1259    58878    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            FateBarbatos    false    220            �           2606    58952 D   donaciones_recibidas donaciones_recibidas_idempleadoreceptor_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.donaciones_recibidas
    ADD CONSTRAINT donaciones_recibidas_idempleadoreceptor_foreign FOREIGN KEY ("idEmpleadoReceptor") REFERENCES public.empleados(id) ON UPDATE CASCADE ON DELETE SET NULL;
 n   ALTER TABLE ONLY public.donaciones_recibidas DROP CONSTRAINT donaciones_recibidas_idempleadoreceptor_foreign;
       public          FateBarbatos    false    229    235    4731            �           2606    58978 ?   proyectos_realizados proyectos_realizados_idherramienta_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyectos_realizados
    ADD CONSTRAINT proyectos_realizados_idherramienta_foreign FOREIGN KEY ("idHerramienta") REFERENCES public.herramientas(id) ON UPDATE CASCADE ON DELETE SET NULL;
 i   ALTER TABLE ONLY public.proyectos_realizados DROP CONSTRAINT proyectos_realizados_idherramienta_foreign;
       public          FateBarbatos    false    4733    231    237            �           2606    58983 ;   proyectos_realizados proyectos_realizados_idmaquina_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.proyectos_realizados
    ADD CONSTRAINT proyectos_realizados_idmaquina_foreign FOREIGN KEY ("idMaquina") REFERENCES public.tractores(id) ON UPDATE CASCADE ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.proyectos_realizados DROP CONSTRAINT proyectos_realizados_idmaquina_foreign;
       public          FateBarbatos    false    4735    237    233                  x������ � �            x������ � �      *   "   x�3�4200�50�5��4��32�4����� ;@      $   +   x�3�HL���H-�K-.ɏ��44�07170��2�b���� �;	       "      x������ � �      &   &   x�3�,I�K�J�R
�9��
F&��&\1z\\\ ��
&             x������ � �            x������ � �         �   x�e��� �}�(l>�R��,*�a{��2pĦ��o��F!���e]dJl�+��&�Fn$��:r�'�2|���%���X�)j���L}8���6�d<p�4y�e��Zy%�l�O�\
�3F��� ���0��a�td�;ߗ%�*�Rc��Ë�5{�F��;��� ��s            x������ � �      ,   B   x�3�4 �̼��������<��T��D�����D����̴��ĔD��Լ� 37��+F��� {5O         [  x�%OKs�0<���^4A	���O�	����$R��@����v���;�;�2���ȉ��W˶��\����7���UL+��1��t�4�T\��gw���=���$�	��fj����;]_����ٜmi%{�@4���-��P�$���7�/�	�V#r�9TI�ǒ�bz�!K�J,� =����5_���1�v��,̒���ZW4��g!S����>_t��Wc�[��ß��i�r��{ȫw�͇hy��^�h�.�	������];�����u��g%��JuW�R��J�IL�W6;���Vgc%ynݪn�9��b�g��z���E��hXNg��t:�g��      (   1   x�3�t�HN,KL�/J�tM,*���/K-�4421�43�026����� �            x������ � �     