PGDMP         )                x            office    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18131    office    DATABASE     �   CREATE DATABASE office WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE office;
                postgres    false            �            1259    18283 
   app_course    TABLE     �   CREATE TABLE public.app_course (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    credits integer NOT NULL,
    schedule integer[] NOT NULL,
    room character varying(64) NOT NULL,
    teacher_id integer NOT NULL
);
    DROP TABLE public.app_course;
       public         heap    postgres    false            �            1259    18281    app_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.app_course_id_seq;
       public          postgres    false    221            �           0    0    app_course_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.app_course_id_seq OWNED BY public.app_course.id;
          public          postgres    false    220            �            1259    18294    app_file    TABLE     �   CREATE TABLE public.app_file (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    path character varying(256) NOT NULL,
    owner_id integer NOT NULL
);
    DROP TABLE public.app_file;
       public         heap    postgres    false            �            1259    18292    app_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.app_file_id_seq;
       public          postgres    false    223            �           0    0    app_file_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.app_file_id_seq OWNED BY public.app_file.id;
          public          postgres    false    222            �            1259    18302    app_news    TABLE     �   CREATE TABLE public.app_news (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    body text NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.app_news;
       public         heap    postgres    false            �            1259    18300    app_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.app_news_id_seq;
       public          postgres    false    225            �           0    0    app_news_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.app_news_id_seq OWNED BY public.app_news.id;
          public          postgres    false    224            �            1259    18323    app_student    TABLE     [   CREATE TABLE public.app_student (
    id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.app_student;
       public         heap    postgres    false            �            1259    18333    app_student_courses    TABLE     �   CREATE TABLE public.app_student_courses (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL
);
 '   DROP TABLE public.app_student_courses;
       public         heap    postgres    false            �            1259    18331    app_student_courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_student_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.app_student_courses_id_seq;
       public          postgres    false    231            �           0    0    app_student_courses_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.app_student_courses_id_seq OWNED BY public.app_student_courses.id;
          public          postgres    false    230            �            1259    18341    app_student_files    TABLE     �   CREATE TABLE public.app_student_files (
    id integer NOT NULL,
    student_id integer NOT NULL,
    file_id integer NOT NULL
);
 %   DROP TABLE public.app_student_files;
       public         heap    postgres    false            �            1259    18339    app_student_files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_student_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.app_student_files_id_seq;
       public          postgres    false    233            �           0    0    app_student_files_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.app_student_files_id_seq OWNED BY public.app_student_files.id;
          public          postgres    false    232            �            1259    18321    app_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_student_id_seq;
       public          postgres    false    229            �           0    0    app_student_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_student_id_seq OWNED BY public.app_student.id;
          public          postgres    false    228            �            1259    18313    app_teacher    TABLE     [   CREATE TABLE public.app_teacher (
    id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.app_teacher;
       public         heap    postgres    false            �            1259    18311    app_teacher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_teacher_id_seq;
       public          postgres    false    227            �           0    0    app_teacher_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_teacher_id_seq OWNED BY public.app_teacher.id;
          public          postgres    false    226            �            1259    18163 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    18161    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    18173    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    18171    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    18155    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    18153    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    18181 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    18191    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    18189    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    18179    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213                        0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    18199    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    18197 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    18259    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    18257    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    18145    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    18143    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    18134    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    18132    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    18406    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �
           2604    18286    app_course id    DEFAULT     n   ALTER TABLE ONLY public.app_course ALTER COLUMN id SET DEFAULT nextval('public.app_course_id_seq'::regclass);
 <   ALTER TABLE public.app_course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    18297    app_file id    DEFAULT     j   ALTER TABLE ONLY public.app_file ALTER COLUMN id SET DEFAULT nextval('public.app_file_id_seq'::regclass);
 :   ALTER TABLE public.app_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �
           2604    18305    app_news id    DEFAULT     j   ALTER TABLE ONLY public.app_news ALTER COLUMN id SET DEFAULT nextval('public.app_news_id_seq'::regclass);
 :   ALTER TABLE public.app_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    18326    app_student id    DEFAULT     p   ALTER TABLE ONLY public.app_student ALTER COLUMN id SET DEFAULT nextval('public.app_student_id_seq'::regclass);
 =   ALTER TABLE public.app_student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    18336    app_student_courses id    DEFAULT     �   ALTER TABLE ONLY public.app_student_courses ALTER COLUMN id SET DEFAULT nextval('public.app_student_courses_id_seq'::regclass);
 E   ALTER TABLE public.app_student_courses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �
           2604    18344    app_student_files id    DEFAULT     |   ALTER TABLE ONLY public.app_student_files ALTER COLUMN id SET DEFAULT nextval('public.app_student_files_id_seq'::regclass);
 C   ALTER TABLE public.app_student_files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �
           2604    18316    app_teacher id    DEFAULT     p   ALTER TABLE ONLY public.app_teacher ALTER COLUMN id SET DEFAULT nextval('public.app_teacher_id_seq'::regclass);
 =   ALTER TABLE public.app_teacher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    18166    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    18176    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    18158    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    18184    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    18194    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    18202    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    18262    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    18148    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    18137    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    18283 
   app_course 
   TABLE DATA           S   COPY public.app_course (id, name, credits, schedule, room, teacher_id) FROM stdin;
    public          postgres    false    221   ,�       �          0    18294    app_file 
   TABLE DATA           <   COPY public.app_file (id, name, path, owner_id) FROM stdin;
    public          postgres    false    223   ��       �          0    18302    app_news 
   TABLE DATA           9   COPY public.app_news (id, title, body, date) FROM stdin;
    public          postgres    false    225   ]�       �          0    18323    app_student 
   TABLE DATA           2   COPY public.app_student (id, user_id) FROM stdin;
    public          postgres    false    229   ��       �          0    18333    app_student_courses 
   TABLE DATA           H   COPY public.app_student_courses (id, student_id, course_id) FROM stdin;
    public          postgres    false    231   ��       �          0    18341    app_student_files 
   TABLE DATA           D   COPY public.app_student_files (id, student_id, file_id) FROM stdin;
    public          postgres    false    233   �       �          0    18313    app_teacher 
   TABLE DATA           2   COPY public.app_teacher (id, user_id) FROM stdin;
    public          postgres    false    227   ��       �          0    18163 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    18173    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    18155    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   %�       �          0    18181 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��       �          0    18191    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   u�       �          0    18199    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    18259    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ��       �          0    18145    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    18134    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   =�       �          0    18406    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    234    �                  0    0    app_course_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.app_course_id_seq', 3, true);
          public          postgres    false    220                       0    0    app_file_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.app_file_id_seq', 42, true);
          public          postgres    false    222                       0    0    app_news_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.app_news_id_seq', 3, true);
          public          postgres    false    224                       0    0    app_student_courses_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.app_student_courses_id_seq', 7, true);
          public          postgres    false    230            	           0    0    app_student_files_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.app_student_files_id_seq', 56, true);
          public          postgres    false    232            
           0    0    app_student_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.app_student_id_seq', 3, true);
          public          postgres    false    228                       0    0    app_teacher_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.app_teacher_id_seq', 3, true);
          public          postgres    false    226                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    206                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
          public          postgres    false    212                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216                       0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 54, true);
          public          postgres    false    218                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
          public          postgres    false    204                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    202                        2606    18291    app_course app_course_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.app_course
    ADD CONSTRAINT app_course_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.app_course DROP CONSTRAINT app_course_pkey;
       public            postgres    false    221            $           2606    18299    app_file app_file_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.app_file
    ADD CONSTRAINT app_file_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.app_file DROP CONSTRAINT app_file_pkey;
       public            postgres    false    223            &           2606    18310    app_news app_news_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.app_news DROP CONSTRAINT app_news_pkey;
       public            postgres    false    225            1           2606    18338 ,   app_student_courses app_student_courses_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.app_student_courses
    ADD CONSTRAINT app_student_courses_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.app_student_courses DROP CONSTRAINT app_student_courses_pkey;
       public            postgres    false    231            4           2606    18374 J   app_student_courses app_student_courses_student_id_course_id_69a14626_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_student_courses
    ADD CONSTRAINT app_student_courses_student_id_course_id_69a14626_uniq UNIQUE (student_id, course_id);
 t   ALTER TABLE ONLY public.app_student_courses DROP CONSTRAINT app_student_courses_student_id_course_id_69a14626_uniq;
       public            postgres    false    231    231            7           2606    18346 (   app_student_files app_student_files_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.app_student_files
    ADD CONSTRAINT app_student_files_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.app_student_files DROP CONSTRAINT app_student_files_pkey;
       public            postgres    false    233            :           2606    18388 D   app_student_files app_student_files_student_id_file_id_803dccc6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.app_student_files
    ADD CONSTRAINT app_student_files_student_id_file_id_803dccc6_uniq UNIQUE (student_id, file_id);
 n   ALTER TABLE ONLY public.app_student_files DROP CONSTRAINT app_student_files_student_id_file_id_803dccc6_uniq;
       public            postgres    false    233    233            ,           2606    18328    app_student app_student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_student
    ADD CONSTRAINT app_student_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_student DROP CONSTRAINT app_student_pkey;
       public            postgres    false    229            .           2606    18330 #   app_student app_student_user_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.app_student
    ADD CONSTRAINT app_student_user_id_key UNIQUE (user_id);
 M   ALTER TABLE ONLY public.app_student DROP CONSTRAINT app_student_user_id_key;
       public            postgres    false    229            (           2606    18318    app_teacher app_teacher_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_teacher
    ADD CONSTRAINT app_teacher_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_teacher DROP CONSTRAINT app_teacher_pkey;
       public            postgres    false    227            *           2606    18320 #   app_teacher app_teacher_user_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.app_teacher
    ADD CONSTRAINT app_teacher_user_id_key UNIQUE (user_id);
 M   ALTER TABLE ONLY public.app_teacher DROP CONSTRAINT app_teacher_user_id_key;
       public            postgres    false    227                       2606    18404    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    18225 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            	           2606    18178 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    18168    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    18211 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    18160 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    18196 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    18240 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    18186    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    18204 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    18254 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    18398     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    18268 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    18152 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    18150 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    18142 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            =           2606    18413 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    234            !           1259    18391    app_course_teacher_id_88818860    INDEX     [   CREATE INDEX app_course_teacher_id_88818860 ON public.app_course USING btree (teacher_id);
 2   DROP INDEX public.app_course_teacher_id_88818860;
       public            postgres    false    221            "           1259    18352    app_file_owner_id_ddaeb985    INDEX     S   CREATE INDEX app_file_owner_id_ddaeb985 ON public.app_file USING btree (owner_id);
 .   DROP INDEX public.app_file_owner_id_ddaeb985;
       public            postgres    false    223            /           1259    18376 &   app_student_courses_course_id_d929fc26    INDEX     k   CREATE INDEX app_student_courses_course_id_d929fc26 ON public.app_student_courses USING btree (course_id);
 :   DROP INDEX public.app_student_courses_course_id_d929fc26;
       public            postgres    false    231            2           1259    18375 '   app_student_courses_student_id_5006f160    INDEX     m   CREATE INDEX app_student_courses_student_id_5006f160 ON public.app_student_courses USING btree (student_id);
 ;   DROP INDEX public.app_student_courses_student_id_5006f160;
       public            postgres    false    231            5           1259    18390 "   app_student_files_file_id_82ae3512    INDEX     c   CREATE INDEX app_student_files_file_id_82ae3512 ON public.app_student_files USING btree (file_id);
 6   DROP INDEX public.app_student_files_file_id_82ae3512;
       public            postgres    false    233            8           1259    18389 %   app_student_files_student_id_e59e024e    INDEX     i   CREATE INDEX app_student_files_student_id_e59e024e ON public.app_student_files USING btree (student_id);
 9   DROP INDEX public.app_student_files_student_id_e59e024e;
       public            postgres    false    233            �
           1259    18405    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    18226 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    18227 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    18212 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    18242 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    18241 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    18256 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    18255 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    18399     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    18279 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    18280 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            ;           1259    18415 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    234            >           1259    18414 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    234            H           2606    18392 ;   app_course app_course_teacher_id_88818860_fk_app_teacher_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_course
    ADD CONSTRAINT app_course_teacher_id_88818860_fk_app_teacher_id FOREIGN KEY (teacher_id) REFERENCES public.app_teacher(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.app_course DROP CONSTRAINT app_course_teacher_id_88818860_fk_app_teacher_id;
       public          postgres    false    227    2856    221            I           2606    18347 3   app_file app_file_owner_id_ddaeb985_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_file
    ADD CONSTRAINT app_file_owner_id_ddaeb985_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.app_file DROP CONSTRAINT app_file_owner_id_ddaeb985_fk_auth_user_id;
       public          postgres    false    223    213    2827            M           2606    18368 K   app_student_courses app_student_courses_course_id_d929fc26_fk_app_course_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_student_courses
    ADD CONSTRAINT app_student_courses_course_id_d929fc26_fk_app_course_id FOREIGN KEY (course_id) REFERENCES public.app_course(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.app_student_courses DROP CONSTRAINT app_student_courses_course_id_d929fc26_fk_app_course_id;
       public          postgres    false    2848    231    221            L           2606    18363 M   app_student_courses app_student_courses_student_id_5006f160_fk_app_student_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_student_courses
    ADD CONSTRAINT app_student_courses_student_id_5006f160_fk_app_student_id FOREIGN KEY (student_id) REFERENCES public.app_student(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.app_student_courses DROP CONSTRAINT app_student_courses_student_id_5006f160_fk_app_student_id;
       public          postgres    false    229    2860    231            O           2606    18382 C   app_student_files app_student_files_file_id_82ae3512_fk_app_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_student_files
    ADD CONSTRAINT app_student_files_file_id_82ae3512_fk_app_file_id FOREIGN KEY (file_id) REFERENCES public.app_file(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.app_student_files DROP CONSTRAINT app_student_files_file_id_82ae3512_fk_app_file_id;
       public          postgres    false    223    2852    233            N           2606    18377 I   app_student_files app_student_files_student_id_e59e024e_fk_app_student_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_student_files
    ADD CONSTRAINT app_student_files_student_id_e59e024e_fk_app_student_id FOREIGN KEY (student_id) REFERENCES public.app_student(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.app_student_files DROP CONSTRAINT app_student_files_student_id_e59e024e_fk_app_student_id;
       public          postgres    false    233    2860    229            K           2606    18358 8   app_student app_student_user_id_49aed64b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_student
    ADD CONSTRAINT app_student_user_id_49aed64b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.app_student DROP CONSTRAINT app_student_user_id_49aed64b_fk_auth_user_id;
       public          postgres    false    229    213    2827            J           2606    18353 8   app_teacher app_teacher_user_id_d565d5e5_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.app_teacher
    ADD CONSTRAINT app_teacher_user_id_d565d5e5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.app_teacher DROP CONSTRAINT app_teacher_user_id_d565d5e5_fk_auth_user_id;
       public          postgres    false    227    213    2827            A           2606    18219 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2814    211    207            @           2606    18214 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    209    2819            ?           2606    18205 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2809    207    205            C           2606    18234 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2819    215    209            B           2606    18229 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2827            E           2606    18248 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2814            D           2606    18243 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    217    2827            F           2606    18269 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2809    205    219            G           2606    18274 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2827            �   �   x�%�1�0���9�!�8�:������*�Nդ,U�N0�?=vp�'���)/3K�}��|�=hɺ��z y�k�38��*u����c����¥�-Iz�bA��XT,��?�M�>Մ]*�c���HOB_e��[��%M�8c��a7�      �   �  x����N�0Dϛi'��c[@Bj��VN���Ԏl�߳N��"Q$�;���he)b����e� �
p�-O{�Y*��NՐl���c=Kce�����h�Q`�ho��+�=�f�z�ɹٻ��1����r3��w.�"�����f�&K�",�ysuX�v��/�~"�yi=���&�0ɬ�#��-�_�Ҟl�8��w��BDzDq�:_��a�ĺ5dnW����9��NIO8��X��f���*����x�l�3h�����Dӗ�V��ꦥx� �N���񯌁D�MG��y��8�	y2���]�����ڴ�,w*�	�e;X������#;��:}T��"t}J����Q6r���b!�3
�e��'�ժ:�y��(�r�"_      �   @  x��TMOa>�_1��I��C���j����lc��&�0�F[QLI�5�јl-K��&��y�����C ����}g�yf�q��+9d��xH�1u�0��5��'q�3�x����a6 ��@��ch�q��!�">�ۦ	�.�sH�N�M���}��W$8��s������:�x��p�s�M���t��>�W�	1�fW\�i��Y�\�����rY�M�!�"�?�(��I��/�B|�G|�g�[<�J`LC2�`=�A�n��n¼Ρ9T��5�X�\ǿB��p��a��fRk`�f��Fܵ��;m/�����7��NCR&@��3�H]�=�H��Rٸo�Bj�+ �Z��mUKGO->��JE�4*>C8�Ȩ-���i.B�fo�Bm�?/���&ʷr��FX���FS&cU�4#�U��N]�[�6RU�"z�^�c�|�褪,�Zp+�|�-�J�V�v�o�[�y��\�*x;���Im�+�ͺW}UڮX��V�V�@!����B�Bkk�`e�a23I2}���t�Mı-{���^��v�q�&P�	&�Y��I����r�R�U�i.��z��sw*������✎M��c��~,�i�&�"Ծ�C��kǵ��j���S�oR�h�U|b"S94�x^���[-��tKgX�	������?�exF�uO!������r���{EJ ?
ȸ�>��}2E���ˌ�즞,q�^hZ�~DTl�)B��@����3ە����	�<[��"��c*��G�P�s�"M��3�::U:d�TQ6���e�&V��
ܹ��<����V��
��V"��	n�j      �      x�3�4�2�4�2�4����� �      �   .   x���  ��w<RS
˰��s�\*��c�����(��[���      �   �   x��� �o3L���K�����N% Q��vm���\׋�����d$�&�(0�l0��<��8��Ԏ�X��B)6��f)�}�_]��g�9P��<�Ӱ�l���E<>��U�3H�A������'�&�������&&�]�} �i,g      �      x�3�4�2�4�2�4����� b      �      x������ � �      �      x������ � �      �   �  x�]�Kn�0D��)|�"�;�^�@a�jb ����ɱHf'��z��}�C�v]r�I���R�ݿ�;]}F����`(~0'���X��,����`��@e4{�鷟�~\Fj��+-g@�)��~���bQ4$9*�-�Ӹ>\N�t��I�sxI�Ӂ@H&*@��`���
؏>-t>��g��� �@%�S4�|�e�j��zW����6Z������덇�泓h�Ѥk�4Zρ�jE¸���]xF̴]0�ELu] ��H���Nsp56�_|V�偈kc��w�P��b@���߃k�c?��tS80`� ��cL�<��9�3%�G��c�dL� ��b�)����%���V��w����s�^A"r���������"�Ȩ�.k��ץ����/lM:zzp���E=8]T���`�>����S      �   �  x�}�mo�0���S���ZM�LQ��Eё%K�JǓ�O�.�M�nM��Ӥ�������~��CAd8����d.�G�k�s9��k~�N�#b�O�箭���ZJ�����evJ�����!(����g�Kք�$ɿ�,���ig��� ���g�{N���{Pn�bK�͋8b`_�5s^��2�'G?�*/�¶ >e�wv����s�dVu��xyQ�AR�q@�I�]{�N@p��60�L���Ȥ�2Yg������@�p�zTEЅ��Ð�۪2��f��y<��"�$_�0�6�,�,���o�M���z�kx�m^���3=����6��I�h���x���c���Wj��M���
�kUf�k�K�`0��	�?C���w�����摨�'��l�`��ih�O��Ϝ�Qت����Ί7�U���/
<����@����'u곦���n=f�Y���@$�x����K�q����"^yH!+Y+�i���Q�e����B'���Cq��#V����p{�=8Ч�Ӭ�H�+�N�ӿ�k+��C�!������>����^f����5�2�I3K7Eެ��vW�]{a�������"B0�4H�p��89>i�x�Q��dS��7��N���t�I�      �      x������ � �      �      x������ � �      �   �  x����nGEף� �J��Q��~md�M�s��ƶYDY���tS��zFJrѧj��ޮ�����W�7�cav�D�	�@�a�]��������x�-��߾���Wd	�����������������^?�֏����ݧq��f{�{�e����۾y,ȶ`.�Rm�Oi�e���-�_�|�N�c��a��a?7�`kP��"���?���	DK���!0s����j�VE���i������������q�yeeˊ��9��9ˢU���`�<���Y�ð�yt9 ���������C�	e}�s��2 ��4��g�(��B� ��G���V����$8�9I��×�����h"X�;�c���h�a��x�"�!N%�"�c��$'����Są����~�HsUf<�\�9Z�(Bą!{��L�d�$a2'���h��ƿ�� O �%���d���4-ʿ���D�8���:�9hQ���(�H�d���m�/dN��I��$�x�ӯ�w/E�@��r���k��6�hqN4w	��(�kqZ�S�49�gj���WA�iڄL>���qd��-G/��8"���;�5�QA�%��i�� �A�w�D��iJ� �A*�+'�9y�Ö����A��~��VQ�G�r�8�Ԟ�J{U�,�$cF�
@#n\U7w�֕��(#o\�7w��ɺ�1��qU��)\&e
	�u��qU�܉<M��c
W���п�-�kd�N��PtAӯ���
�{W�uH�-9������-�]6w�d�)�%$�J�̨�T�<Թy^8��Քis3�|>;�z��(���a#u��YY8��T�� L����p6;�r{^�3=�9�gu�^ס�X��t>��jJ `n
0H�|6۳��'����T��Ia
��rV��t���8�\�����cίoh+�Ҕ�	���Y![Q&r@Y���|}�$�%�!��">^З~�ߗ��Ʃ���S����]]]�LN�      �   {   x�M�K
�0DךÔ��ޥ���!��%Qr��Bw�3(�kZ��buÉ��L��TS��d��.��rŕ�,�f������Z�;�RZɫ2]�ia<;
���8s��������/��9�      �   �  x����j�0�������fftγ,�hS�O��Ҽ�J�������<�id�.}7�n��+ @�0�To����<�<���"��*7O�G	]�:'X�m�#Qh�#�!���Th���������޺�u��9�*3ċ�^����2���w���>\��=�"�2�d��~S��La�oz�Y����7�s��E�A-Jz�M�5��v��[�yۺ/���v��0�JUfE�5�i��!��,SV�b�R��i�gb��0��+Cl��|V!�67��9	�P^�(�ޏ9��oo���@3�l������puS�2.>�>�֏���NJ�	Ű;��w�x$H=�+�|s�#�4���|��-���#�f�Q+�<$E����oFrߏdJ3Q�����BI�=d������ہ��韁�0�Y���H�2��0ۆI�0�&�� gN�a����S�N�e�i�      �     x��V]������{��
b�3/J0�ʴ97
�cF�?��f�w2�`c�1���g{�yvx?����fEy�?�4�YuAW�&<�D�e+���F5"�F��d�my1��u�<���
�^��e�����{��V�C���U�GUW�ѥ���)M���LĻJX�K��k���短�L���D��'����q��DJ�M�X��ޛ��T�\��㖾����F�2�Ÿf'MdD�Q�E�9�d߈D��-���&��t���:��bEg�ǄJ~'�wb�f�����z�O�qP�x���z:��f�P=s�x�nH'<X��Z���.���Ě"^�"�m�K�HG�Q/��x�ly�w��~Fn�kg��_K�=תɪZ'{-�j�.�u�-�#ÓM��k`_T������FȜ�9%Sj��F,�;1��Z��)N^mʺ>�w��Gn_����$r���S��ط%�W\���A�����5O����_��o,�-��di�d�T��
<�
<�Z���s����='��u	aΈ%�}�T���8�n:܇��6�\.��>fG�i���Ո+X�"�bGů�Ԫ�&60ۢU5���|��U���Ǜ^��CQ�8b�shݹ#)�A��F�����b�9�3�uܧ.����7��&�l�9>����O4���ʛ	�KR�`�^Х^�x��q�@3d��R����������cL$�#��,,�Ky��^a�E�(��w��Ȅ3�w�b��cdؔ�3������	�b[�����'0�X�Ị�&��t�
�O��h�@��`3�v���}5l= �5��ķ�l!c��l0N���_��5E�c����G��d_Bq�ĝ�3�Q��]w�����]�*Y���̪�6��2�MT�0�ĲU�����֡hx��'�Euy��T�wqi���#g�����5
Ҁ��)i���@42�{iP	��wNgS��-���g�^q/>n�{臬�խ�<�x��C_O`_"ڥ-ʫݶb�q,m�l��m�wz؂F��G�����-�+���R��d��$���
���U�|�śSoJ��3�G��\6��e�sNsȻ���K���s"�d��)8�q1&��c�La�0MD�D$:#߶X����aɑ��-B�&�a��S�D��;��o�O�6_A���q�6u(}�r`{��Rw�[Y��r�9��8ѳ_�4=S#��^�j��X�uK4f��DD2�4���tU���iX�<��/`[���ŀ&ó�e�����(�-f=Ow:�=�>��t�����+�Uw>��[��iv�=ϟٗ�	�-��2Q��x� �!�9h�[�H��*^�\�8O_��wX�汪x,����U�ƒ�+N�E��_t�O���Sq�˚:wp���؈�ԥ��=1s����J���z=��H����F[S�u\��N���j�_z1��Q�54�U�Q�o���[²���{�u���NǊ�rԢGKk�������?g��w}����Y}>��iq �`�ci����tֵ,�����S�sP6S�Ч�;����� K��+     