--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 20
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq1 OWNER TO postgres;

--
-- Name: django_migrations_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq1 OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: registration_registrationprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE registration_registrationprofile (
    id integer NOT NULL,
    activation_key character varying(40) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE registration_registrationprofile OWNER TO postgres;

--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE registration_registrationprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registration_registrationprofile_id_seq OWNER TO postgres;

--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE registration_registrationprofile_id_seq OWNED BY registration_registrationprofile.id;


--
-- Name: videoadmin_userprofileobjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videoadmin_userprofileobjects_id_seq
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videoadmin_userprofileobjects_id_seq OWNER TO postgres;

--
-- Name: videoadmin_userprofileobjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE videoadmin_userprofileobjects (
    id integer DEFAULT nextval('videoadmin_userprofileobjects_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE videoadmin_userprofileobjects OWNER TO postgres;

--
-- Name: videoadmin_userprofileobjects_video_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videoadmin_userprofileobjects_video_objects_id_seq
    START WITH 8
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videoadmin_userprofileobjects_video_objects_id_seq OWNER TO postgres;

--
-- Name: videoadmin_userprofileobjects_video_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE videoadmin_userprofileobjects_video_objects (
    id integer DEFAULT nextval('videoadmin_userprofileobjects_video_objects_id_seq'::regclass) NOT NULL,
    userprofileobjects_id integer NOT NULL,
    video_objects_id integer NOT NULL
);


ALTER TABLE videoadmin_userprofileobjects_video_objects OWNER TO postgres;

--
-- Name: videoadmin_video_cameras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videoadmin_video_cameras_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videoadmin_video_cameras_id_seq OWNER TO postgres;

--
-- Name: videoadmin_video_cameras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE videoadmin_video_cameras (
    id integer DEFAULT nextval('videoadmin_video_cameras_id_seq'::regclass) NOT NULL,
    title character varying(1000) NOT NULL,
    camera_description character varying(1000) NOT NULL,
    server_ip character varying(1000) NOT NULL,
    camera_id character varying(1000) NOT NULL,
    file character varying(100) NOT NULL,
    num integer NOT NULL,
    server_login character varying(1000) NOT NULL,
    server_pass character varying(1000) NOT NULL
);


ALTER TABLE videoadmin_video_cameras OWNER TO postgres;

--
-- Name: videoadmin_video_cameras_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videoadmin_video_cameras_category_id_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videoadmin_video_cameras_category_id_seq OWNER TO postgres;

--
-- Name: videoadmin_video_cameras_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE videoadmin_video_cameras_category (
    id integer DEFAULT nextval('videoadmin_video_cameras_category_id_seq'::regclass) NOT NULL,
    video_cameras_id integer NOT NULL,
    video_objects_id integer NOT NULL
);


ALTER TABLE videoadmin_video_cameras_category OWNER TO postgres;

--
-- Name: videoadmin_video_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE videoadmin_video_objects_id_seq
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videoadmin_video_objects_id_seq OWNER TO postgres;

--
-- Name: videoadmin_video_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE videoadmin_video_objects (
    id integer DEFAULT nextval('videoadmin_video_objects_id_seq'::regclass) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    edited_date timestamp with time zone,
    title character varying(1000) NOT NULL,
    meta_description character varying(1000) NOT NULL,
    file character varying(100) NOT NULL
);


ALTER TABLE videoadmin_video_objects OWNER TO postgres;

--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq1'::regclass);


--
-- Name: registration_registrationprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registration_registrationprofile ALTER COLUMN id SET DEFAULT nextval('registration_registrationprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Раздел галлереи	7	add_video_objects
20	Can change Раздел галлереи	7	change_video_objects
21	Can delete Раздел галлереи	7	delete_video_objects
22	Can add kv store	8	add_kvstore
23	Can change kv store	8	change_kvstore
24	Can delete kv store	8	delete_kvstore
25	Can add Камера	9	add_video_cameras
26	Can change Камера	9	change_video_cameras
27	Can delete Камера	9	delete_video_cameras
28	Can add Объекты	10	add_userprofileobjects
29	Can change Объекты	10	change_userprofileobjects
30	Can delete Объекты	10	delete_userprofileobjects
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$wwmifKvQ5H26$JGjEsh1S01g0nDKElMwa72T2T2Dl3exP2xRH9Tfns4k=	\N	t	admin			admin@admin.ru	t	t	2017-10-13 09:58:34.926568+00
17	pbkdf2_sha256$36000$LW8lTTSNqb3u$QvjQtqkGHGxucCiwomviiZyMb+4QdHGVzMbdCN/wpF4=	\N	f	ber_8-A.13				f	t	2017-10-25 19:57:14.590102+00
18	pbkdf2_sha256$36000$7iOVa25xT4GQ$r+Vc7D9YxfYuYUo9arA9FYEbIaGmIwuC3WDnzs/QQiM=	\N	f	ber_8-A.14				f	t	2017-10-25 19:57:14.675078+00
3	pbkdf2_sha256$36000$aRAku64X2TSg$cIy2lrVy8yGsc7K7drwRoFwVomKJQg/1OS/o8IwATjA=	\N	f	User1				f	t	2017-10-13 10:35:14.526684+00
19	pbkdf2_sha256$36000$4e3lefD8lYA6$0EXj5/1ZIWVBCnhW5XGeVcLD6ITuS6iHp+SQUAf1xxM=	\N	f	ber_8-A.15				f	t	2017-10-25 19:57:14.761259+00
20	pbkdf2_sha256$36000$o0vWKl3Ko0Zn$F9KhuxtSgR6EeQHGbRLYk6Uxd2K9ySBdfN/7vORSvto=	\N	f	ber_8-A.16				f	t	2017-10-25 19:57:14.846164+00
21	pbkdf2_sha256$36000$JK65ml0QlbYM$+7e7HOP2EopYfSF1y9nLEcdVDuaR4yyMZsld6xr6jvw=	\N	f	ber_8-A.17				f	t	2017-10-25 19:57:14.945166+00
22	pbkdf2_sha256$36000$jTXJJyvwWPkW$nHibxq2eQ1yzJFj3p0mrJDnMRxi8YyE4FYU69GAN+aY=	\N	f	ber_8-A.18				f	t	2017-10-25 19:57:15.029391+00
23	pbkdf2_sha256$36000$tCWoQdQNz3LL$BTpQ1cwFvaUna0R5kcon1vIcdY319ERLa7lxUrqH8iU=	\N	f	ber_8-A.19				f	t	2017-10-25 19:57:15.100746+00
24	pbkdf2_sha256$36000$gcpPpdx48ml3$kEloWU72ycUwrQZNTPEkIz7A/VHRWw6F3Pu7aTShWD4=	\N	f	ber_8-A.20				f	t	2017-10-25 19:57:15.171834+00
25	pbkdf2_sha256$36000$2LcdHoHiBmJT$VkiQmBh2qj1XrqjoRDso3Ogvf2LAUA8FmHJx1Biw3DQ=	\N	f	ber_8-A.21				f	t	2017-10-25 19:57:15.244114+00
26	pbkdf2_sha256$36000$iQq4PCLSW0HA$17dpqFAzBKDkaAALzTNoyphZXLptbXS1TYMn7fgKl6I=	\N	f	ber_8-A.22				f	t	2017-10-25 19:57:15.31534+00
27	pbkdf2_sha256$36000$rShQl30BBDd2$7hv5v5q/czYqVay8AGb9j367BPQNRqtf2Fb/6KM/yMw=	\N	f	ber_8-A.23				f	t	2017-10-25 19:57:15.386382+00
28	pbkdf2_sha256$36000$P2pZMbZ5iwEq$TZRs86d2p9DEY0Zvuq8JlH6EG6Up1J7OXnUsckOgTU4=	\N	f	ber_8-A.24				f	t	2017-10-25 19:57:15.457057+00
29	pbkdf2_sha256$36000$a38RjnFYH5Z9$R7P5eiTHqp0Zy0dLk8vQbvdB2vQGm6Ms9kegI4W99H0=	\N	f	ber_8-A.25				f	t	2017-10-25 19:57:15.525783+00
5	pbkdf2_sha256$36000$Rr4MOvQPnN0Q$BkIKQmAURqPDhexIg9iLlFTJWRw5x9iKNqbZRPc+hgs=	\N	f	ber_8-A.1				f	t	2017-10-25 19:57:12.939033+00
6	pbkdf2_sha256$36000$GrPjB9cM7pTY$H5fg20o5MxSo3/ZSaRIruKsBLs5AQAPtQn7BkGH1K/k=	\N	f	ber_8-A.2				f	t	2017-10-25 19:57:13.110355+00
7	pbkdf2_sha256$36000$ObnCidWkIP0v$MToEX9LrGrLmHAaoaucI1YJmFQUc7pcTumFIo2p2d/M=	\N	f	ber_8-A.3				f	t	2017-10-25 19:57:13.254071+00
8	pbkdf2_sha256$36000$0iDRyuj3Ggsm$3PzdCS4t6yzYN4pCJP8weu8FhugRQbtlNwSiDLKA+Uc=	\N	f	ber_8-A.4				f	t	2017-10-25 19:57:13.443117+00
9	pbkdf2_sha256$36000$llMe6GiXDBqc$oaaoW0F1UpeWp6s9hgpCiWnQhZIJN8n4ag4onS9xYDs=	\N	f	ber_8-A.5				f	t	2017-10-25 19:57:13.596577+00
10	pbkdf2_sha256$36000$7cKXTv35bLIX$U2Kpy4Zc2TGv4RVKzMMObbuaVEhwhKNmlOLaunZaHi0=	\N	f	ber_8-A.6				f	t	2017-10-25 19:57:13.749145+00
11	pbkdf2_sha256$36000$hjrHx7mi4GAz$mBtUIzOWPHC0E/8N4viBf6tQgJOuUFkzQ4/oCb/mfug=	\N	f	ber_8-A.7				f	t	2017-10-25 19:57:13.901295+00
12	pbkdf2_sha256$36000$3aQxweV8D0jY$HInyUDJ30641XXOTHa49yjslJoHdQ7uAIQyxSKwcgbQ=	\N	f	ber_8-A.8				f	t	2017-10-25 19:57:14.029139+00
13	pbkdf2_sha256$36000$AkWUluMPUu3D$lL95/PTO3PKBT24V8u+nVnFHg6jNXRzJpTrCK2Pz1xs=	\N	f	ber_8-A.9				f	t	2017-10-25 19:57:14.135187+00
14	pbkdf2_sha256$36000$Syi0qv0wtxlS$fuN6t0oPcOOEk5CmxxpQdM72vMe1Q8zbzIdQ6P2tF4M=	\N	f	ber_8-A.10				f	t	2017-10-25 19:57:14.241979+00
15	pbkdf2_sha256$36000$iMH40vCW2Iat$FYDdV/ujJh9LhhkF/WfYMe9zy+snkOTTqTOWy1E+XfQ=	\N	f	ber_8-A.11				f	t	2017-10-25 19:57:14.34825+00
16	pbkdf2_sha256$36000$6EhZmPefKFAJ$BJK7nVMFuln+9pqRRDpxwpeacbp5QQ5ji0LFHozZ6dU=	\N	f	ber_8-A.12				f	t	2017-10-25 19:57:14.452973+00
30	pbkdf2_sha256$36000$AuB2LB88pcu6$3Dw20shq0UUG6GK+U0BJCJFKbW3yncl1rptrCyvrMh0=	\N	f	ber_8-A.26				f	t	2017-10-25 19:57:15.603966+00
31	pbkdf2_sha256$36000$Mjw8rZi9B3U1$QTFToQ3Exi4x7O44SUlbMXOZw76JQ1aEiEgpsch3Nv4=	\N	f	ber_8-A.27				f	t	2017-10-25 19:57:15.667812+00
32	pbkdf2_sha256$36000$ENIuI8IFOnhA$1KXVIrxqqpe1tCR/Urj+edOPZdRMhMQUQ/zRjpL43So=	\N	f	ber_8-A.28				f	t	2017-10-25 19:57:15.726589+00
33	pbkdf2_sha256$36000$ArcCCG4tO0M8$N4n/ksFOSCMkbWoTK6YvwxHGgmSMzPCyNbEo30OLVAw=	\N	f	ber_8-A.29				f	t	2017-10-25 19:57:15.784556+00
34	pbkdf2_sha256$36000$8Yi1jwG4OLJ3$AuhGcN/+6Q6PHReDDSSnKzA+ffhs0v+/mbv/ffKNRss=	\N	f	ber_8-A.30				f	t	2017-10-25 19:57:15.842638+00
35	pbkdf2_sha256$36000$jx4g2TctjbNq$yhTwtbBIV98FOLPKasZFW94gwd0WXEEQFuLN4LBcEBg=	\N	f	ber_8-A.31				f	t	2017-10-25 19:57:15.900988+00
36	pbkdf2_sha256$36000$spIhWJ9vaw5w$NrHQpNnj+Gxt6EqmVZy5N1j4bpF+ffmkAQZFWOUJTSw=	\N	f	ber_8-A.32				f	t	2017-10-25 19:57:15.958968+00
37	pbkdf2_sha256$36000$fcmvGsNRHpfA$gTf3etPTPwXoy79aaY1P7G02eAmBWSpfi8Y61jBdkKI=	\N	f	ber_8-A.33				f	t	2017-10-25 19:57:16.016971+00
38	pbkdf2_sha256$36000$tVM2tD7iRl0x$eCgR8yU2+y5JxX9vIYZxB1jnSB0KZ6c9yJY4zGjhrsc=	\N	f	ber_8-A.34				f	t	2017-10-25 19:57:16.072108+00
39	pbkdf2_sha256$36000$tOnHAajpEmFZ$vm+V2ESNvbfkny2F2uUOQ27jwf7ttxaIdDJlikvHUNc=	\N	f	ber_8-A.35				f	t	2017-10-25 19:57:16.127295+00
40	pbkdf2_sha256$36000$AbBLDEvVmybk$r5Xfc+1H1di2qA5V0PoNfCAoDsoGK07nFco2kqiud/o=	\N	f	ber_8-A.36				f	t	2017-10-25 19:57:16.182459+00
41	pbkdf2_sha256$36000$DbN1ya09ikir$LbTM6IYBLRn9JLJgmMc5kw0Dj/3fFiPRU/VsH865SGo=	\N	f	ber_8-A.37				f	t	2017-10-25 19:57:16.238772+00
42	pbkdf2_sha256$36000$wVORnFrefDWI$fdFe8S5QBL1jDbzlI6mHzzYcwfEAcIICQPQSpHs8naI=	\N	f	ber_8-A.38				f	t	2017-10-25 19:57:16.293497+00
43	pbkdf2_sha256$36000$RrhCdiH25kme$JbZORr73m34VDA/v1bZy3AnIqEuF101Ppn2eB1Mly+U=	\N	f	ber_8-A.39				f	t	2017-10-25 19:57:16.348556+00
44	pbkdf2_sha256$36000$U4vf0q3tv9Dc$yRnH6CCcbuj81cdeRS6X5KUhi4b84s3pCs/qUxN8k80=	\N	f	ber_8-A.40				f	t	2017-10-25 19:57:16.403902+00
45	pbkdf2_sha256$36000$4PrnSt8TpuME$KzY3OUtuXPzGfdGkgSbt/iWdAMv7qEU2lFCR4/WJSPw=	\N	f	ber_8-A.41				f	t	2017-10-25 19:57:16.459132+00
46	pbkdf2_sha256$36000$91Zm7fgtzDKF$DR2GxLXqiYXx1AzSmhPS02fLCtnhiyNaRl3WBd8oBp4=	\N	f	ber_8-A.42				f	t	2017-10-25 19:57:16.514955+00
47	pbkdf2_sha256$36000$RFQ9pRx5pM77$S7BpiFxzJcC07TiaVfddHg0vzGeSBl/jdvPSsfcSCQs=	\N	f	ber_8-A.43				f	t	2017-10-25 19:57:16.570234+00
48	pbkdf2_sha256$36000$4wBkoycgdsuT$mGvLfYOapzEPOJB7C3YsogZik0Es04dgV16S2QCRGu0=	\N	f	ber_8-A.44				f	t	2017-10-25 19:57:16.630548+00
49	pbkdf2_sha256$36000$WKeYZ35yoRrq$uXExYYbnK+KOOfSZrE24OhNdvu/hgJs5v7Al7NKQ7Us=	\N	f	ber_8-A.45				f	t	2017-10-25 19:57:16.730507+00
50	pbkdf2_sha256$36000$pPBtBf0jlPfn$tkLjDBNeqmc/0o8WlhTLjTjAdWle4bJ+wzCcgu3b5L0=	\N	f	ber_8-A.46				f	t	2017-10-25 19:57:16.810353+00
51	pbkdf2_sha256$36000$gB6SP9jlOqXQ$4C9YndIyp3UKeXQX2pUa/w4cqbsnoZnjp9Wad08hzmA=	\N	f	ber_8-A.47				f	t	2017-10-25 19:57:16.866068+00
52	pbkdf2_sha256$36000$eyIvYZLGZQoG$KSaygnIEELvsYBc1yq7LtmbhKtqg8enVpYRfnR2mVPE=	\N	f	ber_8-A.48				f	t	2017-10-25 19:57:16.920947+00
53	pbkdf2_sha256$36000$sWepwch1yDb6$toHoTeKamDIjA8+baTeQm2PlkirYxBlPL94tUqyj8GU=	\N	f	ber_8-A.49				f	t	2017-10-25 19:57:16.977602+00
54	pbkdf2_sha256$36000$j5sGEVH1LaS2$WK8qUBfY4vbpaqFlzoSbK0xIlmF7BtydZYwcO+nmWTM=	\N	f	ber_8-A.50				f	t	2017-10-25 19:57:17.052154+00
55	pbkdf2_sha256$36000$NuIuBkCc5IIZ$X1dFSTJAkiKVeW5w/pvK6N2wrqB+WAvr3/UeaQhCVo8=	\N	f	ber_8-A.51				f	t	2017-10-25 19:57:17.190653+00
56	pbkdf2_sha256$36000$EYfYTYtyu10W$xgh8uVbhNcEYG7Z0AiQ/82Pcvxx/f7HQDak5Rg4wP1A=	\N	f	ber_8-A.52				f	t	2017-10-25 19:57:17.333079+00
57	pbkdf2_sha256$36000$jQ0CxDSeXqZs$6+7+W5zDn4nfD+aGohorf/eLDlHgJ+tlb9L5bi2emzE=	\N	f	ber_8-A.53				f	t	2017-10-25 19:57:17.47289+00
58	pbkdf2_sha256$36000$wN2Dibf0PSsu$PgAKw4+FHcwGQILtOPQEDQTLUYiacm4rX3sLUby9aFo=	\N	f	ber_8-A.54				f	t	2017-10-25 19:57:17.599844+00
59	pbkdf2_sha256$36000$QzjpS3EtySQS$rvfQqYpFGkXXI/G9/8C39bhsUJq+orcvrWLH05LO3fY=	\N	f	ber_8-A.55				f	t	2017-10-25 19:57:17.762418+00
60	pbkdf2_sha256$36000$cCc0QbUOtsds$dbli6I2sGea3Q2d4lkoyYkrwINF4jU62h7Rj0QRY8FM=	\N	f	ber_8-A.56				f	t	2017-10-25 19:57:17.895741+00
61	pbkdf2_sha256$36000$snNV46Pmrm3B$ce+KrCmSWPGGCYOeE+swILCRZSv4iLRurS2fTb30qck=	\N	f	ber_8-A.57				f	t	2017-10-25 19:57:18.01623+00
62	pbkdf2_sha256$36000$ybjLGTa2qFme$pVKV/zYhmP4iYodIK9RjdblQzndjQZdIOZ0BevW3SuU=	\N	f	ber_8-A.58				f	t	2017-10-25 19:57:18.133953+00
63	pbkdf2_sha256$36000$gTfuhkzgiyQA$DfsaHtMJayW+eBsonMLLpnaDw7OQj7XP+3xHLKtgg7w=	\N	f	ber_8-A.59				f	t	2017-10-25 19:57:18.239025+00
64	pbkdf2_sha256$36000$TJT6H0WTlyQH$xIM9zwmPwmhJ4CJtcBWjB93iiExeNv7DfDbSvsIICno=	\N	f	ber_8-A.60				f	t	2017-10-25 19:57:18.340409+00
65	pbkdf2_sha256$36000$IyWd3Dhef3aF$BbAbmavBqBj+8UhXUKEh+O6vp5hS4YE6IxdL/Y6+ni0=	\N	f	ber_8-A.61				f	t	2017-10-25 19:57:18.437864+00
66	pbkdf2_sha256$36000$KyKmIzHYaRyl$RGPHS6xdFOo1V+JZtnkMKZJGEplEBUWFnb2H3TLOIKQ=	\N	f	ber_8-A.62				f	t	2017-10-25 19:57:18.537052+00
67	pbkdf2_sha256$36000$4FbkaUakWky7$6NdOYqakLBu9REzYuNALcBYgXutEoVDpUrAE35mTDlc=	\N	f	ber_8-A.63				f	t	2017-10-25 19:57:18.634399+00
68	pbkdf2_sha256$36000$UYSfKJQOmzT2$f09yRUunN+5ZkZi+08gW4yIv4LF9DDrhJg8HGn6toig=	\N	f	ber_8-A.64				f	t	2017-10-25 19:57:18.733714+00
69	pbkdf2_sha256$36000$vkISeXs4dtV3$MnTBESXqatqmFQIt8o2zJSSqQcTVMS6AW88TRrEPXAs=	\N	f	ber_8-A.65				f	t	2017-10-25 19:57:18.870696+00
70	pbkdf2_sha256$36000$bBwbkujgzaAP$pBCM6Hwli9OlzBRImhjmQTa/TBIf5SpHGTac2YJaB+M=	\N	f	ber_8-A.66				f	t	2017-10-25 19:57:18.977572+00
71	pbkdf2_sha256$36000$TkD5yI98ESHp$PKE0lna3ekEfPeQ6uDWSauZN6ZcPMm76EWteulxJAzQ=	\N	f	ber_8-A.67				f	t	2017-10-25 19:57:19.064857+00
72	pbkdf2_sha256$36000$UxEZDMhECUw6$Tdoe/R1Fta1wJMeehbJzwIejqjKoR78FaIzwBPhw2Qg=	\N	f	ber_8-A.68				f	t	2017-10-25 19:57:19.144331+00
73	pbkdf2_sha256$36000$Mx9ZtkoqYRtE$gah0T+4xhZveJwCCtq6o8BJ4mVPM44imhT5crUOvP30=	\N	f	ber_8-A.69				f	t	2017-10-25 19:57:19.225602+00
74	pbkdf2_sha256$36000$CnD46qRWHiwN$M+WGSVVdgBabLEUfuNxThtG62IvNbGImj+BOTv1L5Ow=	\N	f	ber_8-A.70				f	t	2017-10-25 19:57:19.305724+00
75	pbkdf2_sha256$36000$h4WY8pw9mfQV$88m0dwt5Pngl72iss8vHckwa5fxnJYAvAAm6UgxK3/4=	\N	f	ber_8-A.71				f	t	2017-10-25 19:57:19.38597+00
76	pbkdf2_sha256$36000$31uutBdnwo0i$FPVtDJinKvlSm/o5dx09vPjevq/CWALzDprS+AUw/XY=	\N	f	ber_8-A.72				f	t	2017-10-25 19:57:19.46527+00
77	pbkdf2_sha256$36000$hhqs9fLMzU4C$V/P5dLmOENsLOCGLo+o2ZCPkSKWuEtOBBUI0KicvXCk=	\N	f	ber_8-A.73				f	t	2017-10-25 19:57:19.540077+00
78	pbkdf2_sha256$36000$saxycXrdhZZA$9V5kA5wSviZREeCFHmtP4T5fN5SRuPxL3I8LLzB4j0w=	\N	f	ber_8-A.74				f	t	2017-10-25 19:57:19.604714+00
79	pbkdf2_sha256$36000$rVuLQob2ve8w$z/uxFPjwOE4/k0/pyoL/i7CNDd1hAdweVbeGXRP6VQ4=	\N	f	ber_8-A.75				f	t	2017-10-25 19:57:19.669389+00
80	pbkdf2_sha256$36000$slh9vhtbeAei$2Ixnm9KBEa7wrOx+gTc6BbC0FvyeYh6QSsemYJVlvYI=	\N	f	ber_8-A.76				f	t	2017-10-25 19:57:19.73519+00
81	pbkdf2_sha256$36000$xZSDayC6rheg$Ch3+FftKGsRMKwhudhEuNGCcujKI01ARvR6N2IR+M1U=	\N	f	ber_8-A.77				f	t	2017-10-25 19:57:19.800372+00
82	pbkdf2_sha256$36000$DmJxLuIIjbB5$NUOfc9w5oqJDTLt392oWnIxvPgluldf7dUIHT1DOnZE=	\N	f	ber_8-A.78				f	t	2017-10-25 19:57:19.865486+00
83	pbkdf2_sha256$36000$Iw1mBCPV3Coy$j1zgSV650H14ND8WhTUr8UNJAQx0wAIa0ikgzvb5o5E=	\N	f	ber_8-A.79				f	t	2017-10-25 19:57:19.980192+00
84	pbkdf2_sha256$36000$0KxbpdSgo42f$7QcLIt+BGJC4YJVjkQm8Z26Ogz5odrlWV1PZW+BXlXs=	\N	f	ber_8-A.80				f	t	2017-10-25 19:57:20.120276+00
85	pbkdf2_sha256$36000$BbxmNJqRYbEP$F4bdh+U2e/K78loaNGgPWwHCoxe0qp4KdjL8hk2u1ZE=	\N	f	ber_8-A.81				f	t	2017-10-25 19:57:20.260865+00
86	pbkdf2_sha256$36000$KP3lUP0SSKz8$EKL4DVGMXRPoWJs9EqQEcsf/jb9h5qlBSUXJnHbcQ5g=	\N	f	ber_8-A.82				f	t	2017-10-25 19:57:20.401083+00
87	pbkdf2_sha256$36000$xVaBLw3KtTk4$w0H4wifz+W08suGfjG/f4zgALmThvrdrtB0m7E/FXTY=	\N	f	ber_8-A.83				f	t	2017-10-25 19:57:20.527835+00
88	pbkdf2_sha256$36000$HAb9qSxaTeKF$3MplTW3gA8O3fnrAGiY4rSyNo/VVfBaELGGtqXZx2hk=	\N	f	ber_8-A.84				f	t	2017-10-25 19:57:20.664267+00
89	pbkdf2_sha256$36000$1vCmPGuazP1G$0RdqZBZnayIqmxCbiHiiEZHSbECbCDt/lyxUuKskoXU=	\N	f	ber_8-A.85				f	t	2017-10-25 19:57:20.806735+00
90	pbkdf2_sha256$36000$myiHZVtWv3MM$khFV/fXqMCilWJw5JndxBqVjZP/cojTra3BNKLshN+0=	\N	f	ber_8-A.86				f	t	2017-10-25 19:57:20.94654+00
91	pbkdf2_sha256$36000$f0jk5hawVfGH$fpwrd3mYcTP28lAlTeeE3P2NHh9g60PK2zYL+DAgCdM=	\N	f	ber_8-A.87				f	t	2017-10-25 19:57:21.148301+00
92	pbkdf2_sha256$36000$Dn0oCqpFYV0d$KLm4UnD3nWVcCNxss8Orc/ujBLvDvSmN8fCfAfncSVk=	\N	f	ber_8-A.88				f	t	2017-10-25 19:57:21.270236+00
93	pbkdf2_sha256$36000$oGgOArfrQnjT$3bGzCKi5lgw5k3t11vIKydlcnEYvG8lLMANi/5wYVg8=	\N	f	ber_8-A.89				f	t	2017-10-25 19:57:21.391413+00
94	pbkdf2_sha256$36000$I3Ngx8U8JEbm$kVp3wWsTigdoHiheAVVd8TltlH8gZs5Ir3YxoYE7GXk=	\N	f	ber_8-A.90				f	t	2017-10-25 19:57:21.513025+00
95	pbkdf2_sha256$36000$apyM8dqOkfYw$426L+BenTHtO2c1QtOLdZkQ1RyUz8CYjZUZlx4RUtSE=	\N	f	ber_8-A.91				f	t	2017-10-25 19:57:21.612605+00
96	pbkdf2_sha256$36000$cGKobsln0vln$GMEZPV386maI49Mi9zXMPOd+k7zvO950E1RqAwbfo98=	\N	f	ber_8-A.92				f	t	2017-10-25 19:57:21.713836+00
97	pbkdf2_sha256$36000$qwyonltlYRfd$4tzGkU2TgDWoK+SVtht6ojzi3v94LtPhdB+WhlbEngE=	\N	f	ber_8-A.93				f	t	2017-10-25 19:57:21.812986+00
98	pbkdf2_sha256$36000$noMgMbnyG8lS$r/reS2Hn4ojsChFuPJR1qWOJA+4rer/4kG8biRHil5s=	\N	f	ber_8-A.94				f	t	2017-10-25 19:57:21.912504+00
99	pbkdf2_sha256$36000$NbgXuPhPD1Da$zao4RbH8IUpzY6I4RxjTJDWrOwXGGIJCZXcG58IV4A0=	\N	f	ber_8-A.95				f	t	2017-10-25 19:57:22.022304+00
100	pbkdf2_sha256$36000$rspem1Z1bzyV$8xZxe7wQyqMO4fDkc3RCCM/E2elLTwwawNocBCEep2E=	\N	f	ber_8-A.96				f	t	2017-10-25 19:57:22.138867+00
101	pbkdf2_sha256$36000$HglBU4rMTOJD$u7SYRy3lAJX4oJI2kFcUeC3oFZalADQ3CbizYVS4GIs=	\N	f	ber_8-A.97				f	t	2017-10-25 19:57:22.223369+00
102	pbkdf2_sha256$36000$4z2XPx6I1MpA$zIkR8JxVQPFjYwCeEHQbe1XUqpG+ctZabPpeeax3H8k=	\N	f	ber_8-A.98				f	t	2017-10-25 19:57:22.305045+00
103	pbkdf2_sha256$36000$9209XLfFwshY$2QQUqS54N4krfkM5gTzKIK3gqrsf43zdkldA9LyDE/U=	\N	f	ber_8-A.99				f	t	2017-10-25 19:57:22.386261+00
104	pbkdf2_sha256$36000$aJ3ckDHeUdTM$PB22F1fR2MPQGgR9NZ3LYxAVu2kO1Ev7AKYfd+8oGB4=	\N	f	ber_8-A.100				f	t	2017-10-25 19:57:22.467185+00
106	pbkdf2_sha256$36000$1zFgaplYWwcv$lBFwACo9008q8/JYIrVrN/OFxT0s3s3eMpITI7tpfmA=	\N	f	ber_8-A.102				f	t	2017-10-25 19:57:22.610532+00
107	pbkdf2_sha256$36000$hqW8QeXTL7Lo$rT5dTgAR0wJpWGjVd57JX6dZFLryLIlRvxy/t8vyDB0=	\N	f	ber_8-A.103				f	t	2017-10-25 19:57:22.67671+00
108	pbkdf2_sha256$36000$geINJLj40SoZ$sNc6N+yPSwYjuOFYfPkjJizszqctyfZ+314v+vgYsR0=	\N	f	ber_8-A.104				f	t	2017-10-25 19:57:22.743836+00
109	pbkdf2_sha256$36000$2PPoOvZptZdd$lYvNa9nwRpIUAGCDMkIgks9CZsE+/gPEsJWoILdMBLY=	\N	f	ber_8-A.105				f	t	2017-10-25 19:57:22.809769+00
110	pbkdf2_sha256$36000$IcmNpPic5GfV$FB1wKS0L+B/9tA+pYMWxhTuInWz6PlVQRVf6Apmy82k=	\N	f	ber_8-A.106				f	t	2017-10-25 19:57:22.876025+00
111	pbkdf2_sha256$36000$rngf6A7e1sbc$pX2c6PEIYnV6noM7PvX63Ar6pp6B0K2+cIt3gI5xVA0=	\N	f	ber_8-A.107				f	t	2017-10-25 19:57:22.941306+00
112	pbkdf2_sha256$36000$riedVQgWuTos$EX4r+qO9HVy5FTgLbKocDcUay0B7HW/VHyPJctRwazs=	\N	f	ber_8-A.108				f	t	2017-10-25 19:57:23.006424+00
113	pbkdf2_sha256$36000$RlMDWe4xgET6$SiynyvwbS9QZGXHvYpFcn6ARXykU5VVlgNWCecnh/+8=	\N	f	ber_8-A.109				f	t	2017-10-25 19:57:23.06274+00
114	pbkdf2_sha256$36000$Zwnb0DkXcN3o$uXQ/h1CUK1Qf9O3+ilKbiBAJN1CODpn80O7TcNXtO64=	\N	f	ber_8-A.110				f	t	2017-10-25 19:57:23.117534+00
115	pbkdf2_sha256$36000$XtDnB5MA1vXn$xdtFO5QsCZMsbinViwVlQCSDe2nQFTbrcR+ltxJPEQQ=	\N	f	ber_8-A.111				f	t	2017-10-25 19:57:23.197791+00
116	pbkdf2_sha256$36000$dlitJTpHpCnq$e28yDHv5RGgeawB0M/4mFFGrRmvyZ+Hp/h8yWwqxXDc=	\N	f	ber_8-A.112				f	t	2017-10-25 19:57:23.252699+00
117	pbkdf2_sha256$36000$VwgOc8XxXlQ4$6zq4fuGg/KtoXOdma9zheazIIH1iVxaw2SUz7+2tIRY=	\N	f	ber_8-A.113				f	t	2017-10-25 19:57:23.307223+00
118	pbkdf2_sha256$36000$Dq6Dd9SVLkUj$zU4W1h43+mzdMBVco1JB3OaNkWohq7ujJ0MwMtCo/fc=	\N	f	ber_8-A.114				f	t	2017-10-25 19:57:23.362312+00
119	pbkdf2_sha256$36000$UQej2Ch8PQxI$Co2Hm6gB2syaVb4CzObA/YS73Kcsb03nOEo5FJfqjMs=	\N	f	ber_8-A.115				f	t	2017-10-25 19:57:23.417639+00
120	pbkdf2_sha256$36000$Gagwp0dPkwdo$soH49dkIdKixjoBZ45ElbAoKPrsUTYsbMVkWRxkGcGM=	\N	f	ber_8-A.116				f	t	2017-10-25 19:57:23.473601+00
121	pbkdf2_sha256$36000$znWPKtT8sITt$fReXwG0aDhIraLhGNRpQzbDfvgsprWEl4XsUjX3gTgc=	\N	f	ber_8-A.117				f	t	2017-10-25 19:57:23.528151+00
122	pbkdf2_sha256$36000$UGXco8ur2OPs$lXh46SUhoG5sT50fwW1oDH76usiVzmUcm/YK0lsut6E=	\N	f	ber_8-A.118				f	t	2017-10-25 19:57:23.582697+00
123	pbkdf2_sha256$36000$4OhliADNn6KP$+iChIFDt6aTmO/nnEEo92P8B9L4P6QOyr2g7B6mJtQQ=	\N	f	ber_8-A.119				f	t	2017-10-25 19:57:23.636886+00
124	pbkdf2_sha256$36000$scBBZPT0X8Wy$gMO9p0X/7K3Q9dnH4OTksEndB5CtPJcTajMTsDUvEjY=	\N	f	ber_8-A.120				f	t	2017-10-25 19:57:23.691662+00
125	pbkdf2_sha256$36000$mitd0uEIs54O$c32mJ7rnwj8RP/kRCHzIkPmfEXmAFjalfkbg1ICjLug=	\N	f	ber_8-A.121				f	t	2017-10-25 19:57:23.746692+00
126	pbkdf2_sha256$36000$McM4Nhj7MkaJ$4oSVey39u4tRmDf1xR4eBg+ZMzYeGeTA1z54KNE8LNU=	\N	f	ber_8-A.122				f	t	2017-10-25 19:57:23.801071+00
127	pbkdf2_sha256$36000$cXquAMBTiBMr$dIsxuSicvoVx17n49QxCdin3CAxjMkvaSq4UZww4W0M=	\N	f	ber_8-A.123				f	t	2017-10-25 19:57:23.855349+00
128	pbkdf2_sha256$36000$klb6bkw2y3HI$1BwTKv1b0hb/XCgAzk9dls/XbYuC+L2rMyqMnNYSNNo=	\N	f	ber_8-A.124				f	t	2017-10-25 19:57:23.909511+00
129	pbkdf2_sha256$36000$VayQ9EBMGrsK$I2ICyLoag4FxJO8o8ELTvhr9rrYJ7Gi4FG032ywV//I=	\N	f	ber_8-A.125				f	t	2017-10-25 19:57:23.96439+00
130	pbkdf2_sha256$36000$Q7VAZaGecgvp$gNhtTQlocfaRYJD/SXhZHu0DvXuI7Q/BX/6E9jXHgKM=	\N	f	ber_8-A.126				f	t	2017-10-25 19:57:24.018931+00
131	pbkdf2_sha256$36000$RlA0DAAJF4z4$tWjjx2GPigts/fgM/OU5vspvQi8Kep5Z99h9zP6utMo=	\N	f	ber_8-A.127				f	t	2017-10-25 19:57:24.073738+00
132	pbkdf2_sha256$36000$aqe1p49nzWFZ$15tqUJ0Jnp5q2SN+8g09HjVpe5Gk7SHCDEj+p6AgJ18=	\N	f	ber_8-A.128				f	t	2017-10-25 19:57:24.175019+00
133	pbkdf2_sha256$36000$rcSgxXFiE0xr$aMjTds5qDLbOfDRvGiDjIdvIi08vd60QwLZjeT7N/lg=	\N	f	ber_8-A.129				f	t	2017-10-25 19:57:24.259285+00
134	pbkdf2_sha256$36000$gP25SZQONWnq$rXu6TXjVxk/xWPr+Q64iverOu9SuBK95QcYbHQr/x6g=	\N	f	ber_8-A.130				f	t	2017-10-25 19:57:24.315131+00
135	pbkdf2_sha256$36000$1Jx9a3J2hrjR$NjlEPcTVPJ90GqW3e2Puz91aNJBi1eBKrIpXYpPoLpI=	\N	f	ber_8-A.131				f	t	2017-10-25 19:57:24.370483+00
136	pbkdf2_sha256$36000$Qw5mLc0eUy3l$WT9HdL3dAKzzKd1CTidOkWectQ+1XCyxcJFFXD+H2Bo=	\N	f	ber_8-A.132				f	t	2017-10-25 19:57:24.424897+00
137	pbkdf2_sha256$36000$iqkGNLqK1lg1$6oWGW0dZjFNd/ue1H7unAQylxDzvltW8Nj19PuJgjVo=	\N	f	ber_8-A.133				f	t	2017-10-25 19:57:24.479718+00
138	pbkdf2_sha256$36000$TJsQ1yGjH5fp$80V6YdmUvnzbP4696F7IfuddkBZ5J04w7NP0BWJsY+A=	\N	f	ber_8-A.134				f	t	2017-10-25 19:57:24.560277+00
139	pbkdf2_sha256$36000$OS1yXHHaTwJc$6ESkoyKQKMJMo6F9ldwswD/abc2gj3ioNCpy/nWfF1A=	\N	f	ber_8-A.135				f	t	2017-10-25 19:57:24.699645+00
140	pbkdf2_sha256$36000$ZP7uVzQnnn5j$1sHftojuKrrNXN1OFHwTIo7KBK1HDkXtIAIrBXVIvYY=	\N	f	ber_8-A.136				f	t	2017-10-25 19:57:24.841388+00
141	pbkdf2_sha256$36000$wNb0hq878jHH$xgXN3iGUH2Se1YViEhGINz7VwbrLgU5nbtSRQSUIUy0=	\N	f	ber_8-A.137				f	t	2017-10-25 19:57:24.981629+00
142	pbkdf2_sha256$36000$e2dEiGd9jjp4$ASkGE0AaDWz3OEg1NWYlRsO3QD0NIZMgX9UVx2DUbCw=	\N	f	ber_8-A.138				f	t	2017-10-25 19:57:25.099973+00
143	pbkdf2_sha256$36000$RAIqXPVKJBBJ$vO74Kxb5QJEWgWOxNUt/b2fbPZjhbvr5xEeuyoEbh2w=	\N	f	ber_8-A.139				f	t	2017-10-25 19:57:25.211912+00
144	pbkdf2_sha256$36000$H7FZAeyTcnjV$gw7oOLyn0qI21uQhF2w4VxJGjXCchWAmBKYsTY14P2E=	\N	f	ber_8-A.140				f	t	2017-10-25 19:57:25.373996+00
145	pbkdf2_sha256$36000$LGg62DyFzyas$5kP4umgaMZ1fmLB9uezNwe0rrX9SWICQqdsCau+XXVc=	\N	f	ber_8-A.141				f	t	2017-10-25 19:57:25.48564+00
146	pbkdf2_sha256$36000$2qrSfA28a5kH$Lz6rrttV18wu3cJTTtGT0bnY9OSqcV2QDNPDo6MGR8M=	\N	f	ber_8-A.142				f	t	2017-10-25 19:57:25.579517+00
147	pbkdf2_sha256$36000$U4WlWBBDb9mW$MPo/fYARmtTR2NER7MxBrnBG4Cyt5MDwF2B1v44pwmg=	\N	f	ber_8-A.143				f	t	2017-10-25 19:57:25.666967+00
148	pbkdf2_sha256$36000$RY4mUZPPkx3P$0HnPLWlxsoNz61MlkxTL3K1BqrSzmojZpI5H5oT3rE0=	\N	f	ber_8-A.144				f	t	2017-10-25 19:57:25.755785+00
149	pbkdf2_sha256$36000$8xcwdiHYgJRQ$8pDWg9CRTnim7QS8p19tlEysaF6hfbYyDiuZJjdKiVo=	\N	f	ber_8-A.145				f	t	2017-10-25 19:57:25.84279+00
150	pbkdf2_sha256$36000$Wq18P8gqlHbK$6xpO74O6C7L/g1/8/Wsvf7teptsPvTThC/ActjzV0Uc=	\N	f	ber_8-A.146				f	t	2017-10-25 19:57:25.929826+00
151	pbkdf2_sha256$36000$xaWpA06wmF1b$ggbWI4tnU8TBHUDxgbr+TQZD1F2pY9WoGUWsseRxUkc=	\N	f	ber_8-A.147				f	t	2017-10-25 19:57:26.018121+00
152	pbkdf2_sha256$36000$z7sXXRxiMd3S$58fxCvy7xPBPiSe3jZdVgwLOlUvWao2W/8F8E+F4O9Q=	\N	f	ber_8-A.148				f	t	2017-10-25 19:57:26.09046+00
153	pbkdf2_sha256$36000$r2EYo3npaCE0$jSAgS4W9p0mvuD9rxyg6vxRmlEae5UZSlqHjUo2QxFA=	\N	f	ber_8-A.149				f	t	2017-10-25 19:57:26.163276+00
154	pbkdf2_sha256$36000$Q69ZmOGB6VGf$qXIqyA9kDP1gMf/mCcQL4PnrWy1GSvBBBRZW2NiYrRY=	\N	f	ber_8-A.150				f	t	2017-10-25 19:57:26.23789+00
155	pbkdf2_sha256$36000$hd5Ms9qr6cEo$ffVpDLksXqLyDgs6VWJsUmr2IqEqrJKlm97jvK3uU/s=	\N	f	ber_8-A.151				f	t	2017-10-25 19:57:26.310061+00
156	pbkdf2_sha256$36000$lSINczdIq73a$6hIebq0yOs1NNjDzj3KUGvZgtoF7uh8yUX7X/lIeR90=	\N	f	ber_8-A.152				f	t	2017-10-25 19:57:26.427798+00
157	pbkdf2_sha256$36000$6T1LfwMKoAdK$U+oI2S0LkppcIPWDNsqVcLTsOdn+wrHr8kdJQEfxEwM=	\N	f	ber_8-A.153				f	t	2017-10-25 19:57:26.499775+00
158	pbkdf2_sha256$36000$n8fkZKvIs4Rv$5x/dYLo+wb4amst2kV3jFdBZe5AP3k9c+Im79H7ZGmc=	\N	f	ber_8-A.154				f	t	2017-10-25 19:57:26.562551+00
159	pbkdf2_sha256$36000$nzvZEm1esH8c$C4Qd/yOLYyUWECgQ4xgAEng0eb1aHUCQ1+u6dOsV3VM=	\N	f	ber_8-A.155				f	t	2017-10-25 19:57:26.62337+00
160	pbkdf2_sha256$36000$2mBlzTPMVKwS$EQYeDSJtPtFKRvrULmN61jpw3I33apUsWZ4EIWU0/14=	\N	f	ber_8-A.156				f	t	2017-10-25 19:57:26.682555+00
161	pbkdf2_sha256$36000$19rjUMQDoPrU$TQmOc/Hs8rHQRRn7tJpMfxXXxzj1xy515V+i0WRreIs=	\N	f	ber_8-A.157				f	t	2017-10-25 19:57:26.742743+00
162	pbkdf2_sha256$36000$NGwXIbh9pMyu$b0zzZl3ufXs948psjeMCWtJUlNl6a00ufesAh4IRFAI=	\N	f	ber_8-A.158				f	t	2017-10-25 19:57:26.802277+00
163	pbkdf2_sha256$36000$4WDcAslUbkS8$bwRCSiB4kM20x44wcW+90BPBeXNij6bA8D1mphl09bI=	\N	f	ber_8-A.159				f	t	2017-10-25 19:57:26.864231+00
164	pbkdf2_sha256$36000$VJcMpDOZDgzq$nqq+ZWv7RjbT0sq6ZBZO9ZxYrXl2orNflf0F40zia80=	\N	f	ber_8-A.160				f	t	2017-10-25 19:57:26.923564+00
165	pbkdf2_sha256$36000$ZU52MXqoNRKb$aPCrCC29waT5APsd45K9w+frMLHY0dEYqd0cOb/y3eI=	\N	f	ber_8-A.161				f	t	2017-10-25 19:57:26.982851+00
166	pbkdf2_sha256$36000$EWSbqecvxBIF$zq9qkgIaRSpNDqjd7uV25ineRiUae3IonBoaG0NCJrw=	\N	f	ber_8-A.162				f	t	2017-10-25 19:57:27.040853+00
167	pbkdf2_sha256$36000$DpRQIA9acVj6$ArYnUp+a+Ih4ihDKv6ZdISpvKMLSQMnBHOwi1hUVqQU=	\N	f	ber_8-A.163				f	t	2017-10-25 19:57:27.101516+00
168	pbkdf2_sha256$36000$LR4Qt6wDUZ11$qFpSCArydIELVeNHXfhoKWq1tHbRG9oJeP4ORY2eYVU=	\N	f	ber_8-A.164				f	t	2017-10-25 19:57:27.157112+00
169	pbkdf2_sha256$36000$t0hvC5hAlktG$Ho/csey7ehj8e62+4dISmTtxJuCgMWgPLP/PVquK4Cw=	\N	f	ber_8-A.165				f	t	2017-10-25 19:57:27.213598+00
170	pbkdf2_sha256$36000$BY4PesVRxS17$kxTyqXoojkQficPlKAzjiwQIh+Ls6MwTUi79uwF4u1I=	\N	f	ber_8-A.166				f	t	2017-10-25 19:57:27.269489+00
171	pbkdf2_sha256$36000$AMdfBQQws5rU$Vk+AIG9NBX/vYEGX7EJxjfbfpBd+qKH2MTmKjKQb4Ng=	\N	f	ber_8-A.167				f	t	2017-10-25 19:57:27.325107+00
172	pbkdf2_sha256$36000$P4ucRsbPpiXX$cGg525J1Wf7zZS+FGb18puS5/bBeO9tzMlvnpQb3oE0=	\N	f	ber_8-A.168				f	t	2017-10-25 19:57:27.38011+00
173	pbkdf2_sha256$36000$U7Xy5kgDWtzG$CInXAygv6Gaq+osbruqM31a+0RyyqqiRoyLHATQq6L8=	\N	f	ber_8-A.169				f	t	2017-10-25 19:57:27.449623+00
174	pbkdf2_sha256$36000$mklENaSRh387$RrRutEFTzmccoXpZ2GZ7+YokSSBTQ0T0XavnVoqeWuQ=	\N	f	ber_8-A.170				f	t	2017-10-25 19:57:27.518826+00
175	pbkdf2_sha256$36000$prjtKCxHii43$aiwdM9au2k9Drns6b5w3hF+RG4tdngpK4aUSTWEW5a8=	\N	f	ber_8-A.171				f	t	2017-10-25 19:57:27.573755+00
176	pbkdf2_sha256$36000$NILfMX27fCH7$KjmW8oYguv74A0Zv+tqM41wEW+vJ3imU1rUviJ2NbWs=	\N	f	ber_8-A.172				f	t	2017-10-25 19:57:27.629381+00
177	pbkdf2_sha256$36000$qjXqIpCFbTUA$xZpEt0Jlv3RTkE8m57EFNiPmBUYYxx1RK3iEKDILlk0=	\N	f	ber_8-A.173				f	t	2017-10-25 19:57:27.683597+00
178	pbkdf2_sha256$36000$GgT83tS7uN3S$Uixx0BjWcoUB59H/Y4mGdNgUWcL+U8KI/zETSeFQO04=	\N	f	ber_8-A.174				f	t	2017-10-25 19:57:27.740785+00
179	pbkdf2_sha256$36000$48DfFDE50grh$GjkYQcyUCuy+ilXsKf7Cdg7HFXf1GGiMIlsienmfJXY=	\N	f	ber_8-A.175				f	t	2017-10-25 19:57:27.806545+00
180	pbkdf2_sha256$36000$XQa9W8rTfCSI$bqR2umbDId/r6MO9nzA1hRqR0lYwN5vlzmnxKVm4Pn8=	\N	f	ber_8-A.176				f	t	2017-10-25 19:57:27.861267+00
181	pbkdf2_sha256$36000$03VgbbmYiPta$VQ9do1xO7gew4olArsSWbf77UJTROl5V9cHYZRZhYuA=	\N	f	ber_8-A.177				f	t	2017-10-25 19:57:27.915366+00
182	pbkdf2_sha256$36000$5CLzxhwQZboC$A2YpJ5tXhSr0hEUtzoOh/SvL0fqcW+e6FRBfSjIs2U4=	\N	f	ber_8-A.178				f	t	2017-10-25 19:57:27.969474+00
183	pbkdf2_sha256$36000$7uNPC2zxGPmk$j4+HbgwFrfS6TsK/WSJhBDmRC5Hk3JB7cGnT38hUNaQ=	\N	f	ber_8-A.179				f	t	2017-10-25 19:57:28.023814+00
184	pbkdf2_sha256$36000$A7otNmxCTgKI$g7OWS1i6sQIN9drhedxOYg8ZLXuEg0IWHJB4R3Er9YM=	\N	f	ber_8-A.180				f	t	2017-10-25 19:57:28.078281+00
185	pbkdf2_sha256$36000$y2Em9IJRJQJx$Jnv7UvZuCH+/u78vfo2thEECrRy14824sfMUkgTBLpE=	\N	f	ber_8-A.181				f	t	2017-10-25 19:57:28.133074+00
186	pbkdf2_sha256$36000$47IrBar7F3uV$EKOG/t/DleVORQ9z1WtRKqC4SaUjkRGSPTVAJjORpYs=	\N	f	ber_8-A.182				f	t	2017-10-25 19:57:28.187805+00
187	pbkdf2_sha256$36000$YRwOFBhLhGcG$jXhjyaAK4cPrLp3g08L1LBR4Ic7lXKGxTUm7MRK/cvc=	\N	f	ber_8-A.183				f	t	2017-10-25 19:57:28.310815+00
188	pbkdf2_sha256$36000$y4J2ev4fVk9R$PqqX/w/WkY7ShBoIQFWarMxfQQ7GW9JadHXzvsnRwRg=	\N	f	ber_8-A.184				f	t	2017-10-25 19:57:28.387321+00
189	pbkdf2_sha256$36000$Jl6cRfLdil2P$7crpBvRxz+04+gGn9ZyXTZfv4417r4Vf+qfw8ZV8PcE=	\N	f	ber_8-A.185				f	t	2017-10-25 19:57:28.439668+00
190	pbkdf2_sha256$36000$T1Jm0NOrokbQ$QxO1/GM3TxaiLctxi0m8Iw0/OjBASeM2JXCURgOUVxE=	\N	f	ber_8-A.186				f	t	2017-10-25 19:57:28.510425+00
191	pbkdf2_sha256$36000$vlOjLYWiTSOU$fjTMT5fMiLVOEUwUUrZpNwFBTQsP+20Q3qBGPL5NQhE=	\N	f	ber_8-A.187				f	t	2017-10-25 19:57:28.655664+00
192	pbkdf2_sha256$36000$Kh15RHaJS5vJ$kBOMdQWlLpPbaLrgF6MUc7ok0WMds8tW3Sbji7Itl/Y=	\N	f	ber_8-A.188				f	t	2017-10-25 19:57:28.798021+00
193	pbkdf2_sha256$36000$2LCTNwc7QsWR$RKFzzmKnTtVLyyRZvCZjxMKUOryd2BkOvPe8QevgXQY=	\N	f	ber_8-A.189				f	t	2017-10-25 19:57:28.939755+00
194	pbkdf2_sha256$36000$xbrjLbwhP0d5$fAEUXG7PGtdbCcsGAgjhYOJMpc+ITzvXTfEDGWUJuVQ=	\N	f	ber_8-A.190				f	t	2017-10-25 19:57:29.068215+00
195	pbkdf2_sha256$36000$5jhhXglhaxkn$akNUyzWKS2ynlG6P5EGXJ9RnSO3ruVgK7n7qKabw+2Q=	\N	f	ber_8-A.191				f	t	2017-10-25 19:57:29.179904+00
196	pbkdf2_sha256$36000$p6j0hUeBckEw$yYbrr9GwRinZ9wyWsv637lwlgauX7SNMh2gYFtqH5Ks=	\N	f	ber_8-A.192				f	t	2017-10-25 19:57:29.294495+00
197	pbkdf2_sha256$36000$TOPhNHJFFqKC$mhjel3dUvsx+jzs+MNTgI/x/7QsGQzxzWFRbXiCu0SI=	\N	f	ber_8-A.193				f	t	2017-10-25 19:57:29.406787+00
198	pbkdf2_sha256$36000$zGsbPzS2uMSl$yEdr++NcsTF5mCAZGXlI6mzGQbS83MPDus5FW6WIPJ8=	\N	f	ber_8-A.194				f	t	2017-10-25 19:57:29.520925+00
199	pbkdf2_sha256$36000$1qe9k1E60Q0o$lDpTt5eojERgRGmGXyBPsYWnVQ3jGR9x8qaSgHHX2ss=	\N	f	ber_8-A.195				f	t	2017-10-25 19:57:29.662186+00
200	pbkdf2_sha256$36000$rJH9Y3QgIvEL$/wOboFWYETt0ZtexQtnwBINXKMB19+XdCsYqUcDvrGE=	\N	f	ber_8-A.196				f	t	2017-10-25 19:57:29.757486+00
201	pbkdf2_sha256$36000$BmLlYA3wuR0A$rrd7JOATSkeFhn2uig5/fIu0rrcd0rm7k7ZkRbs23FY=	\N	f	ber_8-A.197				f	t	2017-10-25 19:57:29.852337+00
202	pbkdf2_sha256$36000$GkugoUqV5AXn$t4AvyS+xXVVOKnvy9HG0DbeNT8e2eD7hpLoAZU0fUhc=	\N	f	ber_8-A.198				f	t	2017-10-25 19:57:29.946003+00
203	pbkdf2_sha256$36000$C5imDd4TN9lY$QsjD8tUMsMu7pAMeS+VlhDgkhuD+sG4JJOgGTAIe7xg=	\N	f	ber_8-A.199				f	t	2017-10-25 19:57:30.037117+00
204	pbkdf2_sha256$36000$M0ywBzzBwWKG$k/KGZCeEx1v/L/fkPQP3mW7jK4yATbXxW8V4hEPVLkc=	\N	f	ber_8-A.200				f	t	2017-10-25 19:57:30.114154+00
205	pbkdf2_sha256$36000$z7bNXxtCjZuO$9smhluJdKd89On1yQMpGqGwzy7glQBVo9AbHHblbm6o=	\N	f	ber_8-A.201				f	t	2017-10-25 19:57:30.191098+00
206	pbkdf2_sha256$36000$ymVUwG0Unbt2$TrzSU96DJQIP4X13hUM1LNglwHo6YOxI0bUW6ZZOgws=	\N	f	ber_8-A.202				f	t	2017-10-25 19:57:30.269281+00
207	pbkdf2_sha256$36000$wLYG8WnAqKC6$9xvcqtHTPX1o2yTP1ajTashMJWqUfSOFxShLPOXjNNQ=	\N	f	ber_8-A.203				f	t	2017-10-25 19:57:30.346818+00
208	pbkdf2_sha256$36000$GsaeIAL9y2H1$bL9RrVNYinr3JtFSjz3PR5SxUI0dGLKzvJSej/XXCNE=	\N	f	ber_8-A.204				f	t	2017-10-25 19:57:30.424298+00
210	pbkdf2_sha256$36000$8QSP94Ww34uC$NNA9Sp+SQg53L9HCsxZeCG1Rsi/J3C5+VGrDWgD7voE=	\N	f	ber_8-A.206				f	t	2017-10-25 19:57:30.567463+00
211	pbkdf2_sha256$36000$BSHUZ0xKyaGe$TAnf8PQnjtzEDu4MFeOFvBwf1qL9nIFOBxgApr6gpsA=	\N	f	ber_8-A.207				f	t	2017-10-25 19:57:30.635846+00
212	pbkdf2_sha256$36000$kzPWQ4cfN2RD$GOY41Kuwoiubu32yLDUDevuOjvxxOoeNVj+N6m3yOyI=	\N	f	ber_8-A.208				f	t	2017-10-25 19:57:30.722596+00
213	pbkdf2_sha256$36000$WXu1CaOOm7VR$+GCCiFehZ1cu4oMwXi7bukRDWbK3/OEmIP9lvFheiRU=	\N	f	ber_8-A.209				f	t	2017-10-25 19:57:30.784609+00
214	pbkdf2_sha256$36000$541t5Fp0XWwu$LJKfb8Hv1Xi3vsSEuR+QV1Wp4orVV1XEWRQdCd2myb4=	\N	f	ber_8-A.210				f	t	2017-10-25 19:57:30.846825+00
215	pbkdf2_sha256$36000$ZgqEqmBVEn3y$W9+a7DQBTY3/rts/7mVN/0h4Hg/bXiCnq6Ft5O0Zmnk=	\N	f	ber_8-A.211				f	t	2017-10-25 19:57:30.909821+00
216	pbkdf2_sha256$36000$5lJBsGcb7wuY$sgR/D1Y6ul+S0OEIjQGOCmWiQtrAtc5zvPl5Obpf9E4=	\N	f	ber_8-A.212				f	t	2017-10-25 19:57:30.972727+00
217	pbkdf2_sha256$36000$ixZwzF04FJLL$lR94bUWAJPCRYaVLPHRaRyBzpiJsBykey+jQl1f2s1I=	\N	f	ber_8-A.213				f	t	2017-10-25 19:57:31.033678+00
218	pbkdf2_sha256$36000$bqrssw0esHKA$XxwNPe1XOH5EM/5AKNHpOVkhFCKDK4gHCp9ydMfaxts=	\N	f	ber_8-A.214				f	t	2017-10-25 19:57:31.08938+00
219	pbkdf2_sha256$36000$E3dEwowmvnWT$maP4Yb89riXxT6qNOBrExEgz+LI+itaYGKWuVrIYQKE=	\N	f	ber_8-A.215				f	t	2017-10-25 19:57:31.143524+00
220	pbkdf2_sha256$36000$NTNKRC5za2Y9$JyQ7Ck+7Mhq+J3kupfRkvNtubyb1wQxf2Jg7m4+NSas=	\N	f	ber_8-A.216				f	t	2017-10-25 19:57:31.197761+00
221	pbkdf2_sha256$36000$XTpbTRIJwa39$4zCZgKhA93Wa0HRwA0JjNvKfe61PGNzkBYCgH01b63s=	\N	f	ber_8-A.217				f	t	2017-10-25 19:57:31.253848+00
222	pbkdf2_sha256$36000$89sJVhqu7Rrr$vbniUnskeyKSnT3U3sbS0/ZwPOC3gGopPJswTPDaf1w=	\N	f	ber_8-A.218				f	t	2017-10-25 19:57:31.308392+00
223	pbkdf2_sha256$36000$qxdz2EXCJ3mN$+0BU6OtFO0qATznR+nRjGHQhB5F7J0f6OumkKGbyuLM=	\N	f	ber_8-A.219				f	t	2017-10-25 19:57:31.363906+00
224	pbkdf2_sha256$36000$vJn0tpmLGo0r$ghRGzv5PTACtDasDmWsCo0bTS9XJkbbctoaKUAtQ/ZA=	\N	f	ber_8-A.220				f	t	2017-10-25 19:57:31.419682+00
225	pbkdf2_sha256$36000$AYx4JcBpWro6$sHnxzFZYN8Gv3WGgZACXtZtnGjYQdnPK0Kqlrs/6S/s=	\N	f	ber_8-A.221				f	t	2017-10-25 19:57:31.474005+00
226	pbkdf2_sha256$36000$2dPvPIYNPfLU$6ivCW09WTA8uoEoNzC2gTIox38SvtaGSFcoc6EdVII8=	\N	f	ber_8-A.222				f	t	2017-10-25 19:57:31.52894+00
227	pbkdf2_sha256$36000$vk7XQLXDQdkf$O4/5o3GMTpx2VEcyAYJ+AKdHWrzJCBEZmGFdJ0MaiZU=	\N	f	ber_8-A.223				f	t	2017-10-25 19:57:31.584518+00
228	pbkdf2_sha256$36000$ouWvJGAr6CYY$XhLb2RDDvECCxGqCuGZdVlP9DrrqZy/UrfxfxIQvpZA=	\N	f	ber_8-A.224				f	t	2017-10-25 19:57:31.640083+00
229	pbkdf2_sha256$36000$9IG5J9rzXgJZ$NWSkrDsZWrOSAnFMU7EBy97leYXdlM454i6Ht32YAEM=	\N	f	ber_8-A.225				f	t	2017-10-25 19:57:31.71112+00
230	pbkdf2_sha256$36000$cXX7ZIUkhn2P$e9/J6yCeHNzKVwT/r5zi+zECbjCTuBpmEW/BXEjdi7o=	\N	f	ber_8-A.226				f	t	2017-10-25 19:57:31.778043+00
231	pbkdf2_sha256$36000$TPWc3Q7ZmQuM$OLXQ26O2F+UWN0A2NlxfJ8KBGtfAt2L28VdAqnJYQ3w=	\N	f	ber_8-A.227				f	t	2017-10-25 19:57:31.834017+00
232	pbkdf2_sha256$36000$DRFtVOnBoDPM$sPxWrPHRCXCilpovlfC5/VFJfcNP0v5E7RRNHy9O2wM=	\N	f	ber_8-A.228				f	t	2017-10-25 19:57:31.88912+00
233	pbkdf2_sha256$36000$j8Rc2KxSCZId$acKhtGQNCiWXnHq2/2aRdlygytdOkXooDqPDpPVTwjg=	\N	f	ber_8-A.229				f	t	2017-10-25 19:57:31.94351+00
234	pbkdf2_sha256$36000$sYs0kVBmRVng$17RYUHvKY/es5HUijZELd6vczTQ7FE27NI+87CvxGig=	\N	f	ber_8-A.230				f	t	2017-10-25 19:57:31.997088+00
235	pbkdf2_sha256$36000$AX1vg5ZQrrOg$AZ543Nx3L+YcNTwrYcxvXqsjHjojB/EjTtdRqQImv5U=	\N	f	ber_8-A.231				f	t	2017-10-25 19:57:32.051639+00
236	pbkdf2_sha256$36000$VGLXd0temNTp$2s8k8bxPU8paflhHBP9MKzXbiNvCq/m9wqtBXhSxbDM=	\N	f	ber_8-A.232				f	t	2017-10-25 19:57:32.109957+00
237	pbkdf2_sha256$36000$MYx8qjPeCVdF$CVG9AefMTbRS39tD7ucQk5zBF94i5a1lvfrBM2kUnWQ=	\N	f	ber_8-A.233				f	t	2017-10-25 19:57:32.165113+00
238	pbkdf2_sha256$36000$4gCfNH8GZrD2$ohKbJSBCVyKvXS+zIwc79zMJWkSZ9vreLNHpHNXi4ao=	\N	f	ber_8-A.234				f	t	2017-10-25 19:57:32.221724+00
239	pbkdf2_sha256$36000$zrxuMHHtFiuO$GI+lUPtUgdLghTQ/kOOHwpNVgzjo4fYbxZthh/AVN6c=	\N	f	ber_8-A.235				f	t	2017-10-25 19:57:32.276579+00
240	pbkdf2_sha256$36000$NUAcv2JWCXKJ$SWNzJO+gFH3jYNw5TyY8+zhMTkbzf8kIqcByBFTgnj8=	\N	f	ber_8-A.236				f	t	2017-10-25 19:57:32.332161+00
241	pbkdf2_sha256$36000$HNVwMREYkY6A$+3YvP+9MD8HftoAE5dCQFlA4XX+lbfABk6/oSCX0eO8=	\N	f	ber_8-A.237				f	t	2017-10-25 19:57:32.387298+00
242	pbkdf2_sha256$36000$HgbgJ8CuekXM$b9WpMGtDzAVq5n1u0mkYhadSU6Og88uQG+g918FWqtE=	\N	f	ber_8-A.238				f	t	2017-10-25 19:57:32.443134+00
243	pbkdf2_sha256$36000$dd3E9cw8Odox$P5Kuj3GZkK2T9myZUmcS84OL5qionDFl91UqG607dgM=	\N	f	ber_8-A.239				f	t	2017-10-25 19:57:32.499276+00
244	pbkdf2_sha256$36000$OOS1hDCLOIdK$Oi6W7gV8wO2LX12p4P5eLRSo46qLEcRJDRLDCAdTawk=	\N	f	ber_8-A.240				f	t	2017-10-25 19:57:32.554565+00
245	pbkdf2_sha256$36000$yFWuz8bjsgS4$OhAuIOUbNQQ5JQI1dRjfh+VH+u1+of8jjSFHN6NcM/E=	\N	f	ber_8-A.241				f	t	2017-10-25 19:57:32.609818+00
246	pbkdf2_sha256$36000$cwJiZKC1ZhRY$rb6XnuznxqYoD9muuuiW7ZneTMHUpM+njWQg2S6GrjI=	\N	f	ber_8-A.242				f	t	2017-10-25 19:57:32.664184+00
247	pbkdf2_sha256$36000$fOWwtD8wKE3b$WcuKM0OGN1Qd3aZa7ugHW/bXD/d86UeRnICWV1TKwkw=	\N	f	ber_8-A.243				f	t	2017-10-25 19:57:32.719176+00
248	pbkdf2_sha256$36000$xEDHuN83zMUa$tEq7EuJrVFL1Nc3VpWMhcLV2Dt6i0WAIF7S86knfyhM=	\N	f	ber_8-A.244				f	t	2017-10-25 19:57:32.803361+00
249	pbkdf2_sha256$36000$PlFDJFxa10Jt$gqRsZ0NzVg+AnHdTRaFN6VKYB4Q3YGojsF2Q1Ikw3WI=	\N	f	ber_8-A.245				f	t	2017-10-25 19:57:32.858791+00
250	pbkdf2_sha256$36000$AVLBVq3VI9uz$mCcC7FLmsSH33oZUxntqvk7ltu9qtP2WYQrr4NsJMW8=	\N	f	ber_8-A.246				f	t	2017-10-25 19:57:32.914845+00
251	pbkdf2_sha256$36000$rq6MX2u41cpv$TnyFZKZn8Fe/kUg+ce6J28bbJyUGt6V7jHTP/kIgyHk=	\N	f	ber_8-A.247				f	t	2017-10-25 19:57:32.970373+00
252	pbkdf2_sha256$36000$inhj0hYhwb0n$bVdXvEgjZgfK5Hvbp2mwVRLWpipwYvzguRaq1uYRmZU=	\N	f	ber_8-A.248				f	t	2017-10-25 19:57:33.026431+00
253	pbkdf2_sha256$36000$vJRMP8WxgtPx$obVUXq/zF3SINH2q8O80NbyhiRKWN57IMIwXhzJ5nq8=	\N	f	ber_8-A.249				f	t	2017-10-25 19:57:33.083837+00
254	pbkdf2_sha256$36000$eGraD8tpNaei$t6XIY1ACioMc3x0ese9yE65xBDwNxTc1vKTcIRiCTqA=	\N	f	ber_8-A.250				f	t	2017-10-25 19:57:33.13934+00
255	pbkdf2_sha256$36000$QNc1haCHdwJv$WWj0e1PnfEedCs8AZlDMTjN6yPVBW9BQrqsCMWw2VPo=	\N	f	ber_8-A.251				f	t	2017-10-25 19:57:33.195006+00
256	pbkdf2_sha256$36000$MqGXpSdwKHtj$u5d/q+2ieKElLeq+BrktkWPgeBe+KB1mMVKzETcyj8g=	\N	f	ber_8-A.252				f	t	2017-10-25 19:57:33.252287+00
257	pbkdf2_sha256$36000$Gye3N5OrnOHb$2/pi4QrY495orpbHS2oartl2remrWg0PvJ1pVife2Zw=	\N	f	ber_8-A.253				f	t	2017-10-25 19:57:33.309226+00
258	pbkdf2_sha256$36000$4h3JMlxuc5ja$VgTKxWvviiF4L0EeULOOXk0qfNbzl7FHU1k3z7kd9lQ=	\N	f	ber_8-A.254				f	t	2017-10-25 19:57:33.365119+00
259	pbkdf2_sha256$36000$GbkKtGbNFDPz$JX5gOdx1ksEXadmKvDZehbuchj4NXGSEMfAq9PtyaEQ=	\N	f	ber_8-A.255				f	t	2017-10-25 19:57:33.42436+00
260	pbkdf2_sha256$36000$7298ao92jHFJ$1yYG0d2GelVMnh7LZDBxWtaO9TfA93MzfO9Y7QD4uCE=	\N	f	ber_8-A.256				f	t	2017-10-25 19:57:33.481058+00
261	pbkdf2_sha256$36000$hP5TmKgrmZIM$xiJOOw0kvBZjZ/Pl9IKK27wSeTZTkyKM7t7F/+C5uEc=	\N	f	ber_8-A.257				f	t	2017-10-25 19:57:33.541661+00
262	pbkdf2_sha256$36000$IFxEddCHLOuO$LHpnzgxfEIaW4KXuhvwtAfx35vKAMPnEeyjJ34nMzXg=	\N	f	ber_8-A.258				f	t	2017-10-25 19:57:33.60178+00
263	pbkdf2_sha256$36000$dQMQX7Ekl3gM$e+vluh+wMBfZJh5an9ZiQys2M1jUFY4bGOwfV4NPGyA=	\N	f	ber_8-A.259				f	t	2017-10-25 19:57:33.658647+00
264	pbkdf2_sha256$36000$Rw1GQXtvE9Tf$WUn20cvYONR5nXlcQ446DYue494aSYiH88C3sYFkQcw=	\N	f	ber_8-A.260				f	t	2017-10-25 19:57:33.716202+00
265	pbkdf2_sha256$36000$OAxXfQYPBDh9$p2U8JmT59uP8e4jPyP4gabirjU8XxIzl8fOvbE6Shng=	\N	f	ber_8-A.261				f	t	2017-10-25 19:57:33.772269+00
266	pbkdf2_sha256$36000$f3kZp1ZyRTJL$jx8Id4UjoQ0lDjrAcDEwnLQgoKHPQgmkQOY8HmGRMvg=	\N	f	ber_8-A.262				f	t	2017-10-25 19:57:33.853698+00
267	pbkdf2_sha256$36000$09k9GUuxnFTG$wBUkTQQIzPtt7FHplGMWxkmU7F7rfaYY+UEdtBLg6ls=	\N	f	ber_8-A.263				f	t	2017-10-25 19:57:33.908074+00
268	pbkdf2_sha256$36000$HFKtn5Rj5BTi$LFb+Hr/wFESwdYTRpDmguoAaapEta0ca0bRDyaeyQWA=	\N	f	ber_8-A.264				f	t	2017-10-25 19:57:33.962107+00
269	pbkdf2_sha256$36000$lxBWfh1ow2Gk$rw5JDuH9fATuB/DEBiaP9LQgEy7gJ9O1AP/5b7kpFXI=	\N	f	ber_8-A.265				f	t	2017-10-25 19:57:34.016609+00
270	pbkdf2_sha256$36000$r9dqwNqne1Wy$mYZnbnEtlk8qVosKi1jvRd7qGvP2PmLe6g8yb0r/SXk=	\N	f	ber_8-A.266				f	t	2017-10-25 19:57:34.075998+00
271	pbkdf2_sha256$36000$7Re3aei86R0s$vhaVNTy6z2U7Ke3VHzpKh9T3sB22Npl0Ex23A1kvbf8=	\N	f	ber_8-A.267				f	t	2017-10-25 19:57:34.135247+00
272	pbkdf2_sha256$36000$JgcuBkHarU02$I8gHvVKmaPn9Tsb3RXsYv04FrRmXZFx8s7KBKcPYCVM=	\N	f	ber_8-A.268				f	t	2017-10-25 19:57:34.194432+00
273	pbkdf2_sha256$36000$3yDDv4Imz0ZY$7MVD+TtAFF4gay16JDm05b5Fm5vzg/liYX6n6oBpCuk=	\N	f	ber_8-A.269				f	t	2017-10-25 19:57:34.254573+00
274	pbkdf2_sha256$36000$mwnS3ib15NKT$1AWNE7wiJR8lXoYrQjnDUjZvQ4KbA6xCOaiH44e2UsA=	\N	f	ber_8-A.270				f	t	2017-10-25 19:57:34.313721+00
275	pbkdf2_sha256$36000$y4hCMRCGSJuk$my4zrN1x2EkcAibFFT401dSMHi7IR7Q3WqqgcmVYGT8=	\N	f	ber_8-A.271				f	t	2017-10-25 19:57:34.372507+00
276	pbkdf2_sha256$36000$XNlpBCjk9lqi$221bN0lZV4upz9Nd4bP6vRH8rGTb5DRRWILD03CKMyc=	\N	f	ber_8-A.272				f	t	2017-10-25 19:57:34.43134+00
277	pbkdf2_sha256$36000$DySmjFVBT7zr$VNRE4Iit+Fl45H+UUcW+r8KiXwXiV0GBs6BwPF/rghg=	\N	f	ber_8-A.273				f	t	2017-10-25 19:57:34.490246+00
278	pbkdf2_sha256$36000$E602wDZz697N$bL2isYS45HUTazJGd5ghhUhP2zTJzgentb/QNsZ3e4Q=	\N	f	ber_8-A.274				f	t	2017-10-25 19:57:34.546576+00
279	pbkdf2_sha256$36000$iCIYbY2YIst6$6lLokKAx9fPCxCVTPowQToNC4hVacO3oW6M8plQezSg=	\N	f	ber_8-A.275				f	t	2017-10-25 19:57:34.600886+00
280	pbkdf2_sha256$36000$ncSv3sYmdElD$RwRx4Bp6kvXMbJ/VIUy2TQ5t7Ydp8nQGLevZ/nabfdY=	\N	f	ber_8-A.276				f	t	2017-10-25 19:57:34.655517+00
281	pbkdf2_sha256$36000$vllrT4sWi2fS$64Na31fLrE7kbh3yWk6LolYdBVrdU9qZsVCWrrtkdB4=	\N	f	ber_8-A.277				f	t	2017-10-25 19:57:34.71127+00
282	pbkdf2_sha256$36000$Z3duhNcJAqfV$teNAOhDtD3L0XZ7pBD5zCmwStIWnr8CP15C8QlFlfqA=	\N	f	ber_8-A.278				f	t	2017-10-25 19:57:34.766293+00
283	pbkdf2_sha256$36000$SvAgjZ7uPG4Q$nxs5NrvP7WWuUk0f9im93wpAgYcyoTNaQJSxt0kRGAE=	\N	f	ber_8-A.279				f	t	2017-10-25 19:57:34.820879+00
284	pbkdf2_sha256$36000$tOhhWgSopdPn$fzNEC5MXmdCBXVvmgmQ9ZKdZAy1UTjaLde6AnFLVvdU=	\N	f	ber_8-A.280				f	t	2017-10-25 19:57:34.901851+00
285	pbkdf2_sha256$36000$1czX8g5pzqWp$92gU0m/hwu5ekI94LmrSl7Og8Cb1aM9Zor9d3E6sTxk=	\N	f	ber_8-A.281				f	t	2017-10-25 19:57:34.955701+00
286	pbkdf2_sha256$36000$KEpuYbnqq3aP$MJHOzAhpJac6gxPC4etvkwQKhdUl3ymUmc3VTpGzqK8=	\N	f	ber_8-A.282				f	t	2017-10-25 19:57:35.010776+00
287	pbkdf2_sha256$36000$hukCtaWpDkHf$japrclo3Ty+LLjuzZeRtaWingJDxiEGSBqnOL65dKkY=	\N	f	ber_8-A.283				f	t	2017-10-25 19:57:35.077741+00
288	pbkdf2_sha256$36000$CMLVqQMU2nZb$sOXHCM1qYYcwa0Fu12MRIKiEkVaYd88O0Vy8G8Mlf0A=	\N	f	ber_8-A.284				f	t	2017-10-25 19:57:35.131347+00
289	pbkdf2_sha256$36000$SOXxvVyt91E5$yibXGT0LBraUBPNafUDUgih/iO/swKc4RYpg8v3two4=	\N	f	ber_8-A.285				f	t	2017-10-25 19:57:35.185737+00
317	pbkdf2_sha256$36000$F74ekzrGgQOm$PwFqwTsUNanCLL6wyaB/kjJzh72GwcdsHEC8thtr89g=	2017-11-09 06:51:20.864404+00	f	ber_8-A.313				f	t	2017-10-25 19:57:37.146364+00
291	pbkdf2_sha256$36000$wrzwsvKXXlJd$243HJCeKrurxOsYrIUPot0eGR84LspGQP894kS+Tesk=	\N	f	ber_8-A.287				f	t	2017-10-25 19:57:35.295747+00
292	pbkdf2_sha256$36000$6DTBj8304caP$5J3ZCTuG03G83WRkV4kd5DChXoCFse3Z6nvAClYSIeU=	\N	f	ber_8-A.288				f	t	2017-10-25 19:57:35.350952+00
293	pbkdf2_sha256$36000$B8B0Z2OwXXcB$DPY16BCCb2EMlUx7JVW8G0f1ini4dVYv3kWCqN/UJbY=	\N	f	ber_8-A.289				f	t	2017-10-25 19:57:35.405904+00
294	pbkdf2_sha256$36000$gWP34pcfGgio$bdae/4NgWMpqNZXBqY1sHHv5fL6tIGljrA/OvZtHo50=	\N	f	ber_8-A.290				f	t	2017-10-25 19:57:35.46059+00
295	pbkdf2_sha256$36000$MDykn0jW8Dx1$Exi9SqGQzlrqk4QQJrRah61hmGWC5yZLhjkficM8IrY=	\N	f	ber_8-A.291				f	t	2017-10-25 19:57:35.515629+00
296	pbkdf2_sha256$36000$B7QFzvd5uWKW$j/EIZEZrzZil2+G0RZvuM+o2f9Yqp5E1aYnzy6+t+To=	\N	f	ber_8-A.292				f	t	2017-10-25 19:57:35.65628+00
297	pbkdf2_sha256$36000$Sdvfqcunyio4$cI/+EiaC9DeRqjOfd4N516LnBcBYloqp1gucNZW20zE=	\N	f	ber_8-A.293				f	t	2017-10-25 19:57:35.803678+00
298	pbkdf2_sha256$36000$n91OQnFCvCEu$Z53iH1EMJ1G0RGXUVllViiBr58ou2eIZ0tuNmqre+3U=	\N	f	ber_8-A.294				f	t	2017-10-25 19:57:36.00071+00
299	pbkdf2_sha256$36000$aNm7p4I9dGp7$3Acp12vf+xl7PQTPbKFj/mOq2vGabt/oMnd4HeJdJzs=	\N	f	ber_8-A.295				f	t	2017-10-25 19:57:36.06954+00
300	pbkdf2_sha256$36000$wpPXnaqsxPWR$eKXVvaLCjAJ/ACSzaw9+8u18JJmtO8zdrB81GiOUfUs=	\N	f	ber_8-A.296				f	t	2017-10-25 19:57:36.122874+00
301	pbkdf2_sha256$36000$tBw0fgsVYKe4$tOS/zMkY4ui33F5S+HlrM9ZvHPzMraZtiVuzjTomQAI=	\N	f	ber_8-A.297				f	t	2017-10-25 19:57:36.17856+00
302	pbkdf2_sha256$36000$JAL3QTBKqoPS$iEnkGP2g25Lz4LDdYfzqFL5KBGdA8AdO9GK2mIxk4MU=	\N	f	ber_8-A.298				f	t	2017-10-25 19:57:36.233436+00
303	pbkdf2_sha256$36000$9wtm8Wa5QcNp$DwTq3PtruaLJhxJvcoUenqTsF1y8IAkvMyJQujvay0w=	\N	f	ber_8-A.299				f	t	2017-10-25 19:57:36.28756+00
304	pbkdf2_sha256$36000$jlUJJy5pQ3A3$VF4RExts74YGVswBnSFX2gsYejp7tgwKgdteeqtZgcM=	\N	f	ber_8-A.300				f	t	2017-10-25 19:57:36.341712+00
305	pbkdf2_sha256$36000$RK2bMQaClcD6$jvkaCPzwHkEbjwERiwZGpllTkP0kB9hTeSutyOKYZ8Y=	\N	f	ber_8-A.301				f	t	2017-10-25 19:57:36.395272+00
306	pbkdf2_sha256$36000$gPnpuURrsGGA$pN0D165u8WANBZc4qsGxMUb1aac9amCwF2A5U13L27w=	\N	f	ber_8-A.302				f	t	2017-10-25 19:57:36.449134+00
307	pbkdf2_sha256$36000$C0BOM5jI2qyl$8PzHAKXWvNX8nic1iUD9qIRpucsj02r15/FqaJS5Zs0=	\N	f	ber_8-A.303				f	t	2017-10-25 19:57:36.502781+00
308	pbkdf2_sha256$36000$Lw5L7mq0LcfS$wEhmld/q2I+ubpcpnGFgvd5T35sdsxxnxc9E2YQfZvU=	\N	f	ber_8-A.304				f	t	2017-10-25 19:57:36.55639+00
310	pbkdf2_sha256$36000$2ASyxQAOT72y$ddI1Lfi8hJZsJf5Nu7XiRmh5gh93G3SZj2MS+6xxHMU=	\N	f	ber_8-A.306				f	t	2017-10-25 19:57:36.664475+00
311	pbkdf2_sha256$36000$D2ZjhcmAo3cx$JngGZqZZv8SC23hFDcPYJsjW7jkWtHZVFSG8EJZDGXk=	\N	f	ber_8-A.307				f	t	2017-10-25 19:57:36.718851+00
312	pbkdf2_sha256$36000$D7Q7cpZPVNeu$0IVlDf5EkfOK90xH+0DlQmiDDaAxa32frPlQgI8S+8o=	\N	f	ber_8-A.308				f	t	2017-10-25 19:57:36.773191+00
313	pbkdf2_sha256$36000$kSfWx5GKlYnG$DN3BGQLz+Ep+B/zriQNrq+TMmyCYSKL3dgLxfFGPESw=	\N	f	ber_8-A.309				f	t	2017-10-25 19:57:36.828134+00
314	pbkdf2_sha256$36000$kICtKVgd1rTO$BcfY5yysKc/xhw8tz6Bje1By8nKE26zAjkdRqetPPfA=	\N	f	ber_8-A.310				f	t	2017-10-25 19:57:36.882361+00
315	pbkdf2_sha256$36000$93x4Ydlkgpgy$oNhziRMFLjs7Ex7RV8taMTa/tDUIbTekeKqn8RMsyuA=	\N	f	ber_8-A.311				f	t	2017-10-25 19:57:36.936041+00
316	pbkdf2_sha256$36000$cmxMIQyCnp7R$FgbWLAjd8EdTBIZQQFj171VD+0NywPBDf8JDUOEc7Zw=	\N	f	ber_8-A.312				f	t	2017-10-25 19:57:36.990463+00
309	pbkdf2_sha256$36000$e4cIasPV346D$AT33wXbZMWhEItUi4pXjVTFQezIiOqywhGdHC8rezHY=	2017-11-10 12:08:44.327833+00	f	ber_8-A.305				f	t	2017-10-25 19:57:36.610361+00
318	pbkdf2_sha256$36000$EmIvHsHI1a13$6q0ki6OjjtjMp7YkRwlbeuRlpQ3zDFqHHA01s7htj08=	\N	f	ber_8-A.314				f	t	2017-10-25 19:57:37.291862+00
319	pbkdf2_sha256$36000$tu44rNvw9QT6$8JeoqEHT+xRUpRgbX/+xmIfLKRBvGBL7IGfQ7neUwlY=	\N	f	ber_8-A.315				f	t	2017-10-25 19:57:37.431209+00
321	pbkdf2_sha256$36000$5d5FfrbfzUFP$+qkvk8FyyWVszpqJtonNT2vLixCiLEiykCZxkpv8nVY=	\N	f	ber_8-A.317				f	t	2017-10-25 19:57:37.594394+00
322	pbkdf2_sha256$36000$ZGZV3genmwh7$J5AXzUXn51B6BegOtFvlbYa2p0iF7ooltvppDK7IHD4=	\N	f	ber_8-A.318				f	t	2017-10-25 19:57:37.649943+00
323	pbkdf2_sha256$36000$wWFdD3XuAjyJ$xqIngP3i1dDhFhjt+KMqfPlv4vX1GlB1AiFCWoPbaO4=	\N	f	ber_8-A.319				f	t	2017-10-25 19:57:37.705041+00
324	pbkdf2_sha256$36000$TGu0ED9lY4Lt$cvhPD4KD/RJy2Vj3mmZ/RHbx7CxHL9+oVB46xVawZpM=	\N	f	ber_8-A.320				f	t	2017-10-25 19:57:37.760077+00
325	pbkdf2_sha256$36000$OOvvKeo3sFWC$n3bjWg0vJn9nMNEDfXIo4WoFOj3yvo3OxXBH1CLK7UU=	\N	f	ber_8-A.321				f	t	2017-10-25 19:57:37.81468+00
326	pbkdf2_sha256$36000$xThdfyIviAGa$fQwQbgs5kgZLIMHkBSx+vpYju4jARH6XKmCkqjkU81Y=	\N	f	ber_8-A.322				f	t	2017-10-25 19:57:37.868045+00
327	pbkdf2_sha256$36000$QmnAkHNWPHrR$6P7GzROSUiPB3pqcHJE+yNLF0vxJ9uCjfRSPJVW6QCA=	\N	f	ber_8-A.323				f	t	2017-10-25 19:57:37.921988+00
328	pbkdf2_sha256$36000$ZGtX2dElVlyQ$XVRwO0R7gGJdKrlEaKHSGcKoCdpJ7zW/NzK1HfaTfbg=	\N	f	ber_8-A.324				f	t	2017-10-25 19:57:37.976334+00
329	pbkdf2_sha256$36000$QMS8ctWOfXzR$qPoPPp9dL/mc6R/87WNNffp/PZKKl9OrFDE4AySkSnc=	\N	f	ber_8-A.325				f	t	2017-10-25 19:57:38.030688+00
330	pbkdf2_sha256$36000$DfHjw5Ts73lA$viz6AmzJlMDsuXTrg95wS5fYPVO3PM57SyoY8mSr8DI=	\N	f	ber_8-A.326				f	t	2017-10-25 19:57:38.084998+00
331	pbkdf2_sha256$36000$cN9fkwoWrXxI$5rGEDuXXee5v3w2gGppnoL8BIJDyIE/B3xXraJnVUj8=	\N	f	ber_8-A.327				f	t	2017-10-25 19:57:38.138912+00
332	pbkdf2_sha256$36000$V3I2wmMXKKYV$PlrFuw+veeQRnAeNflKCc9nbF8ONEHei6q6W0YVXd0Y=	\N	f	ber_8-A.328				f	t	2017-10-25 19:57:38.220542+00
333	pbkdf2_sha256$36000$KDFteAzZokM6$KlXOK2HFsv7uCLDuNH/BugY6j/wrxp5Zjl2POXXji5I=	\N	f	ber_8-A.329				f	t	2017-10-25 19:57:38.275122+00
334	pbkdf2_sha256$36000$YJ15WATst24C$rYs4jJjP3Jbs4N0OU0eM4AbzJAZl7xbG62cvl9PdQFQ=	\N	f	ber_8-A.330				f	t	2017-10-25 19:57:38.330831+00
335	pbkdf2_sha256$36000$KkwkZH3HBF1n$/+LyQ5xuwJXR389DEt+/T4lO84wbo46HdruMfYOHcN8=	\N	f	ber_8-A.331				f	t	2017-10-25 19:57:38.386343+00
336	pbkdf2_sha256$36000$MRp5mlaMIwos$qwRgTRKCQVU18XyAhg06riQJecR3uTJmg5q7go5Kmdg=	\N	f	ber_8-A.332				f	t	2017-10-25 19:57:38.441367+00
337	pbkdf2_sha256$36000$MsrM9Qxv1v47$XhUaO5wXsG95agcjSAie73MVBPwra91Bz2drZqKZjqs=	\N	f	ber_8-A.333				f	t	2017-10-25 19:57:38.496444+00
338	pbkdf2_sha256$36000$tX7uf4Pg8tCw$ZWcygR9jnapOOrqohs1XvB+f6x9yw23/JzjFuqMpm44=	\N	f	ber_8-A.334				f	t	2017-10-25 19:57:38.601129+00
339	pbkdf2_sha256$36000$dZjgjoOFdaPR$zgx1lFYYWxgArTUPBiRq7Fxtfh+ut+K5WE9uRLRSZU8=	\N	f	ber_8-A.335				f	t	2017-10-25 19:57:38.74948+00
340	pbkdf2_sha256$36000$Tu5pqJqRNHJt$cdhvshAnGqVVp/YFC8CTzk6APei559fDHGhOvMEwnQk=	\N	f	ber_8-A.336				f	t	2017-10-25 19:57:38.888891+00
341	pbkdf2_sha256$36000$95Qs6g5S3xL7$WTsh/K/vWgY5cIlYFPNidvf9bIMTMDAeMlTOynGaej4=	\N	f	ber_8-A.337				f	t	2017-10-25 19:57:39.027195+00
342	pbkdf2_sha256$36000$ClQkx9zAirN9$f4sS1N4lrKxqdbn9X41WdeTvidW+U4XVxwgZLwFNt9I=	\N	f	ber_8-A.338				f	t	2017-10-25 19:57:39.154531+00
343	pbkdf2_sha256$36000$p0AaYe7aYdhQ$aCzaeY13UdOeLnc2Flyll/IX1GCIjclWmkZw3zcKpCs=	\N	f	ber_8-A.339				f	t	2017-10-25 19:57:39.344439+00
344	pbkdf2_sha256$36000$DqCqbV5EDrDG$5KmDXjH9KRYQ2omeKr+Xj/KH+tNZO9PRvv6xKD8h1rk=	\N	f	ber_8-A.340				f	t	2017-10-25 19:57:39.472063+00
320	pbkdf2_sha256$36000$ogaTx1QcyCSm$1bvfkncTzTI5tVx+gqTa0i2koZBs558ZW26DvLcsr8M=	2017-10-25 19:58:40.990069+00	f	ber_8-A.316				f	t	2017-10-25 19:57:37.539478+00
345	pbkdf2_sha256$36000$4qxvhhPbe5xT$bhALAExfhGZrm5CiFAP61EJBQd6yD+tP/Ne5qPfxbjk=	\N	f	cont_219-1.1				f	t	2017-10-25 20:03:15.874098+00
346	pbkdf2_sha256$36000$MmSRIajmCwtK$O81Egbdqmr08Wv3ahJF1+/4U7NQsD59MytdBiHs7hzE=	\N	f	cont_219-1.2				f	t	2017-10-25 20:03:16.065157+00
347	pbkdf2_sha256$36000$9h01whNj0ruS$yCRgc9sr4+iGyFiHieVq729Fc0sjc4wTgeyShEV8Ifo=	\N	f	cont_219-1.3				f	t	2017-10-25 20:03:16.260802+00
348	pbkdf2_sha256$36000$09GTLjR0xnF4$/bbrJgG0+Y3ohHpsE0E1GxBn5cUNK20JP0AT4vw5cUU=	\N	f	cont_219-1.4				f	t	2017-10-25 20:03:16.406184+00
349	pbkdf2_sha256$36000$FDMoxWo0RbVF$MewULtwytQm5IvXvL0OO92g5fe2FXbSi4VKSjnzx+xg=	\N	f	cont_219-1.5				f	t	2017-10-25 20:03:16.545617+00
350	pbkdf2_sha256$36000$DtfSkAqYGi1Q$V5YtFq0yY1K8BdvyZRem4SXySdu6iGr/SgGqGD6jA0s=	\N	f	cont_219-1.6				f	t	2017-10-25 20:03:16.66464+00
351	pbkdf2_sha256$36000$BdRXyao5PPGw$nzAVZYgOinIzJO9idBSodIfMA6YyoNOO6K+8hV4zNQw=	\N	f	cont_219-1.7				f	t	2017-10-25 20:03:16.780056+00
352	pbkdf2_sha256$36000$mtj2Fzx2Pr1s$N8f4D+TMnUb9FXdP2gusbM6HZGiMsZciTRoiL5soxvE=	\N	f	cont_219-1.8				f	t	2017-10-25 20:03:16.893918+00
354	pbkdf2_sha256$36000$jA6RdNMU6cx9$kzAf/4GhbIACpc66NjWNgvbUnLypQKu7/9VN6IPuQFo=	\N	f	cont_219-1.10				f	t	2017-10-25 20:03:17.106326+00
355	pbkdf2_sha256$36000$RmKnmAHOA9oC$lSZ5egOpEZJvD04+FDEAs2fJ108kHaGxNeZ3sIpIYgA=	\N	f	cont_219-1.11				f	t	2017-10-25 20:03:17.233976+00
356	pbkdf2_sha256$36000$GiQ41PTMFTRY$iuzWS7zeySX9Iuvwbri7s7/ALNSqBAR4dRMY6YEwV+Y=	\N	f	cont_219-1.12				f	t	2017-10-25 20:03:17.339587+00
357	pbkdf2_sha256$36000$NhSxQpAVWuuK$k3uxGX7V1YWqLtS+PFmG7xu7Szv3OHehWzYVgKxlSRw=	\N	f	cont_219-1.13				f	t	2017-10-25 20:03:17.434683+00
358	pbkdf2_sha256$36000$T3kLiA9n0oX1$2oA1p4+TcPXl/D86Uei9Mpr1XPHFqd8sln2CGe1E8JI=	\N	f	cont_219-1.14				f	t	2017-10-25 20:03:17.528261+00
359	pbkdf2_sha256$36000$78Vkciq3gIa0$lQw8zwmICiDZwW6AcMY9mHcmcEzbdrxZXoYu6hj9r0A=	\N	f	cont_219-1.15				f	t	2017-10-25 20:03:17.60583+00
360	pbkdf2_sha256$36000$KHWq76hOz1KR$TQX33rw+sFP+wvRzwR70XIe+9kK6EZuME3lyra/kRUw=	\N	f	cont_219-1.16				f	t	2017-10-25 20:03:17.68306+00
361	pbkdf2_sha256$36000$iA26Xx9SFo8b$tMsIxGwxe3jf6HWPkU4VhP34nKsuOgvM9AfSFnsyGtI=	\N	f	cont_219-1.17				f	t	2017-10-25 20:03:17.762088+00
362	pbkdf2_sha256$36000$3omPNbPkKT3Y$PHaDeKuLM3Z3j1KBAngWmNDhB9x2OUaEGjhOJMbbcsk=	\N	f	cont_219-1.18				f	t	2017-10-25 20:03:17.839664+00
363	pbkdf2_sha256$36000$17HUPikiRhtS$5r2NOqoEYUJDpQ9iTSwy/F9MF25lBXLTxBP8+ldDONY=	\N	f	cont_219-1.19				f	t	2017-10-25 20:03:17.91766+00
364	pbkdf2_sha256$36000$tsercdJU1yrz$4joX1PesiXjMpNOy1Pg1kRkTOie0hF+2HRUDcwbTBMo=	\N	f	cont_219-1.20				f	t	2017-10-25 20:03:17.995616+00
365	pbkdf2_sha256$36000$nQIPIMXJt5U3$UlT+4icwrcTZTN/B5mNHBxXvJVOvP0aceGaizf46KxE=	\N	f	cont_219-1.21				f	t	2017-10-25 20:03:18.064062+00
366	pbkdf2_sha256$36000$LnPTmcuI4BR3$I6PeshvtfzS4qQoZXpPyKgAkLs1eNkboYo5J1fgAmEI=	\N	f	cont_219-1.22				f	t	2017-10-25 20:03:18.127778+00
367	pbkdf2_sha256$36000$JzX2yatYggBA$/ad9wRJY/9lFnxjFq0DCBWVJ3mm8GJdf2c2vpBS2dS8=	\N	f	cont_219-1.23				f	t	2017-10-25 20:03:18.191542+00
368	pbkdf2_sha256$36000$l8J66raaQ9rp$LI57sITDWCkEtCHGE+0AcmuEcIMM3LyMaLoSWLaniFk=	\N	f	cont_219-1.24				f	t	2017-10-25 20:03:18.255496+00
369	pbkdf2_sha256$36000$9T5UBKdXqeQa$lk6fkqi7QOt/OiATfQl4+HQKmrOblFp136zMzSlDoZc=	\N	f	cont_219-1.25				f	t	2017-10-25 20:03:18.348389+00
370	pbkdf2_sha256$36000$oj0c548cbjI3$Hz69HkSk8GdM/pjg0VQ467an7LToBlY0exjD7AsROO0=	\N	f	cont_219-1.26				f	t	2017-10-25 20:03:18.412265+00
371	pbkdf2_sha256$36000$LUJck98VmJBO$tf5I8Wdhhnsh7s9I8PJKXbP2192EYe3JjVUDXBPV8kQ=	\N	f	cont_219-1.27				f	t	2017-10-25 20:03:18.476187+00
372	pbkdf2_sha256$36000$RBxmaAahnX5v$6XbUAlQ7ieRvVgtB4oo915GHPgFYzZV/wxIMHlwzd1E=	\N	f	cont_219-1.28				f	t	2017-10-25 20:03:18.538211+00
373	pbkdf2_sha256$36000$A4hSFnTbG9EM$5Fktbkiion1X25jzKvkKwuapnVVJj/ppoiKm3qCP+2E=	\N	f	cont_219-1.29				f	t	2017-10-25 20:03:18.594376+00
374	pbkdf2_sha256$36000$ejfVe6d8RYd1$kei4oFZ9u82+pjmEBD/7zScwRaE73jJJX94MwEZiQAU=	\N	f	cont_219-1.30				f	t	2017-10-25 20:03:18.653274+00
375	pbkdf2_sha256$36000$UklhK4GxZ5Bk$n7Cpxw5R3TpRmbVvFCVWvefXIvxLeZwc9U3+uOD1dbM=	\N	f	cont_219-1.31				f	t	2017-10-25 20:03:18.71186+00
376	pbkdf2_sha256$36000$j1YkjujHdLn3$mNZlxvYUZ9QkriLTql+zdDjsbds247cjmkE5KxWQZ6Q=	\N	f	cont_219-1.32				f	t	2017-10-25 20:03:18.768373+00
378	pbkdf2_sha256$36000$xn2a5qEhve6O$3kMkmgDsr1MMOUGPq2KDryCRkIpEKTAzXxCogf89umk=	\N	f	cont_219-1.34				f	t	2017-10-25 20:03:18.880631+00
379	pbkdf2_sha256$36000$eiTkLN88iafK$VincEqcDJTa2ZNTYBZaz6E1k4kMK7NAI19HeLvZ46iE=	\N	f	cont_219-1.35				f	t	2017-10-25 20:03:18.935133+00
380	pbkdf2_sha256$36000$M3muxO3W9hwD$0vvl+q7iDQUxZNxaaDOJnRyKk4a+GNoeIPJ71O77GRw=	\N	f	cont_219-1.36				f	t	2017-10-25 20:03:18.991442+00
381	pbkdf2_sha256$36000$wXS4Z0hUH70V$YAq1MAfnU3CMN9cktPnvsMuWgnG+cHd6l82fL+lgDik=	\N	f	cont_219-1.37				f	t	2017-10-25 20:03:19.046694+00
382	pbkdf2_sha256$36000$TOZVIkW2lMQL$4H0hsFx3bJLE0gJ2idhPxxxOLMgn4CkaBh9PfUS331w=	\N	f	cont_219-1.38				f	t	2017-10-25 20:03:19.102159+00
383	pbkdf2_sha256$36000$43ad6AqS5d4m$pmr5699bcvywhL+uRdkcFiXpwGSM9CYxxhw6OYxILbk=	\N	f	cont_219-1.39				f	t	2017-10-25 20:03:19.158389+00
384	pbkdf2_sha256$36000$5hpiTUYaT2hh$C3Jlm2K7JCuujZIDPUe7NeE/XcxfP4OxqBAWiXE1r00=	\N	f	cont_219-1.40				f	t	2017-10-25 20:03:19.21523+00
385	pbkdf2_sha256$36000$WWZnjtUZDFJW$EAf96hxNuFPMd83GiZrc4raN83RjOJCqM+gA89ndheQ=	\N	f	cont_219-1.41				f	t	2017-10-25 20:03:19.271597+00
386	pbkdf2_sha256$36000$WttXh0J9uWkG$xnkZ89FuE4HSL1YMTHe3vSgIeQeO12FJmAxxvLX+ctk=	\N	f	cont_219-1.42				f	t	2017-10-25 20:03:19.341851+00
387	pbkdf2_sha256$36000$uxFmVkotC5A8$2PO1H9z5zIFZ5/R6cVyCan/7IKvUF/LaH+gvGa9WWm8=	\N	f	cont_219-1.43				f	t	2017-10-25 20:03:19.409399+00
388	pbkdf2_sha256$36000$NjzLqjkQDTsg$KM6VMQYmf43GVLc7cC3JXSrPPc5hZaVoDVvm7G/fsxs=	\N	f	cont_219-1.44				f	t	2017-10-25 20:03:19.464586+00
389	pbkdf2_sha256$36000$kRm4E65jUng4$3gn9B3o9npRGWnRXlA2dfLrBDh+xNsQTgc3F2LRpcMI=	\N	f	cont_219-1.45				f	t	2017-10-25 20:03:19.52125+00
390	pbkdf2_sha256$36000$itiCnfhKZPpr$jW93MXvLSksn08iua2l+bAVhwuCRmFr+2aU2YIe8+dc=	\N	f	cont_219-1.46				f	t	2017-10-25 20:03:19.576533+00
391	pbkdf2_sha256$36000$iCFt8K4JbWmc$7nFycui5V1srTRQFO+ggg0Z0jNdL+3sz3ziq2JhTI6Y=	\N	f	cont_219-1.47				f	t	2017-10-25 20:03:19.633192+00
392	pbkdf2_sha256$36000$YtUZogNBCTrb$FDtKl+VEzip9LBWmmIIFDSgbtqJOpEzchQ3lmTdAoMg=	\N	f	cont_219-1.48				f	t	2017-10-25 20:03:19.691336+00
393	pbkdf2_sha256$36000$96ymPEojU8dB$AUizLCoh3Pa7tLQhiQ+valU/tXCp6A9pKK9jRkvZY+Q=	\N	f	cont_219-1.49				f	t	2017-10-25 20:03:19.748822+00
394	pbkdf2_sha256$36000$7ELZ2ArXZGhx$R8EmNIZK04hmI3muBvtaj9pUwFiSJcC4IfhhO0NA+dI=	\N	f	cont_219-1.50				f	t	2017-10-25 20:03:19.806143+00
395	pbkdf2_sha256$36000$1mPRpBxYzRCh$vifGWOFW44wDGJ3kkE4/ZjyyjeQ2yERAGGYkgktuK8Y=	\N	f	cont_219-1.51				f	t	2017-10-25 20:03:19.863146+00
396	pbkdf2_sha256$36000$JXS7FXCN2p3p$skpqBxHMZB/LhoFN8G9OmtAVMdt2sLbFtp0gun63Okc=	\N	f	cont_219-1.52				f	t	2017-10-25 20:03:19.919888+00
397	pbkdf2_sha256$36000$WS1Y2u7EAkpT$4AhQ700NACZ73OokyDYGlbFIGDKDm6oQCMe/nz5z3V4=	\N	f	cont_219-1.53				f	t	2017-10-25 20:03:19.976284+00
398	pbkdf2_sha256$36000$vxQYjiTHckkW$fjPMMpGYogFSgsg4OZ00TdD0oJvBglVcxgfNg1i6mT8=	\N	f	cont_219-1.54				f	t	2017-10-25 20:03:20.050815+00
399	pbkdf2_sha256$36000$8hJVrPtAz6Ow$/h56mvv/Ow63yDuK4HBMdy202uR9QwP0myMLk1LwVOs=	\N	f	cont_219-1.55				f	t	2017-10-25 20:03:20.193357+00
400	pbkdf2_sha256$36000$WZU29ellTPoe$yX9oMOjfSF2ln5cXD+q77oU2p6E9OB5iuIH4KSKSfY8=	\N	f	cont_219-1.56				f	t	2017-10-25 20:03:20.337622+00
401	pbkdf2_sha256$36000$tpMASBy7JUt0$bSGf7eCa3bNmcMMmkTb9z76SLLFyq+u6V35/kl7RvR4=	\N	f	cont_219-1.57				f	t	2017-10-25 20:03:20.532801+00
402	pbkdf2_sha256$36000$dtqhubyT1GL1$5WteYnW2XaYxdUYKJmEHYGpXR/9XsecmU6Q+v18Iwho=	\N	f	cont_219-1.58				f	t	2017-10-25 20:03:20.594013+00
403	pbkdf2_sha256$36000$w85L31oHYlth$rs7/QVt8LcBGgJ9dq4iaDMvCuGvdM6mfXApuj4IyS4o=	\N	f	cont_219-1.59				f	t	2017-10-25 20:03:20.650917+00
404	pbkdf2_sha256$36000$22Hd7MKMC3wp$e8ZAJ5WR2s2uhHbz0D2xem5NHZ3gHEeHxYl57WXzLOo=	\N	f	cont_219-1.60				f	t	2017-10-25 20:03:20.70696+00
405	pbkdf2_sha256$36000$zdTNdxxBBczh$AzaBnhA4ifxTZOvsdMCfSkLe8n/u6mE7zKbWkf/keMI=	\N	f	cont_219-1.61				f	t	2017-10-25 20:03:20.763881+00
406	pbkdf2_sha256$36000$zIgyPQInkjeQ$3943JiJK93FmrT9NfS22AdLXfSo1ZEowG65sjWvlLko=	\N	f	cont_219-1.62				f	t	2017-10-25 20:03:20.819609+00
407	pbkdf2_sha256$36000$LFeMpK5zUTiA$WTNLbOwTwH7ZEPLhSR6YzY7IeuVJfeAQzdeoOSo6enY=	\N	f	cont_219-1.63				f	t	2017-10-25 20:03:20.875823+00
408	pbkdf2_sha256$36000$wsGoRDoKc0c4$UCNn+/SbZ+95fF8rLdMachGeqBO+p8eR0ifNupystD8=	\N	f	cont_219-1.64				f	t	2017-10-25 20:03:20.931514+00
409	pbkdf2_sha256$36000$X9hoFF9oq7xF$UYQxhl4xwoc6BsMohcnHfYyvFqC3I7kYb57V2exacNg=	\N	f	cont_219-1.65				f	t	2017-10-25 20:03:20.987133+00
410	pbkdf2_sha256$36000$t5C1V9gsN6q7$6RKqifaUYOosN3W107ucktIh/QYs2POYIRZLuwAKlKI=	\N	f	cont_219-1.66				f	t	2017-10-25 20:03:21.043016+00
411	pbkdf2_sha256$36000$u1iJMIdOmG1n$Bgx/uDvj/XwvrXpOqE8u7xHTsg6PoiHRkhIMkLsz4jU=	\N	f	cont_219-1.67				f	t	2017-10-25 20:03:21.09908+00
412	pbkdf2_sha256$36000$CmcgUNAbouPy$HKymHG6gdqSGbw/ZLNCJevzlswdCZg90zCGaydqY9wY=	\N	f	cont_219-1.68				f	t	2017-10-25 20:03:21.154615+00
413	pbkdf2_sha256$36000$cp31HLPZsXof$NzbfjcoJt16e2LKWdLvCigxs1HdQ/yR4Dm1uYNHYCDk=	\N	f	cont_219-1.69				f	t	2017-10-25 20:03:21.210662+00
414	pbkdf2_sha256$36000$duzJNkdhjblT$pmO/5DyMWQqwklvUd1TMvoYFw9yThwNMTeSJLtGhlR0=	\N	f	cont_219-1.70				f	t	2017-10-25 20:03:21.267671+00
415	pbkdf2_sha256$36000$Peke8gUrAgw9$vpUmDTS0FlMbwvd/0UpyP3mtSn+MoKADCHG+ehEFjTU=	\N	f	cont_219-1.71				f	t	2017-10-25 20:03:21.323251+00
416	pbkdf2_sha256$36000$Eyx6xzIVeK3L$+wIKcqGGvB9tHi2UylvZMlVQewEfQBxTP0AkI/3NblA=	\N	f	cont_219-1.72				f	t	2017-10-25 20:03:21.379204+00
417	pbkdf2_sha256$36000$hHRcpknhYYkJ$8UnyykmgqEVRyHbRhCFRqHtUc7w6FquLN2lvYVV7Hb8=	\N	f	cont_219-1.73				f	t	2017-10-25 20:03:21.435061+00
418	pbkdf2_sha256$36000$jUYQZm6lOrP1$2PiHXF5WgJZr9FqaOux2Kdk9JKYMoTsRNtxoZZCT120=	\N	f	cont_219-1.74				f	t	2017-10-25 20:03:21.496535+00
419	pbkdf2_sha256$36000$daXo9UHoviRO$pEplUdr3AsW9U/CdWZ1C+gmisc7OetOcPPpIByM0vJo=	\N	f	cont_219-1.75				f	t	2017-10-25 20:03:21.572173+00
420	pbkdf2_sha256$36000$FCEJ3c0aTQCg$1/8KbhVRG46+amSVdbhlMXOwHl9Jfzv+Kqm8vzJiWSQ=	\N	f	cont_219-1.76				f	t	2017-10-25 20:03:21.629361+00
421	pbkdf2_sha256$36000$0V3ShJx8CbkD$c3jdGihBIHvCdggJIEba6MA3pHY8Z++/enYzHly9qIQ=	\N	f	cont_219-1.77				f	t	2017-10-25 20:03:21.685079+00
422	pbkdf2_sha256$36000$L70FwanlgFpm$hwgqIgN7C6jUhxGv64o49xVmxm8VhNzKKn5Lorst8oY=	\N	f	cont_219-1.78				f	t	2017-10-25 20:03:21.742277+00
423	pbkdf2_sha256$36000$t19svlMLNv2U$KaYNXzuziu7y0kPs7DPeVqwMSXou9RUeFJ/lUb0BMk0=	\N	f	cont_219-1.79				f	t	2017-10-25 20:03:21.798599+00
424	pbkdf2_sha256$36000$yZV9lmkqkAMx$OyvxExsQJmJsXSOwTk7BPYpL8h+d1sCFXodypojt3HE=	\N	f	cont_219-1.80				f	t	2017-10-25 20:03:21.854966+00
425	pbkdf2_sha256$36000$ptEExHdonmhd$AUETl/dlHTxOX/6qgL/tiz9uOmUmTo5kYMYNlM6ZMHQ=	\N	f	cont_219-1.81				f	t	2017-10-25 20:03:21.911173+00
426	pbkdf2_sha256$36000$bF1Qf0dnQZPr$1EbGQjwOo3crZUgwYRukiw/6a1yZ/WLLFVZ7NxAYkgA=	\N	f	cont_219-1.82				f	t	2017-10-25 20:03:21.96718+00
427	pbkdf2_sha256$36000$GG5Ix1wN9nN8$U5Imy3DzdRSKdLFaMbyf33PU8Fg6lFypjsHEx+GqHRA=	\N	f	cont_219-1.83				f	t	2017-10-25 20:03:22.023619+00
428	pbkdf2_sha256$36000$0bzUgVeJK8KV$I/dNe0HplCIqgV7/SLJ8gmqH1jJzOQoVNwa+PZc+hTw=	\N	f	cont_219-1.84				f	t	2017-10-25 20:03:22.080593+00
452	pbkdf2_sha256$36000$mUvFVtpXB1fl$4qTUYa0p1s44h1gFsO9i4QXd5gBWaUkhv8oZnw5P3Ng=	2017-11-08 08:56:02.54252+00	f	cont_219-1.108				f	t	2017-10-25 20:03:23.447599+00
430	pbkdf2_sha256$36000$PXpnDPAH4O8h$KdT5jzCMAnRgxMCbwssCyvT0lnmokNQp/RjgExbHsIw=	\N	f	cont_219-1.86				f	t	2017-10-25 20:03:22.194607+00
431	pbkdf2_sha256$36000$qxbT7OAxLAUU$+vMgtfZl5o62gnJuCxPbbhkIWP4thbrZCaaI1JOoTQw=	\N	f	cont_219-1.87				f	t	2017-10-25 20:03:22.252094+00
432	pbkdf2_sha256$36000$S4lDY0aeQVH1$/cLCbdEZue3/OgvZ77O33XDkEyZhV7SfEtBHgHH/Em4=	\N	f	cont_219-1.88				f	t	2017-10-25 20:03:22.309366+00
433	pbkdf2_sha256$36000$I1aDEm3lzTQj$CL9jUnhX5YqpmBiYcMjYm5/EMNL7J/+169A6W+HWaOA=	\N	f	cont_219-1.89				f	t	2017-10-25 20:03:22.365091+00
434	pbkdf2_sha256$36000$t2imL8QvHdWe$/nTxOOhaufPeIv8S3a5b7YYWrgl/5k+TxBw/K4iWy3s=	\N	f	cont_219-1.90				f	t	2017-10-25 20:03:22.420894+00
435	pbkdf2_sha256$36000$dn2QKTncFSnC$vagZsW1AYyNLa94B5ZU6GutCJBMMLHvHrFii8+7v5GY=	\N	f	cont_219-1.91				f	t	2017-10-25 20:03:22.476509+00
436	pbkdf2_sha256$36000$ip2uMMxA3E9R$briTj50ujwh7oXHDgChfOlVI8i7qaLerDphLUkw8nCs=	\N	f	cont_219-1.92				f	t	2017-10-25 20:03:22.531942+00
437	pbkdf2_sha256$36000$YXYtGhBymAOM$jItKJLypMehS5jaw9Yqkr0ymc7UuXhKtPF31h4LfBqs=	\N	f	cont_219-1.93				f	t	2017-10-25 20:03:22.612682+00
438	pbkdf2_sha256$36000$jE1JvqouFBUO$WYre29Jl8XrZrkSB+3C0Oq2OVmm5qIou8VWPJMMnjzc=	\N	f	cont_219-1.94				f	t	2017-10-25 20:03:22.668043+00
439	pbkdf2_sha256$36000$PBFKAr8dOVzX$30qaYNb37wtbxH2DItU5gfMtKpWPTkEqVsOMzewoQwM=	\N	f	cont_219-1.95				f	t	2017-10-25 20:03:22.724101+00
440	pbkdf2_sha256$36000$udV9h8aRGcoa$7juIBdLvI5V7a83YoMYh8KrpSxmFHEPSeuC8ve7bA+Q=	\N	f	cont_219-1.96				f	t	2017-10-25 20:03:22.779591+00
441	pbkdf2_sha256$36000$KDp4ulRWd6cJ$Q69G4lZG8Ba5C5+ywae0LkdHMki6fq5lH+AXxxtKJOw=	\N	f	cont_219-1.97				f	t	2017-10-25 20:03:22.834879+00
442	pbkdf2_sha256$36000$wjB2q199R1Ol$KedblIVIVEIVtIjcnm+uFBVQEz6lWqR0W+BJgXyIBnM=	\N	f	cont_219-1.98				f	t	2017-10-25 20:03:22.891171+00
443	pbkdf2_sha256$36000$GhD6e926celX$kA9svMHlLA6k9z7LrDoNH0fq3tpuWlnaAvOq7MCYoYY=	\N	f	cont_219-1.99				f	t	2017-10-25 20:03:22.946778+00
444	pbkdf2_sha256$36000$DN09lwdcQ08z$QyzkHYTQcH/umBF4a+VYxQtV7JdJsUOElt3AC2SHRB4=	\N	f	cont_219-1.100				f	t	2017-10-25 20:03:23.002664+00
445	pbkdf2_sha256$36000$rwst1kOx48se$wj9BEzjVGYnn7F0vi0WjKLJ1nJFa3iM54vS7UecbucA=	\N	f	cont_219-1.101				f	t	2017-10-25 20:03:23.058142+00
446	pbkdf2_sha256$36000$ZEzSzvrnXnpd$mHmJQngw/kmnNKmUDgU0/2D9p3FVVazPNHAWnVsP+94=	\N	f	cont_219-1.102				f	t	2017-10-25 20:03:23.113281+00
447	pbkdf2_sha256$36000$nqr1J1Kiai81$g9JDZfgHf5Oy+NEXfJ233aBA49/JZkghZQlEeCf1V2E=	\N	f	cont_219-1.103				f	t	2017-10-25 20:03:23.16872+00
448	pbkdf2_sha256$36000$d9FLEMwnAChd$oZTw50H/0OhVFanEPG2lqQBUZs5kBSU1A/ZtfNRXqJY=	\N	f	cont_219-1.104				f	t	2017-10-25 20:03:23.224496+00
449	pbkdf2_sha256$36000$IPy3s6h4uvOK$lgluIpC04UhnnbWPuNqi9Ej/7OUcogBh/A4oPbU+buM=	\N	f	cont_219-1.105				f	t	2017-10-25 20:03:23.279787+00
450	pbkdf2_sha256$36000$jnuvB3thrvYf$EH4v8POlevvGO5biKv5nfg/O7vdg96WdAJRBiJnod6Q=	\N	f	cont_219-1.106				f	t	2017-10-25 20:03:23.336388+00
451	pbkdf2_sha256$36000$ytCSi25ed8Ct$UE1pTGRBX+JgB82gW3Jww7rxg0YW41DwnKWdU5X5l0M=	\N	f	cont_219-1.107				f	t	2017-10-25 20:03:23.391947+00
453	pbkdf2_sha256$36000$tRcg5yWTZXjZ$QHhQTjyxGBrndHfm5+RRaVERcwZGfnaBku3CflmgXo4=	\N	f	cont_219-1.109				f	t	2017-10-25 20:03:23.504336+00
454	pbkdf2_sha256$36000$I5JKvfMPlEUl$NlX4Ji49BDWlF3Pr/avt4/9KmeCynePEgdmsAprs+Cw=	\N	f	cont_219-1.110				f	t	2017-10-25 20:03:23.559895+00
455	pbkdf2_sha256$36000$oaTMOT4bOoxh$ezCqnX+gYtdfDhpF3J4vYzpns2dkSPu29lVhpXI6QoQ=	\N	f	cont_219-1.111				f	t	2017-10-25 20:03:23.640166+00
456	pbkdf2_sha256$36000$bsM8cmyHLy5O$sekpTFk81AFLN6LljkQV8iQzLWVWNBtBpmzQ1gbrlys=	\N	f	cont_219-1.112				f	t	2017-10-25 20:03:23.696628+00
457	pbkdf2_sha256$36000$582uc31bvRUn$q5olS23f/w1tOs1TxuXy2TYo/+l1vR0DlktCE3pWeZ8=	\N	f	cont_219-1.113				f	t	2017-10-25 20:03:23.752935+00
458	pbkdf2_sha256$36000$Dso7un8UrngH$RzKny7626I713BBrw6v7CSnFg9AKjyVzAyFJBfkwYtU=	\N	f	cont_219-1.114				f	t	2017-10-25 20:03:23.808671+00
459	pbkdf2_sha256$36000$ZZ1ZBwog48wG$aQDShDg3LxPZa691n9y2u9Lg6C+txD/Gr0w38RuAcSU=	\N	f	cont_219-1.115				f	t	2017-10-25 20:03:23.864559+00
460	pbkdf2_sha256$36000$tG6tOASiEk0U$V7Qyam7T19VSyRvYbFf29ktmUJptmVdAF5PdrQ1XtOk=	\N	f	cont_219-1.116				f	t	2017-10-25 20:03:23.920507+00
461	pbkdf2_sha256$36000$TeCmw5cu0cQe$CrxKQ4ISsF6snJ6jIfTlkYcOQWl1GF4xg13B9syfArs=	\N	f	cont_219-1.117				f	t	2017-10-25 20:03:23.976114+00
462	pbkdf2_sha256$36000$vgEjd7LUQ0XP$up/IpHrn0odfXiqE9sLAmFFpW22nB3yBg2g3rU2Q7YI=	\N	f	cont_219-1.118				f	t	2017-10-25 20:03:24.031674+00
463	pbkdf2_sha256$36000$A2ggQwEr9Vhv$H4fdSq1dMmcQNgRSLxQf78wJTPuSEwKVCgRfFaqb5xk=	\N	f	cont_219-1.119				f	t	2017-10-25 20:03:24.087301+00
464	pbkdf2_sha256$36000$sY5icvzUcK62$7WYy5kKjG/NmPTJ2921q5vaeRRa/G22KqfhTy0tYdKg=	\N	f	cont_219-1.120				f	t	2017-10-25 20:03:24.142785+00
465	pbkdf2_sha256$36000$Ptq6U1BNRBdf$FFGYbG4DtI9uWvycEw6xjT6nWf961Fo2D0Ls3XdqOBQ=	\N	f	cont_219-1.121				f	t	2017-10-25 20:03:24.198193+00
466	pbkdf2_sha256$36000$CXSrYoV6aSmc$fanusLEKvGWt+Rn/7FGGiGmIGLM0ZZkyLMnGDrLtqJo=	\N	f	cont_219-1.122				f	t	2017-10-25 20:03:24.25342+00
467	pbkdf2_sha256$36000$KQnMF3zy2YQP$Zyvxdv/Y6556FcaCscUcuW5quK6vbtbFKLijIcPxc0w=	\N	f	cont_219-1.123				f	t	2017-10-25 20:03:24.308635+00
468	pbkdf2_sha256$36000$emYngoYAqAVn$nUf1+4qF/bdYFpAuIDUUjquFSAEyTekTGUcbnFwSitk=	\N	f	cont_219-1.124				f	t	2017-10-25 20:03:24.36254+00
469	pbkdf2_sha256$36000$nEmfsfkwqt5j$LtIxNQTWE25NUsqWE8S0qBHb3Ld2aywVLvAOADteLOc=	\N	f	cont_219-1.125				f	t	2017-10-25 20:03:24.417332+00
470	pbkdf2_sha256$36000$HljV1bf69hGc$4Wa6swm4HCKugG5JCaV/4LxmSiKvasUwSpLK6Sg0QwY=	\N	f	cont_219-1.126				f	t	2017-10-25 20:03:24.471975+00
471	pbkdf2_sha256$36000$zvcTBlHaLg5D$WeWAarvtBYipuGn+BQVw20mcfZNmy6J+pMfEqnxBUL8=	\N	f	cont_219-1.127				f	t	2017-10-25 20:03:24.527287+00
472	pbkdf2_sha256$36000$gY3TVNh53hYw$hi883GsFWc+G08YL0AjmuramtjQ809JbHGxrZzIA+3U=	\N	f	cont_219-1.128				f	t	2017-10-25 20:03:24.58346+00
473	pbkdf2_sha256$36000$mkUJvCFntF27$ICQLR/uAB7ArldRVBbW/UYDCYMP0BK1iZU41S8MoZaE=	\N	f	cont_219-1.129				f	t	2017-10-25 20:03:24.644862+00
474	pbkdf2_sha256$36000$REzc3X1kiOgY$MS9TR8Vh/zv5SPgCBON/cVlmN9P+h9n/qvOyOpck7Do=	\N	f	cont_219-1.130				f	t	2017-10-25 20:03:24.719725+00
475	pbkdf2_sha256$36000$umXleXkenRep$rq0vPuyUzxjHEC0vb3N3xDn7xltNBU0Q+mEQiONjrE0=	\N	f	cont_219-1.131				f	t	2017-10-25 20:03:24.775224+00
476	pbkdf2_sha256$36000$HNLcDCSa6iVU$pzBI+7RG8XhDdwthjVJqA0LPo7YCpLstd6O5lkJEGi8=	\N	f	cont_219-1.132				f	t	2017-10-25 20:03:24.852693+00
477	pbkdf2_sha256$36000$qkFvJlacQo12$XGfdJ4y1fkntFs3207ycEPoFbquVoMHDtEgjhGslKeo=	\N	f	cont_219-1.133				f	t	2017-10-25 20:03:24.958899+00
478	pbkdf2_sha256$36000$avETOqetrcCs$fAZuSz91W9qy7UsxqgqG5WOMkxfq3OSOKYize9eBtCQ=	\N	f	cont_219-1.134				f	t	2017-10-25 20:03:25.020192+00
479	pbkdf2_sha256$36000$mR6EdfUFyZxM$xVSimvtffizkQvdoGUlRYjgAIDRsSyK086I6AXmdb1I=	\N	f	cont_219-1.135				f	t	2017-10-25 20:03:25.16916+00
480	pbkdf2_sha256$36000$W00zjFGgfEVk$RGJqpKxGpLkhKcZNcw+ukG3+2ybmiXxHS6wlMtyKAkM=	\N	f	cont_219-1.136				f	t	2017-10-25 20:03:25.319288+00
481	pbkdf2_sha256$36000$6wgFKDsjNi12$ECfh4eBP0+kzIzfoxoEjtlIw1ZxhJ3YvwKL5kb7fm1E=	\N	f	cont_219-1.137				f	t	2017-10-25 20:03:25.461849+00
482	pbkdf2_sha256$36000$NkmKBJi2oo8H$Ndv2jyAdXDYkf5UjTQh7xnGEOW8C+Zn+0G6RTGtPF+Q=	\N	f	cont_219-1.138				f	t	2017-10-25 20:03:25.554152+00
483	pbkdf2_sha256$36000$5KJYRIfVcrqX$n4osgDVt7wx4Ul64EoWh2KLsZMIwJZCraG6Nx5ekGA0=	\N	f	cont_219-1.139				f	t	2017-10-25 20:03:25.626895+00
484	pbkdf2_sha256$36000$QQuCHKZGhy8g$kf0A0EiCOQH3lenR1aR8t7/SlSAlkAnlvLqyt6bsOLc=	\N	f	cont_219-1.140				f	t	2017-10-25 20:03:25.683225+00
485	pbkdf2_sha256$36000$nO23Fy5AIhbX$OMxXibn7lLjZZsWBkJSQpT9e59W16mMoOkb8Y41BBiU=	\N	f	cont_219-1.141				f	t	2017-10-25 20:03:25.767249+00
486	pbkdf2_sha256$36000$GdN7VFpfgnZe$/5jdzb90UlHtfLc6D2eOZrCzkaE89auZ6yEwsoD/bWs=	\N	f	cont_219-1.142				f	t	2017-10-25 20:03:25.824033+00
487	pbkdf2_sha256$36000$uEIrYPgm45CP$e27JmQXzWByZmIJ97X9RiAGs5yfHDl8bSZRwQ4kg9zA=	\N	f	cont_219-1.143				f	t	2017-10-25 20:03:25.87989+00
488	pbkdf2_sha256$36000$mGimPaYW3EGO$N3O5JFv1tXL2cY0xEywzCQ5BPthQk3fYZgI9cvLy5uM=	\N	f	cont_219-1.144				f	t	2017-10-25 20:03:25.936372+00
489	pbkdf2_sha256$36000$1Iogv4dfebAN$wZWuT2X0AVPmBX35GQ1gFmlPd8Udb0jzR13GmYBkNBo=	\N	f	cont_219-1.145				f	t	2017-10-25 20:03:25.992125+00
490	pbkdf2_sha256$36000$9ffGAvhsQM2k$BAtiy2W6Xrx/tJfsedNvw6WypR7kzmGTKP0eN/jFCL0=	\N	f	cont_219-1.146				f	t	2017-10-25 20:03:26.047857+00
491	pbkdf2_sha256$36000$rnPMOBBUPS01$OQLEnMxV+y+OWeHKdxC9S6QopzuG7S7Y2bNfF7tVZpk=	\N	f	cont_219-1.147				f	t	2017-10-25 20:03:26.105796+00
492	pbkdf2_sha256$36000$acNg3y8USVma$68S2mgoliyG8LOLbMf9/Pb8HGUM3WdD4wIcfpG4je1Q=	\N	f	cont_219-1.148				f	t	2017-10-25 20:03:26.160952+00
493	pbkdf2_sha256$36000$3I2mjtqrD91x$/4/7ki8tywVggZ4i968MQ+/BUB/uE082+OnfAPU0gzk=	\N	f	cont_219-1.149				f	t	2017-10-25 20:03:26.217504+00
494	pbkdf2_sha256$36000$J48p0krw1X2p$9Ecl2pJySfOM07x5AqLMcIC3xVunMExjLyWw6icT+IA=	\N	f	cont_219-1.150				f	t	2017-10-25 20:03:26.273174+00
495	pbkdf2_sha256$36000$duCN8REWcjrX$12UEZsRIIcSdvz0LjQOW7n6nHvNZQ9+XsM4tiTM8KFw=	\N	f	cont_219-1.151				f	t	2017-10-25 20:03:26.329273+00
496	pbkdf2_sha256$36000$Umm9bamZaast$1I21/6sArqzIQpM2yxEaKF7VVWDDsgh768FO+xLYMsQ=	\N	f	cont_219-1.152				f	t	2017-10-25 20:03:26.386228+00
497	pbkdf2_sha256$36000$EAT6ZRkcOjJg$g1KmGpVtuEZhCrAGj1LbcWRJMqfZ74aUbzYd8E4tM5U=	\N	f	cont_219-1.153				f	t	2017-10-25 20:03:26.442715+00
498	pbkdf2_sha256$36000$ezYFpgtpiVJa$nahVXyuQ3YFeA2W6xQSxUzPUJ/0IV/PB/q3xVY9rSfA=	\N	f	cont_219-1.154				f	t	2017-10-25 20:03:26.499536+00
499	pbkdf2_sha256$36000$9UP9nh9kJcjW$TFi3rgTDC4DsSwhBUbsM7GGhH3Bmn1hDxDx1nyn08f4=	\N	f	cont_219-1.155				f	t	2017-10-25 20:03:26.555672+00
500	pbkdf2_sha256$36000$t6UZnHzdniEL$Gd2rowU0ZUFu42zC97qRr74jo6Ro62/9HPmahLAU+us=	\N	f	cont_219-1.156				f	t	2017-10-25 20:03:26.611004+00
501	pbkdf2_sha256$36000$VdUzool6kSFz$0E0HMKfP5/3lLEXomvM5/eEg3CnIOONvMcmPDKGREUc=	\N	f	cont_219-1.157				f	t	2017-10-25 20:03:26.683888+00
502	pbkdf2_sha256$36000$Fde88nVvyENS$3FF5KN/34LPW2asZ5ZvJHYrqSUMBg+ly1TLC7USZ+UE=	\N	f	cont_219-1.158				f	t	2017-10-25 20:03:26.747833+00
525	pbkdf2_sha256$36000$bEurbnGZ1pCs$zTaKvyMNFSlyTS0Ke0DlNro4qxxUi7Be/xOVsPiGoE4=	2017-11-07 05:40:28.303656+00	f	cont_219-1.181				f	t	2017-10-25 20:03:28.079569+00
504	pbkdf2_sha256$36000$m13VkVr2wKf5$4qB0XNPAR+AyrIv8IA3iPWmTtXSjGKXfdIK9Nq8Rvaw=	\N	f	cont_219-1.160				f	t	2017-10-25 20:03:26.878327+00
505	pbkdf2_sha256$36000$z8GDSnii5h91$x3ra+wOKFzZwmhCdS1CK4Uev6ZbjYZRxLePopKh+yvA=	\N	f	cont_219-1.161				f	t	2017-10-25 20:03:26.934732+00
506	pbkdf2_sha256$36000$qqiKM3vR1D3K$qEnSpEOdEMfFo0o1W0vWhnAc1gHtkrNV4/e7FlDk3cM=	\N	f	cont_219-1.162				f	t	2017-10-25 20:03:26.993182+00
507	pbkdf2_sha256$36000$X4hlSarIF466$AdUM9q9WWBqEHP4bq/7jlJm+QdIzqRCSE8NCu1bJwgI=	\N	f	cont_219-1.163				f	t	2017-10-25 20:03:27.053914+00
508	pbkdf2_sha256$36000$KvSNYCiDmS5m$KppbyLqgomlpLOpYHxkyYVWBRuWhl3turK7k78aGznY=	\N	f	cont_219-1.164				f	t	2017-10-25 20:03:27.11026+00
509	pbkdf2_sha256$36000$Z6ICmXgDK5d7$Y5KWJudqh+PAmSxSNI2W6qnwjXDCJpTTrIceRUsDdU4=	\N	f	cont_219-1.165				f	t	2017-10-25 20:03:27.166517+00
510	pbkdf2_sha256$36000$CNqeFfBxPF2A$6gr/mvo/usY1nbE/+v9037ln6VgLv2ordLvs2YoVCdE=	\N	f	cont_219-1.166				f	t	2017-10-25 20:03:27.223756+00
511	pbkdf2_sha256$36000$RiRnWyki2oPm$6WMkriKTP/QSizkU4Kyr5MzC2vdXAFWktxQQS9WOfTM=	\N	f	cont_219-1.167				f	t	2017-10-25 20:03:27.279645+00
512	pbkdf2_sha256$36000$6HHDHRxBhCle$5Nzz4X71aXDKRoMofysHhLNkYKWfXhy6gtpLwxEaenM=	\N	f	cont_219-1.168				f	t	2017-10-25 20:03:27.334227+00
513	pbkdf2_sha256$36000$Kp3fsgRB7iX8$5BtmVRM7Gydlmjl+jQrFXs6Of0bwXNrUPbk2O/AxVkg=	\N	f	cont_219-1.169				f	t	2017-10-25 20:03:27.38927+00
514	pbkdf2_sha256$36000$gOkbzjwwwEiq$on8O10wo1EsjfSDuaPJ7c0PLHwWt2CDTUcF9bzKZItI=	\N	f	cont_219-1.170				f	t	2017-10-25 20:03:27.443738+00
515	pbkdf2_sha256$36000$rJi1fCLDh6N4$XY+1BIizGOGCFYnqXT3rITmrm4LUQRylxarkOCbc0WA=	\N	f	cont_219-1.171				f	t	2017-10-25 20:03:27.498673+00
516	pbkdf2_sha256$36000$w7hwfBedgRrB$Zee7Fqzq+kButA3t8sAhLHcnQeo97qdaLMqPg+v20vI=	\N	f	cont_219-1.172				f	t	2017-10-25 20:03:27.553194+00
517	pbkdf2_sha256$36000$VKBFA8I7E9BP$MGTqliP5643v5VioqR7V6eVmk8jRohcntGbWdJ4Aeow=	\N	f	cont_219-1.173				f	t	2017-10-25 20:03:27.609104+00
518	pbkdf2_sha256$36000$ohCMUTXZWsMu$sVcR+VX+rBb2J7xWfhRwfE8Z0vl6Nkt0JgoFngDD5fY=	\N	f	cont_219-1.174				f	t	2017-10-25 20:03:27.663719+00
519	pbkdf2_sha256$36000$ziaLaBOGct2w$PhequNJ0yKsbKtRS4ArGsMa3rOyP1L3jCuS33bjVZsc=	\N	f	cont_219-1.175				f	t	2017-10-25 20:03:27.718437+00
521	pbkdf2_sha256$36000$wbOXcTlSct0q$fYZBLjc/64dRLRkLdtKgXMYDAi0gNIv8GR+QYWoE7ck=	\N	f	cont_219-1.177				f	t	2017-10-25 20:03:27.855452+00
522	pbkdf2_sha256$36000$CPy1djWIkhmS$XIQSTGMu9AWTogDHP/lBAKl1kZaScso3iejkE37zw98=	\N	f	cont_219-1.178				f	t	2017-10-25 20:03:27.911718+00
523	pbkdf2_sha256$36000$EMsZY8vKHnKJ$Ie+n+l6kpRG2EHQjZEPUD0YwUOimaifE2YLNu1uDRH4=	\N	f	cont_219-1.179				f	t	2017-10-25 20:03:27.966596+00
524	pbkdf2_sha256$36000$NgXBcC0yMSXV$jJ8hZhFb2g1zz5fsNrSvxRz4ddHiEqZBU2D1qMXWWcw=	\N	f	cont_219-1.180				f	t	2017-10-25 20:03:28.023264+00
520	pbkdf2_sha256$36000$3AiwBsa5twYT$nVelIB07Hiwnsi6kU62HYUy3HPxo6S68P4qP/q25lWE=	2017-11-08 19:24:43.367511+00	f	cont_219-1.176				f	t	2017-10-25 20:03:27.773329+00
526	pbkdf2_sha256$36000$la9RLususR6a$30WWFuluYNnHi2arRg3S44KlHGAOswBnsE+76axjg9I=	\N	f	cont_219-1.182				f	t	2017-10-25 20:03:28.135003+00
527	pbkdf2_sha256$36000$UVLLYVps1EY9$NQ7OPePz9lFsFuC18bsL04HIPRh+93HqVgTznOO9Si4=	\N	f	cont_219-1.183				f	t	2017-10-25 20:03:28.190351+00
528	pbkdf2_sha256$36000$trIUxOOxW7rg$oJSHGlGPf+9iWdZdIYSy85Xud1ka+1O3cU2h6CGyJKU=	\N	f	cont_219-1.184				f	t	2017-10-25 20:03:28.247013+00
529	pbkdf2_sha256$36000$bm653e07n7bN$at7k7qJ9RCguEsNylRaG6kYG5nwBDDEiK49Lc13p5PY=	\N	f	cont_219-1.185				f	t	2017-10-25 20:03:28.302655+00
530	pbkdf2_sha256$36000$InqUt7nvdUzM$usabNiKLJCMyDKGJoT/gv01CxNbMYZLMdU/C8caE+KU=	\N	f	cont_219-1.186				f	t	2017-10-25 20:03:28.35795+00
531	pbkdf2_sha256$36000$CrWXIvKA2nrL$rKzzj8risgy/vx2uK7ncupIPSC5ZI8+tPNq/u40hGLk=	\N	f	cont_219-1.187				f	t	2017-10-25 20:03:28.413653+00
532	pbkdf2_sha256$36000$iPC9uLLkzI7k$WZ5Tedj6rxEIHSetGDC0caTxkoAigM6zGOMCQlx7lRA=	\N	f	cont_219-1.188				f	t	2017-10-25 20:03:28.469017+00
533	pbkdf2_sha256$36000$EmSYlLkIw08h$bE0kxs6JBqTVKzuRLsA28SlgZaNOk5X/yepizPrsJfk=	\N	f	cont_219-1.189				f	t	2017-10-25 20:03:28.525503+00
534	pbkdf2_sha256$36000$I2XsYoZVz2yc$+xCYTTKmB1lzCdmRbqkTjvqiUjdAkmIBaytQ75i2WOk=	\N	f	cont_219-1.190				f	t	2017-10-25 20:03:28.58174+00
535	pbkdf2_sha256$36000$VNxbnQsgJuhD$oLQZZqBW78F12kBPkvy/uDlFyo4TPcfogWIDrz0YVR8=	\N	f	cont_219-1.191				f	t	2017-10-25 20:03:28.637332+00
536	pbkdf2_sha256$36000$wChRPfJi3Fu2$NUVz8sRmrOh3Gp7+cnobv2NmTiaygM8exKhfa5ndXWQ=	\N	f	cont_219-1.192				f	t	2017-10-25 20:03:28.692297+00
537	pbkdf2_sha256$36000$xjLn7fjLm9mj$T0MhoH5ph8hRyb9qwooetGPZD/bw1dJXtX2EVf+7q8U=	\N	f	cont_219-1.193				f	t	2017-10-25 20:03:28.814244+00
538	pbkdf2_sha256$36000$mqPDX9npjLNx$sKWtPEcf4+1g31acrcPMxKkRq6YGwyrRXQKB/V90sko=	\N	f	cont_219-1.194				f	t	2017-10-25 20:03:29.02059+00
539	pbkdf2_sha256$36000$QmYhH5uak9Nv$RqR3iCCLWYo024w37uaDrxwayOdbbXCThv6bHUMLmkU=	\N	f	cont_219-1.195				f	t	2017-10-25 20:03:29.162782+00
540	pbkdf2_sha256$36000$b1f6MgWc2iKi$cts+LtBvMwUgBPNhszTcxh0zv6zVC5leOt68mL5Fs2Y=	\N	f	cont_219-1.196				f	t	2017-10-25 20:03:29.307036+00
541	pbkdf2_sha256$36000$NEu7sbQczvJH$amuaK30uW/TGwEFk917ARm4e1wXnzG3s5j/dBbGYKBA=	\N	f	cont_219-1.197				f	t	2017-10-25 20:03:29.44925+00
542	pbkdf2_sha256$36000$Iew1w6DIjz68$v++h3QbVSA/mP4Wb7xI+EEh44VmnkYu4DZtfF3GFHHw=	\N	f	cont_219-1.198				f	t	2017-10-25 20:03:29.578255+00
543	pbkdf2_sha256$36000$u8GaChlCAhq2$u2m1+WUsUGc0YhoZ47UxYi+kXgp6MyJue3OeMyiekPI=	\N	f	cont_219-1.199				f	t	2017-10-25 20:03:29.692064+00
544	pbkdf2_sha256$36000$oko2z2wZgiXC$nZBnoXDnG8dNcgT2UVGbQSe/oY4/vUpMNnA/kjX3jRE=	\N	f	cont_219-1.200				f	t	2017-10-25 20:03:29.80703+00
545	pbkdf2_sha256$36000$Y9x4WNMvlIfE$/MmF7ffO6WDlYHC6WBpRrlV5nMlHPfvr/JRrS+oAVm0=	\N	f	cont_219-1.201				f	t	2017-10-25 20:03:29.921771+00
546	pbkdf2_sha256$36000$pR7RhqFhtIaf$l8lqKgh2YKLHVmz0defGwchytP4ZPqRivtroAXgVmDY=	\N	f	cont_219-1.202				f	t	2017-10-25 20:03:30.10493+00
547	pbkdf2_sha256$36000$oJEHavsiQnhx$PtiMvcq7EWniXCKLHJ4zJPBklN6XORo69341d9TFFYI=	\N	f	cont_219-1.203				f	t	2017-10-25 20:03:30.248725+00
548	pbkdf2_sha256$36000$zRes9nuozb3U$k4bsPgCh6tI1xqzOfY4+RF0zGIokmQP6fS0g4RrB7BI=	\N	f	cont_219-1.204				f	t	2017-10-25 20:03:30.391878+00
549	pbkdf2_sha256$36000$N5t9dHRKIv7x$xzFSKjwH3Ldeq+V9Ng3LTebHtxFhCNqQGrvZqKHCS0s=	\N	f	cont_219-1.205				f	t	2017-10-25 20:03:30.533283+00
550	pbkdf2_sha256$36000$mwGcbbD0Tsji$DTCNvZnCosPwvOw3fsWCtxhnd0yktG6Nrut5AAj6cnY=	\N	f	cont_219-1.206				f	t	2017-10-25 20:03:30.674886+00
551	pbkdf2_sha256$36000$6mN2MNabUwh3$v6h/9y98eEUKWgSb6KdjtreXzx0Q8NvcuKCBQUUcpRw=	\N	f	cont_219-1.207				f	t	2017-10-25 20:03:30.817895+00
552	pbkdf2_sha256$36000$9IUmfdALqhi3$y7ZK5Q04DNxOl2tjzKoBcFi2ecazw7xMsotg3DlqhMg=	\N	f	cont_219-1.208				f	t	2017-10-25 20:03:30.958658+00
553	pbkdf2_sha256$36000$D0HVVUTrXEDS$eHAmAVV+GsSy2ceQjUavIcl2dnLUBp48hhSnHSCEgOI=	\N	f	cont_219-1.209				f	t	2017-10-25 20:03:31.091843+00
554	pbkdf2_sha256$36000$j6dOitXCbLuE$Pek7Gbd+3AXY4Gm8Y2CC1xg7j2Ck09ceC2inym8EkD8=	\N	f	cont_219-1.210				f	t	2017-10-25 20:03:31.24883+00
555	pbkdf2_sha256$36000$Iaz2wmOSzvPL$WVjy5NSAUoWVQhJafyqkAXHjRpDpOzfA5yD5C83UJ4U=	\N	f	cont_219-1.211				f	t	2017-10-25 20:03:31.360684+00
556	pbkdf2_sha256$36000$hO6gztd0OeBD$83F5v30Wz83gkDMYZXEJYwWYKEZwTEyrylGvoXPekTs=	\N	f	cont_219-1.212				f	t	2017-10-25 20:03:31.473095+00
557	pbkdf2_sha256$36000$S2hwvlIjet6X$NPPxLdPolwSVxb56/Bo82KDWWv242LzppMtXVLwU4rc=	\N	f	cont_219-1.213				f	t	2017-10-25 20:03:31.582898+00
558	pbkdf2_sha256$36000$XiFPTfbNIp93$7JDwdId9BUIHv8YlTSI0IvARq9fM7G6d2cWBUjsNSCc=	\N	f	cont_219-1.214				f	t	2017-10-25 20:03:31.701814+00
559	pbkdf2_sha256$36000$mL8EOYWBJztB$mbTf7Blpekmvu+rlN9c1WN0gijEql7ztJIdjVtwjIGo=	\N	f	cont_219-1.215				f	t	2017-10-25 20:03:31.80352+00
560	pbkdf2_sha256$36000$jGdsFsNjA69c$0V9qiU6O0wbH+xLN8+pmphUec6Zu190A0/iBj66vKsc=	\N	f	cont_219-1.216				f	t	2017-10-25 20:03:31.902834+00
561	pbkdf2_sha256$36000$ro8yhoeUtq0e$ZZJ1ilznvd7hhgRCMSzWw7n3NelrLYar1GcMKVfPItA=	\N	f	cont_219-1.217				f	t	2017-10-25 20:03:32.002728+00
562	pbkdf2_sha256$36000$dBTXjuounxi0$771sxfZPJMKxB19aftL7bA/zYiuhQNd1YSx8SK/xpDI=	\N	f	cont_219-1.218				f	t	2017-10-25 20:03:32.089808+00
563	pbkdf2_sha256$36000$P1zMqdJLSs3X$imnqjbCK2T82VjgKGhzMc3wwlvVjIOuBfMoAxmXXhmk=	\N	f	cont_219-1.219				f	t	2017-10-25 20:03:32.173881+00
564	pbkdf2_sha256$36000$tH6Y4j2t7yII$lIi0hqAPBU/qHsZ4rKrI1C/XQ0fnzbHUltPdWycxdPM=	\N	f	cont_219-1.220				f	t	2017-10-25 20:03:32.299522+00
565	pbkdf2_sha256$36000$CLxxkbnNk1g6$NqM922vItPuLkAwG/EXVJ/u3d8vjAEd8bPBNffayStA=	\N	f	cont_219-1.221				f	t	2017-10-25 20:03:32.384583+00
566	pbkdf2_sha256$36000$Y9gPnm6ZORaV$i7cM0uFM35mQq1NmoJibCAtZRIyMdattaMS+tErDQGM=	\N	f	cont_219-1.222				f	t	2017-10-25 20:03:32.468528+00
567	pbkdf2_sha256$36000$i77wMpVt338o$slYaHDjaY7nld5ct6gdB5a99++QbkWy2PBVi7iyVK8c=	\N	f	cont_219-1.223				f	t	2017-10-25 20:03:32.573837+00
568	pbkdf2_sha256$36000$IebqG8N2BOdr$k6s/QiRmE6ZPbo8foIDSn3Rsb+YvhWGXiT+6Bm5rw1w=	\N	f	cont_219-1.224				f	t	2017-10-25 20:03:32.717589+00
569	pbkdf2_sha256$36000$dXsQBbv2Xye0$wOcYjLzSJPA9SolGSoIxDoSgKTBN4AQ0XYtu4dWTXzM=	\N	f	cont_219-1.225				f	t	2017-10-25 20:03:32.859772+00
570	pbkdf2_sha256$36000$2qd2dwaKIZoX$Sw3Xw4swwOwdPURht4jd/R1MlCjt6q0WmNQe5ciR9cw=	\N	f	cont_219-1.226				f	t	2017-10-25 20:03:33.003167+00
571	pbkdf2_sha256$36000$ZmQRejOKS17C$+KOy1jvSGnqwCO3Nty2oadr1Q/jIzyvIpwnZDdwy+6Q=	\N	f	cont_219-1.227				f	t	2017-10-25 20:03:33.135293+00
572	pbkdf2_sha256$36000$gDH3mSv9vMG7$UqoEE42rIWoP/tmJRbh1q9xiUdGYBdog2XRjrk85hMQ=	\N	f	cont_219-1.228				f	t	2017-10-25 20:03:33.276954+00
573	pbkdf2_sha256$36000$K7fBdQoDWNQF$wQMfg4lzOvo2zs+p5XWt9f56W0R0XCusSWsDvLxvBFE=	\N	f	cont_219-1.229				f	t	2017-10-25 20:03:33.457062+00
574	pbkdf2_sha256$36000$YlwV5B9plYYS$6ZR0X2Pyrfv0ksJ3RfaItO6Dog/5VDyBv2tp4Luuou0=	\N	f	cont_219-1.230				f	t	2017-10-25 20:03:33.549623+00
575	pbkdf2_sha256$36000$xXAp67QysOAG$mdYrsvIvtdpBmo6jvW7D1X7LUrFNeuNbvW7v1PxFqQE=	\N	f	cont_219-1.231				f	t	2017-10-25 20:03:33.604204+00
576	pbkdf2_sha256$36000$07jUqVvYmgpn$f2YwVffDX34L9vYqhn2tGE4VtOpQDAMjqAcT6KVju3g=	\N	f	cont_219-1.232				f	t	2017-10-25 20:03:33.663456+00
577	pbkdf2_sha256$36000$rK7Zs6oXX4bK$+SPWEwP7MQzxlv7QUpAyShy46AX3UuiWQ6G5emtzb3M=	\N	f	cont_219-1.233				f	t	2017-10-25 20:03:33.722142+00
578	pbkdf2_sha256$36000$qAsW8h9hMqZ7$niw7mZmq8sP7F2D+lKKXXzTt3gE/Tc/KI36DMz3JWR8=	\N	f	cont_219-1.234				f	t	2017-10-25 20:03:33.778387+00
579	pbkdf2_sha256$36000$mcDtDXHbFfqw$sjJm+onaoD+7zQ3D6vYtPKXyFdFJsyf2psbVNlDuBXs=	\N	f	cont_219-1.235				f	t	2017-10-25 20:03:33.833493+00
580	pbkdf2_sha256$36000$iN6rwM0pcJGR$cLq03QgLz9Y/HmAWVBh8wWUICie//iga28UJAp4oEsg=	\N	f	cont_219-1.236				f	t	2017-10-25 20:03:33.890213+00
581	pbkdf2_sha256$36000$6CYGo16jwU7X$ymKpY6uAH6qPGxwRz7P0uOcnXAucfuzL7hC3j5APaMs=	\N	f	cont_219-1.237				f	t	2017-10-25 20:03:33.946112+00
582	pbkdf2_sha256$36000$lNyXMFof6t01$7t39nJ8cWeA1sHb5x1JhzSbtEAFbnqYYijZeLBPb7lg=	\N	f	cont_219-1.238				f	t	2017-10-25 20:03:34.003033+00
583	pbkdf2_sha256$36000$3E7ggw8ZG7tt$CEKthAfwNnjwuqmHiRCk4rVC+RiJWiMdG6A4oxgs0oc=	\N	f	cont_219-1.239				f	t	2017-10-25 20:03:34.059531+00
584	pbkdf2_sha256$36000$MmFTNgcWV4Hk$4nP9MjH2Rz/6NOCAVCx3lbPI+4xCukhKEoy+E4HpLJY=	\N	f	cont_219-1.240				f	t	2017-10-25 20:03:34.115616+00
585	pbkdf2_sha256$36000$RRbiGbg9CWrL$BlTDIxWyKBFT2LqRlqbybvhp73kZYhV0wiscAB0b8po=	\N	f	cont_219-1.241				f	t	2017-10-25 20:03:34.17125+00
586	pbkdf2_sha256$36000$9Xo6lxLEcm7J$zoYh6qkwHJVF0GVDZHC6wd2RKyJu/w9nG3VJ8Re/YdM=	\N	f	cont_219-1.242				f	t	2017-10-25 20:03:34.22783+00
587	pbkdf2_sha256$36000$ldqwQaDgD37s$RIBh5NpWSVhIJT01MxOnRVoxEL9yqPuJbo8W4yz09zc=	\N	f	cont_219-1.243				f	t	2017-10-25 20:03:34.284185+00
588	pbkdf2_sha256$36000$jDgFQg2s7VSy$l1sGQZr+aVqjFZqXfazxzMR9vQT1n1cC7UvMJDVqT6o=	\N	f	cont_219-1.244				f	t	2017-10-25 20:03:34.339954+00
589	pbkdf2_sha256$36000$il36vYLDGlWW$wP3esgol2cy+N0yWZNkwEDQHgWIjqKOgxWn2e4/8xBQ=	\N	f	cont_219-1.245				f	t	2017-10-25 20:03:34.42186+00
590	pbkdf2_sha256$36000$duBhd2Qcz2Ci$rLD/or85hJegtgtP+P8IKlXtNlJOMLWh8uno0mph8Pk=	\N	f	cont_219-1.246				f	t	2017-10-25 20:03:34.477632+00
591	pbkdf2_sha256$36000$OSDoG1vMw1Q1$z1HA7e1xQZQusUrH27vrbykc6Y6QesIBAinA7Cmkla8=	\N	f	cont_219-1.247				f	t	2017-10-25 20:03:34.53372+00
592	pbkdf2_sha256$36000$uFuA4tUNMiCs$loWWt9eSw5809jPF2PIjj64YtG1rz9tp4p8opa0iJLI=	\N	f	cont_219-1.248				f	t	2017-10-25 20:03:34.589927+00
593	pbkdf2_sha256$36000$l2h3GGFxfayK$CDymAVg1kNxlWi+0A1GijfmgDcrvmN1s4qeQS+r52FQ=	\N	f	cont_219-1.249				f	t	2017-10-25 20:03:34.64469+00
594	pbkdf2_sha256$36000$P10QEFfvIjXv$MtlcCideVdt0BxUIe5BlzDs2UtEgvkB2ZBiPy2b8Ss8=	\N	f	cont_219-1.250				f	t	2017-10-25 20:03:34.699518+00
595	pbkdf2_sha256$36000$CWFHpJ5EQWVz$JUe1DNh4qIXz9rs+7gzQ+/HHmdUANOaru/HjJHUqZow=	\N	f	cont_219-1.251				f	t	2017-10-25 20:03:34.755826+00
596	pbkdf2_sha256$36000$HUGfCJGVfEJH$Le7iyrvDo4+L7j01YvvUGF7GdSb6wg0hMpwr2VIEFr0=	\N	f	cont_219-1.252				f	t	2017-10-25 20:03:34.811065+00
597	pbkdf2_sha256$36000$2U88OgckgeRy$PORdjB5pfIkH5FcM5pon3vjoea8DUefWc2vJMJNgAqM=	\N	f	cont_219-1.253				f	t	2017-10-25 20:03:34.86599+00
598	pbkdf2_sha256$36000$809Uo3MEFgsL$PBrW0eQzAxo1tUUTlAg6SZEDKSgZ0CLkjr6KHMWNmSU=	\N	f	cont_219-1.254				f	t	2017-10-25 20:03:34.9213+00
599	pbkdf2_sha256$36000$NQnwBKHtmTI5$Xp4dC5x94r8s1OXoBmyKZ2Elzh3fGnaj9EuvNfo8YY4=	\N	f	cont_219-1.255				f	t	2017-10-25 20:03:34.977942+00
600	pbkdf2_sha256$36000$9eaZZz7GfXv1$DMAV3rnsNlkW9aoqKJPcSZ2gOFESlMEwTt9NrDSktAI=	\N	f	cont_219-1.256				f	t	2017-10-25 20:03:35.033016+00
601	pbkdf2_sha256$36000$aXECVpeRHOF0$hveNadfDc2SNCaKa/SYe0hBhongiMU0JY9wLAJWbY4k=	\N	f	cont_219-1.257				f	t	2017-10-25 20:03:35.088859+00
602	pbkdf2_sha256$36000$Mz5mdCFkl4cr$xpZOfeHDEihqcpmGQaWY1/35TF/vvLInvB7F4tmH/fQ=	\N	f	cont_219-1.258				f	t	2017-10-25 20:03:35.14462+00
603	pbkdf2_sha256$36000$sU8oeopSVeTG$MIYjWazExB0wJ9MTs0daXr3e4dyMKKImYKfdhDeKOZc=	\N	f	cont_219-1.259				f	t	2017-10-25 20:03:35.200495+00
604	pbkdf2_sha256$36000$DLoh9UWfKYwG$9x0G79Un57tdX1sPi+Ju3KhdKK+34aqBBl/qygoNYiY=	\N	f	cont_219-1.260				f	t	2017-10-25 20:03:35.257759+00
605	pbkdf2_sha256$36000$XHg9sajkViMO$syGfaCkC19L/1YD7V2cG05MRRm17HpY7mvVoxjHrhgg=	\N	f	cont_219-1.261				f	t	2017-10-25 20:03:35.313157+00
606	pbkdf2_sha256$36000$xUYSJdY7ijyg$Dz3Xt4OomHkHoPrwCc92hfheFYsuQf+9yeDpQIC8kLU=	\N	f	cont_219-1.262				f	t	2017-10-25 20:03:35.368983+00
607	pbkdf2_sha256$36000$cCpATN5NwKEE$E4Qqn8vTOxHYdYPh0wYO6ecwlxuaymyG6b+xuptUY64=	\N	f	cont_219-1.263				f	t	2017-10-25 20:03:35.434271+00
608	pbkdf2_sha256$36000$kLc1VVwOFUYf$ha1BXC1JBvju1KK4O/vJ0XsV2Y8KK5T7aVlLrdhydCs=	\N	f	cont_219-1.264				f	t	2017-10-25 20:03:35.505473+00
609	pbkdf2_sha256$36000$MdiqisrKun4v$mStf6dFAp1RCPItMEBmtpcH1Fl5SfGsIivpOkj4Mx1Y=	\N	f	cont_219-1.265				f	t	2017-10-25 20:03:35.562521+00
610	pbkdf2_sha256$36000$npvbcC9tIer6$y9SQbDVYhLV/XTGeDaUqcXVI/+d+GtJiVIzx4o/w3AU=	\N	f	cont_219-1.266				f	t	2017-10-25 20:03:35.620499+00
611	pbkdf2_sha256$36000$JQh0GoxoGGyE$yus4o9z1NxyITISZo99621ao4J+lhdqacCO75wj4eZQ=	\N	f	cont_219-1.267				f	t	2017-10-25 20:03:35.69637+00
612	pbkdf2_sha256$36000$nCUKqHVlkPot$3X9uyYjJW+fwqSUr2Q3y0VjpwCfOHpeFngMATB6cBbc=	\N	f	cont_219-1.268				f	t	2017-10-25 20:03:35.755038+00
613	pbkdf2_sha256$36000$bsAonB6Sz04E$xKe6UCRB4yPlRroJuvQfcoFKgFc1FvreHO7mx2lCVl0=	\N	f	cont_219-1.269				f	t	2017-10-25 20:03:35.812527+00
614	pbkdf2_sha256$36000$Md0n3KuiKIji$yhWmw6Bz0oSGkDMA8yc8tsqC3EdrHcaOrLOCnaB0h58=	\N	f	cont_219-1.270				f	t	2017-10-25 20:03:35.870045+00
615	pbkdf2_sha256$36000$DbUZt6StpNhR$6QJc6joGNyMTO1SyqevO4HjHqlynOHcyzSO2ZsILAo8=	\N	f	cont_219-1.271				f	t	2017-10-25 20:03:35.92802+00
616	pbkdf2_sha256$36000$Mytz1foRv6qI$MS6VghUAhYABUSo4JUJJteL2fBxkBTKQ1hgcpzEFpD8=	\N	f	cont_219-1.272				f	t	2017-10-25 20:03:35.985592+00
617	pbkdf2_sha256$36000$3d5DpWsr9WCW$Lb+HsV1+YdrG8+4xTt4lU7rNQ0E2zu/IKDRNVkLZzYk=	\N	f	cont_219-1.273				f	t	2017-10-25 20:03:36.075462+00
619	pbkdf2_sha256$36000$wKF6GAEJh2jy$UKcCcGYWMnUUU7qJKGRs2ZpFfpNNeg0cOltJLWpJtMg=	\N	f	cont_219-1.275				f	t	2017-10-25 20:03:36.359574+00
620	pbkdf2_sha256$36000$FiCr49p2LWcB$f0yGdKGq2sN4IgV1guArz1bnOf+JcIwPAFXiuQMeR3s=	\N	f	cont_219-1.276				f	t	2017-10-25 20:03:36.526366+00
621	pbkdf2_sha256$36000$QkPdBYSH85Ok$SUCVwkNfVjPuUBE5KNJzqwHz4V1O1XYrTs/pEyLsoA8=	\N	f	cont_219-1.277				f	t	2017-10-25 20:03:36.593655+00
622	pbkdf2_sha256$36000$ZeUdv2CbjUnh$8uZVrvi49fddHR6CvrYMW5axP8rgxe7ugQ4JnH47NVI=	\N	f	cont_219-1.278				f	t	2017-10-25 20:03:36.648873+00
623	pbkdf2_sha256$36000$eSQ7a2tjWtPV$0BMG6UDI3MF6FQvJ0FT65iiMy8BpyDaeUlJjNtc5eEY=	\N	f	cont_219-1.279				f	t	2017-10-25 20:03:36.702765+00
624	pbkdf2_sha256$36000$xW3RQ1j6oEsE$yXvCy/whMK5AKk3E+hSU5wybI0Iqw307zRxg7R4ZQZY=	\N	f	cont_219-1.280				f	t	2017-10-25 20:03:36.765799+00
625	pbkdf2_sha256$36000$n94VIRkTxjWi$WbzBDriTgQxClDJhIvNsAzD17lDp1wDWlhQ6yYpT/bE=	\N	f	cont_219-1.281				f	t	2017-10-25 20:03:36.820859+00
626	pbkdf2_sha256$36000$R6B8PPEIYcLv$To2RM+5853HwPjxdiA16vd3ArzCWFeLtEBA7r7D2JMA=	\N	f	cont_219-1.282				f	t	2017-10-25 20:03:36.87653+00
627	pbkdf2_sha256$36000$2Cx3sbXsLhY3$ZZLfyZ6sBNqNpZ0PyMQdEb3x9mLWbVs+QBenJc4Rqw0=	\N	f	cont_219-1.283				f	t	2017-10-25 20:03:36.932112+00
628	pbkdf2_sha256$36000$0aKYI68hfvM0$5tqyJM88THdh3JcwS6czTj5pp15I0pNzZWRACEE0tbY=	\N	f	cont_219-1.284				f	t	2017-10-25 20:03:36.987121+00
629	pbkdf2_sha256$36000$iECOa6D9gpou$PUpTusmyi70mOk5XjJyo6SyDHHEr2t9anTCJK35FAVE=	\N	f	cont_219-1.285				f	t	2017-10-25 20:03:37.042836+00
630	pbkdf2_sha256$36000$sSvp0e2ifg6N$oyWc+o2b9Ng8r7jD2UZo8J4o2dr1nBeuxPcvA35MeHk=	\N	f	cont_219-1.286				f	t	2017-10-25 20:03:37.098433+00
631	pbkdf2_sha256$36000$0y4CsA3KsnMu$qPlyX5QmpbOCRuivs5VN5LfHhegysq4vq3/cgRH9BUg=	\N	f	cont_219-1.287				f	t	2017-10-25 20:03:37.153802+00
632	pbkdf2_sha256$36000$M6LEoW5GKRGl$srgwW7wq0P4VzB8T5ZNO99MTzDPcmc5lT2G9hzTyiyU=	\N	f	cont_219-1.288				f	t	2017-10-25 20:03:37.210197+00
633	pbkdf2_sha256$36000$hxBs87nXKP7Q$G7nJJRTTpQbPG6pFu8sqEhpT6eYuEeCxpHTJTe9b0/4=	\N	f	cont_219-1.289				f	t	2017-10-25 20:03:37.265176+00
634	pbkdf2_sha256$36000$8Aqr6fAuo0BL$RmrSUVGPPJOWQIpdg1TbYu0UvTZFSjXRTCpsuBXSiu8=	\N	f	cont_219-1.290				f	t	2017-10-25 20:03:37.320476+00
635	pbkdf2_sha256$36000$TtUuck5Awxzx$KxuKZGAfC1vCdjnebLxQPhpSZXRyaUpT474ore6qF0U=	\N	f	cont_219-1.291				f	t	2017-10-25 20:03:37.375935+00
636	pbkdf2_sha256$36000$FueTbNPDe5j3$z+pQF+p/N3KaJdVz7F8G5ecps3/KiRyXheOtp4XENxI=	\N	f	cont_219-1.292				f	t	2017-10-25 20:03:37.431145+00
637	pbkdf2_sha256$36000$bMxjgbzHx8P6$xYZlO6B69rgDHSJm2WFi86F6bAqQkCWxKIctG1h03lg=	\N	f	cont_219-1.293				f	t	2017-10-25 20:03:37.486777+00
638	pbkdf2_sha256$36000$YpecZP8EahuF$7IaRxy+Grkr2rrVQCRhmOfIpGlXvZEKmSqEKYkHg7kU=	\N	f	cont_219-1.294				f	t	2017-10-25 20:03:37.541212+00
639	pbkdf2_sha256$36000$Pm4Bd14RIx9d$D3mLs5Zs6l/6C23p5V2iooGGCJB1TnzbbvYxGJbBV7c=	\N	f	cont_219-1.295				f	t	2017-10-25 20:03:37.620936+00
685	pbkdf2_sha256$36000$VFOEWpDsgCi3$86pNpEUmwB/qBwgoPjBpLLuwdXR/G3KfJ93p6uepEGY=	2017-11-11 10:57:58.150488+00	f	cont_219-1.341				f	t	2017-10-25 20:03:40.217985+00
641	pbkdf2_sha256$36000$f1tleUx8DHRK$1fWfiiht/guDt/mRAS1s2SzCslpDHSWiYblhGQGc1JQ=	\N	f	cont_219-1.297				f	t	2017-10-25 20:03:37.731482+00
642	pbkdf2_sha256$36000$UkvT7bhCLrnn$fPtVC7fqYv455azi4n2cDsIOhHDVQ8Z5+sUGJyaox2k=	\N	f	cont_219-1.298				f	t	2017-10-25 20:03:37.786439+00
643	pbkdf2_sha256$36000$fmUGHGnQZApl$5WVUY2bX0al1BlQ1vDYoDSQtyDvSCoJz1zowYqEh4Q8=	\N	f	cont_219-1.299				f	t	2017-10-25 20:03:37.840799+00
644	pbkdf2_sha256$36000$RI176TT91OYF$fPBqvmbW6huzfwqGjR5uhZAHg26qVDrGl6/OidyiHgw=	\N	f	cont_219-1.300				f	t	2017-10-25 20:03:37.895044+00
645	pbkdf2_sha256$36000$pCIHqnndCzGe$/Nbu2HzoAqXgjZM6znTnyhm9DUASZ1R2nmzfiR+XasE=	\N	f	cont_219-1.301				f	t	2017-10-25 20:03:37.950214+00
646	pbkdf2_sha256$36000$oJulnf1QLRNb$ns60E64j9p4isjXkmXpBD0p7p3iEueYHeVuuHsIC/7Q=	\N	f	cont_219-1.302				f	t	2017-10-25 20:03:38.005879+00
647	pbkdf2_sha256$36000$4iVr5mQtHvbr$RP8z7b1G+jl88EEVQryLmvzXw87joHJ6PB+YUb2se2w=	\N	f	cont_219-1.303				f	t	2017-10-25 20:03:38.060177+00
648	pbkdf2_sha256$36000$ZhCwXM81mMDV$9cH6WILUuK28d/JVqBdFNMXxG7u4JiSk0xUoKsU9OaA=	\N	f	cont_219-1.304				f	t	2017-10-25 20:03:38.114538+00
649	pbkdf2_sha256$36000$FnCw91apv4yH$YWRGc3FiZtIIEBV0dgo8/e33ax8V+BFZ8Uuq4y2mpYE=	\N	f	cont_219-1.305				f	t	2017-10-25 20:03:38.168343+00
674	pbkdf2_sha256$36000$nt0Bo7FygjFD$UsVXvguFFVABLQ4sBdi22m8qGvgfaMLiE8FzW7fryXA=	2017-11-07 17:27:28.95386+00	f	cont_219-1.330				f	t	2017-10-25 20:03:39.578752+00
651	pbkdf2_sha256$36000$Gd2UXPXTjm1R$Qc31Z9aM08Socw6Dao06+IoL3HByUnxkEJq3afPkXWc=	\N	f	cont_219-1.307				f	t	2017-10-25 20:03:38.27773+00
652	pbkdf2_sha256$36000$G7cepM06gV9G$7bnYjsqRIsKRNSbP2KFsU57CtEykVBfj7EfvPFiZiQk=	\N	f	cont_219-1.308				f	t	2017-10-25 20:03:38.331993+00
653	pbkdf2_sha256$36000$77QoJ7qJzM7I$FpYeWldikL2Ap5NWf+vUXOseetDDO+Phj+T/Uk16Sds=	\N	f	cont_219-1.309				f	t	2017-10-25 20:03:38.386431+00
654	pbkdf2_sha256$36000$qriN36Gjc5Wj$s3fYe2x5gBbF6b3gCP1f02pVoQCmoGhejczj3evy22o=	\N	f	cont_219-1.310				f	t	2017-10-25 20:03:38.441332+00
655	pbkdf2_sha256$36000$N7u4fJ119SEB$d9IYrhYZ0bjdAkY7sCHU621q9z3wMKeqKygeqRMb9tk=	\N	f	cont_219-1.311				f	t	2017-10-25 20:03:38.495751+00
656	pbkdf2_sha256$36000$1OHch9AmjEqb$tjihNbLq48MqNHKArsoZRqWCDiX65IDbuEXwgf+ko0g=	\N	f	cont_219-1.312				f	t	2017-10-25 20:03:38.550573+00
657	pbkdf2_sha256$36000$Zfwe8J3dxwCD$4qFU6JDnC9STH8Ef+s/LXABAxbpWXTV55bSDck+afco=	\N	f	cont_219-1.313				f	t	2017-10-25 20:03:38.611769+00
658	pbkdf2_sha256$36000$jX0zzV4BQKKp$gqHGTX2iKkcCm9OFu/IJQQT4V/iWWlKwtMaWfOTfoYU=	\N	f	cont_219-1.314				f	t	2017-10-25 20:03:38.686259+00
659	pbkdf2_sha256$36000$PirOyalJa9Kr$Kj1btJaMSAJF4tl7OQjecEiH7HTvWvhrI4GWQFE+eTY=	\N	f	cont_219-1.315				f	t	2017-10-25 20:03:38.741657+00
660	pbkdf2_sha256$36000$vHhyBeLpZD9Q$h//SRqUNFURzws+H5e8e2S1vofjmbvKuxcIM/rMAmiM=	\N	f	cont_219-1.316				f	t	2017-10-25 20:03:38.797542+00
661	pbkdf2_sha256$36000$L12EWdt4KKOA$drfwOljaI2ulEHY8gwnECtpeAt3QsZ+LDWkPqO3+1cE=	\N	f	cont_219-1.317				f	t	2017-10-25 20:03:38.853224+00
662	pbkdf2_sha256$36000$Yb5IAXrMxCli$Awxxb3JXBm6r1oRJmNMw6FvotUjSQ6nERDfJ888kqxg=	\N	f	cont_219-1.318				f	t	2017-10-25 20:03:38.908664+00
663	pbkdf2_sha256$36000$y8VYa2TcMMiG$xV5FxK0g3kRS6+qAUldMMPYIPe+oOUpyHj2suAus7rg=	\N	f	cont_219-1.319				f	t	2017-10-25 20:03:38.963858+00
664	pbkdf2_sha256$36000$V5XuRfQe4yhl$IhKz+0q7yOXxdz4LMG1DEBxhvfPRBK5XvL7KC6831KM=	\N	f	cont_219-1.320				f	t	2017-10-25 20:03:39.019947+00
665	pbkdf2_sha256$36000$0ZevIWVRWB2V$2ZracSbC8MBfeHuiVzvdmgW40Z2KdeouVttRtMP5szg=	\N	f	cont_219-1.321				f	t	2017-10-25 20:03:39.079945+00
666	pbkdf2_sha256$36000$vJsOhPK3B6NK$5ewKUzARdp9w0x1KUsaHWd/VVSTs4/+z8toc3aoV1Tg=	\N	f	cont_219-1.322				f	t	2017-10-25 20:03:39.13541+00
667	pbkdf2_sha256$36000$U29F3O5Je3XI$1UDUibSft/8xCFmrtYp3bd05NZioPmr6UKVYYuVruMQ=	\N	f	cont_219-1.323				f	t	2017-10-25 20:03:39.191143+00
668	pbkdf2_sha256$36000$hWtNJOd9ZGLm$5OioMegEh9nHs6gQuwE71+BHsdvk57YWzxMzCnS01B8=	\N	f	cont_219-1.324				f	t	2017-10-25 20:03:39.248031+00
669	pbkdf2_sha256$36000$ImXzkYRZUiY6$UoY/kg5BTm2cVEjl+9uNqCDdvqZuuQBpydgceP+bnkQ=	\N	f	cont_219-1.325				f	t	2017-10-25 20:03:39.303016+00
670	pbkdf2_sha256$36000$ojh8zL4kx6T4$Wdf44dL7Fo/fdfPDmpZwufp9lZMJgqUXoRSOhx1dCL0=	\N	f	cont_219-1.326				f	t	2017-10-25 20:03:39.35835+00
671	pbkdf2_sha256$36000$z2eGt8LjHSgF$8fvJWMGNmHPN4ahFiCRlDCWrF0cpLJJa4vCaCHI1nGY=	\N	f	cont_219-1.327				f	t	2017-10-25 20:03:39.414151+00
672	pbkdf2_sha256$36000$NG6ncz2OCW5l$qtvB/DsdoFfSFc6KtG5BXtqeW3Ucfn9OBnC4ik9sulA=	\N	f	cont_219-1.328				f	t	2017-10-25 20:03:39.468539+00
673	pbkdf2_sha256$36000$qJ4cdmwwiv3Z$vvQleo0Lz7tHyWM3w+eKsi+a4oF+LN708vcyF8bECdw=	\N	f	cont_219-1.329				f	t	2017-10-25 20:03:39.523659+00
640	pbkdf2_sha256$36000$5kPe23PRmsUi$OtDuNocW4odTr3pxfQM6HffpXQelm7iRbTkiKVnPYKg=	2017-11-08 21:42:10.029236+00	f	cont_219-1.296				f	t	2017-10-25 20:03:37.675909+00
675	pbkdf2_sha256$36000$otfyGhbc53GU$eyxxGUIxyy222+52VMvEm+QlVYcDiqQbwLYarh87HiQ=	\N	f	cont_219-1.331				f	t	2017-10-25 20:03:39.635008+00
676	pbkdf2_sha256$36000$JaWHx0tPqb29$w4H9N0ltJP3lEXhBzGHocgTa3/c86unLAe25C1TVaNo=	\N	f	cont_219-1.332				f	t	2017-10-25 20:03:39.719212+00
677	pbkdf2_sha256$36000$DZGQtoWQUP5Y$mWVnBA2aAkFdgDKkPlG6Ek8HqtF/nRESUcmUX/vtO1E=	\N	f	cont_219-1.333				f	t	2017-10-25 20:03:39.774385+00
678	pbkdf2_sha256$36000$vfxvSIFftNcU$GRl+OmmbTXYyphXDTrrk1jDBQMlo0g4yj6jpGPF5Fbg=	\N	f	cont_219-1.334				f	t	2017-10-25 20:03:39.82906+00
679	pbkdf2_sha256$36000$6IqqcSOY63MZ$dwe9OQAz18NL30RiZNfUFuYCpBhXe7O70dD/iIxKTrg=	\N	f	cont_219-1.335				f	t	2017-10-25 20:03:39.884635+00
680	pbkdf2_sha256$36000$v80XCuyODjxO$1IjDJnvt3b5I31GIrUIxe3hl6bytBHlGznE3MftmaSY=	\N	f	cont_219-1.336				f	t	2017-10-25 20:03:39.939725+00
681	pbkdf2_sha256$36000$RX3AFh95sa7O$SCxcOIx/zb43tfdEJlloQu71i9S2Vs0ECjv4zFbJUTA=	\N	f	cont_219-1.337				f	t	2017-10-25 20:03:39.995028+00
682	pbkdf2_sha256$36000$52iNdmfcdK1z$FzRMeJi3k4zYT3QOxAn2+/lq0yl9PAhqDm3Liji4U4E=	\N	f	cont_219-1.338				f	t	2017-10-25 20:03:40.050526+00
683	pbkdf2_sha256$36000$MnIwGXloE5WB$0BRSuHRA9lcFsvON2bcbvYclVwx2B8qJMqOuA357cN0=	\N	f	cont_219-1.339				f	t	2017-10-25 20:03:40.106035+00
684	pbkdf2_sha256$36000$0W9qFQ28GAZU$gXCU2buD6NeN1a/bpD9YHhdkYms3mXiVBtGvU9+Sa0s=	\N	f	cont_219-1.340				f	t	2017-10-25 20:03:40.162017+00
686	pbkdf2_sha256$36000$R9ybB2sAUZ7U$nOdaRByP9EhY7nUIeV2yBXmQBDoCoKSSDrT705TB6is=	\N	f	cont_219-1.342				f	t	2017-10-25 20:03:40.273517+00
687	pbkdf2_sha256$36000$xfmJfec7ECHt$vIw+vIs6Th+md1nvvT1NIxF0TIfWjeLBHyS7psJWmGU=	\N	f	cont_219-1.343				f	t	2017-10-25 20:03:40.328382+00
688	pbkdf2_sha256$36000$QuSgOHezyhhe$xV1793VfPWhjoa2ZNFRunRVlBzkaBkPnpunNkg2dnaI=	\N	f	cont_219-1.344				f	t	2017-10-25 20:03:40.384202+00
689	pbkdf2_sha256$36000$KCUbnmKv6Maw$NFbveQTMxBircVZmGaU8TwIBGL/fiueZ9+1VcxG4Qkk=	\N	f	cont_219-1.345				f	t	2017-10-25 20:03:40.439247+00
690	pbkdf2_sha256$36000$cUU1NRTaoetH$h0mf7qUIN64LZIR8o+a85glVwbPTtNhWmaBFzWaRVmY=	\N	f	cont_219-1.346				f	t	2017-10-25 20:03:40.494853+00
691	pbkdf2_sha256$36000$xCIq8W4grZSY$iyQvAAff0K7rqDnN9QLj/RIK6SKiAuKuwk44dxvRF90=	\N	f	cont_219-1.347				f	t	2017-10-25 20:03:40.549606+00
692	pbkdf2_sha256$36000$Jn093wwH3psC$oPCrEZK+hUUiMaB1W21uMUjj8acJLicPddkGkktCaYA=	\N	f	cont_219-1.348				f	t	2017-10-25 20:03:40.605576+00
693	pbkdf2_sha256$36000$ZGpiDjd3qmdX$wKu3By7elUK9W5lzXlUfZzxjd7PaPc4aPo8g5wUoOGE=	\N	f	cont_219-1.349				f	t	2017-10-25 20:03:40.660869+00
694	pbkdf2_sha256$36000$gyx3etp9Zeaj$v1UAxS1Dz7Ce226NLPKTF73u20bNLZsF1c5AxOsLAA4=	\N	f	cont_219-1.350				f	t	2017-10-25 20:03:40.726384+00
695	pbkdf2_sha256$36000$mQPjkqHhmvp9$LjYU6aHn+WhgPiYI/w80PaRwGdsItk8KpIVqdSr7gHI=	\N	f	cont_219-1.351				f	t	2017-10-25 20:03:40.796663+00
696	pbkdf2_sha256$36000$Cztl3pFBxCmS$yvhKzJg3h+l+pTSIhJs6UY5ijL+2r1iKYAka8iXk9Nk=	\N	f	cont_219-1.352				f	t	2017-10-25 20:03:40.852123+00
697	pbkdf2_sha256$36000$TyRPuhmvDPEH$aVDpotN1CK3XcC9QkvH0gaA4VLKgS5bzG6mN9Y9OBqA=	\N	f	cont_219-1.353				f	t	2017-10-25 20:03:40.907349+00
698	pbkdf2_sha256$36000$f0IuICnv1IG4$ozkNbuz/phpIWIu9Rfr8+w48BLcV28HU+riWqMN2Sjs=	\N	f	cont_219-1.354				f	t	2017-10-25 20:03:40.962696+00
699	pbkdf2_sha256$36000$W7eDKcDrubpL$PlQZ/GIsf7yrKm9G9XsxvWVv4E3LZLoWrGpPdkw1oPk=	\N	f	cont_219-1.355				f	t	2017-10-25 20:03:41.017893+00
700	pbkdf2_sha256$36000$5jbyJISJqzab$QeGj/WSEMTCavkTWVo4AYXFYJcYgdhcIUSlK4CVYKQE=	\N	f	cont_219-1.356				f	t	2017-10-25 20:03:41.072957+00
701	pbkdf2_sha256$36000$3ISlmuTssoop$x5NH8OoBq6lq0gEpKc6izayTzpmRt2/YGt71aIV8lCE=	\N	f	cont_219-1.357				f	t	2017-10-25 20:03:41.127027+00
702	pbkdf2_sha256$36000$u3gvi6ZTNqVA$Jt6+u6jG1vklhcWJTVrkDqnX/ua9VCZbvx2jU9sNFsI=	\N	f	cont_219-1.358				f	t	2017-10-25 20:03:41.181288+00
703	pbkdf2_sha256$36000$OIauwjXjy9tZ$hOkNh3+GV+5jTCmuQeYs5vuMYbqpt5ABlZe4CzGsKiU=	\N	f	cont_219-1.359				f	t	2017-10-25 20:03:41.237026+00
704	pbkdf2_sha256$36000$QxgMrNOBIDax$E0hN8tN9D9UJh/SjM66b9dI2un6trTNBpkLnoj32SgY=	\N	f	cont_219-1.360				f	t	2017-10-25 20:03:41.292362+00
705	pbkdf2_sha256$36000$mh4WJDTQpGjF$89Tg3VT8/cGrb7FAHhWjbklCiaFfiFU+1rBJjCa8YXY=	\N	f	cont_219-1.361				f	t	2017-10-25 20:03:41.347228+00
706	pbkdf2_sha256$36000$4GjpUkKAKVXY$ccPWmYJKNL7Z1eRFQtS01bsA2LnuW6eqLf37Otu86Kk=	\N	f	cont_219-1.362				f	t	2017-10-25 20:03:41.402662+00
707	pbkdf2_sha256$36000$LNgFd8BseWFB$DcbhiwY2ClQB8hzgbCkqj9vdbXIHMqafUZtoqsWHfow=	\N	f	cont_219-1.363				f	t	2017-10-25 20:03:41.457098+00
708	pbkdf2_sha256$36000$OrfC3Ki1EzOH$jPOpyIVl4AL9YoNt9aNy2ll2+YwIgRaztyARASS98yU=	\N	f	cont_219-1.364				f	t	2017-10-25 20:03:41.512548+00
709	pbkdf2_sha256$36000$5w83ttsRukmw$NzPtUNkAZHt/mxQ5DbYt3J9/Uf5MsUNc4guVhjMP3Qo=	\N	f	cont_219-1.365				f	t	2017-10-25 20:03:41.56827+00
710	pbkdf2_sha256$36000$N66DA5iuQ96J$IwUEaiWmPUf7rlAO30m1FdXsTgBUxgWrUS9nZ3C2fYg=	\N	f	cont_219-1.366				f	t	2017-10-25 20:03:41.623877+00
711	pbkdf2_sha256$36000$YjVl8kcqN277$cKX7zsZioDMPEq8xhb0FHDgV1RDoE0qvV8g6rZXlFiw=	\N	f	cont_219-1.367				f	t	2017-10-25 20:03:41.679298+00
712	pbkdf2_sha256$36000$gNX7l729zrG4$BzfqV49MVJfKgSbZtWhSMo5FptY/VSlirhbHUPSJhxE=	\N	f	cont_219-1.368				f	t	2017-10-25 20:03:41.735438+00
713	pbkdf2_sha256$36000$lMFWseb9i1AP$sSCwKXsrYM/jmnSz3HFAaUIr7fsd3RqWYrKf+0AaFiw=	\N	f	cont_219-1.369				f	t	2017-10-25 20:03:41.816675+00
715	pbkdf2_sha256$36000$BGnFXmV82iGm$9P+WW5mKUAFSGDxcx+yNOttAXqvyId059pkfhAgCHsQ=	\N	f	cont_219-1.371				f	t	2017-10-25 20:03:41.926701+00
716	pbkdf2_sha256$36000$coy0IzxV0STn$nQVNjv16XMqF8xupx9HxrFEwQBO51jUL7KWl28k3UsQ=	\N	f	cont_219-1.372				f	t	2017-10-25 20:03:41.981103+00
717	pbkdf2_sha256$36000$caqj4XEeblC2$XoTuyI3DDHTVFjyQN+knq++DJcCuziRmZBinFHT+tgQ=	\N	f	cont_219-1.373				f	t	2017-10-25 20:03:42.036036+00
718	pbkdf2_sha256$36000$XR91YDTssQjt$zlQTkuTyPyjIlEk3w+XRYdKvruxQifazrdU0JP2CHeI=	\N	f	cont_219-1.374				f	t	2017-10-25 20:03:42.090455+00
719	pbkdf2_sha256$36000$7Dpe4PVxsR6k$E/xIT4Uq/yq5DJf9XZxvy2FjvQaSjDPlAPExIVdomOo=	\N	f	cont_219-1.375				f	t	2017-10-25 20:03:42.146638+00
720	pbkdf2_sha256$36000$2OFtJteW39vj$aDvSifudD8lmuycl5hwe7xu6TooVv1DKKGRpiZrxc4k=	\N	f	cont_219-1.376				f	t	2017-10-25 20:03:42.202165+00
721	pbkdf2_sha256$36000$DbdbicdDPXWG$3Uksdqpgm4Cy8Ef5plYBEIkdsLkxGbCCawUPX1EpYbI=	\N	f	cont_219-1.377				f	t	2017-10-25 20:03:42.257603+00
722	pbkdf2_sha256$36000$lpnHEk36L3t4$Krzlxo3Y/ot5r9CIYs59YIwlhEmrQKB7cEIJ7Z1ASq8=	\N	f	cont_219-1.378				f	t	2017-10-25 20:03:42.313234+00
723	pbkdf2_sha256$36000$dYin9HlIKUyB$M5hLHWdvmy34JZfPRGDvT3Tn7gkpEzgKdVyBMDfbwCI=	\N	f	cont_219-1.379				f	t	2017-10-25 20:03:42.36846+00
724	pbkdf2_sha256$36000$wMIbWl7JDW3v$KOMZdhuSLPoobj+rRPdGx4M0tl4iJELdsQfpeztI59k=	\N	f	cont_219-1.380				f	t	2017-10-25 20:03:42.423069+00
725	pbkdf2_sha256$36000$hEkDEotItdpX$o8gFKju6sRL8cHBiqqYtxn2suLu8ncj18n8un8hnp6Q=	\N	f	cont_219-1.381				f	t	2017-10-25 20:03:42.477394+00
726	pbkdf2_sha256$36000$WJ60pL55Gq0D$4UU2Z5HkdqmVfFpJpyiNYHe0p83CvjFCBHJwcM0cf/4=	\N	f	cont_219-1.382				f	t	2017-10-25 20:03:42.532641+00
727	pbkdf2_sha256$36000$5vIcrzP88oUs$s4P4JfJHsNIP/f3JYBc0I57PhkKESGBTVx8jLFN7QmA=	\N	f	cont_219-1.383				f	t	2017-10-25 20:03:42.592203+00
728	pbkdf2_sha256$36000$ZOvaYlSw1Ys9$F4xImRWy30x1qeFtutjEYoWgKGK2ausiDSTm+S/kxNI=	\N	f	cont_219-1.384				f	t	2017-10-25 20:03:42.652408+00
729	pbkdf2_sha256$36000$xstDjMgFkJ9M$G72n1p0Jkqqu7OkMO1ebAYa5qa95xQUU/lwGBJsw0C4=	\N	f	cont_219-1.385				f	t	2017-10-25 20:03:42.715282+00
730	pbkdf2_sha256$36000$7SCnKOXjHWLr$5JSuYiUg5gSSDfZeKPDkwQNEqOf4D2pULUWe9nCpl2A=	\N	f	cont_219-1.386				f	t	2017-10-25 20:03:42.779996+00
731	pbkdf2_sha256$36000$X92DdMXds0BT$Mc5mgm05DmlXMTthMgZuTFgapu5N8ermk9Ltib8CKeg=	\N	f	cont_219-1.387				f	t	2017-10-25 20:03:42.874308+00
732	pbkdf2_sha256$36000$Yzng8OYM7BSf$s8ZuDMYroqPtbC1fWq0zbCtKdwBGPySBQqi+mnY+b3A=	\N	f	cont_219-1.388				f	t	2017-10-25 20:03:42.938449+00
733	pbkdf2_sha256$36000$LrnJHflqeVyP$9bNNr3SWjDqryTvfQEvZSFXWbdjZFi4bNcq5vH5BN4E=	\N	f	cont_219-1.389				f	t	2017-10-25 20:03:42.998486+00
734	pbkdf2_sha256$36000$kt4mn4CqMtnY$MWuKf2LmbL3FKpIMPuHTZoSQxieqMMQuJ7mOvC92ivw=	\N	f	cont_219-1.390				f	t	2017-10-25 20:03:43.055397+00
735	pbkdf2_sha256$36000$8DWBrMi0eLoL$Sf89eK3/ceuccefzIHvskcF2tUl3GgihqZD93JAYisc=	\N	f	cont_219-1.391				f	t	2017-10-25 20:03:43.110806+00
736	pbkdf2_sha256$36000$vVMKwkS758F0$um1Xk2FGJVvpxglBzjf1U00rMlJVJ1u+RbMD2bRglHk=	\N	f	cont_219-1.392				f	t	2017-10-25 20:03:43.166736+00
737	pbkdf2_sha256$36000$ViMlN9UCwviB$7nNkvaPKWxQ+x5/QCNo8PYzKVteWG6ZDrinIEjUVQ3g=	\N	f	cont_219-1.393				f	t	2017-10-25 20:03:43.223285+00
738	pbkdf2_sha256$36000$x2CMEaOibqx7$5g+wLBNoCyRUo+t+lsTBxXEQ9N7svEwZCf9xWhaKzus=	\N	f	cont_219-1.394				f	t	2017-10-25 20:03:43.278167+00
739	pbkdf2_sha256$36000$Qvio7w2aA8u5$g6xkxyxSDcZx3cMrCBEIBOrUiZf+2EGHhshMGOuQk9E=	\N	f	cont_219-1.395				f	t	2017-10-25 20:03:43.333164+00
740	pbkdf2_sha256$36000$IFFrS2FxQfkT$2P9JHeTxaNpp5zbFD8FAY6Eygd28Zpoji22sCyKDLW4=	\N	f	cont_219-1.396				f	t	2017-10-25 20:03:43.387866+00
741	pbkdf2_sha256$36000$UwbU4GNztSjd$WbkywUxAd5EDi6+3VrACyrBQucOnTrVmaZsBI64e0uY=	\N	f	cont_219-1.397				f	t	2017-10-25 20:03:43.443798+00
742	pbkdf2_sha256$36000$jELLum4QVgto$8vkEz9+TftYqJ5RiawdtOiRCB0yofv++BSPxPK0HKGo=	\N	f	cont_219-1.398				f	t	2017-10-25 20:03:43.499955+00
743	pbkdf2_sha256$36000$5f5raHQe3Vyt$Lfq8j9c0bMoo/1GiN5Hc/eiV3SiMsH55NrhrWKRq/SI=	\N	f	cont_219-1.399				f	t	2017-10-25 20:03:43.55499+00
744	pbkdf2_sha256$36000$g0fYdN5aiqjP$F0mTQeuKD6Xgxvrz2NLfwN9BUX2gRY9zxshDbUe4UEQ=	\N	f	cont_219-1.400				f	t	2017-10-25 20:03:43.612604+00
746	pbkdf2_sha256$36000$BnchTqB8mW9J$zhASEY2Jkh9/BIm5brkmE5kBh5vurHeM75xgKPXZduE=	\N	f	cont_219-1.402				f	t	2017-10-25 20:03:43.722438+00
747	pbkdf2_sha256$36000$oKEmJAjk1LGQ$0yNHHdvcyE/Jj6YsGQEWGO6ZEDnjkBFCkJpsOg2Euq8=	\N	f	cont_219-1.403				f	t	2017-10-25 20:03:43.778302+00
748	pbkdf2_sha256$36000$K2QznCF3OjjR$AnmxyPZ8LeJ3HEeGDKU/rmksXeNYrRoGFWMFSCbtKE4=	\N	f	cont_219-1.404				f	t	2017-10-25 20:03:43.833451+00
749	pbkdf2_sha256$36000$zaCvesoDn0Ck$MJFh5uuMnFpTXT8BbmZAHrvayp+zOCDUK2y+2y0mRNo=	\N	f	cont_219-1.405				f	t	2017-10-25 20:03:43.91439+00
750	pbkdf2_sha256$36000$c266FsaUgZhw$G4LltoqBYvxWtvom23uWuVEHjteq/ziK4TwsSyK/MII=	\N	f	cont_219-1.406				f	t	2017-10-25 20:03:43.969569+00
751	pbkdf2_sha256$36000$jSgd9DIJ6DX3$TAjnodCxi8o7zc0lBx768EooxPTacXhWkTahEkFyRSk=	\N	f	cont_219-1.407				f	t	2017-10-25 20:03:44.024681+00
752	pbkdf2_sha256$36000$KHLiSjKgixhg$jk05HdUdfpKvgnggJ/3Vn5Yu3U+nYciNc9dAkycqJ0A=	\N	f	cont_219-1.408				f	t	2017-10-25 20:03:44.079306+00
753	pbkdf2_sha256$36000$oYppQ7D5vXRO$hVOKDOl92ns71CN1F9H7FlwVIGO6nYGlnoK/x3qaA0M=	\N	f	cont_219-1.409				f	t	2017-10-25 20:03:44.133893+00
754	pbkdf2_sha256$36000$QnQNgTe0yMYU$zDDNvR130FxZyae9Ho7v5woTptOOJrpWVRUoaLjkYFc=	\N	f	cont_219-1.410				f	t	2017-10-25 20:03:44.188496+00
755	pbkdf2_sha256$36000$cObd7MyAKpL1$iiFEw9Dp3OzQ+qkzz7/PMvFRA41ekUwQVhy4+VH9Wsc=	\N	f	cont_219-1.411				f	t	2017-10-25 20:03:44.243347+00
756	pbkdf2_sha256$36000$Np4GIDoKPXZs$43bYwyoFCdWbgFkxF72lIJ9IRdUO5D5BRAr4WfaKZ6s=	\N	f	cont_219-1.412				f	t	2017-10-25 20:03:44.297875+00
757	pbkdf2_sha256$36000$RY0P8j8wCUu4$KTPyuCyz9c6RC4QW1kKAkegYbzJnV+BY16MJpGBoyT8=	\N	f	cont_219-1.413				f	t	2017-10-25 20:03:44.353399+00
758	pbkdf2_sha256$36000$CW5NYhL5xKtd$sPLp6l4s83LUAmXI/1wFg7q45/7a006SO249BTJmzOw=	\N	f	cont_219-1.414				f	t	2017-10-25 20:03:44.40852+00
759	pbkdf2_sha256$36000$ulQAtmFBAhQN$hvQui7qivFXeiJppjnSFpy2jdH0p7ISZ2TCHOMD+sCE=	\N	f	cont_219-1.415				f	t	2017-10-25 20:03:44.463988+00
760	pbkdf2_sha256$36000$UM9gHl0oBhII$qz1IY/mad+r3qHH/VyH86ErKHhLYwcTRuH8PPlM6rC8=	\N	f	cont_219-1.416				f	t	2017-10-25 20:03:44.51853+00
761	pbkdf2_sha256$36000$ymsDadFqxNBd$pGPi5ienAQyK4My+MfyjU2KgEHObvOORzcfByiOduKM=	\N	f	cont_219-1.417				f	t	2017-10-25 20:03:44.572947+00
762	pbkdf2_sha256$36000$aJ643yIMSkN6$8eM75Xz4Zb/KdRZ6N716cgjTU+otwsHdCWdNWOExhhY=	\N	f	cont_219-1.418				f	t	2017-10-25 20:03:44.627835+00
763	pbkdf2_sha256$36000$u8Mgnri4XoTF$44oD0cqBVJxtDBT8YpdCjnnCMBGOaz+4ynZjnC0rpxQ=	\N	f	cont_219-1.419				f	t	2017-10-25 20:03:44.682895+00
764	pbkdf2_sha256$36000$Hj61LOMYddWy$6uWgStluWSsMP1d6lOXgQ4Qrb5sHqeoxWd/Db6yeV1o=	\N	f	cont_219-1.420				f	t	2017-10-25 20:03:44.738579+00
765	pbkdf2_sha256$36000$uUm7KoXCppnu$HrO4PEz1Cl7293fKEfin75qq/X8tcgoBSU8Bdn9b6z4=	\N	f	cont_219-1.421				f	t	2017-10-25 20:03:44.792985+00
766	pbkdf2_sha256$36000$XPekG337z5Zw$TFRnpXYH9FDdZNzhFdABWEgqtYE0R6ZsSzpnuMTho5M=	\N	f	cont_219-1.422				f	t	2017-10-25 20:03:44.848223+00
767	pbkdf2_sha256$36000$7yNruXcXHqvj$FVXgV2GRVNNSH3wZUu7p24e6UMY4EyeqcN86zs1VeMY=	\N	f	cont_219-1.423				f	t	2017-10-25 20:03:44.904742+00
768	pbkdf2_sha256$36000$xbwuetgpYlID$gpn5i7kvpF8nocXlqFiVAS3xSx6ZBPANuhqShJf1i4M=	\N	f	cont_219-1.424				f	t	2017-10-25 20:03:44.988543+00
769	pbkdf2_sha256$36000$k80D9DtywDyj$T3r1QgfR+9mUfPkNNbD+FrL1uJu/j13dwQKzs8h7Sxg=	\N	f	cont_219-1.425				f	t	2017-10-25 20:03:45.081381+00
770	pbkdf2_sha256$36000$jUzEezKVIL33$gF8F3/+o/0n/irYUdBRema6VUen1UiI86MtlqbfvWyk=	\N	f	cont_219-1.426				f	t	2017-10-25 20:03:45.231501+00
771	pbkdf2_sha256$36000$RBrd1la7NM0z$sq2pOQoEmCI3m1hqlT6QWZDTxFEnPXXQ4isyo9MN+Lg=	\N	f	cont_219-1.427				f	t	2017-10-25 20:03:45.380705+00
772	pbkdf2_sha256$36000$naQU23dVLvaJ$zYwPvaFGzKkbuOsa3ibJOWS99EFTkPnuHYW2HE1QP8Y=	\N	f	cont_219-1.428				f	t	2017-10-25 20:03:45.528154+00
773	pbkdf2_sha256$36000$Oi4Y0lAUYlrq$EcGqbwESoPgyBm7xCVqZzgngIM7Qlg47kJ7S9Nbs4HE=	\N	f	cont_219-1.429				f	t	2017-10-25 20:03:45.645966+00
774	pbkdf2_sha256$36000$Kt5fuA2xBrQb$le0FSMXGrtTLcl8FO0jNBYRmN2dEVaFjc0t+wFbd7aA=	\N	f	cont_219-1.430				f	t	2017-10-25 20:03:45.769051+00
775	pbkdf2_sha256$36000$vsgqyHiUn3WR$8rvscrj5b+GM2pT1Jv+kA5Zy7SAImMi0R6ue/65dbhM=	\N	f	cont_219-1.431				f	t	2017-10-25 20:03:45.91223+00
776	pbkdf2_sha256$36000$NHkZGdLGCEll$SXJbfxAfTUvDgpEwEhzojw0Tdiwb54N5To2gd0LSFKo=	\N	f	cont_219-1.432				f	t	2017-10-25 20:03:46.066915+00
777	pbkdf2_sha256$36000$EmlIWrWCq6CQ$yjYjF0/R/2kgLn9D9cYGSk49b3WCs7y64HSX9d1GwnQ=	\N	f	cont_219-1.433				f	t	2017-10-25 20:03:46.160505+00
778	pbkdf2_sha256$36000$ECKK6qmQfKHt$2eLsx0hYCQudmPi45TbScPjFjAWRuZ5DmdLyai4FQPw=	\N	f	cont_219-1.434				f	t	2017-10-25 20:03:46.25532+00
779	pbkdf2_sha256$36000$0yhiKVDv5AB6$fU7txHFbmd04/D0+NxLeOCbRLwX8CW5104I0SRpHGaE=	\N	f	cont_219-1.435				f	t	2017-10-25 20:03:46.368416+00
780	pbkdf2_sha256$36000$FkupIEes8Aqp$teuAj9PTs9btpNKlCMqM9HuKNwETmN0zQ/10cyoDQpg=	\N	f	cont_219-1.436				f	t	2017-10-25 20:03:46.463382+00
781	pbkdf2_sha256$36000$JlMJDc5VpgOB$1tvAmhxgbDiIFiRaOwTA2yKsuhEGVknDKsQ7n6l0o0I=	\N	f	cont_219-1.437				f	t	2017-10-25 20:03:46.576593+00
782	pbkdf2_sha256$36000$PKnQpI08Xj0J$0ArYnQROWf60+0ytgX27JHHGt0gOfK1ypj+iAty9fNM=	\N	f	cont_219-1.438				f	t	2017-10-25 20:03:46.723272+00
783	pbkdf2_sha256$36000$rE1FyCNDgQTf$9tSbQIvPNV7a0Ee/eC+vwU5xyhMQXAxZWn0QgoAVphA=	\N	f	cont_219-1.439				f	t	2017-10-25 20:03:46.864832+00
784	pbkdf2_sha256$36000$yRELTlwXpB8u$z2B6OuW3WdAyyhYgvJgveY+uYiZBUwk7RSdaX5j5HlM=	\N	f	cont_219-1.440				f	t	2017-10-25 20:03:47.007571+00
785	pbkdf2_sha256$36000$Se9UEp6lIF3o$deZsAednLPVcJqhksDSEDEyu6oQRD+bdrBnY78OM38I=	\N	f	cont_219-1.441				f	t	2017-10-25 20:03:47.203065+00
786	pbkdf2_sha256$36000$uXzPkXtFvN1v$TY4Yr8f45MbewFuAX39h7d06Ld6k21UF1PX6XxVUmgE=	\N	f	cont_219-1.442				f	t	2017-10-25 20:03:47.349528+00
787	pbkdf2_sha256$36000$lV0CPoRIFWby$154PyziJJTp5EbpZSwGYqaxmZ2rR+dr/lFv/t1Sghgw=	\N	f	cont_219-1.443				f	t	2017-10-25 20:03:47.492223+00
788	pbkdf2_sha256$36000$gO4o25vx4NFn$I+mTF1j2o77Arl+c1iXkqusX7aRgGXiv3mN4PhdGFAk=	\N	f	cont_219-1.444				f	t	2017-10-25 20:03:47.634566+00
789	pbkdf2_sha256$36000$V2Z0HYc24tFG$2YTsQjQFbxrl7xWKasIxLAktEncsSOGRvt/dRaHrfcw=	\N	f	cont_219-1.445				f	t	2017-10-25 20:03:47.777496+00
790	pbkdf2_sha256$36000$dAvxrW2c2BiM$FOmiEIYTMvKMmn0k48zpjcRJUK8BC864TpXok5NJ6G0=	\N	f	cont_219-1.446				f	t	2017-10-25 20:03:47.920247+00
791	pbkdf2_sha256$36000$rad3APIlRZzq$M7WdP/S+tsUuZAp/ACgWkndkGva9JhhQ1Ei4PwaXCKM=	\N	f	cont_219-1.447				f	t	2017-10-25 20:03:48.062922+00
792	pbkdf2_sha256$36000$y66jszo0LUVA$LwaR4kjlEl4HwuP27dUe8QXbHAmDS+PSFyUSQqNrZLY=	\N	f	cont_219-1.448				f	t	2017-10-25 20:03:48.2416+00
793	pbkdf2_sha256$36000$Qi9fGg5mSZNM$2Lx2hDb2zL3EJOnrXIFduCQRrzImiDlyvo6K6oWb3TY=	\N	f	cont_219-1.449				f	t	2017-10-25 20:03:48.41066+00
794	pbkdf2_sha256$36000$1hHT3n7Dcx2g$RwJHwpK2DFKxn2fSNpshemnhRNFUaQJF05xH4uTk+sg=	\N	f	cont_219-1.450				f	t	2017-10-25 20:03:48.533665+00
795	pbkdf2_sha256$36000$SC4kO25wzxFn$GWbJYLraQTmsCRmZYLQ6mQ+K62IaylF+cE7Eyb9kMIo=	\N	f	cont_219-1.451				f	t	2017-10-25 20:03:48.588263+00
796	pbkdf2_sha256$36000$U66aqSwpuLUh$+AWgMBZ0zcBHLmikVXO/tCaP+6pOa4JpA8N7Puhpld0=	\N	f	cont_219-1.452				f	t	2017-10-25 20:03:48.642535+00
797	pbkdf2_sha256$36000$dVHvrQTqeUyX$mTTBpzOIKOC9jYzrE+RVV5M0Jf4agn0HQpxPV9cW2dI=	\N	f	cont_219-1.453				f	t	2017-10-25 20:03:48.696876+00
798	pbkdf2_sha256$36000$zrTsJVkkeWm3$jFwOcD8+B3mPmNyECv4ViC7D6GCwNipBV2b7vkVVc4Q=	\N	f	cont_219-1.454				f	t	2017-10-25 20:03:48.751395+00
799	pbkdf2_sha256$36000$iXn8SsYk1BxV$aog/oUvWp9THZOo2d/amwlF1vUEBDS+ZOvE9R3krOlo=	\N	f	cont_219-1.455				f	t	2017-10-25 20:03:48.8057+00
800	pbkdf2_sha256$36000$Y5zRAF7O0Y02$SMq3PN3Oj0HfbA6dyMk98yKu0LkwHbbBvtpl9V/VSPw=	\N	f	cont_219-1.456				f	t	2017-10-25 20:03:48.859897+00
801	pbkdf2_sha256$36000$DkG6KuqsNdM2$Lj3+3W9MWB2DrH7fCkgtCxjAzb3oXFihqzoamKRZslc=	\N	f	cont_219-1.457				f	t	2017-10-25 20:03:48.952826+00
802	pbkdf2_sha256$36000$3eoVHIwFKLB4$jC3yRQYqxNpz8ILt73VCDZagdupuY+WC7y0W6LZQuSI=	\N	f	cont_219-1.458				f	t	2017-10-25 20:03:49.096603+00
803	pbkdf2_sha256$36000$tRixv9vFkGvb$qLIIci9b5/roQeUbkm3fjqy0mlRGG/JsrYO4dKefa+g=	\N	f	cont_219-1.459				f	t	2017-10-25 20:03:49.241851+00
804	pbkdf2_sha256$36000$8geT4hk9AJl7$hbuZsyLIiUhUo5whEs9gZywSanzlb4CGIL0lcOfLbRA=	\N	f	cont_219-1.460				f	t	2017-10-25 20:03:49.450217+00
805	pbkdf2_sha256$36000$suo7HfSbqgSR$24a0aSMx+D51fsdlBQSM64qs6gtu2W47adlfF+ovJeQ=	\N	f	cont_219-1.461				f	t	2017-10-25 20:03:49.593109+00
806	pbkdf2_sha256$36000$fIbPPQ7jLkn7$SkGLgAqX8uWQQFw3h+rfoo4cfs+XUQKPQ+Ad4TAw9Eo=	\N	f	cont_219-1.462				f	t	2017-10-25 20:03:49.736132+00
807	pbkdf2_sha256$36000$UdNRCd4NfUDA$EhV1DDyOHr1uUREDgzF5+pVv2ZSH56AIR902902PRhs=	\N	f	cont_219-1.463				f	t	2017-10-25 20:03:49.881929+00
808	pbkdf2_sha256$36000$3sEBfhj5aG8R$5Nx7QCxvWq9oNzmb2h7brb2GYY+OL68szuN8s5zWZdg=	\N	f	cont_219-1.464				f	t	2017-10-25 20:03:50.024836+00
809	pbkdf2_sha256$36000$C5PsEduMTVEb$lUJ/3eJIugpoFTHfLQbjp9mRQSszVmv0J6/8WDI64IA=	\N	f	cont_219-1.465				f	t	2017-10-25 20:03:50.166451+00
810	pbkdf2_sha256$36000$ofL69tCj5o0u$BZxusl3kBIlpLC/8ckpj8yiU3g2NTN51wLmcL8s6Pzk=	\N	f	cont_219-1.466				f	t	2017-10-25 20:03:50.313731+00
811	pbkdf2_sha256$36000$KS6bEtE62DHj$8J+3azjB7uG0l2+i4YN2Nj+wyZpaVbsNjQkC2YQ9sng=	\N	f	cont_219-1.467				f	t	2017-10-25 20:03:50.48258+00
812	pbkdf2_sha256$36000$dz1fzPtblSuW$cwfnIoY8VyfTeFIKlqXV8DA3B5aUhVI46hI3sdJr7Mg=	\N	f	cont_219-1.468				f	t	2017-10-25 20:03:50.662241+00
813	pbkdf2_sha256$36000$b0qgmrTFHdNh$Z3mNHlMIrNlamB78luG/CkYw3+gutwHWRRUzrUILcKA=	\N	f	cont_219-1.469				f	t	2017-10-25 20:03:50.807675+00
814	pbkdf2_sha256$36000$McYR2dZgWZQJ$UOcY55EUf2De9XE9Kwq2jLwNB/o7FomPhGuND34dJWM=	\N	f	cont_219-1.470				f	t	2017-10-25 20:03:50.94966+00
815	pbkdf2_sha256$36000$DiTxIGh8CWSx$ZAnrJEtmAPOQo3mKbo87VTLHNmiLpIEaAkegPdYFnqQ=	\N	f	cont_219-1.471				f	t	2017-10-25 20:03:51.102558+00
816	pbkdf2_sha256$36000$7WCSgD4KGZhW$USvfkxOpvMwXQdJ+ZZ8S9uTtcmbNes2dP2UPbckelIw=	\N	f	cont_219-1.472				f	t	2017-10-25 20:03:51.248057+00
817	pbkdf2_sha256$36000$OamPzFKDnjyV$YVAcLvPFcqnX0yr+PewrVPeHLHRJyV/CUNAK5Pdc6ng=	\N	f	cont_219-1.473				f	t	2017-10-25 20:03:51.39573+00
818	pbkdf2_sha256$36000$p7R7gr6ZnJ94$ue8EnBqBMyGt9DS83dQwQf10PY7FlsC+aw9a54jXwTg=	\N	f	cont_219-1.474				f	t	2017-10-25 20:03:51.535961+00
819	pbkdf2_sha256$36000$RwIcFJqhs2Tr$rg3/1Rw0hfuehWzrrL22C9acwyj+JD4H+xXqF8CDYfc=	\N	f	cont_219-1.475				f	t	2017-10-25 20:03:51.711574+00
820	pbkdf2_sha256$36000$uEbLOlI4WuYu$QIObfrfAFiPkJ7KlnTvERFVX5USrzKaKwEVa57Y58lc=	\N	f	cont_219-1.476				f	t	2017-10-25 20:03:51.825328+00
821	pbkdf2_sha256$36000$9iNN6riczp1z$o1BzUsAJwJr6Y6V+uQpJEd3Fuyt4n+1R9qbZKtYTlMg=	\N	f	cont_219-1.477				f	t	2017-10-25 20:03:51.939083+00
823	pbkdf2_sha256$36000$W6bXbfycQ588$jFQaiKd7eQ1Vc8g54DGpTlpcCDO9L0o/E+Dj9hu099Y=	\N	f	cont_219-1.479				f	t	2017-10-25 20:03:52.223493+00
824	pbkdf2_sha256$36000$W9iq6zD9fKji$X1Jx80m+G64hPThhMyOprKAFDqvo6OfInEwfeiijdtE=	\N	f	cont_219-1.480				f	t	2017-10-25 20:03:52.367862+00
825	pbkdf2_sha256$36000$HLZFCeqLW2Xr$lkGOBgTPOpSGMapXeRVQ3XJUNyx8Wz/2lAE1pKojcO8=	\N	f	cont_219-1.481				f	t	2017-10-25 20:03:52.512437+00
826	pbkdf2_sha256$36000$M3eEKzQoPqfT$UziLHsIwkvZ3Il8NW82d/Jnh7htgxSVZ32IiSdOojwU=	\N	f	cont_219-1.482				f	t	2017-10-25 20:03:52.634811+00
827	pbkdf2_sha256$36000$ZeOMJOjSEbKg$oHB0DO0+Hg1rPGyX+BtMXuem33miHaFn6VYiQy9uo4Q=	\N	f	cont_219-1.483				f	t	2017-10-25 20:03:52.82449+00
828	pbkdf2_sha256$36000$4LJDCcjeHxcb$tRqm6RP2szuNF7xbQ0aaAQhuGDDbNwru62MYHsQrVkE=	\N	f	cont_219-1.484				f	t	2017-10-25 20:03:52.946279+00
829	pbkdf2_sha256$36000$f2MIKkn0RFPr$3UsJX2HOZWVdXFj89d9bA2SGErwAD9/s24xKVxjRrr4=	\N	f	cont_219-1.485				f	t	2017-10-25 20:03:53.042841+00
830	pbkdf2_sha256$36000$MG52oiYbhnJ5$w8aFUa29/sxd1w6Pdm3E5BoP94JeyPfAuY4NB/spHdE=	\N	f	cont_219-1.486				f	t	2017-10-25 20:03:53.096951+00
831	pbkdf2_sha256$36000$4hzj4tu1ap22$x+T33wh5gwT9NvtypruH0pVQ8BFrQnLzhXn9stsZJek=	\N	f	cont_219-1.487				f	t	2017-10-25 20:03:53.151104+00
832	pbkdf2_sha256$36000$Ib3skvWyEd8d$DeFWTow+EsBC43YFdsNSL2JYefuckRolMyE/tZn+HsI=	\N	f	cont_219-1.488				f	t	2017-10-25 20:03:53.20514+00
833	pbkdf2_sha256$36000$3UNhLk15E9yy$5qWLoIsY1t/NoL0W3vWduraYD4L939SkaMeWZbPYCCE=	\N	f	cont_219-1.489				f	t	2017-10-25 20:03:53.260546+00
834	pbkdf2_sha256$36000$NbgCtfkodTHS$WN75DpEj/beKKkFqK2/2g+VyvL6odFy4vcIVulX3BtY=	\N	f	cont_219-1.490				f	t	2017-10-25 20:03:53.314699+00
835	pbkdf2_sha256$36000$ObIUv9WYUzfg$1HudWaCYJfgSk73paO9/LT3QSwi61sCTRC4FeMLePZ0=	\N	f	cont_219-1.491				f	t	2017-10-25 20:03:53.371135+00
836	pbkdf2_sha256$36000$skBKpDMXez2W$PudOvmPwPlKdnseJv3emmNB1JCOZkXS4jmh8L0TuYW0=	\N	f	cont_219-1.492				f	t	2017-10-25 20:03:53.426868+00
837	pbkdf2_sha256$36000$9Z4apVca9FEm$g3FOXtpvZIauqwbSpPBor33xOSZPdB5BUUjaBmVrGuM=	\N	f	cont_219-1.493				f	t	2017-10-25 20:03:53.482137+00
838	pbkdf2_sha256$36000$25mICq1a4q3f$xMKq+6Aa3NW1MuVZ7OddzZ1fSMFOi/ognAcfriGhWt4=	\N	f	cont_219-1.494				f	t	2017-10-25 20:03:53.538443+00
839	pbkdf2_sha256$36000$CTIpusIw0Wgh$sor1XI8J0w3Q7P0u0WI/6KGXqheKE5r5qHX4ka6rdOw=	\N	f	cont_219-1.495				f	t	2017-10-25 20:03:53.59516+00
840	pbkdf2_sha256$36000$sKDhwnNeXQrc$VzlRhdm9wwHkBfDeBXtgTtvEdZe6ujwoGFPKupLasB8=	\N	f	cont_219-1.496				f	t	2017-10-25 20:03:53.650698+00
841	pbkdf2_sha256$36000$6R7W8BgkPJXo$jlhAcW8pgHyc03ul31277sJY3EXLeNX2nHab6+F52wU=	\N	f	cont_219-1.497				f	t	2017-10-25 20:03:53.705653+00
842	pbkdf2_sha256$36000$zU0uS7pzpI8x$4gzPlGLeHGeQtfP2nE30+I3WUpaoJKZHA/VYuEFyPtM=	\N	f	cont_219-1.498				f	t	2017-10-25 20:03:53.762262+00
843	pbkdf2_sha256$36000$ktvsWJpy3D5i$9igZLUiLJSxvsuWwhJTnfCkrQ4un014sL+Ry3DOpjUE=	\N	f	cont_219-1.499				f	t	2017-10-25 20:03:53.844607+00
844	pbkdf2_sha256$36000$SymwIbzWPt5y$FGBZB0TKUKGKQhZwZOhW+i6PWnoKj1M4sEO0uS4VD2U=	\N	f	cont_219-1.500				f	t	2017-10-25 20:03:53.901066+00
845	pbkdf2_sha256$36000$cCWKiJzT9YJU$47sQ+v6dN8i11PvxXAtqWLzJyw7wQLvXkHlJ8t5LmpI=	\N	f	cont_219-1.501				f	t	2017-10-25 20:03:53.957263+00
846	pbkdf2_sha256$36000$7zQAck8RJHuc$fmlIVIE4iw4xNfy1YNIkmxLXkdCV/11ArwPqqlx4CAk=	\N	f	cont_219-1.502				f	t	2017-10-25 20:03:54.013366+00
847	pbkdf2_sha256$36000$zISN84CcqG2i$nkxj3qaRPYtgS8fYwDBnuOCtv4I9yr40WF4iAoTwAjo=	\N	f	cont_219-1.503				f	t	2017-10-25 20:03:54.143522+00
848	pbkdf2_sha256$36000$yQaotiKgEHab$Ves1tkiVBmjT8HTcJv9sAlgBRIB+JGI5gFpi4iiWC5w=	\N	f	cont_219-1.504				f	t	2017-10-25 20:03:54.286497+00
849	pbkdf2_sha256$36000$9LjJSwFE2WSu$3q7yWpd9HH9SQIcC/YIYvtKjbSMOsZ1EmE8YWFYHk4c=	\N	f	cont_219-1.505				f	t	2017-10-25 20:03:54.429815+00
850	pbkdf2_sha256$36000$OHSPKhUBtShN$1Ja3wt7L1s0sU+lcbbEamgqHK1EP5hnAum84cWeOrSM=	\N	f	cont_219-1.506				f	t	2017-10-25 20:03:54.57236+00
851	pbkdf2_sha256$36000$LF34PK8JYjoB$cShSxp5zRUtYqYcKbYZP/GQKfKRS+bXX8SES+zR6xuo=	\N	f	cont_219-1.507				f	t	2017-10-25 20:03:54.717625+00
852	pbkdf2_sha256$36000$bVWZRqyZHUXK$EsR4WMo7zQl+cDC8cGeWWFnkxypAokrshM122tjxiz0=	\N	f	cont_219-1.508				f	t	2017-10-25 20:03:54.877586+00
853	pbkdf2_sha256$36000$CpMw9DpUxWlb$Y97D8NOrOIL5wamlPVTQUaEwbRgEsJZMmWpBoMXsOJY=	\N	f	cont_219-1.509				f	t	2017-10-25 20:03:55.039008+00
854	pbkdf2_sha256$36000$wuOggheQDBbY$j/niNitTLUZ0xhAltSZiC7k6RjKxfEmYtpSIYlANQAQ=	\N	f	cont_219-1.510				f	t	2017-10-25 20:03:55.092963+00
855	pbkdf2_sha256$36000$2yy3IhoBATUT$zeuab4GaFZKo69BbHRTn5fzY6dcN4pbGaqnxVIyILJ4=	\N	f	cont_219-1.511				f	t	2017-10-25 20:03:55.147993+00
856	pbkdf2_sha256$36000$6v3aXbP8hczS$BjIM5N7FnxraRcSKfjE1L5jcEYG0oI/QEU88aqDubws=	\N	f	cont_219-1.512				f	t	2017-10-25 20:03:55.202961+00
857	pbkdf2_sha256$36000$MvWPElGF9wcX$L5FpNa2DfjfYhAyUHpvIXiKzZCMvlwnI8tW34F5j9Rs=	\N	f	cont_219-1.513				f	t	2017-10-25 20:03:55.258136+00
858	pbkdf2_sha256$36000$wA1sNlOoNwYj$vJrkS89SAphRiSvlVzOOPyC2y2vmW6mmxnJqaIYjW0k=	\N	f	cont_219-1.514				f	t	2017-10-25 20:03:55.313313+00
859	pbkdf2_sha256$36000$pZBTLYrzDxwY$K97iIoerDOwD6TjOMPPpXBp3k8JQnhRiv5bGBellEh4=	\N	f	cont_219-1.515				f	t	2017-10-25 20:03:55.367496+00
860	pbkdf2_sha256$36000$g373CrZ2S6vb$kUMYnC6EdT78HlIR4rxd1eOYNQ95mCf8q29Yla1k5VY=	\N	f	cont_219-1.516				f	t	2017-10-25 20:03:55.422472+00
861	pbkdf2_sha256$36000$L9U1Xpk1G4MP$w8Khl/dwTYBam3TM2iYEVs0DMYovSZoWU/35QnE1N+Q=	\N	f	cont_219-1.517				f	t	2017-10-25 20:03:55.477529+00
862	pbkdf2_sha256$36000$k7aiePmoCaM8$qvqnBlGKnppaf+sYl9AsOd6rR94uNMcSrP7h2AdUgkE=	\N	f	cont_219-1.518				f	t	2017-10-25 20:03:55.532575+00
863	pbkdf2_sha256$36000$MhUC8eoGLokR$oDtT7BlH7cHjLdcUwRoaqN7z35ON/W4Bchq9zBVv2Fs=	\N	f	cont_219-1.519				f	t	2017-10-25 20:03:55.586634+00
864	pbkdf2_sha256$36000$EGHIZ8OBxRZI$YvVgREerbngcpWoY3R/4imohEletDwEenUd7w68uRg4=	\N	f	cont_219-1.520				f	t	2017-10-25 20:03:55.640741+00
901	pbkdf2_sha256$36000$iwrhiMXpIBZl$ucVqJjZ7Lv0FYlS/LEdb8M9E3yCTjKfUuSRTc4oAtPU=	2017-11-09 17:20:46.036346+00	f	cont_219-1.557				f	t	2017-10-25 20:03:57.735252+00
866	pbkdf2_sha256$36000$keJ2BbJK3fjF$KhU936HPqRS0R5X9FO0NXuhi13XGvD8+DzHcjqesITk=	\N	f	cont_219-1.522				f	t	2017-10-25 20:03:55.749909+00
867	pbkdf2_sha256$36000$YSmvwv08UVj8$mvEnUQyOHDnL0A+qYq/wSwSZ2N3TikKQf614J1+6WeA=	\N	f	cont_219-1.523				f	t	2017-10-25 20:03:55.803922+00
868	pbkdf2_sha256$36000$vrapVXEKBdla$Vtexq3PFeWEWm0JO0UcQ7UuazCTLSm/iLSBd0+5rpFs=	\N	f	cont_219-1.524				f	t	2017-10-25 20:03:55.858464+00
869	pbkdf2_sha256$36000$Hulp2LAZcneh$1JuLJSMbvbe07v1Teg+K0vliqfvK5DBPyhH+ZFG4TAc=	\N	f	cont_219-1.525				f	t	2017-10-25 20:03:55.912877+00
870	pbkdf2_sha256$36000$ENXW1R0w59cj$nYY+oMg7J9zirSfsLMpc3EFUuE7KXSWikjP5mBhiJP4=	\N	f	cont_219-1.526				f	t	2017-10-25 20:03:55.967023+00
871	pbkdf2_sha256$36000$KLUT8eGkEGpT$RAWgb63BhJRp2VK9Vy2DI9xyKugKNgE5PClXN8iZXvQ=	\N	f	cont_219-1.527				f	t	2017-10-25 20:03:56.04935+00
872	pbkdf2_sha256$36000$SeurAkIitvLT$8Ic/5Gcpi+RxT4lVRvdTEBCJWvuzjIQGgzEP+lMmZ9s=	\N	f	cont_219-1.528				f	t	2017-10-25 20:03:56.10494+00
873	pbkdf2_sha256$36000$rDhyePtshMtX$QTIDMccFdB0OMLBI6oje3LvJjXAWAozNJStVdl/F1xU=	\N	f	cont_219-1.529				f	t	2017-10-25 20:03:56.159454+00
874	pbkdf2_sha256$36000$tZ9fVVt5nhum$btv1oyLIwbGryBkmgUWF7GFH+QQ26f+q26mdZdTtklQ=	\N	f	cont_219-1.530				f	t	2017-10-25 20:03:56.21448+00
875	pbkdf2_sha256$36000$PaBKV1jMG5dY$9iSJdL9tyWJlj5W10lqIvQYBY5aVKnAlU7aVjwLRO94=	\N	f	cont_219-1.531				f	t	2017-10-25 20:03:56.268823+00
876	pbkdf2_sha256$36000$Fm6I7m8jxKw0$xW/EsnberufnwzmUrcGxlW9n7wnBsvuvnFL5V1zXGYQ=	\N	f	cont_219-1.532				f	t	2017-10-25 20:03:56.323627+00
877	pbkdf2_sha256$36000$i15r4S6M5Hqh$E+W9bgm8ZCNVSZAN18sf6XurFop6V36FSEJkErd5P70=	\N	f	cont_219-1.533				f	t	2017-10-25 20:03:56.377637+00
878	pbkdf2_sha256$36000$BXcjx7ksSi1u$cxeKXzYj5wnNRpSV641kHUBdJVBb7UTzYnXuhSFYw6I=	\N	f	cont_219-1.534				f	t	2017-10-25 20:03:56.432006+00
879	pbkdf2_sha256$36000$yrXT7pfEdang$YmyHmapRurpZNBTKiJ5O/Uk6rt37a306o7GoTjEB8gs=	\N	f	cont_219-1.535				f	t	2017-10-25 20:03:56.485936+00
880	pbkdf2_sha256$36000$6Beno10vFJz9$Qfu9+HSZa+occ+up7BcSfX6CU1vuHdcBseAgW0lE+vo=	\N	f	cont_219-1.536				f	t	2017-10-25 20:03:56.540854+00
881	pbkdf2_sha256$36000$tA6yYSzzTGpk$ozZaAbu+kLA1vShnhIuRBcHbHfhi3GJ20t8ti+4QD54=	\N	f	cont_219-1.537				f	t	2017-10-25 20:03:56.595498+00
882	pbkdf2_sha256$36000$OR0LZpueBSSR$nBt3GOOP+ELtn073/JMzi1gNPDLpEpKPELXZgk9d6s8=	\N	f	cont_219-1.538				f	t	2017-10-25 20:03:56.650236+00
883	pbkdf2_sha256$36000$6Y58tw3jdOE9$enowobtBqr+kADO8ROHySiKQy+OH0N0rJ7YFpOyqWhg=	\N	f	cont_219-1.539				f	t	2017-10-25 20:03:56.704599+00
884	pbkdf2_sha256$36000$Nh2o2peBuI5j$SJWqUeFAK/+M6T2YKenTbhNVt756t1yw8x2NdHb92Gc=	\N	f	cont_219-1.540				f	t	2017-10-25 20:03:56.759137+00
885	pbkdf2_sha256$36000$3DzMUyfAIItc$ywp9zTCJu5MQIGLfFmGQK8bLSK89R7m0/9MMLxbGSFE=	\N	f	cont_219-1.541				f	t	2017-10-25 20:03:56.813587+00
886	pbkdf2_sha256$36000$pleWzONvNL1i$nVhLPxdmkrJ819cv4BF92ZYpSPZT+Ooxb54eUZPdnHs=	\N	f	cont_219-1.542				f	t	2017-10-25 20:03:56.867882+00
887	pbkdf2_sha256$36000$EdbmbUJeV6qX$JVR3MXtpDfZ5l/Xu0mCXBQIAZjIn0zw15XUlBnjOxRI=	\N	f	cont_219-1.543				f	t	2017-10-25 20:03:56.921851+00
888	pbkdf2_sha256$36000$aG8N5CU3zPTb$RKFhsY9jCSpSMvVaSILpr8e0Z4ruI6ufT0jLEO/CHFs=	\N	f	cont_219-1.544				f	t	2017-10-25 20:03:56.991613+00
889	pbkdf2_sha256$36000$ZuvVk8bWm62B$/YTEHV7tArFE+H6a0EpUN3M84U8G9Njps83+Tavyd2k=	\N	f	cont_219-1.545				f	t	2017-10-25 20:03:57.071538+00
890	pbkdf2_sha256$36000$4as53616aDfo$qlw/yWdmf5YesLHYyX06sZl4MTn4aBx/AHW3IbaKHdY=	\N	f	cont_219-1.546				f	t	2017-10-25 20:03:57.127103+00
891	pbkdf2_sha256$36000$qcV6VD90xuXR$xxB14J37OaI86SPLGrhD9skjnjNR3h7J7+UMru2Rn4U=	\N	f	cont_219-1.547				f	t	2017-10-25 20:03:57.18125+00
892	pbkdf2_sha256$36000$blKG38ItXvHG$q2VQ3gt4g1FIrKOoGE4b+7Z8z3jrSmvtd5oH+5LYPEk=	\N	f	cont_219-1.548				f	t	2017-10-25 20:03:57.236886+00
893	pbkdf2_sha256$36000$Zzc0PFCjtzh8$ySGhyZcU4e3xXZv1gRxhIhev2HnyyxwdX7vV1I++7f4=	\N	f	cont_219-1.549				f	t	2017-10-25 20:03:57.291448+00
894	pbkdf2_sha256$36000$pTVZaXoSg25h$uGtCzQhMi5YlG41zl36q6VYfZ+2SddC8+n+v9TrE3A0=	\N	f	cont_219-1.550				f	t	2017-10-25 20:03:57.346452+00
895	pbkdf2_sha256$36000$AG73xR1csvn3$sSszh8qzL/n45bkfV0zmxIXsEcRQv1/4wKaZpTmarzY=	\N	f	cont_219-1.551				f	t	2017-10-25 20:03:57.401754+00
896	pbkdf2_sha256$36000$I3azmo4f5rHv$jrpXMmLENjreuAuIKJUu4SgLlcZYAauLV96/TMiVJJs=	\N	f	cont_219-1.552				f	t	2017-10-25 20:03:57.457266+00
897	pbkdf2_sha256$36000$MfRH6UXC87Yb$EkN3DTYqpWrAsrlqlkNchIyAOQ4OLtdU5yd5YeVK5l4=	\N	f	cont_219-1.553				f	t	2017-10-25 20:03:57.51224+00
898	pbkdf2_sha256$36000$hPrnqjeIxtq1$xv7XyUdKeB4us9ufjgIag/BcKgZx7xNt3VSX11bYiBE=	\N	f	cont_219-1.554				f	t	2017-10-25 20:03:57.567942+00
899	pbkdf2_sha256$36000$JyTTqFB8j87E$aLRpZjfIz9FYv/c+5u+ZyTDmyT3uci/HM7PSO5C/mLY=	\N	f	cont_219-1.555				f	t	2017-10-25 20:03:57.622949+00
900	pbkdf2_sha256$36000$6yIapz7OGLai$xbEh5jcQxi+CS7IeSqQMvNgvWES83xwu6Pbh7NHrkY4=	\N	f	cont_219-1.556				f	t	2017-10-25 20:03:57.678762+00
902	pbkdf2_sha256$36000$BggOgowhyPrA$YfoRARtaDTN8d18YGyFlVhdyTNFN7pXcg2KAT+hy5KM=	\N	f	cont_219-1.558				f	t	2017-10-25 20:03:57.790759+00
903	pbkdf2_sha256$36000$x3er6iYsCsgk$8vMqW3GPExjKjPQtzEA73gD59q+zNi8mSMe9iYSChV8=	\N	f	cont_219-1.559				f	t	2017-10-25 20:03:57.847138+00
904	pbkdf2_sha256$36000$T3yL0ITJKk8D$OeTneYdq7FvSRaKXRfY+bDzf94VOrpHcdqQ+3ssljTo=	\N	f	cont_219-1.560				f	t	2017-10-25 20:03:57.902047+00
905	pbkdf2_sha256$36000$ixAns4A7NU9z$zs7H4zqExbhi1y2um0kXJNS3i2TaON/kodTGEvbIQmg=	\N	f	cont_219-1.561				f	t	2017-10-25 20:03:57.956758+00
906	pbkdf2_sha256$36000$UN3ONw6BmXLb$WUpn0DCR+TNd2DbAdE5a87LN0tIxgz+o3K7WrXGzenM=	\N	f	cont_219-1.562				f	t	2017-10-25 20:03:58.012495+00
907	pbkdf2_sha256$36000$It8iuh70YcbZ$Th0VmPMYjlcn4JjssoVBwqucC/SrTOhNPMa+5kOQEpA=	\N	f	cont_219-1.563				f	t	2017-10-25 20:03:58.205842+00
908	pbkdf2_sha256$36000$Qi0M5Hl5IPuW$REc1PDBvbsg088WgFNJHK+XTKZ1ztFkTY4Dj3d3PIRA=	\N	f	cont_219-1.564				f	t	2017-10-25 20:03:58.349685+00
909	pbkdf2_sha256$36000$yXy7lQ1qXbmF$DO+vKlbM+PqdQkgCW9l5ejpwjPKReaDmf4NqGZrj+0s=	\N	f	cont_219-1.565				f	t	2017-10-25 20:03:58.491295+00
910	pbkdf2_sha256$36000$1TEBkvJh9VlZ$35HzQ81KiJJVUcXlA5N97N02BUInqaoF1LgEBso8Dvs=	\N	f	cont_219-1.566				f	t	2017-10-25 20:03:58.565012+00
911	pbkdf2_sha256$36000$HKggxHEOu4BZ$xQ1HV9RRCzqv6Gd0KjdP4jq+qClve/hQHj81m0WSs/4=	\N	f	cont_219-1.567				f	t	2017-10-25 20:03:58.620707+00
912	pbkdf2_sha256$36000$6WWY6UnOggjV$RlFFymiVW5Zma4u/5QkETK98YfuL/NJFh2s0zAEIpYg=	\N	f	cont_219-1.568				f	t	2017-10-25 20:03:58.67633+00
913	pbkdf2_sha256$36000$XCoMgNeDxWPI$SOoKRhnk8nhi2b58mXAItSFtKuatdl080h6jLd+q5WU=	\N	f	cont_219-1.569				f	t	2017-10-25 20:03:58.732684+00
914	pbkdf2_sha256$36000$eRR2wSpU4c33$i7YCCIn6xD3rBvNUCOzhkP6Vzm/CW4uwrqJrsVqAAd8=	\N	f	cont_219-1.570				f	t	2017-10-25 20:03:58.788298+00
915	pbkdf2_sha256$36000$FgAYpJKBRml3$A0KvxPp1PfZl2FYfcw2aBPu4RKFGCaktDp8Wx6KDyq8=	\N	f	cont_219-1.571				f	t	2017-10-25 20:03:58.843471+00
916	pbkdf2_sha256$36000$SzwZAPki5YsP$UDRdzZs9L5eKydl02AVEafa/OStSJio4kRVya/GF1EA=	\N	f	cont_219-1.572				f	t	2017-10-25 20:03:58.8993+00
917	pbkdf2_sha256$36000$RxBU9uRoLPHA$ZxFXluFhQjgemH6AbgUl+JXdtzCda3xWX9tI5uGcihQ=	2017-11-13 12:00:05.033628+00	f	cont_219-1.573				f	t	2017-10-25 20:03:58.95464+00
919	pbkdf2_sha256$36000$Bsy12eC9zSCq$YHnxTCqL1M1NTQBORDhznSP/hAIzUZMgbJoznW1p1XU=	\N	f	cont_219-1.575				f	t	2017-10-25 20:03:59.17611+00
920	pbkdf2_sha256$36000$ZdKduyFZpu8M$KqiV+8aHhCl3pq13S4/jFRXfyrgEmu7CF/iCNGe3PNY=	\N	f	cont_219-1.576				f	t	2017-10-25 20:03:59.255581+00
921	pbkdf2_sha256$36000$YiBNUrpQ4LqP$mLMG2FfDu4iOOO/oAHHk7SJl4SC/sSV7GwxIrihG4qg=	\N	f	cont_219-1.577				f	t	2017-10-25 20:03:59.309468+00
922	pbkdf2_sha256$36000$bY9W7EPjtywH$0okwtkJgory0lxRt+JIkXtF1bWKKDRSwrnFb03nQKGY=	\N	f	cont_219-1.578				f	t	2017-10-25 20:03:59.363973+00
923	pbkdf2_sha256$36000$gWi25VGhHYCO$13h2oLaxyVa3Uu3xYufON9WN7KukPjeBibE9IQRV0t8=	\N	f	cont_219-1.579				f	t	2017-10-25 20:03:59.41877+00
924	pbkdf2_sha256$36000$0uQbJAovXwD1$AhawxU9YXxV6IXm1qU0g3fC9WOPR65jhGMKcpkcQMCk=	\N	f	cont_219-1.580				f	t	2017-10-25 20:03:59.473147+00
925	pbkdf2_sha256$36000$HCFf4rc0nfCf$v/04j3r3ajnVfaAsgtuz9wwIb5bTJcXsoLO4zctOUR8=	\N	f	cont_219-1.581				f	t	2017-10-25 20:03:59.534983+00
926	pbkdf2_sha256$36000$lLA8aGJ1bNJS$yCbxWW4xZnWH1lcZ1IQAEfn2YZLqTs07Xb/sITIHJzQ=	\N	f	cont_219-1.582				f	t	2017-10-25 20:03:59.677254+00
927	pbkdf2_sha256$36000$z1JmEPKJfz1Q$Q4Zu3vPhrNdW6ymDOYyxc60x9rRf0h11xGeqac7g8NE=	\N	f	cont_219-1.583				f	t	2017-10-25 20:03:59.819403+00
928	pbkdf2_sha256$36000$V7vAlTYkxk1c$6mvj0QrHIe8G1Opmr6ltw5YS+owr2Cm8D6aXDBsWAwM=	\N	f	cont_219-1.584				f	t	2017-10-25 20:03:59.960244+00
929	pbkdf2_sha256$36000$cmgd56zNN1T5$gpv+bybs5XwkYMjOoG11Y2iyAvoUxPGwftCcI9yB3BM=	\N	f	cont_219-1.585				f	t	2017-10-25 20:04:00.085593+00
930	pbkdf2_sha256$36000$KQXpN9Y9g9AD$COSIXYzNcbNxlYTOBPCeTYRhOP62ycfy8UXd8K+Wbp8=	\N	f	cont_219-1.586				f	t	2017-10-25 20:04:00.197989+00
931	pbkdf2_sha256$36000$hG2eisB8qb3O$dbRe9dTdETmez7oSsVaH4i6EP+5LQb/P1DAfKTD8u9o=	\N	f	cont_219-1.587				f	t	2017-10-25 20:04:00.365141+00
932	pbkdf2_sha256$36000$3AM33iQo55jr$5AX+ofWJTzTNPI+Sx0kxOiJIKHs6gIkyqhAVaOCE0/E=	\N	f	cont_219-1.588				f	t	2017-10-25 20:04:00.478477+00
933	pbkdf2_sha256$36000$cK3E6usFwuy5$vvGJcx74e3M1hh90xzsfqx9D58Y/x+v87vvi2yZBHQM=	\N	f	cont_219-1.589				f	t	2017-10-25 20:04:00.580237+00
934	pbkdf2_sha256$36000$VaKTbLJWTE8s$vjqrmfU7maUCWiUdjyu5xlYM2+oaOR2ZrPF0yAXaXI8=	\N	f	cont_219-1.590				f	t	2017-10-25 20:04:00.674013+00
935	pbkdf2_sha256$36000$KiogoRlv5PV9$o8RQ/IgQFyr+4kPOZvIxNT1sHS5/2hUSmsM2SlNDsPk=	\N	f	cont_219-1.591				f	t	2017-10-25 20:04:00.769185+00
936	pbkdf2_sha256$36000$07BK5ksmQawm$DIQpbCWbUCD1/nzp2tc/Bgmi1PX1bU6g7SXN99a40Sw=	\N	f	cont_219-1.592				f	t	2017-10-25 20:04:00.863152+00
937	pbkdf2_sha256$36000$dVIPU2dPoaML$ICWVYwq37N30mO+RYHzyQP++XTnLbBCSJGhSpKl079k=	\N	f	cont_219-1.593				f	t	2017-10-25 20:04:00.958673+00
938	pbkdf2_sha256$36000$zMy5TiRnc3ga$pqtw/8voTFZXRDy65FYQ//mYFzjW7Q6fNZHpORKK7aE=	\N	f	cont_219-1.594				f	t	2017-10-25 20:04:01.069501+00
939	pbkdf2_sha256$36000$RqqjU9sNt9kq$SR5zaWOrten8+4HWjQwgf+S4pq3Xm29nzlJUlsvg634=	\N	f	cont_219-1.595				f	t	2017-10-25 20:04:01.212859+00
940	pbkdf2_sha256$36000$uAmtzvrMQZH7$Z3MajfEtLBVXtZCt9TCswPWSZ8YZ5ITfF7yRlnN89XY=	\N	f	cont_219-2.1				f	t	2017-10-25 20:04:01.369647+00
941	pbkdf2_sha256$36000$MNcqAj7IoTM8$uLeM2X1XQKQg9qanJhw5xui8KO5XEzPeliGtiLJwA6U=	\N	f	cont_219-2.2				f	t	2017-10-25 20:04:01.538337+00
942	pbkdf2_sha256$36000$mOU7nKgaLOzM$snFjrDa8dINTO4Jq8x3x1z7jtzrtbyO1o3SaK6cDywI=	\N	f	cont_219-2.3				f	t	2017-10-25 20:04:01.594024+00
943	pbkdf2_sha256$36000$hBgjO24TUqNS$SNB9CQ+HyCC4N2Oi8vG9Me1Uqk4u5D1im1u8zOoxfKw=	\N	f	cont_219-2.4				f	t	2017-10-25 20:04:01.652185+00
944	pbkdf2_sha256$36000$Jx9dDeZSHsgB$x3vnjQtYqKpC3kLPqtELzzRzlmiZ+jsnLXFWqhAyIEY=	\N	f	cont_219-2.5				f	t	2017-10-25 20:04:01.709366+00
945	pbkdf2_sha256$36000$DY9LkXQ7iDzk$+b2JkBB7OJ+pSZsC3Qnd+b4iZu92B0cERALFnEX6qf0=	\N	f	cont_219-2.6				f	t	2017-10-25 20:04:01.766621+00
946	pbkdf2_sha256$36000$00eUQ6zFwMVP$E+5gzlYl0pRi6R8qY6cRF9FvJFUy2D5mpviMuZxaEcc=	\N	f	cont_219-2.7				f	t	2017-10-25 20:04:01.82406+00
947	pbkdf2_sha256$36000$NejCSPNG6TZS$bNby11dMgQtYPKg68lSqHolS7LoaSxVBQn8RPdw5G34=	\N	f	cont_219-2.8				f	t	2017-10-25 20:04:01.881316+00
948	pbkdf2_sha256$36000$7p1zxNeSr1h2$554q2nLPSXDmDD87Cc4fFbTG31rtZrNGQ4z3Re5DAUU=	\N	f	cont_219-2.9				f	t	2017-10-25 20:04:01.937+00
949	pbkdf2_sha256$36000$8u7VNrmneQCG$4Jy/RQmLlG9iUksQ1f02n9PEBmi/5QY1cseT9vPc7w8=	\N	f	cont_219-2.10				f	t	2017-10-25 20:04:01.992942+00
950	pbkdf2_sha256$36000$7h8FV1P6rwsZ$x8bHjSuEuR+q3AxqG+s0LJsfwJV2De+Jrq7kV6YvXOM=	\N	f	cont_219-2.11				f	t	2017-10-25 20:04:02.048199+00
951	pbkdf2_sha256$36000$3JOC9IhhCSEk$RfOUiBnAHrGKwA393Oor9PzJNmYeBcbg40/rwanJgz0=	\N	f	cont_219-2.12				f	t	2017-10-25 20:04:02.103797+00
952	pbkdf2_sha256$36000$Qk8LgEgZpFe5$m4kxnHDTLubKYoobO0uwGM5quWoF+mZBGxspMQXVGOg=	\N	f	cont_219-2.13				f	t	2017-10-25 20:04:02.159285+00
953	pbkdf2_sha256$36000$jDRD8Tuj5eow$WSPcwQSGMUV1pqRTiGdp7dccY9PYMBdHTpwiOkABO6Y=	\N	f	cont_219-2.14				f	t	2017-10-25 20:04:02.215593+00
954	pbkdf2_sha256$36000$PINwqRj9xSGA$Pv41Jb76RAHW852+w895iPLy4ZeuXt/6H+RcbYKfkuA=	\N	f	cont_219-2.15				f	t	2017-10-25 20:04:02.271775+00
955	pbkdf2_sha256$36000$dZLnLyQLHmHk$WLti+SDdvrfc9ZQb3GlcpkiIcIErXUQCEIaWdvp+k/k=	\N	f	cont_219-2.16				f	t	2017-10-25 20:04:02.32744+00
956	pbkdf2_sha256$36000$AhNO7PsDha6i$c0kG11owMQgCeHlLGU2uO5/b4Q7S5lqt7+M9uV3bdJc=	\N	f	cont_219-2.17				f	t	2017-10-25 20:04:02.383864+00
957	pbkdf2_sha256$36000$j8vhcp47MbNz$sujD0mP/HNohwjx3v/k4J10mDmo+EKaIzYu53lyw5J0=	\N	f	cont_219-2.18				f	t	2017-10-25 20:04:02.439795+00
958	pbkdf2_sha256$36000$quvC68lyP0Rg$ibSp06TEN/+WeU9LG2zCMNo+l6ReCRcNot+8bf7tQbY=	\N	f	cont_219-2.19				f	t	2017-10-25 20:04:02.519213+00
959	pbkdf2_sha256$36000$CLSKtmdvRL9G$J+c/T+qnDFkX2hkN1HdXDLLjBSIzecMYaTHmZVQHCgk=	\N	f	cont_219-2.20				f	t	2017-10-25 20:04:02.574842+00
960	pbkdf2_sha256$36000$Lakklap3DdTd$xvaqctxJdqH5KcH/+dbDXWf+86Xspw/gLnUOSzPlrzE=	\N	f	cont_219-2.21				f	t	2017-10-25 20:04:02.630908+00
961	pbkdf2_sha256$36000$kSx72sT29TTm$hRPt6sKNHw2J1Te9WJ5O/xxxOwOg69GcKDhUYnjB0mQ=	\N	f	cont_219-2.22				f	t	2017-10-25 20:04:02.687015+00
962	pbkdf2_sha256$36000$WpVt14RvCm4Z$RpXZAhjhVByQv+XvwZ6S30/S4oRNGheQDJrs9MSo5sk=	\N	f	cont_219-2.23				f	t	2017-10-25 20:04:02.74561+00
963	pbkdf2_sha256$36000$SQQi3TkvPlbI$h00yT8Tc/Mb+G+dMMiGeD8xfSY/C9QF9GOqLXCQYZcQ=	\N	f	cont_219-2.24				f	t	2017-10-25 20:04:02.801689+00
964	pbkdf2_sha256$36000$9cRaDXpETjxy$01Cembm4TgKXMa1fRYiai4rUxNaZmC+3QIpvaqD2X7o=	\N	f	cont_219-2.25				f	t	2017-10-25 20:04:02.857344+00
965	pbkdf2_sha256$36000$NeKh55nEeZH2$GFDViuO+a1wjUCP4B/tDtChJShRmc7FVy4QMUTD+T88=	\N	f	cont_219-2.26				f	t	2017-10-25 20:04:02.913115+00
966	pbkdf2_sha256$36000$Q4SqoJwT95jT$eT+/QOj7hz4H9ywW7aFkSP3agUPQsiLxXKm/E3jcnEM=	\N	f	cont_219-2.27				f	t	2017-10-25 20:04:02.969122+00
967	pbkdf2_sha256$36000$f35Ir5NntdSC$PF+6Wu4pcUiW7ZRQ0rjNNPaWByg2aaGtsv1n4uuny60=	\N	f	cont_219-2.28				f	t	2017-10-25 20:04:03.036212+00
968	pbkdf2_sha256$36000$boYobHl3IVFL$1vCCIoRnBW2KhklqsRc38vmji1nAOAg2ZGlC7x9iTfE=	\N	f	cont_219-2.29				f	t	2017-10-25 20:04:03.094249+00
969	pbkdf2_sha256$36000$NTt8YGVkPgkz$P27EHWWO3+MAU/ZJODOiTcuX1+POt5Fbd/OOHuz3DQc=	\N	f	cont_219-2.30				f	t	2017-10-25 20:04:03.149837+00
970	pbkdf2_sha256$36000$2zWN2CgcqLkY$WILUP0WmDcjm1FiwQKRKNk5sTsENLTCFqNuGMzC0Zak=	\N	f	cont_219-2.31				f	t	2017-10-25 20:04:03.205293+00
971	pbkdf2_sha256$36000$P1Pojvf0rt0o$dOIlTu1r1Qb8wmzvLK3gYNBqCm64APPWRgW7AFXlsBQ=	\N	f	cont_219-2.32				f	t	2017-10-25 20:04:03.261386+00
972	pbkdf2_sha256$36000$r6hKFzGyMeDI$0cHiJViH/SafSEcfqW1LMDbwsXy+v51iJgCrHLxCjnA=	\N	f	cont_219-2.33				f	t	2017-10-25 20:04:03.316049+00
973	pbkdf2_sha256$36000$UdDFvW1LdtR5$j4UDWOUZmWnzpiYidll5fPZgzSHOpsAeh4/rctYSm5k=	\N	f	cont_219-2.34				f	t	2017-10-25 20:04:03.371868+00
975	pbkdf2_sha256$36000$9iuXnQ0m8148$3agGHJKBXID7VB2MxGpYoGOLAgLHSq2Bb2odN1kGT3E=	\N	f	cont_219-2.36				f	t	2017-10-25 20:04:03.483583+00
976	pbkdf2_sha256$36000$93gi1gXO0YXe$Vj4llwIIal+zB/A4RCjgyc9G/DS9p6e48zxZMI50ZFg=	\N	f	cont_219-2.37				f	t	2017-10-25 20:04:03.565908+00
977	pbkdf2_sha256$36000$r2jRS6HIUgVm$G7RlvD1tlINb5nSqOudvhzAg3bN5HL2qJTegzsH+F2I=	\N	f	cont_219-2.38				f	t	2017-10-25 20:04:03.639456+00
978	pbkdf2_sha256$36000$5fc51ajfY5Jo$GpSL+KzjWY8Y9eck37S44gXGf1IG/xHG+mj57MB1qZM=	\N	f	cont_219-2.39				f	t	2017-10-25 20:04:03.701138+00
979	pbkdf2_sha256$36000$Br4a874wCBpg$XH6lZHYnbEcV4WtPs/I9de8T0XfIRIzqTm05fv75l3w=	\N	f	cont_219-2.40				f	t	2017-10-25 20:04:03.757792+00
980	pbkdf2_sha256$36000$OG8QBtD94B9h$cUOL2muEsVVJVyLVlqCeLSoR6jp/1tTsK16Fc8VZ6uc=	\N	f	cont_219-2.41				f	t	2017-10-25 20:04:03.811996+00
981	pbkdf2_sha256$36000$9bCgsS5GyjxF$mcSu2m7fwT9npIz8JskeHaIeJRi+IC325d5huOnQSJ8=	\N	f	cont_219-2.42				f	t	2017-10-25 20:04:03.867706+00
982	pbkdf2_sha256$36000$TXb6xZy4Xp9V$b/lh+X1sKWKTpGQzvDz7fb8Y0oiBSLHLDMdTKotRR2Y=	\N	f	cont_219-2.43				f	t	2017-10-25 20:04:03.923228+00
983	pbkdf2_sha256$36000$8Fw8sBuKuY5c$YRiaF1u4emtMRtKTwVbSurF8lCjKwYnKZslEE4d7XCI=	\N	f	cont_219-2.44				f	t	2017-10-25 20:04:03.97894+00
974	pbkdf2_sha256$36000$t04zOZMdFZRp$TgFac9G7gj2XzuNPmWEivl/ilk6wtI021EaBfKGfmlw=	2017-11-10 22:44:41.33745+00	f	cont_219-2.35				f	t	2017-10-25 20:04:03.427479+00
985	pbkdf2_sha256$36000$EDKnTytwc7KZ$y0nQ5LjVb4RGaL8m+bWExMNUDIcGVBY+snkydds2Rvg=	\N	f	cont_219-2.46				f	t	2017-10-25 20:04:04.090232+00
986	pbkdf2_sha256$36000$YMLSqUCpT671$3dOnTAXHgEcTfrJTJ9Hwjnes7Q79WmWT2qGuHapGqb0=	\N	f	cont_219-2.47				f	t	2017-10-25 20:04:04.146587+00
987	pbkdf2_sha256$36000$Zs91kCXERlLa$rXcczVvvNH8cKHypsKGYL8MUpK4k09DtzlrcQTP5ijU=	\N	f	cont_219-2.48				f	t	2017-10-25 20:04:04.201934+00
988	pbkdf2_sha256$36000$na2TxampGdCa$5Twhpds2YeuEKMSPqP5CKhI8cRWaGJeiFmpXEaKprIA=	\N	f	cont_219-2.49				f	t	2017-10-25 20:04:04.258764+00
989	pbkdf2_sha256$36000$fLaLCpvKaU0E$S03o0VeJCFssv9AkryQpqIxAI2Xl/psIoyQRMd2PpHs=	\N	f	cont_219-2.50				f	t	2017-10-25 20:04:04.3148+00
990	pbkdf2_sha256$36000$Cb9vqnHaBycS$e2O4O39GaxmXonogEJivrMBn/f2uBMyj2TA5BTf6BNQ=	\N	f	cont_219-2.51				f	t	2017-10-25 20:04:04.370116+00
991	pbkdf2_sha256$36000$0QuoedivV36b$1exjMQn4j5n8ucwWazbigEBLgSKv5DtthCwQiQgMjQI=	\N	f	cont_219-2.52				f	t	2017-10-25 20:04:04.425565+00
992	pbkdf2_sha256$36000$Oot3B77OObVq$k4bTOTTnBrbGKPbi6fQh+nXanJ0hzevmXklFCgiUong=	\N	f	cont_219-2.53				f	t	2017-10-25 20:04:04.481087+00
993	pbkdf2_sha256$36000$3dUVl5l5yR4u$7DYjmQeZKwXhaNyTpTN4iynlnnMDhBxX932az8H+S4I=	\N	f	cont_219-2.54				f	t	2017-10-25 20:04:04.536603+00
994	pbkdf2_sha256$36000$yALZSNj5uCIw$aVedve25aol8OSoPh+vP+2ErOTQXXWrqErAkZk1saDQ=	\N	f	cont_219-2.55				f	t	2017-10-25 20:04:04.605402+00
995	pbkdf2_sha256$36000$tuyNbg3hnEig$R1EVsDljsR+VHxcUveCb5ZLFSXyt2zR+FURsqyjhM5M=	\N	f	cont_219-2.56				f	t	2017-10-25 20:04:04.671027+00
996	pbkdf2_sha256$36000$Qc9bCRwWUeVL$Q+6oYUffoPXulZEXznidw03SueIykgECPzn/D3IomLQ=	\N	f	cont_219-2.57				f	t	2017-10-25 20:04:04.72874+00
997	pbkdf2_sha256$36000$DWxOG79su7fX$Of2basN6zMeqIKy/06nZ2n/zObkpe8VHuPguqaMxGvM=	\N	f	cont_219-2.58				f	t	2017-10-25 20:04:04.78437+00
998	pbkdf2_sha256$36000$4jy96jhiC61a$QcZPJiJ3xuR7MgXqaAWxuvKJrg7aTREd7uKXa6dwE1c=	\N	f	cont_219-2.59				f	t	2017-10-25 20:04:04.840072+00
999	pbkdf2_sha256$36000$tBABAi8ihwCz$PdrK4T2gl8N8kAoIAh8MfvMVkHymDtCFRh+uXoJ+87k=	\N	f	cont_219-2.60				f	t	2017-10-25 20:04:04.895881+00
1000	pbkdf2_sha256$36000$kokdoECa2p2u$MYa6mpgbPP6NqRm4LlFNhQ76RQ7CcacOF4O1R3roEVM=	\N	f	cont_219-2.61				f	t	2017-10-25 20:04:04.951858+00
1001	pbkdf2_sha256$36000$yyvXAU2za9Bo$3JrkBXklrDnD3RhJCgL4RNvolPz2uczUzwWzfiKW+Is=	\N	f	cont_219-2.62				f	t	2017-10-25 20:04:05.008052+00
1002	pbkdf2_sha256$36000$423IgjDt79Pg$kvlk+MJLNMyTzzDX5qThS7/ZMuXQyaJXuIlZ8WHCfB0=	\N	f	cont_219-2.63				f	t	2017-10-25 20:04:05.064684+00
1003	pbkdf2_sha256$36000$ZIzPJwR8Hq3j$+xW8BiwQ7eZsSDFtncVryCEiPfNIs0FzGlw2HZ5STqk=	\N	f	cont_219-2.64				f	t	2017-10-25 20:04:05.120312+00
1004	pbkdf2_sha256$36000$iztMBX3owaHo$w3iHeSfvV4i//L4RiyPOV2bAK+RA/vBt3jj7RLwfGIg=	\N	f	cont_219-2.65				f	t	2017-10-25 20:04:05.176091+00
1005	pbkdf2_sha256$36000$7TL6gyVmRxZR$VgCEhUJm14J25QW/fyz5Ydd9VDuA/VOLA1bhYnMM9lE=	\N	f	cont_219-2.66				f	t	2017-10-25 20:04:05.232651+00
1006	pbkdf2_sha256$36000$95ZJ3pRixUwD$j89zv0dQPkrNvSiJ23THqKSQqHFOvkTEfw3scWM6bBw=	\N	f	cont_219-2.67				f	t	2017-10-25 20:04:05.289065+00
984	pbkdf2_sha256$36000$otRKhBU27TJO$fMaei3XvhGZgyUEXDb4G5LE9fAlG/h1CQcGKxUBDiOg=	2017-11-10 17:36:24.270836+00	f	cont_219-2.45				f	t	2017-10-25 20:04:04.034871+00
1008	pbkdf2_sha256$36000$0JTjMGjbhiqc$WwBEqI40YRuzEbozEMaue3OUrLyoE4xTvzhgDCx/lhA=	\N	f	cont_219-2.69				f	t	2017-10-25 20:04:05.401092+00
1009	pbkdf2_sha256$36000$ck5OyYV3MOkO$9yFsksFEI61xEv6Sx+n8PocbFkMdXMa0MJPZhXScWsU=	\N	f	cont_219-2.70				f	t	2017-10-25 20:04:05.457064+00
1010	pbkdf2_sha256$36000$aB8RDAxI97Qj$7VORhp7mT3Z7C5lMdH2MOaqw2nsqZxfDAyr1nOX7MlQ=	\N	f	cont_219-2.71				f	t	2017-10-25 20:04:05.512924+00
1011	pbkdf2_sha256$36000$yNYMYaPEE9Ox$gue6xVlXzmkL85t8Lpe/JHGdR/WeRyjmhyaKnS+nAZM=	\N	f	cont_219-2.72				f	t	2017-10-25 20:04:05.568922+00
1012	pbkdf2_sha256$36000$WUYC9ZjuU4P0$f/fjNz/238joFZtTsIDV4bXRfjfF68C8ZPFsXaF1igI=	\N	f	cont_219-2.73				f	t	2017-10-25 20:04:05.624982+00
1013	pbkdf2_sha256$36000$vD7tEu3EufZY$XPcEzgBiUaxzB31yTINBNHMVNZi03PN/U2lJRJP+Bmo=	\N	f	cont_219-2.74				f	t	2017-10-25 20:04:05.706197+00
1014	pbkdf2_sha256$36000$gXOXBXDkrDH2$4WW8PCD0htQHHri2/elAAHPpzDxRY/ztztR2/yKyXkw=	\N	f	cont_219-2.75				f	t	2017-10-25 20:04:05.763201+00
1015	pbkdf2_sha256$36000$9qjkFWOE51bV$muRZR7fuCcthoTO9YfN78SFCpYv0WGuC6AEYKUu8AEE=	\N	f	cont_219-2.76				f	t	2017-10-25 20:04:05.818796+00
1016	pbkdf2_sha256$36000$2rmtf9Qz7JMr$1hzWAKtHY8ERnH39ONtmxaw0o/7K3vRR1vw/+R2yvyg=	\N	f	cont_219-2.77				f	t	2017-10-25 20:04:05.874593+00
1017	pbkdf2_sha256$36000$DAF1aK8cqoPd$dm1YTh4YvntzP1VFqODku1ucZYmESJMUNPYob5lVIZc=	\N	f	cont_219-2.78				f	t	2017-10-25 20:04:05.931418+00
1018	pbkdf2_sha256$36000$zP1GBu2KBcev$t/zqBy/MU37iXMSYp1m00L4i2ZMdLWdY0PMgWR+Njgc=	\N	f	cont_219-2.79				f	t	2017-10-25 20:04:05.987014+00
1019	pbkdf2_sha256$36000$tN9B1zFCsGnu$5ozfsIcd2LbuASTDBv5uZkg43FZ6LZ9pwIpd0/1SeR0=	\N	f	cont_219-2.80				f	t	2017-10-25 20:04:06.042768+00
1020	pbkdf2_sha256$36000$DZfnuNk6ahgR$9sRhHgn4Yp82nsL9LS7B722pcgw8OE0Jdu8Z/USh1+E=	\N	f	cont_219-2.81				f	t	2017-10-25 20:04:06.098371+00
1021	pbkdf2_sha256$36000$8ICq53nIv5N6$VpQYKZeBOXdQ7kgz5xDpQGFKV0LM8cPvSSN+g8qxurM=	\N	f	cont_219-2.82				f	t	2017-10-25 20:04:06.153783+00
1022	pbkdf2_sha256$36000$zjIUDwWQXzck$0fWZWv3FXnQRTXLH3wRxaUeQp6iB5Z+x1pAEkQCDZYs=	\N	f	cont_219-2.83				f	t	2017-10-25 20:04:06.210226+00
1023	pbkdf2_sha256$36000$34lOmlD8209C$BsCWWMTCS0fCDSMIuhjPCSD3mcI9mH6gmZxzGXVbtmo=	\N	f	cont_219-2.84				f	t	2017-10-25 20:04:06.266373+00
1024	pbkdf2_sha256$36000$KtFh0g8o9bCI$7eDtMiljdPxUStIQgq5mYnBV6todB1oNh41QNDGkZUo=	\N	f	cont_219-2.85				f	t	2017-10-25 20:04:06.323375+00
1025	pbkdf2_sha256$36000$kPssXQyCA7il$BcPLBEpgaRdoOOx+6jT2bZJA5ySywaiw95zpJTxmQRw=	\N	f	cont_219-2.86				f	t	2017-10-25 20:04:06.379458+00
1026	pbkdf2_sha256$36000$ptewduSab3vG$5+55unrdc9zLndaxRpPrgIGODky4sR/q17shwso8IYM=	\N	f	cont_219-2.87				f	t	2017-10-25 20:04:06.435838+00
1027	pbkdf2_sha256$36000$5DbDUF6gyykm$OF0vryekc6JbN4uwycZxH93Y3idkQClsaZdkjzVzVU0=	\N	f	cont_219-2.88				f	t	2017-10-25 20:04:06.491794+00
1028	pbkdf2_sha256$36000$zKykHRaHeDQP$hzLL0o/8qduaXy/6MIGx/Annx6uqEu91qJOxAyIY7YI=	\N	f	cont_219-2.89				f	t	2017-10-25 20:04:06.547494+00
1029	pbkdf2_sha256$36000$G3nGwi7XpXlC$ihkdJqRkA9fJP34SOswo2rgtPuedNUz02d7p2OG0mOQ=	\N	f	cont_219-2.90				f	t	2017-10-25 20:04:06.603421+00
1030	pbkdf2_sha256$36000$biggDBfxgHYv$Sc6h1UUMFBVt8XjE0CGH0+QgevPUdvyqvUVLbkRqyVY=	\N	f	cont_219-2.91				f	t	2017-10-25 20:04:06.658572+00
1031	pbkdf2_sha256$36000$7NbsSC8hev6E$ENIJrI13iv1FaTO9it+srDtsNI9YhY984Bd3vkgbE80=	\N	f	cont_219-2.92				f	t	2017-10-25 20:04:06.741074+00
1032	pbkdf2_sha256$36000$tjV9sH2J76An$hoxC6Qacw9dPK+ElhI3bCcMtj68Sd8Ns28BMRmyc/y0=	\N	f	cont_219-2.93				f	t	2017-10-25 20:04:06.796211+00
1033	pbkdf2_sha256$36000$0WGG8kJxAyxt$C323j0c3QooyfDhKf5f/figNRs0ZGF+15g3Jt/3xks8=	\N	f	cont_219-2.94				f	t	2017-10-25 20:04:06.851828+00
1034	pbkdf2_sha256$36000$LxJXIC0uj57k$1S1F+LGDx9SCs4il9RxBcprMfEBtZqfJqcPBy0OxMkI=	\N	f	cont_219-2.95				f	t	2017-10-25 20:04:06.907517+00
1035	pbkdf2_sha256$36000$L9OQlSps1VCN$Wd1q9lk4/LiFLifMnaYpNwqmfCMhfqfxDj/FL4L58Ak=	\N	f	cont_219-2.96				f	t	2017-10-25 20:04:06.963928+00
1036	pbkdf2_sha256$36000$La99LD3JMTXk$zqqX3AbZ6VzxTDYsgfwby9oir59lvFRRl8gMuJ2WlvI=	\N	f	cont_219-2.97				f	t	2017-10-25 20:04:07.020907+00
1037	pbkdf2_sha256$36000$4Ry5uQjXCUWy$sbBTUhywDDu24B0gsUHfJzD3j/k3CKRHPIVdcwI1dzE=	\N	f	cont_219-2.98				f	t	2017-10-25 20:04:07.077074+00
1038	pbkdf2_sha256$36000$VB5si4FGQxod$ULrdEjG6uQ3KhOHEMCsveT6mJQxcIm7UjP0u8Q2GgFA=	\N	f	cont_219-2.99				f	t	2017-10-25 20:04:07.132595+00
1039	pbkdf2_sha256$36000$RsC2aQM2zIRd$Jv9BrV5ue8lzx0X1SEbZe+X1KlDonJEZPP3nD44hwDc=	\N	f	cont_219-2.100				f	t	2017-10-25 20:04:07.188962+00
1040	pbkdf2_sha256$36000$uS7JUnK90mnZ$Y9Bn3zf59V4urK/gnPEXzuE3LJHyzy1ZFKx0GGa0dxc=	\N	f	cont_219-2.101				f	t	2017-10-25 20:04:07.24509+00
1041	pbkdf2_sha256$36000$SbwHdd05fhZh$5XZgl0lv8x5ZJyAtKkLvSFvbxlUSZZwJ4oI74ar0fgI=	\N	f	cont_219-2.102				f	t	2017-10-25 20:04:07.300872+00
1042	pbkdf2_sha256$36000$WkZINHR6AyOD$zr+IiXmO13f++ryyMeue0v9rpyiDDuQ4qHK9BKmUkYc=	\N	f	cont_219-2.103				f	t	2017-10-25 20:04:07.35645+00
1043	pbkdf2_sha256$36000$R4c2uuziTY6Q$sxQsZMWuDjBoVTQaoLpQ3Qb9NrLeOmn8f0sUQYRFWB8=	\N	f	cont_219-2.104				f	t	2017-10-25 20:04:07.412306+00
1044	pbkdf2_sha256$36000$bjOoUeaxGs3a$75qa+zizWNCHIFLWEpUiEA6bM8g79FFdMSLxN/DeUJI=	\N	f	cont_219-2.105				f	t	2017-10-25 20:04:07.467481+00
1045	pbkdf2_sha256$36000$qKtxxxf2gblx$kPP0saeerOX97Xu/V+3JGoY4nksKzNwcVCF0TAVKktA=	\N	f	cont_219-2.106				f	t	2017-10-25 20:04:07.523059+00
1046	pbkdf2_sha256$36000$0i02bSDiZXaO$SrWGdLi2v/if2CFx62llc8++bo85R4XlIBnMJ+tc0Ys=	\N	f	cont_219-2.107				f	t	2017-10-25 20:04:07.57826+00
1047	pbkdf2_sha256$36000$5qgTtUgcy28v$AgIkALuLUUr07FXEiVF9xUnGve5W7+W9uvxlj5n4XB8=	\N	f	cont_219-2.108				f	t	2017-10-25 20:04:07.633585+00
1048	pbkdf2_sha256$36000$N8BEZA5OqOaV$CeJlb8kzv0N9MZ2EscLm8JmAVVHxO4QWt+niyBPUYyU=	\N	f	cont_219-2.109				f	t	2017-10-25 20:04:07.688876+00
1049	pbkdf2_sha256$36000$tQri0V6oJLew$ile09s8+gRO1mFr6xM9mUliNowPh+tga/db22dKe9KE=	\N	f	cont_219-2.110				f	t	2017-10-25 20:04:07.768822+00
1050	pbkdf2_sha256$36000$j3F2Zh7z0OAX$rWOD8eEcoE7XYf+Q2V6/tX7zTWaFc4Kepgs11nH3mCw=	\N	f	cont_219-2.111				f	t	2017-10-25 20:04:07.824196+00
1051	pbkdf2_sha256$36000$3MUG25JWeWYk$2ZO4KXbyysnoo9p1fdfkZ6Wgibl8heMQc1HXTYEMHqM=	\N	f	cont_219-2.112				f	t	2017-10-25 20:04:07.879574+00
1052	pbkdf2_sha256$36000$MWDKkD9CQamX$TeJiTTUyDx7+Mm78j2elsXpYLPncUGOd4uGwSrLWGgQ=	\N	f	cont_219-2.113				f	t	2017-10-25 20:04:07.934894+00
1053	pbkdf2_sha256$36000$58MnyxvMjjhc$bIohTyrwkKMWstJpzlnI6CDWl8iHVY0dYuD5U48MejI=	\N	f	cont_219-2.114				f	t	2017-10-25 20:04:07.991253+00
1054	pbkdf2_sha256$36000$2JbwUBxttAcM$s3UPAcRFmzQfBdSrJYjBT/9AXCX9pUA6wEu/LUcE8cA=	\N	f	cont_219-2.115				f	t	2017-10-25 20:04:08.059891+00
1055	pbkdf2_sha256$36000$PQdAKrydU0SH$1uL0yyAJkfTjYzdMQRURc4bLg0CMv9rZgGQOpjNQ9lo=	\N	f	cont_219-2.116				f	t	2017-10-25 20:04:08.198472+00
1056	pbkdf2_sha256$36000$CJmwSAAbjaO1$ikBSja1qP7MjbvEs0kz8XqW7Yr/CLc9y00O2lBCrHNc=	\N	f	cont_219-2.117				f	t	2017-10-25 20:04:08.337922+00
1057	pbkdf2_sha256$36000$NpCWeQvqFnof$YpjxHQs8gip8TKFz4RXqWpp+jRjnhC+dIUDpdOxEx64=	\N	f	cont_219-2.118				f	t	2017-10-25 20:04:08.391392+00
1058	pbkdf2_sha256$36000$ZPCgEbWC27oE$zroA/aouRaRi8jLvW1NpQlFXOn9hpmZ4k0Tkm7qFZvw=	\N	f	cont_219-2.119				f	t	2017-10-25 20:04:08.445684+00
1059	pbkdf2_sha256$36000$lIaNLP5ghJYA$K4vI0LAQrGavui2aYA26x0Enc7eweeavdYArzKgJgfc=	\N	f	cont_219-2.120				f	t	2017-10-25 20:04:08.499254+00
1060	pbkdf2_sha256$36000$HDFd3dNTUa9P$rsoMSaAkDZ59n9H2oByN2bed8swcNg9Ngee/tADYGk8=	\N	f	cont_219-2.121				f	t	2017-10-25 20:04:08.612233+00
1061	pbkdf2_sha256$36000$eb5L3S8ZIggD$cKCr9W7PG9XHrzpaAuTVc0sToo3dPYWzVCcq+y/fprQ=	\N	f	cont_219-2.122				f	t	2017-10-25 20:04:08.754283+00
1062	pbkdf2_sha256$36000$qBNUSwHOXbH8$vABf02nAYSLlXOx0sVAB30Ykr4WhCJqi8qVfKtAyC9Q=	\N	f	cont_219-2.123				f	t	2017-10-25 20:04:08.96078+00
1063	pbkdf2_sha256$36000$xgxzsGSEWkDx$u1/YmxVlfoyUAd2NHfwtr4pZqOVlYUmPLBZi/m80DEU=	\N	f	cont_219-2.124				f	t	2017-10-25 20:04:09.086342+00
1064	pbkdf2_sha256$36000$CAUfAXPvLPT7$znPmK6bw0f6+5sM4kNNxe08fNNwBcp/PYytzpPcvDss=	\N	f	cont_219-2.125				f	t	2017-10-25 20:04:09.219255+00
1066	pbkdf2_sha256$36000$Rpv8wBQ02CuK$D3slytauWEkG9UR3jMTQCuvjXo8v/DzTEup/5VlUsAw=	\N	f	cont_219-2.127				f	t	2017-10-25 20:04:09.503297+00
1067	pbkdf2_sha256$36000$IhkVGeHUzUeQ$GDwOU2xXub34xoD/bluAjPtBLH4JZ2S1VbtP1G8UEtM=	\N	f	cont_219-2.128				f	t	2017-10-25 20:04:09.645316+00
1068	pbkdf2_sha256$36000$LywdICpfuM6f$kSNy1efzCqbGXTBG33S0WikD53oxKZL5YUpSL74etAA=	\N	f	cont_219-2.129				f	t	2017-10-25 20:04:09.791087+00
1069	pbkdf2_sha256$36000$XDBJS8gXCzCp$iZqMmr0e/stS9gx+ETZ9lM0y/yqCuHLtoVkWlwT8bJo=	\N	f	cont_219-2.130				f	t	2017-10-25 20:04:09.974753+00
1070	pbkdf2_sha256$36000$tujTgkWKjb9f$aYNa54ZhMqECuX6dimjAFqeMfImx4eVMBu2tofndAv8=	\N	f	cont_219-2.131				f	t	2017-10-25 20:04:10.143135+00
1071	pbkdf2_sha256$36000$3o3hA0OVdqPm$dE759s9t9Fcf64YMRxRXBJb05d7oxoJqfDjX4K490AU=	\N	f	cont_219-2.132				f	t	2017-10-25 20:04:10.287039+00
1072	pbkdf2_sha256$36000$jhVnLMjrIv66$yOabZ1x9+OUXlrpee0h7ilEtcoD1o1oJMyVl/1N6PmI=	\N	f	cont_219-2.133				f	t	2017-10-25 20:04:10.431259+00
1073	pbkdf2_sha256$36000$xotmWf61jDut$gJEMFIdwXkXcZP+gDomwSTCjyASneEQdvA81ZD6UFDk=	\N	f	cont_219-2.134				f	t	2017-10-25 20:04:10.575355+00
1074	pbkdf2_sha256$36000$Oalk3DV44RPJ$e8OQgEmNywcMGRGv3ymO7X+EWN+UX9Auc6Gr3KyV4Ho=	\N	f	cont_219-2.135				f	t	2017-10-25 20:04:10.719157+00
1075	pbkdf2_sha256$36000$MyPxnEHajIpM$3hio4MdKqAICngZWuMJkUQgjWVMMfV8UH/2ABRciI18=	\N	f	cont_219-2.136				f	t	2017-10-25 20:04:10.863031+00
1076	pbkdf2_sha256$36000$XVIJ0o2LxvVa$GHEMtCiOmg6Jmbgkqomy/l/Vjug1FoQSNjmxZ+ELN58=	\N	f	cont_219-2.137				f	t	2017-10-25 20:04:11.005372+00
1077	pbkdf2_sha256$36000$mUeGEnhJSeEB$4Tfnq0h9dC0PHclTQnClVI7gvFOCJAzk2XFESoW6lv0=	\N	f	cont_219-2.138				f	t	2017-10-25 20:04:11.17391+00
1078	pbkdf2_sha256$36000$2DkthO7sFCQY$CDfChCKliM4qkX2+h5o8ncVlBLrx1+1vuPrvx6Yp+M4=	\N	f	cont_219-2.139				f	t	2017-10-25 20:04:11.287881+00
1079	pbkdf2_sha256$36000$d6Rd08WG0ARO$aO8rNt8xMblFo3M+f9ZUT5BjbpPhzPnXNbYBs+GI+Fg=	\N	f	cont_219-2.140				f	t	2017-10-25 20:04:11.402344+00
1080	pbkdf2_sha256$36000$jdKnklvK7oj4$8ANRy0MyFkpN39VfcTZkfOrjeqzY6YiClyx0IHrNeD4=	\N	f	cont_219-2.141				f	t	2017-10-25 20:04:11.515067+00
1081	pbkdf2_sha256$36000$w0f6TEP5C6Yh$YVhP+3dHh8cvtkKvx+bVZyPkeLVRGLbIXq9TtLMZq1Y=	\N	f	cont_219-2.142				f	t	2017-10-25 20:04:11.615235+00
1082	pbkdf2_sha256$36000$GEHPDs6nRVLR$JrFK7te4eBo/yuL/r1WfKeMYCqgiqyy5Ydx8OgTAWzo=	\N	f	cont_219-2.143				f	t	2017-10-25 20:04:11.711017+00
1083	pbkdf2_sha256$36000$HcR7mcqLLf7i$X4bcvyFqjzJwrRq7B7BrxnfDfwI0Qr7o40iLr9K0iX0=	\N	f	cont_219-2.144				f	t	2017-10-25 20:04:11.806909+00
1084	pbkdf2_sha256$36000$PkXjvY96PPqH$T3DaJiwoRGe0wfo9SoN5Mz/kvBJBRb0b5BOfGHVNFyk=	\N	f	cont_219-2.145				f	t	2017-10-25 20:04:11.903297+00
1085	pbkdf2_sha256$36000$bUSfry2jiCnb$CXM7D+Ms4RbXx5yl0Ai/Xa4WXTTgqtH4JFmUtMaNNEI=	\N	f	cont_219-2.146				f	t	2017-10-25 20:04:11.998491+00
1086	pbkdf2_sha256$36000$ew1v31WLPYjs$mcjleb0yzjuQu5RVkLd8ZffmjqAKFcSlSwoumvNPVgA=	\N	f	cont_219-2.147				f	t	2017-10-25 20:04:12.129355+00
1087	pbkdf2_sha256$36000$vh96D27ljO5k$ccs1SSBJdhV+d9szEKGS/1MdHYsGUau5jqbY3ygllWI=	\N	f	cont_219-2.148				f	t	2017-10-25 20:04:12.344638+00
1088	pbkdf2_sha256$36000$AsUFQbQljkmx$7WeZfVZPt5E4tKMBvaSzKKTmvhI9SvYOgnayTH8L8D8=	\N	f	cont_219-2.149				f	t	2017-10-25 20:04:12.486994+00
1089	pbkdf2_sha256$36000$PkeUFdzbpkSP$06sIJakUKlqs64UzoA6FZSw0OatL8AQJ03H8F1FUpwU=	\N	f	cont_219-2.150				f	t	2017-10-25 20:04:12.627998+00
1090	pbkdf2_sha256$36000$nTTaKoh10sbQ$fhQiNOcC7Jmz9JUBPP7ZbaQ+Z1obfqlTEAi64TK8UGI=	\N	f	cont_219-2.151				f	t	2017-10-25 20:04:12.773021+00
1091	pbkdf2_sha256$36000$TM1cRzufYP59$7pYsHbGPQUsn1Qe3ApvyTd9+0vQ/a84hl0c2MDT3xQg=	\N	f	cont_219-2.152				f	t	2017-10-25 20:04:12.912946+00
1092	pbkdf2_sha256$36000$ZFY1ddmpTyq7$U2htNHyfkzvnmMf0pZDUynDD64zC8HWB0AIDJByz1Ns=	\N	f	cont_219-2.153				f	t	2017-10-25 20:04:13.048031+00
1093	pbkdf2_sha256$36000$iiWpq32dbdg9$FqJkK5/M5ZTcU7pHC5kzqzEg3tNZsnqArUbVZlTTsyQ=	\N	f	cont_219-2.154				f	t	2017-10-25 20:04:13.160003+00
1094	pbkdf2_sha256$36000$W4xr6YMtM9Z6$3cIGkHXh1RcgH9Z7T9fV7ZpwClxLCw8/TGRxFeOfgt0=	\N	f	cont_219-2.155				f	t	2017-10-25 20:04:13.280006+00
1095	pbkdf2_sha256$36000$PuGXR1Ut5viG$EVZTovb0bElKhunHPoHHLeg8CB0qfWwgs4w2uOjI3ik=	\N	f	cont_219-2.156				f	t	2017-10-25 20:04:13.437313+00
1096	pbkdf2_sha256$36000$EOau7btvjnVW$kcOvesullZf/xQ0jYgRNqWcjS/OHnL5TCAtPukWOWxk=	\N	f	cont_219-2.157				f	t	2017-10-25 20:04:13.545349+00
1097	pbkdf2_sha256$36000$m9IpZc5X22gO$IZge6bSBbkTW4c5q5FAotsgplYXuHs0djbS9S2kYBRU=	\N	f	cont_219-2.158				f	t	2017-10-25 20:04:13.635574+00
1098	pbkdf2_sha256$36000$AlUWzHKq4Sae$7S6fjsYNS/l3we8JhcVSDOiGx4xmtV05rvcjRmI2fkg=	\N	f	cont_219-2.159				f	t	2017-10-25 20:04:13.725043+00
1099	pbkdf2_sha256$36000$BsFrhqXIthMP$tdMMASF64RuFX4sjPesLbFewJT2429uOfivL/l1OMtY=	\N	f	cont_219-2.160				f	t	2017-10-25 20:04:13.813832+00
1100	pbkdf2_sha256$36000$FNP89fOtJUG5$bnywXKJ4YFSxfbc+JEKYEY+k3ALNMFAFfzaqjp5aX9w=	\N	f	cont_219-2.161				f	t	2017-10-25 20:04:13.902254+00
1101	pbkdf2_sha256$36000$pxxsple0nn7z$QE09yo3wB5BAhqF9k84x/WBR9mJetryMRJGp7rC0MOA=	\N	f	cont_219-2.162				f	t	2017-10-25 20:04:13.990636+00
1102	pbkdf2_sha256$36000$K5zXk4LWtwyC$aF3ttOo7XfdaOQjl/wmlh3VkEHPHQdjIB2RArlNe4sQ=	\N	f	cont_219-2.163				f	t	2017-10-25 20:04:14.070985+00
1103	pbkdf2_sha256$36000$BCms8cp4hIdT$kNE4Bnh/g5Nn3KKPZIzP0wengB3CnVi+iZoGd8ZpkVU=	\N	f	cont_219-2.164				f	t	2017-10-25 20:04:14.144813+00
1104	pbkdf2_sha256$36000$WA5qhqscZWPE$5VNcT9gcZ9dP0WMkG2FuQvKjHUoLu8EGIfPg0HYdKmM=	\N	f	cont_219-2.165				f	t	2017-10-25 20:04:14.21892+00
1105	pbkdf2_sha256$36000$xlqpfCKrqqAL$fqHKCceQg90KNycMWLx3+zvDk0/dI5M32hN4Z6xd2aw=	\N	f	cont_219-2.166				f	t	2017-10-25 20:04:14.292608+00
1106	pbkdf2_sha256$36000$7Sl5olAzm50j$geJDYheayzJDRd+tG3AgqSojXCsA5iipRjI7VB6wbYQ=	\N	f	cont_219-2.167				f	t	2017-10-25 20:04:14.367719+00
1107	pbkdf2_sha256$36000$y1xrXvKwUnXX$x9zNt/c/XinpPvql2Vd5SO4OvjhvJsLmj5bnU1ds9E0=	\N	f	cont_219-2.168				f	t	2017-10-25 20:04:14.475667+00
1108	pbkdf2_sha256$36000$IYi4vAvv0Wvd$yl7RJW/DC77+XSRqcNQBAWp7SGuE1oyB8y3BF9dpYpc=	\N	f	cont_219-2.169				f	t	2017-10-25 20:04:14.545484+00
1109	pbkdf2_sha256$36000$PR8wHhdvHJGA$BK+2cdfs7RKPvOKGDLhzDBrPbZ4bG2MCCRZz08USbFo=	\N	f	cont_219-2.170				f	t	2017-10-25 20:04:14.607149+00
1110	pbkdf2_sha256$36000$g0lg56qpe4XE$ptzx8BeP1S803ER4FFB7fv3W9MlgCa1eawBjktgqc+0=	\N	f	cont_219-2.171				f	t	2017-10-25 20:04:14.668162+00
1111	pbkdf2_sha256$36000$9ficLTlREnMe$t6V2yJfL06r1FPTd062JLYnB6ICwlcWeerEU/NVzrb0=	\N	f	cont_219-2.172				f	t	2017-10-25 20:04:14.729687+00
1112	pbkdf2_sha256$36000$3DkwmazTsdpa$SlIvCtNSoaN/aiy/0gOeOEpmuQ8ziC4O7C8VC1/oDvc=	\N	f	cont_219-2.173				f	t	2017-10-25 20:04:14.79127+00
1113	pbkdf2_sha256$36000$6Z5en4iFyjMS$GV2pZTU+HlxsWFQxA/n4bRZynrFXmC4nTYrRwyj3MyE=	\N	f	cont_219-2.174				f	t	2017-10-25 20:04:14.853368+00
1114	pbkdf2_sha256$36000$4wIxQtT7kHCZ$NuAovWHJ7d2BZ+rXpVFOt5NK54MXVM60s0FPE7q8R8k=	\N	f	cont_219-2.175				f	t	2017-10-25 20:04:14.914902+00
1115	pbkdf2_sha256$36000$PjepoI1ffvv0$y+EgfrN8d24gaocOuEZN7Kgi+0jNrE4trGNCt1UZkAM=	\N	f	cont_219-2.176				f	t	2017-10-25 20:04:14.976654+00
1116	pbkdf2_sha256$36000$VX4G2I6rTH8G$lI/bB9anWk0Y1AWpBcd9mrnQYBqvPEzmD4y+eDaxoB8=	\N	f	cont_219-2.177				f	t	2017-10-25 20:04:15.037011+00
1117	pbkdf2_sha256$36000$LxSeXweJKcxw$k968C92/VZQkWqs5NQwoEqVOuz7/7Ouv4ypBSD1ns3w=	\N	f	cont_219-2.178				f	t	2017-10-25 20:04:15.100893+00
1118	pbkdf2_sha256$36000$McsIE1KNdYmG$Buv4KB32ywOiFgQP16hffCWfrGd3JewNic5OpiX23dA=	\N	f	cont_219-2.179				f	t	2017-10-25 20:04:15.158163+00
1119	pbkdf2_sha256$36000$5KIkvkhwij5Z$L2yNkLFVCE8NaMpHvdnkzH8dDGUtO9MhhZd7ajjqTHI=	\N	f	cont_219-2.180				f	t	2017-10-25 20:04:15.216094+00
1120	pbkdf2_sha256$36000$fBdoM5dSRZop$ufXywBS6raGVl7ltMng2ZujsoHqGEwVOEUu3jz2IU/8=	\N	f	cont_219-2.181				f	t	2017-10-25 20:04:15.273023+00
1121	pbkdf2_sha256$36000$NXvvkRrXZaSV$TF2hhrecVtmqlOtnllTbVgCy4IbK7AvmzDx8txpLqPI=	\N	f	cont_219-2.182				f	t	2017-10-25 20:04:15.329534+00
1122	pbkdf2_sha256$36000$B3AouTB52nLK$/VSYuMyEXq7nBvh8eOxIyVmHHDO7ScwKTwadaiLW/ac=	\N	f	cont_219-2.183				f	t	2017-10-25 20:04:15.386596+00
1123	pbkdf2_sha256$36000$7mAq8TilYTAc$KDbm4ws3J/EUh6XZNy9+YQOM3SesBrL+JEaMdp0+mn4=	\N	f	cont_219-2.184				f	t	2017-10-25 20:04:15.449191+00
1124	pbkdf2_sha256$36000$ZdImRbTDH5ku$vCkdpveBditvqnps51smY6hpWRHdtcTT90gikxj2Tp0=	\N	f	cont_219-2.185				f	t	2017-10-25 20:04:15.524296+00
1125	pbkdf2_sha256$36000$I2j432pEiIrK$2euEBEdxMMQcCDFdU3tIjLlefxUTFJ0nH+3K20otcqg=	\N	f	cont_219-2.186				f	t	2017-10-25 20:04:15.579546+00
1126	pbkdf2_sha256$36000$onHiRUGcBE5P$dI3k8nmenh04O8ICfDCsjivqSI2fE+3GtfsaL/le9jQ=	\N	f	cont_219-2.187				f	t	2017-10-25 20:04:15.636599+00
1127	pbkdf2_sha256$36000$9Fhotoj7pxdb$RAuHcGExFrVcTqNRqQanUYpi63qpcKZFZ/5OkQW2rYI=	\N	f	cont_219-2.188				f	t	2017-10-25 20:04:15.691896+00
1128	pbkdf2_sha256$36000$YLWND5Rj9FZm$IGIJ5KWHgMbMiVatkULVJuQue6zz62r+lE+GIWPLf58=	\N	f	cont_219-2.189				f	t	2017-10-25 20:04:15.74782+00
1129	pbkdf2_sha256$36000$T33HhAIVYwyP$MDsu110D8BTdmelQPaaYQL5pUikkvqs0zx+2a/pqawI=	\N	f	cont_219-2.190				f	t	2017-10-25 20:04:15.80429+00
1130	pbkdf2_sha256$36000$v3wNZ5DOolPJ$l/fczE6n/zFZqELwa9MlvBgQRM+KT5TdnvWsQMN/ZlA=	\N	f	cont_219-2.191				f	t	2017-10-25 20:04:15.860285+00
1131	pbkdf2_sha256$36000$nBF7VTv0RiO8$TB8LRuoTAcxGpVrih5ygRb9/S0O8kPGEgrhRv6mhLtQ=	\N	f	cont_219-2.192				f	t	2017-10-25 20:04:15.916213+00
1132	pbkdf2_sha256$36000$Kh3zyAkFeWbz$5RKpE+ZGv95IO/CbJVri1pN9eoCo6uHauOxtngX3Vw8=	\N	f	cont_219-2.193				f	t	2017-10-25 20:04:15.971551+00
1133	pbkdf2_sha256$36000$iC3VEWmOhDeW$VazJ4LU3ANpWd0Gss9j+W+QeH5q1387LrB6iHzWWvTI=	\N	f	cont_219-2.194				f	t	2017-10-25 20:04:16.026922+00
1134	pbkdf2_sha256$36000$YpBkusgFBBol$UFqqNKADGcTppFHb7YeAhFrDW4NbyICEd/sJRuJdPf4=	\N	f	cont_219-2.195				f	t	2017-10-25 20:04:16.082879+00
1135	pbkdf2_sha256$36000$NdwhLg1XfMy1$0vMmO4xkZdvdqivlPVESzIhBmmLTsbMucHX39BpJQPE=	\N	f	cont_219-2.196				f	t	2017-10-25 20:04:16.138761+00
1136	pbkdf2_sha256$36000$erCBKnDEJxYZ$YR+6MhBN74gQZPM1Xexqd7D9NVrdUjIhq+IOvgHY4hc=	\N	f	cont_219-2.197				f	t	2017-10-25 20:04:16.194742+00
1137	pbkdf2_sha256$36000$kyJOJDdxoL6M$bC8xMpuU5a+2GKiCQtLV3jHXwnQP3QReLdTz8FyjcYM=	\N	f	cont_219-2.198				f	t	2017-10-25 20:04:16.25171+00
1138	pbkdf2_sha256$36000$hgAgbMQFaIuo$Rs3vaSpBih2I/f4dRptL8SATUAYoyDZGx+wT15wJWfc=	\N	f	cont_219-2.199				f	t	2017-10-25 20:04:16.30768+00
1139	pbkdf2_sha256$36000$NkfiaLyzCYMJ$mbPyh6mWSg7hC0CiZKRUi4M7XOfFU2DZzVWZQLMMk1E=	\N	f	cont_219-2.200				f	t	2017-10-25 20:04:16.363345+00
1140	pbkdf2_sha256$36000$Ujmv8sD3fqzi$gT4FuLDHrTmiFulywZytqLVKg0zGg+tElSvLa3FL37A=	\N	f	cont_219-2.201				f	t	2017-10-25 20:04:16.419531+00
1141	pbkdf2_sha256$36000$VGrZg1er0JAm$pEWEjbLw7aBUsLZ8q7L++1yYrAw8CMojNiqpFS42G8M=	\N	f	cont_219-2.202				f	t	2017-10-25 20:04:16.47499+00
1142	pbkdf2_sha256$36000$CrXQfZASr09d$K7wOlfAscwDjZQxz86uOTMpYB9lM07Pm8zCaeg8CZJA=	\N	f	cont_219-2.203				f	t	2017-10-25 20:04:16.555958+00
1143	pbkdf2_sha256$36000$cdZVvyJosZ8s$3KyknFQBvPSjQZ/E8xgbsfQEbRatQyQXd+O9lKKgP6w=	\N	f	cont_219-2.204				f	t	2017-10-25 20:04:16.611776+00
1144	pbkdf2_sha256$36000$VxQvblypznxo$4daXlSaJQzuPeLuIeB5q5dlV2T/Ox29pXbaJgaBvRKk=	\N	f	cont_219-2.205				f	t	2017-10-25 20:04:16.667591+00
1145	pbkdf2_sha256$36000$8RpMpbm1hwat$36vld/LFxK4gGJdmJchLkvukPnhbZWwW+HNhgQz/M5g=	\N	f	cont_219-2.206				f	t	2017-10-25 20:04:16.723877+00
1146	pbkdf2_sha256$36000$fZZE8wuRU2o8$2kVrbmxlWq4CCq/MvRa5CvyfoSmJu4nSaAsFsUAHNNI=	\N	f	cont_219-2.207				f	t	2017-10-25 20:04:16.779168+00
1147	pbkdf2_sha256$36000$rNKnv4iC0BDZ$R8KBZJWcim4XAUWsuu0OOPeF7OYp3LbcM13G3kobxQc=	\N	f	cont_219-2.208				f	t	2017-10-25 20:04:16.83467+00
1148	pbkdf2_sha256$36000$5t7Okjv6uHXp$QS9CQbGZFoS5B5S3AWvVHCWdt1mPT6g7I/E2KtreGgg=	\N	f	cont_219-2.209				f	t	2017-10-25 20:04:16.890218+00
1149	pbkdf2_sha256$36000$1c2giwgvjnLM$O27wbXfvfsNirK3LkEQQWih7hJVZX/jPzXAi/3EEins=	\N	f	cont_219-2.210				f	t	2017-10-25 20:04:16.945465+00
1150	pbkdf2_sha256$36000$Zyp4m7U8l0bj$8ijaSAwfL60CLNIPCdlCARf6jm2hW7qTw4H6840d4Eg=	\N	f	cont_219-2.211				f	t	2017-10-25 20:04:17.00053+00
1151	pbkdf2_sha256$36000$zJpYIkHTA5nM$bbgMSZQVxY2hP7dpQj9tBYRInjMPXAJ+6RxbwKDaJBY=	\N	f	cont_219-2.212				f	t	2017-10-25 20:04:17.055822+00
1152	pbkdf2_sha256$36000$9M2Bu59W7mEt$uo5NlptVPtosZtpfopnXfL8YDmtlGMqkIZnPez0G8ow=	\N	f	cont_219-2.213				f	t	2017-10-25 20:04:17.111785+00
1167	pbkdf2_sha256$36000$GsJX1BAUo21v$fF6F9CeA9PGtoXhW8QNhmVbF1a+5D7ns5kOZMQp+XDY=	2017-11-13 09:23:55.00065+00	f	cont_219-2.228				f	t	2017-10-25 20:04:17.971436+00
1154	pbkdf2_sha256$36000$AsKzPqz3R6Gq$IphAkzofpb21Ovd5xmQLuarwKJ3Hnu7Nl+fVWAMiiKo=	\N	f	cont_219-2.215				f	t	2017-10-25 20:04:17.22454+00
1155	pbkdf2_sha256$36000$TwsP7B1Yx3qb$8RaTuQc9zZ8KSY6YVi0Ua3oZM+LonNu0PZQCFpeHxI4=	\N	f	cont_219-2.216				f	t	2017-10-25 20:04:17.279829+00
1156	pbkdf2_sha256$36000$IUg8dGyTydYT$Hnl3j3YF/Q8kmzfgdgqGxhgmFZsrc1/jAv+tLX4cfjg=	\N	f	cont_219-2.217				f	t	2017-10-25 20:04:17.33523+00
1157	pbkdf2_sha256$36000$OKiLVcxDJhOG$IyXRVknqPZLLjhL0/7xMy2VQRr8DQ6geqT5M4LpELvQ=	\N	f	cont_219-2.218				f	t	2017-10-25 20:04:17.391018+00
1158	pbkdf2_sha256$36000$WfTceKfFpc9C$9VyOOZBuAX4SA7u08zgYHnpm/t+wXYaksOSwPyd7mYw=	\N	f	cont_219-2.219				f	t	2017-10-25 20:04:17.446334+00
1159	pbkdf2_sha256$36000$0qt7XJGUQBo8$wVaDs4W0fHHc+MQuHrOh9OHLo0kBd6W1i8Syk1DSt2g=	\N	f	cont_219-2.220				f	t	2017-10-25 20:04:17.502319+00
1160	pbkdf2_sha256$36000$RSiI0U14Cl92$6AJdS348Pn35FgMSMy2ZlUnL8LWHiPKwBtke7BVN1dk=	\N	f	cont_219-2.221				f	t	2017-10-25 20:04:17.577391+00
1161	pbkdf2_sha256$36000$oj5hVTKCcwFM$SX3AG5D8l5/MpKQoeL8QEd+RBY8RYpFzfR5veQQTfy4=	\N	f	cont_219-2.222				f	t	2017-10-25 20:04:17.637288+00
1162	pbkdf2_sha256$36000$qejYi8d2B4mm$f2nyW41nWyfGw+ZNFvJK6DoVXq31dHS3T8iYOsdNsbo=	\N	f	cont_219-2.223				f	t	2017-10-25 20:04:17.692951+00
1163	pbkdf2_sha256$36000$1OmtHKXLO7OW$wfcSJQRFEja+hKYScq30Kmgy0mEjBpUQpMOTfmDSV0E=	\N	f	cont_219-2.224				f	t	2017-10-25 20:04:17.748692+00
1164	pbkdf2_sha256$36000$DNCWsFOZiW9b$o8vlRit5TMkWI7fw+8adX3D6M9fxdlChaBzNamLTADc=	\N	f	cont_219-2.225				f	t	2017-10-25 20:04:17.805013+00
1165	pbkdf2_sha256$36000$ixS75kgg7FLM$Vl66mVzLteKo55C+UEv6xoH29yy02ycBbnDP8Ji3Veo=	\N	f	cont_219-2.226				f	t	2017-10-25 20:04:17.86055+00
1166	pbkdf2_sha256$36000$k7FUGSiMW6sZ$abVjh89+bO8+ALplYhVpqaecOval/TfLnukSa6fw0KY=	\N	f	cont_219-2.227				f	t	2017-10-25 20:04:17.91612+00
1168	pbkdf2_sha256$36000$HoVjk6nSmEvY$fQpjzS6WN75SL97X0NUKG+BUjS48DWaHX4wkU0XLHnE=	\N	f	cont_219-2.229				f	t	2017-10-25 20:04:18.028907+00
1169	pbkdf2_sha256$36000$ExpYI6VUK0Ey$98S/fL30+OlNteme0MKMgLU97Ov5ACAZIHpjwUdFfBM=	\N	f	cont_219-2.230				f	t	2017-10-25 20:04:18.103824+00
1170	pbkdf2_sha256$36000$aB92S6EYf5Zk$bwfzWhZ/D4y0h2LilGC9LcpL/QA0YQr7BNFAVBeMASQ=	\N	f	cont_219-2.231				f	t	2017-10-25 20:04:18.161629+00
1171	pbkdf2_sha256$36000$ZwP5Pv7t6Nc0$/5VwRXZTHKbLWJ/t6nvytNITsUrl4VvijQCMETTwLVo=	\N	f	cont_219-2.232				f	t	2017-10-25 20:04:18.218534+00
1172	pbkdf2_sha256$36000$KQrZGtaKlu5H$25lsjMZAFegSJlS9TKmoA5y7uleLmc+Cf83N7OULobg=	\N	f	cont_219-2.233				f	t	2017-10-25 20:04:18.27525+00
1173	pbkdf2_sha256$36000$5xR7Xly7OUJs$99DwdelTMY3VaEM7H2yrLgxILpKnucx0hkr+JpGkcLo=	\N	f	cont_219-2.234				f	t	2017-10-25 20:04:18.331942+00
1174	pbkdf2_sha256$36000$ctBLmCpnzfMY$ZLck+2pz6gJmqMcgryqNEj1molmlYjhaGd7518BGep8=	\N	f	cont_219-2.235				f	t	2017-10-25 20:04:18.387959+00
1175	pbkdf2_sha256$36000$nBw64tk0xn72$tJI3USWbvia8WE7NAB+WQa44Y5BO5sJOwAK2teXBPkg=	\N	f	cont_219-2.236				f	t	2017-10-25 20:04:18.44488+00
1176	pbkdf2_sha256$36000$2vsSB6TWuapN$ZFlhpDxTw1SUSMKCE8ZkadzKxc5L7RkwdXwiQdaUuks=	\N	f	cont_219-2.237				f	t	2017-10-25 20:04:18.500687+00
1177	pbkdf2_sha256$36000$JJBV780dNxVj$aQIZLmxk8rAEFuuG8VAGN3QB7lgcxptbrccWUPH5XKE=	\N	f	cont_219-2.238				f	t	2017-10-25 20:04:18.556614+00
1178	pbkdf2_sha256$36000$KnqK9wKCuF6e$I7vkJMzAUlmrufYwjeZ+fvbbYKj88Anv0wjDkGc6uHQ=	\N	f	cont_219-2.239				f	t	2017-10-25 20:04:18.640639+00
1179	pbkdf2_sha256$36000$Dq6JLAQuc0mO$H8uJJT+8aOanL3h1GqfqcP1SjZfv+UTvT65RNf4WCF0=	\N	f	cont_219-2.240				f	t	2017-10-25 20:04:18.696856+00
1180	pbkdf2_sha256$36000$5D32JE3kXjDE$gCJsXYLuva8qbxaROuRzsuq3Xn6JtzSuxuqy2tsNYDs=	\N	f	cont_219-2.241				f	t	2017-10-25 20:04:18.75345+00
1181	pbkdf2_sha256$36000$zw19Rg9XlxPC$fMukwH5TUbZX6tFgwosZIV9Htd3EuQAUm19kXePVEds=	\N	f	cont_219-2.242				f	t	2017-10-25 20:04:18.809608+00
1182	pbkdf2_sha256$36000$ondvwIqEu6kB$MH1hQCXNpZIDqMyZE4id5OOYxMbDLnfdayVK/QPElQg=	\N	f	cont_219-2.243				f	t	2017-10-25 20:04:18.865746+00
1183	pbkdf2_sha256$36000$zKSbLmGlKWTU$PwxhojrmxFwSWj+QpxszcpDIX0EqVUTd6Qnohx6mC68=	\N	f	cont_219-2.244				f	t	2017-10-25 20:04:18.921959+00
1184	pbkdf2_sha256$36000$kLIcosokGz1x$lXtsNtrIom9Qpzqqplk3wTt6Xqp+JZHfaSp4pyljoeQ=	\N	f	cont_219-2.245				f	t	2017-10-25 20:04:18.977825+00
1185	pbkdf2_sha256$36000$jDlzCCqbgqSW$sHr6BN5ZzbhIpSsv8T8c9mIJwt8WRmX2sna/Su1cGm8=	\N	f	cont_219-2.246				f	t	2017-10-25 20:04:19.033495+00
1186	pbkdf2_sha256$36000$drLxNy1RJM6N$vhDmqjWpXdRcuyhYsBcYQbNezjfb8qe/k3Dwt4xI4CQ=	\N	f	cont_219-2.247				f	t	2017-10-25 20:04:19.088893+00
1187	pbkdf2_sha256$36000$uuLh6WEFjNzD$u8bHym4GMkiA2mAL60cb2iRbYavV/SI7ImSxtDOLdCM=	\N	f	cont_219-2.248				f	t	2017-10-25 20:04:19.159894+00
1188	pbkdf2_sha256$36000$CKqDREdzq0Ik$eHH6k+uyceJnhHHXwe7EMYj04WGUfCqFI3hFyUtt4Ko=	\N	f	cont_219-2.249				f	t	2017-10-25 20:04:19.216467+00
1189	pbkdf2_sha256$36000$SgheeiyJnNwz$JxAQ/k+/uKQndf5lGHFolBjLBXWzmrjV7anpGewe4IM=	\N	f	cont_219-2.250				f	t	2017-10-25 20:04:19.272453+00
1190	pbkdf2_sha256$36000$ueLJG3Qjy64l$G0aLB66pxrjs3IxANW3bOerjtm1IkwmpV2UucNpMM4w=	\N	f	cont_219-2.251				f	t	2017-10-25 20:04:19.327795+00
1191	pbkdf2_sha256$36000$N65bY9rCvl3q$g4SUazLUadVEW1Ed/Mx4BIdrbsk5X5zGTseZH9OVdKo=	\N	f	cont_219-2.252				f	t	2017-10-25 20:04:19.382346+00
1192	pbkdf2_sha256$36000$wfiwfMDjvC0g$kEr/QD5//Obxq6mytxsEgHtssWE6mIKaUcIJZ8ry/RM=	\N	f	cont_219-2.253				f	t	2017-10-25 20:04:19.438431+00
1193	pbkdf2_sha256$36000$LJWuocwgawAE$ImLxuVBk4bQgoeQffsI25dqr1b7liQYBf7m1ga1jbIA=	\N	f	cont_219-2.254				f	t	2017-10-25 20:04:19.494346+00
1194	pbkdf2_sha256$36000$egYjOV2fSzqS$u0VhpJ4HDhwKVAq7KI08dm0aQKbwz9U0JB9LG4c1KSs=	\N	f	cont_219-2.255				f	t	2017-10-25 20:04:19.549883+00
1195	pbkdf2_sha256$36000$ekGUcvAA33AK$q0D9pV2mWTGxOvkcKDKnK8iZMuzS3PIWNEcEKzZ7wQc=	\N	f	cont_219-2.256				f	t	2017-10-25 20:04:19.605785+00
1196	pbkdf2_sha256$36000$RZyuPI2qeT69$5lJFhLg3PDgFUkZi/ChaKl6mcJkvYGCtozjfeM90zTk=	\N	f	cont_219-2.257				f	t	2017-10-25 20:04:19.688192+00
1197	pbkdf2_sha256$36000$uMZROC4luuED$5k00mjvCJyykWicbqrMt/lDp0il13sLS4rf0B4Wr+bM=	\N	f	cont_219-2.258				f	t	2017-10-25 20:04:19.744625+00
1198	pbkdf2_sha256$36000$sxA7zRLfiQAh$n04A39yXPsY11+T0+QtcObb3qPGBbZ5Q+P4YZCi4sio=	\N	f	cont_219-2.259				f	t	2017-10-25 20:04:19.800911+00
1199	pbkdf2_sha256$36000$NWFibi20JJFu$alPLVEzk9Qjh9awU7iqyaVnr8csmJz4JM403ollgU2c=	\N	f	cont_219-2.260				f	t	2017-10-25 20:04:19.857004+00
1200	pbkdf2_sha256$36000$YMWerJlThzzO$Gwr69lSi7XJs20a1KKuoWicDZAZmcGY17m+zdd9t91o=	\N	f	cont_219-2.261				f	t	2017-10-25 20:04:19.913108+00
1201	pbkdf2_sha256$36000$8LQcgvrOGPeY$Dm9DQlsyath51/QQVKNtIBfBmMNFyw3WpcShkgFIIRQ=	\N	f	cont_219-2.262				f	t	2017-10-25 20:04:19.969244+00
1202	pbkdf2_sha256$36000$SKM2UoRIqkwT$DBcYEJfk9GMAFr9CdmYX1OzP8mtD8iN/zSJOaZNGEfE=	\N	f	cont_219-2.263				f	t	2017-10-25 20:04:20.025688+00
1203	pbkdf2_sha256$36000$d0AyNR8FToE5$gkZSv1JezjQSUHYIYlf8ubOmX0hXQt95CJbvBTtq4wY=	\N	f	cont_219-2.264				f	t	2017-10-25 20:04:20.08147+00
1204	pbkdf2_sha256$36000$AOONBb4G8CV2$2l5UzfMx7crWk2xmOGekRgfOzyELpM/yZNFOu8vvcaI=	\N	f	cont_219-2.265				f	t	2017-10-25 20:04:20.137579+00
1205	pbkdf2_sha256$36000$y2bOxlVAGrwL$l1ojxPcbM+GLC3i6a0b2yJPi4MnVjzu9Dhrz6Ko8v4k=	\N	f	cont_219-2.266				f	t	2017-10-25 20:04:20.193391+00
1206	pbkdf2_sha256$36000$J3RKJopyXZu3$d6II/QQWUyqNogoZ8mtoGBwUxZCciEXo/CE4fPCOFyE=	\N	f	cont_219-2.267				f	t	2017-10-25 20:04:20.249775+00
1207	pbkdf2_sha256$36000$KBTi8D9eyBSN$H31fliu2DrSZSNzwcBwOaRpZaneAoAY8dhO2+Ia2Crs=	\N	f	cont_219-2.268				f	t	2017-10-25 20:04:20.3062+00
1208	pbkdf2_sha256$36000$SPxRwy3Al2Kl$pRpdhiucmPJnEHFSkNRYsfpjM7nfT2S3wYhssDwyPKI=	\N	f	cont_219-2.269				f	t	2017-10-25 20:04:20.362368+00
1209	pbkdf2_sha256$36000$my6vDdyvHwYW$IsbYlI5UW8mFMWsotX2LQGiiGr2TQq6unbyTgWLAS4k=	\N	f	cont_219-2.270				f	t	2017-10-25 20:04:20.417711+00
1210	pbkdf2_sha256$36000$TWl7SrCiJB1N$Ovw+/qU4VP2eKWuz0a9EQPwLDP/wPlgSoeHhJm1b690=	\N	f	cont_219-2.271				f	t	2017-10-25 20:04:20.472894+00
1211	pbkdf2_sha256$36000$2iFYFdxWrt0q$lhbX0Yxa1s1tPmKt5JaB81OQPpzvK28PKrPz25ump2Y=	\N	f	cont_219-2.272				f	t	2017-10-25 20:04:20.529848+00
1212	pbkdf2_sha256$36000$fOfQSSujj4dt$nuDUKovujT7aHPKXQX0D4OIvkflYCVsswVLcn3ubNpk=	\N	f	cont_219-2.273				f	t	2017-10-25 20:04:20.585975+00
1213	pbkdf2_sha256$36000$a6E2oAJTGOyb$bJoLRkBb6gpR1goy5oHgsiJKx1Ldcx14RHJ5tFR5Qpc=	\N	f	cont_219-2.274				f	t	2017-10-25 20:04:20.641898+00
1214	pbkdf2_sha256$36000$fcLts2fR5owT$dl/VlBDO+mIQLMlqJeVtH+/iM8/bDYo6Ng1Cwoi22YA=	\N	f	cont_219-2.275				f	t	2017-10-25 20:04:20.721659+00
1215	pbkdf2_sha256$36000$h2o9PTNMsMEL$eh4UPWKnaG56aSdQBJ3XB71qkNc+bEtv0tV1TYNDiY8=	\N	f	cont_219-2.276				f	t	2017-10-25 20:04:20.779059+00
1216	pbkdf2_sha256$36000$dhPOY2hbsXRG$RuTKOU6AhitppSXIpU8+X86e4Mi58sFQ24Mbuck/mS0=	\N	f	cont_219-2.277				f	t	2017-10-25 20:04:20.835134+00
1217	pbkdf2_sha256$36000$PfA4kWkblPal$2lyaU7ORdq/Y5uhez1E/zAtFpeF2FIWk1WfLyxwzQ+I=	\N	f	cont_219-2.278				f	t	2017-10-25 20:04:20.891253+00
1218	pbkdf2_sha256$36000$GWqg271KdLrK$t84AwELtRfAMFO2Qi/+Z4alGbX7lEjrmdTRYfqcCZms=	\N	f	cont_219-2.279				f	t	2017-10-25 20:04:20.947295+00
1219	pbkdf2_sha256$36000$5b0dIVCuEezP$FJfLDN6DnheARvx/ZNoPWYUQ3SxftFTvtYc9GihqNoY=	\N	f	cont_219-2.280				f	t	2017-10-25 20:04:21.003108+00
1220	pbkdf2_sha256$36000$rRjaLH0N0JgX$MXJK6HIIYq0MovD40bExuBnDNaOsheBytCGCF6O+DPs=	\N	f	cont_219-2.281				f	t	2017-10-25 20:04:21.058013+00
1221	pbkdf2_sha256$36000$wAK4DW7t41X2$X7WbfxeJY9MqBofrWNUpCDJP8Gb19RY12KlnrIqLqAk=	\N	f	cont_219-2.282				f	t	2017-10-25 20:04:21.113788+00
1223	pbkdf2_sha256$36000$tNDoDgtMuOJ3$1w3s29e4O8HiGIWySecvya2FVOL5rQ7nnl3bqt2POP4=	\N	f	cont_219-2.284				f	t	2017-10-25 20:04:21.226663+00
1224	pbkdf2_sha256$36000$WkDVBsXNPsdm$5d9BldLMxKv0903wbM51YOW31diIX74k60yC617q3DQ=	\N	f	cont_219-2.285				f	t	2017-10-25 20:04:21.282687+00
1225	pbkdf2_sha256$36000$wJrstHWpGpiY$gg3nIfRqRQTH64ka4U/C0l08qijMbXmxEsQYeNlodyg=	\N	f	cont_219-2.286				f	t	2017-10-25 20:04:21.33901+00
1226	pbkdf2_sha256$36000$4F7cPE08Sb1R$bfjAwYfZ1BHxbnp8y8KaH/pu7Avd1J0TZ7U7tOat1GE=	\N	f	cont_219-2.287				f	t	2017-10-25 20:04:21.395245+00
1227	pbkdf2_sha256$36000$KA15yKhJ0aKe$ji0WFIBg4QpWOCdLuKK9IwuVKVkpRzoimPBG2Od5Evo=	\N	f	cont_219-2.288				f	t	2017-10-25 20:04:21.451369+00
1228	pbkdf2_sha256$36000$1d6I4IxHlfNk$tEjYHxCd8BUwD4h/t93I6NS8Nm0tywpRWS5/cK10AGM=	\N	f	cont_219-2.289				f	t	2017-10-25 20:04:21.506671+00
1229	pbkdf2_sha256$36000$XdyHEQ7iJzU0$sGy7piuzJVJUpG2XTqk1rXGW31x1IKb172eUl0mBdvQ=	\N	f	cont_219-2.290				f	t	2017-10-25 20:04:21.624171+00
1230	pbkdf2_sha256$36000$IgD5iAOsVH8u$qj7R/sES1kyOgwZtqBpn3Wb2fPkuacGXa2F26u9JDNs=	\N	f	cont_219-2.291				f	t	2017-10-25 20:04:21.804519+00
1231	pbkdf2_sha256$36000$QFOVZ9xH21vd$mSftTM4L+5P7psydoqco6lGAmndXs5M6/mk9bRRHi5k=	\N	f	cont_219-2.292				f	t	2017-10-25 20:04:21.974596+00
1232	pbkdf2_sha256$36000$4EFkviypakUu$ooHcJKUmEKamnty47Cx6qgMvOqYPwr4YigQarCZ/634=	\N	f	cont_219-2.293				f	t	2017-10-25 20:04:22.059216+00
1233	pbkdf2_sha256$36000$siNmvB73B4xM$aBEpZ4fZLEfm4hd9ZiO8eki2nkOSz4yhELIoQpguWY4=	\N	f	cont_219-2.294				f	t	2017-10-25 20:04:22.115607+00
1234	pbkdf2_sha256$36000$GBqls5MKgrT0$Dtqf+nEzZVrY0UhPKyR/svxJ71tGpEzBPu+uRF8aQsw=	\N	f	cont_219-2.295				f	t	2017-10-25 20:04:22.178203+00
1235	pbkdf2_sha256$36000$JyiomX51NKQi$msmcYOHQ0+qFPxY54WUT1GQWxK+Kkz3Kg04WeWPCqRk=	\N	f	cont_219-2.296				f	t	2017-10-25 20:04:22.235366+00
1236	pbkdf2_sha256$36000$5fR9ETu820Xl$jf7vG9fVFW1ijXFoa1LWmKwgOU4Tqt6PNKrUwvEser4=	\N	f	cont_219-2.297				f	t	2017-10-25 20:04:22.291036+00
1237	pbkdf2_sha256$36000$kRCmpKHqbxFF$TFz+y4Witos4vfEX50bfEG2AULRS67RUH6aBw2f7HZg=	\N	f	cont_219-2.298				f	t	2017-10-25 20:04:22.346651+00
1238	pbkdf2_sha256$36000$V4TAbw1VlPlD$+yZn7SdsBH8CnoFMDv/0hiAL8yO0S3SOpg7oRLb0Qy0=	\N	f	cont_219-2.299				f	t	2017-10-25 20:04:22.403239+00
1239	pbkdf2_sha256$36000$BexcV8avl3z8$g6j/S/I5zSFzxK9emfkwsdL2me5J632QyqU57hXSM8Q=	\N	f	cont_219-2.300				f	t	2017-10-25 20:04:22.459823+00
1240	pbkdf2_sha256$36000$ajV412HofyD9$+f4H2yvE22uahxHDXb1nvKoyxneIpEVYUDi1WjVVL1U=	\N	f	cont_219-2.301				f	t	2017-10-25 20:04:22.516144+00
1241	pbkdf2_sha256$36000$orCFLKHjbS4p$PFW9/kOGRv8H/9Xa2xxodFufcmhBPB2V/PbfHmSziuk=	\N	f	cont_219-2.302				f	t	2017-10-25 20:04:22.571639+00
1242	pbkdf2_sha256$36000$adZaAnraj8b0$U+0sPbC1rvLsOrwcuLcgc0RYbkEY7JxQ055CtRZCKQ8=	\N	f	cont_219-2.303				f	t	2017-10-25 20:04:22.631905+00
1243	pbkdf2_sha256$36000$s7T3MtkFv2uN$xsp5uKZoChbe8z6oF/JzxKB5raPc4HPAusx9ANjoUVc=	\N	f	cont_219-2.304				f	t	2017-10-25 20:04:22.688981+00
1244	pbkdf2_sha256$36000$hECDVNskStTT$kG6JdgWa2uv/hUStS20qdszMUrhWYXzSnI9UcazKfsQ=	\N	f	cont_219-2.305				f	t	2017-10-25 20:04:22.74646+00
1245	pbkdf2_sha256$36000$rMkbFKontpxj$cM4F8vsIs3RhlRvcvVuTrumLb84bLg0BWUl+4GiglI8=	\N	f	cont_219-2.306				f	t	2017-10-25 20:04:22.803559+00
1246	pbkdf2_sha256$36000$nBrmS1Vougth$Dn0qSGrPRb8MACqPq0WPZ561S6r1Ul9H2Aa2YtkO76c=	\N	f	cont_219-2.307				f	t	2017-10-25 20:04:22.859724+00
1247	pbkdf2_sha256$36000$RGJEBVbWYBzm$Ntk/IBrfUUVrz/j7KhIykGCPADyDqUYsalBWRzuuvEc=	\N	f	cont_219-2.308				f	t	2017-10-25 20:04:22.943228+00
1248	pbkdf2_sha256$36000$3UfQVdPC3niz$JtzzzPLGF2KEVD+XMZACo+KUwe9RYKiLc9t9aRJKARg=	\N	f	cont_219-2.309				f	t	2017-10-25 20:04:23.000393+00
1249	pbkdf2_sha256$36000$K3TrvDQ7azd7$j09BA9RF29p/yEtNXbD1t/jIhs8+AkEmefBNZipOr+0=	\N	f	cont_219-2.310				f	t	2017-10-25 20:04:23.057241+00
1250	pbkdf2_sha256$36000$WanXLaQBiQVC$64/GlUuQZr4CqO/oMHfjLvoP9dVd9/Wc32oUUqemI5g=	\N	f	cont_219-2.311				f	t	2017-10-25 20:04:23.126326+00
1251	pbkdf2_sha256$36000$L5jT9UcbigMW$JIsInaF7Percp/6cX0rMIpspRL3Vt7ubJLU9R5TQMpo=	\N	f	cont_219-2.312				f	t	2017-10-25 20:04:23.183209+00
1252	pbkdf2_sha256$36000$jbV0FWlhq0zG$owHWicFDyfifAzoiQ9y0GtCiwiJ+byQ2BlW+kd72FdU=	\N	f	cont_219-2.313				f	t	2017-10-25 20:04:23.240391+00
1253	pbkdf2_sha256$36000$KkorU09wNY82$BKyU0uwFZsvjYjh4nRfbAsGOtI7vfvv1n+k8ZVT8nNo=	\N	f	cont_219-2.314				f	t	2017-10-25 20:04:23.299461+00
1254	pbkdf2_sha256$36000$5GijJIdrFcXn$4kKU+DdBRODZUsTIW980FyvwBnt/SL+Fp5YgSfO1H1I=	\N	f	cont_219-2.315				f	t	2017-10-25 20:04:23.35649+00
1255	pbkdf2_sha256$36000$2YdFajkLlQvt$2fVLUHurrIqsQ4pg0cdKy+hfFMI9k5O2LUqTfBG5ZtU=	\N	f	cont_219-2.316				f	t	2017-10-25 20:04:23.412501+00
1256	pbkdf2_sha256$36000$nXNQxP58te2B$RP6x6ifkmuI3bnJyp4A2SeNhznaM4ibqnP6O4/3oFLY=	\N	f	cont_219-2.317				f	t	2017-10-25 20:04:23.468637+00
1257	pbkdf2_sha256$36000$rDz01VHZrWQ1$DJ8oSzVyKLPlbDHWJtq540H1TtCPawydpF3YKtvS0Z0=	\N	f	cont_219-2.318				f	t	2017-10-25 20:04:23.529976+00
1258	pbkdf2_sha256$36000$CJYu7qVGHgD9$4Bhe4jSBX/GY+//lPefur5v89EM5bvyZjYZvmelaBNk=	\N	f	cont_219-2.319				f	t	2017-10-25 20:04:23.670752+00
1259	pbkdf2_sha256$36000$RIcjTBtBMGhU$kpGle4utOrwecD6kqDzMJPpYwv+xozuHY/+7U/uQ8DE=	\N	f	cont_219-2.320				f	t	2017-10-25 20:04:23.812059+00
1260	pbkdf2_sha256$36000$WFGGscVGFJMi$srfFVfK8KuLfkdiv2cqDo9oaq9sclZ5AVFeU55+VJtM=	\N	f	cont_219-2.321				f	t	2017-10-25 20:04:23.990289+00
1261	pbkdf2_sha256$36000$AUTnUg7egtGR$2QqKjH3I0ef4i6c+g6Wanttz9bUnHFj4og+dyJbmcOM=	\N	f	cont_219-2.322				f	t	2017-10-25 20:04:24.076062+00
1262	pbkdf2_sha256$36000$f9VFKxkxYxCU$zqul+ZFvVgGGA4SUNg/S6qBUCfToL4eNS1mpxLqm96Y=	\N	f	cont_219-2.323				f	t	2017-10-25 20:04:24.132689+00
1263	pbkdf2_sha256$36000$b4OCKcC0woZG$WJ7LiM0+J7RgHlC1lzIApyqPBNrcaNH8pnpQCB8RZH4=	\N	f	cont_219-2.324				f	t	2017-10-25 20:04:24.188374+00
1264	pbkdf2_sha256$36000$MENEhpGXp8PY$vMtv9DsJfcmoNw71opiBf03Q1LGO7HBfFQahGBthYFU=	\N	f	cont_219-2.325				f	t	2017-10-25 20:04:24.245012+00
1265	pbkdf2_sha256$36000$aROuWtnT9YPQ$YjmrsPEcByDeuugoOeWoISLmtE8iK5Qx4jqiO89252M=	\N	f	cont_219-2.326				f	t	2017-10-25 20:04:24.301156+00
1266	pbkdf2_sha256$36000$EwmoPmh1hk0A$16U+4ALD6xxc7/Dew/DH+Y2Vfu1AQ4BguewX5YrmmCc=	\N	f	cont_219-2.327				f	t	2017-10-25 20:04:24.357288+00
1267	pbkdf2_sha256$36000$f0KMSQC3RqPM$n1QElTHJ+DfbyjoNFxn5Bn4+JlyN87ekfqZYLtY7syk=	\N	f	cont_219-2.328				f	t	2017-10-25 20:04:24.413193+00
1268	pbkdf2_sha256$36000$LcqgN1cYP6eA$ROIJ0pRRgTEEINiPdiHDpk1sEcJ1SSJsn/TDzMwJ8ho=	\N	f	cont_219-2.329				f	t	2017-10-25 20:04:24.469448+00
1269	pbkdf2_sha256$36000$QbmnQUqRhRPs$VIl1uQ3vmxN23ym38PEPsv4l6AF8qYUJf+ZF/OaumEI=	\N	f	cont_219-2.330				f	t	2017-10-25 20:04:24.52901+00
1270	pbkdf2_sha256$36000$pzpGYROmXdAS$cOQtOCR616ahdJ2w8YdIQzvIgls7zP29MDFNLkfZ3UI=	\N	f	cont_219-2.331				f	t	2017-10-25 20:04:24.669856+00
1271	pbkdf2_sha256$36000$V6kEwsVO6itV$DgazvD+IHmHjGgTXZBDvSmAktWsuJJet1d/nRkXXJV0=	\N	f	cont_219-2.332				f	t	2017-10-25 20:04:24.823746+00
1272	pbkdf2_sha256$36000$JKJftXJUXPyk$HeWrIE4b/Np7GWMrVBeT4Tde06n3YRlTxyeXyWuNd0Y=	\N	f	cont_219-2.333				f	t	2017-10-25 20:04:24.965112+00
1273	pbkdf2_sha256$36000$8Y6WDccJ27k6$LcYg02hfMoGJ1o39lvztuEEu2J0EGAde10Bghyz0bS4=	\N	f	cont_219-2.334				f	t	2017-10-25 20:04:25.081468+00
1274	pbkdf2_sha256$36000$QSQ8j4p6vJiw$kMWCRqR/T0WTnd36OWCo/MDtMg29Hg0/mBJUquGR7go=	\N	f	cont_219-2.335				f	t	2017-10-25 20:04:25.137167+00
1275	pbkdf2_sha256$36000$3bmqeHlL9V5J$LOqzm6Lnf+0H0Fj9jtL43j2vAcIcEjdp3MYU2anIr9w=	\N	f	cont_219-2.336				f	t	2017-10-25 20:04:25.193623+00
1276	pbkdf2_sha256$36000$rwT4MqO60qd1$Z6n8imHCvIQ+gP04/uekU3MaHSs1BB6vfn5f7zZiGtw=	\N	f	cont_219-2.337				f	t	2017-10-25 20:04:25.252186+00
1277	pbkdf2_sha256$36000$aVF6EUmHX83g$Q2550/qfkQdQdSHX6mVVXTPynqkSIA+hPcGLPoEoe0Y=	\N	f	cont_219-2.338				f	t	2017-10-25 20:04:25.307955+00
1278	pbkdf2_sha256$36000$XRcOXRRi1PCQ$+Dt8qMgXxiXDHSMn3tlAcljrj3qag5t/n5lJSNcl0gg=	\N	f	cont_219-2.339				f	t	2017-10-25 20:04:25.363738+00
1279	pbkdf2_sha256$36000$KEcJjTA5KMLe$sM8MHLXm0d7IXP8QBRB05gdoDYAZBZbjqeAG/uk8B9I=	\N	f	cont_219-2.340				f	t	2017-10-25 20:04:25.419676+00
1280	pbkdf2_sha256$36000$CvanZiwLDwyz$sEytPXxruYL6tuxPGKTm0AntjWg7LMN+laICXTArXeA=	\N	f	cont_219-2.341				f	t	2017-10-25 20:04:25.475934+00
1281	pbkdf2_sha256$36000$48tDsVNxQgfY$NB39v1VH0Y3lrTCBC8GxIs9+R5rwivgqu0aXtoBhVdY=	\N	f	cont_219-2.342				f	t	2017-10-25 20:04:25.533246+00
1282	pbkdf2_sha256$36000$02Q5hiOMciry$uJCqswR/ptvdz4emJnqQ1SAGGEc3YP0N8V2gZVMWcbw=	\N	f	cont_219-2.343				f	t	2017-10-25 20:04:25.589354+00
1283	pbkdf2_sha256$36000$KXMvukJzKiTI$2Kv3H6HKnVapnYCWEOyZ7jOF1E0adhmyFVtrDfVIhC8=	\N	f	cont_219-2.344				f	t	2017-10-25 20:04:25.64511+00
1284	pbkdf2_sha256$36000$hsPEyrWlF5Jg$QBtUGi+KlrOoM78z6ZGDwnkbD6GapiQuaArzOvuTIU0=	\N	f	cont_219-2.345				f	t	2017-10-25 20:04:25.701045+00
1285	pbkdf2_sha256$36000$Gsu1Kv4DQHqA$N1Y37JoSuiGeRct33JcWZYquHNalNm0OQFTu4g7q404=	\N	f	cont_219-2.346				f	t	2017-10-25 20:04:25.757479+00
1286	pbkdf2_sha256$36000$jCapIzMQ5lWO$A6CxCDdHyN/q+u8VQL6Z14dAusK5ACGqcpZ8UUCCyJQ=	\N	f	cont_219-2.347				f	t	2017-10-25 20:04:25.813018+00
1287	pbkdf2_sha256$36000$YsB2BkuzbI7G$4sTnCRDyXg+ztT9x1ip2ytoB1PJnl8zexfIjspoCQ0Q=	\N	f	cont_219-2.348				f	t	2017-10-25 20:04:25.869229+00
1288	pbkdf2_sha256$36000$qrnOHJ716sxz$lAAH8hFy+6IgqTzAMoKxKwtzjBRhT3QoUGl6eMcB5MM=	\N	f	cont_219-2.349				f	t	2017-10-25 20:04:25.925033+00
1289	pbkdf2_sha256$36000$ieP1oVYHoQlq$WTRGAC1K1ekI38Ez+sroTYV1px4UoJ3laFhPcrCj4rA=	\N	f	cont_219-2.350				f	t	2017-10-25 20:04:25.982733+00
1290	pbkdf2_sha256$36000$384BytjpAKgk$O4CTKB/kIeb8JxUAi2us5B6QL2hRI3VqRR6CCZTBHJs=	\N	f	cont_219-2.351				f	t	2017-10-25 20:04:26.038629+00
1291	pbkdf2_sha256$36000$OW32cyvbzmOB$LSQEA3j/bs9A+UcLNHV8gV7gAnwaQ65QMiT26VIjyCI=	\N	f	cont_219-2.352				f	t	2017-10-25 20:04:26.11072+00
1292	pbkdf2_sha256$36000$mg2ipLX5ec9R$ClHFb4gJSwejqjCyG0WKINRDPdxzRnw0TVoqdkQmx38=	\N	f	cont_219-2.353				f	t	2017-10-25 20:04:26.174566+00
1293	pbkdf2_sha256$36000$wL3HjGQ4bEgu$6MC3fgQk1Vccj7V+DoRNLT/XiKi3QN8AsFPczhKdOQA=	\N	f	cont_219-2.354				f	t	2017-10-25 20:04:26.230974+00
1294	pbkdf2_sha256$36000$SjUCIoaeBv4N$Kx7/a3buH1/+NRGh912vOUuuz03FsLSihZS4jSM9zgg=	\N	f	cont_219-2.355				f	t	2017-10-25 20:04:26.286923+00
1295	pbkdf2_sha256$36000$0MUamjtGxUt6$DLcVFGJ1DF80pF7ZzkAYFTURs5bFCAlu5b2acybtrxo=	\N	f	cont_219-2.356				f	t	2017-10-25 20:04:26.343185+00
1296	pbkdf2_sha256$36000$PKtSOgXDYEaU$vXLMlmQf/MxED2EUUscP4PPrr5SY4hVi9QXvs2nGneY=	\N	f	cont_219-2.357				f	t	2017-10-25 20:04:26.398836+00
1297	pbkdf2_sha256$36000$Hg5ywgZop33n$RDxpQPm3c9YtCKYQlBYUDxJ+ftSFLM5lCSdQ2vL16GM=	\N	f	cont_219-2.358				f	t	2017-10-25 20:04:26.454455+00
1298	pbkdf2_sha256$36000$FkjQRHVcrmuI$+5+IW2bMCoOHOmDzHOKAVIeVxYgLw4vHd7iPrbO510M=	\N	f	cont_219-2.359				f	t	2017-10-25 20:04:26.510548+00
1299	pbkdf2_sha256$36000$3nBwWEpt9yUf$GYmIp5AaNL7viQaSQRN9RmSnbr1dfSRYGLr8u5dY1mI=	\N	f	cont_219-2.360				f	t	2017-10-25 20:04:26.566179+00
1300	pbkdf2_sha256$36000$IuGUfiJzOuAc$6j/5K4kaXLz+rn1zMrbH1oV3dNL7+Rty+mC5EsQZQH4=	\N	f	cont_219-2.361				f	t	2017-10-25 20:04:26.6222+00
1301	pbkdf2_sha256$36000$Un2rLpKWkhn6$A+WPj0l+eolNzgfaZSs/BjCBDykMRCsJqRQ95ne/GPs=	\N	f	cont_219-2.362				f	t	2017-10-25 20:04:26.677647+00
1302	pbkdf2_sha256$36000$MoROLnPKNAQP$guKTPonrUs6+NlDJX9FrmsD4GDbeJkHfIjSel6+iqV8=	\N	f	cont_219-2.363				f	t	2017-10-25 20:04:26.734003+00
1303	pbkdf2_sha256$36000$kE6zHZ7yJVCh$H07ZynVwkaxD21AfEeESo/zKwmeEuYZ3Ilt7zlf1fQQ=	\N	f	cont_219-2.364				f	t	2017-10-25 20:04:26.789362+00
1304	pbkdf2_sha256$36000$vcvxAF7kPHZo$htCSkAU6uUSzPRovpoPysVizD+Z43UVNJvBUd2XoYg4=	\N	f	cont_219-2.365				f	t	2017-10-25 20:04:26.844905+00
1305	pbkdf2_sha256$36000$SI52c7wsB8q3$3enLPenyhc//N/Uy9vPTrwSGur9Ghx0weK7tYyr6xps=	\N	f	cont_219-2.366				f	t	2017-10-25 20:04:26.900701+00
1306	pbkdf2_sha256$36000$1PZ5WZ8eGNQ6$8ur3bII2R6TKwwMZW0yae+C+CIObg4UgUbHEklU2wy4=	\N	f	cont_219-2.367				f	t	2017-10-25 20:04:26.956232+00
1307	pbkdf2_sha256$36000$6zsY7FeWb4Vy$i2khlpxDhwVna8qiwFrzIiZ2Ja53XMOMyDSZzEmmaIU=	\N	f	cont_219-2.368				f	t	2017-10-25 20:04:27.012707+00
1308	pbkdf2_sha256$36000$kY1QObSHi9Ta$fh3Sv637yEHYKdMFc1PM9xfGQ5HD+ajt78nBQ2DY87Y=	\N	f	cont_219-2.369				f	t	2017-10-25 20:04:27.068314+00
1309	pbkdf2_sha256$36000$ecmQQftvrJhT$qaFS5uKbZB1oqE7x5JUgTP3IOYeufUoLSN80fMwPHiM=	\N	f	cont_219-2.370				f	t	2017-10-25 20:04:27.12508+00
1310	pbkdf2_sha256$36000$xScG5EyNUoXH$Naf01NjuyCAVyRo5fwAn4Xb9Y4CgFV4RLUmt0TAmwCI=	\N	f	cont_219-2.371				f	t	2017-10-25 20:04:27.207167+00
1311	pbkdf2_sha256$36000$i93Oe6HNG7mw$V20vpnAtPbyDfBIIzggr7TKoqfqhHgxRE7ZnkZeRTvw=	\N	f	cont_219-2.372				f	t	2017-10-25 20:04:27.263808+00
1312	pbkdf2_sha256$36000$0gEBMuN8ZWYv$9YK/y8jIgiLfNp6zKG8vXl+ptWLw2PYET3swSpS6FWI=	\N	f	cont_219-2.373				f	t	2017-10-25 20:04:27.319591+00
1313	pbkdf2_sha256$36000$AITjRlpQcl06$+dznErJq9sivaQ5L+SV01fRvqEH2U8xFKaLaZslNIn4=	\N	f	cont_219-2.374				f	t	2017-10-25 20:04:27.376155+00
1314	pbkdf2_sha256$36000$HpTaoUmIrXJr$MvVOEABl5UEAVIuOPUTsPvIgkrqWH7fHXLNg0c5Mq9k=	\N	f	cont_219-2.375				f	t	2017-10-25 20:04:27.433416+00
1315	pbkdf2_sha256$36000$bIRw4IUmmNn5$QBmsCSwWUlSa5K06S4RCPY9xWUXm+dfXKhR3PeRSYcA=	\N	f	cont_219-2.376				f	t	2017-10-25 20:04:27.490039+00
1316	pbkdf2_sha256$36000$q7Fue7C3BUr7$XuRrNWZo2Q/6h16jVo8+KFcPRjhHJ3NHjea/Beei4mA=	\N	f	cont_219-2.377				f	t	2017-10-25 20:04:27.583278+00
1317	pbkdf2_sha256$36000$NsfwOsq2H4wq$YFQZN92E8J97KDVokY/igfikFzpvFyv9BvihgI+F1WQ=	\N	f	cont_219-2.378				f	t	2017-10-25 20:04:27.726683+00
1318	pbkdf2_sha256$36000$PE2jiEWFehmk$ke3RaoWq3kh4Vvy1ba2bDWwzmXOh6V9/BfyMt20fUrA=	\N	f	cont_219-2.379				f	t	2017-10-25 20:04:27.868326+00
1319	pbkdf2_sha256$36000$wAPeOw8l6ScB$MtyEZShM8oQ/it5b8vqv2RndgzhdFVwx6cu7XZ2MMtc=	\N	f	cont_219-2.380				f	t	2017-10-25 20:04:28.00982+00
1320	pbkdf2_sha256$36000$BHD8kPfin98I$AhjqczxzscZngcZfBbvSDHuaziSIYeEFROm6ebRTa/0=	\N	f	cont_219-2.381				f	t	2017-10-25 20:04:28.141658+00
1321	pbkdf2_sha256$36000$JtVOaWLC3Hge$pn9CNltkr9Osmg7REK8R/gf79wcNdrJmb9Qkrjj9vtU=	\N	f	cont_219-2.382				f	t	2017-10-25 20:04:28.331791+00
1322	pbkdf2_sha256$36000$n9eStBKf85lT$WoBiwG5/WtG3AaPK9K8gZgqqO+0g+Dc4owrJ7bS1RaM=	\N	f	cont_219-2.383				f	t	2017-10-25 20:04:28.459411+00
1323	pbkdf2_sha256$36000$wYftU2OL3ABl$5+gtK1MAQV4DzWpoi7xW+x4qe5ue10yz+3gCwmAb3ls=	\N	f	cont_219-2.384				f	t	2017-10-25 20:04:28.574816+00
1324	pbkdf2_sha256$36000$Pv20mInMd8yI$/48EbTq/K+DCsbgkIYT2ekrYdVbC9WQJ//9hYrNbNBg=	\N	f	cont_219-2.385				f	t	2017-10-25 20:04:28.687382+00
1325	pbkdf2_sha256$36000$O2Q2rnBKixrZ$nF73LoeO2cJRRiFmu3fNx+a954TDCkq3+CGN1hNnSIQ=	\N	f	cont_219-2.386				f	t	2017-10-25 20:04:28.795801+00
1326	pbkdf2_sha256$36000$58srSVu24O4S$6/071ZUP6UTWkLmdhDoQo7vKm11aZEq84YOlMuRVHhs=	\N	f	cont_219-2.387				f	t	2017-10-25 20:04:28.902821+00
1327	pbkdf2_sha256$36000$Q3x2hIAlVxmk$Y/Ty4lz0enDzczGFIAo84JV9ffWQqwDeiJlCV/PeHmI=	\N	f	cont_219-2.388				f	t	2017-10-25 20:04:29.05487+00
1328	pbkdf2_sha256$36000$82U4w1BZTEFo$Eld4gHwWoySwgfBu2tD33o0rLpUYZc9nsX4bhi5ZCnk=	\N	f	cont_219-2.389				f	t	2017-10-25 20:04:29.170564+00
1329	pbkdf2_sha256$36000$NLfI9RjPJM3B$XwlqXhkTy2AnZWH7E1J/bxBDO/GTcY5j60MENtbRRz0=	\N	f	cont_219-2.390				f	t	2017-10-25 20:04:29.279536+00
1330	pbkdf2_sha256$36000$HkJePnnWMb7t$K5YkUa+EnqqZTj2WQtyPty9Hv2DhbvzZQRX7mwNjtVU=	\N	f	cont_219-2.391				f	t	2017-10-25 20:04:29.41205+00
1331	pbkdf2_sha256$36000$M1JHhQn2C8SN$X+TAlkyUE3qsflxFH0nTVCO2+dYLcB6CWHvlW7ybLXM=	\N	f	cont_219-2.392				f	t	2017-10-25 20:04:29.503176+00
1332	pbkdf2_sha256$36000$8LUJDQJPfPVB$hZlpQQ08LCtnZg89/NsDN7rf2xwbzN2aaSaOAclXWq8=	\N	f	cont_219-2.393				f	t	2017-10-25 20:04:29.593963+00
1333	pbkdf2_sha256$36000$KN4jPWFrGhA1$XhGR9tD87ZH680igbae+zFdFOLB7oFXmHjp0UXr9n1g=	\N	f	cont_219-2.394				f	t	2017-10-25 20:04:29.68338+00
1334	pbkdf2_sha256$36000$ozH5ZKJye5Dt$2LElRbASq/bhIE/9CzlpEqsAulZh4PfrF/h1mPqgAYs=	\N	f	cont_219-2.395				f	t	2017-10-25 20:04:29.775535+00
1335	pbkdf2_sha256$36000$hWfGMakXkBsi$vrtptwc4pMqq3Q5Oh1HWTbdYiNwk7jwnM+bQwvI7KQ4=	\N	f	cont_219-2.396				f	t	2017-10-25 20:04:29.867098+00
1336	pbkdf2_sha256$36000$4EKW141M1Ehx$rFXLKMgSSb8Y1/AtlOObwNTgqSHFl2fTpwjRYifXhPk=	\N	f	cont_219-2.397				f	t	2017-10-25 20:04:29.957154+00
1337	pbkdf2_sha256$36000$Ra5bVowa00K0$NLORwQL2zU1t/sf84K2MK/91EB7046P3PBVD52vPPEw=	\N	f	cont_219-2.398				f	t	2017-10-25 20:04:30.045924+00
1338	pbkdf2_sha256$36000$bcqw24wYkpJG$gm8XGIFZdO/Z8OlzzNlQbjOPz6q6AKBYcXK1ZkgPFeA=	\N	f	cont_219-2.399				f	t	2017-10-25 20:04:30.12936+00
1339	pbkdf2_sha256$36000$AYeg01gWvgki$wxCp5i4guryzeF0Sj/+1+dPHvr0aI44t3UKrH5cFPMY=	\N	f	cont_219-2.400				f	t	2017-10-25 20:04:30.210776+00
1340	pbkdf2_sha256$36000$K4zJE37zIYPV$RnnnD3k6y8+O33lLo1ENkOVGKP9lo/TZtTUHBGp8GUk=	\N	f	cont_219-2.401				f	t	2017-10-25 20:04:30.291388+00
1341	pbkdf2_sha256$36000$kbAIrY0xoM8Z$M2BnjdiCIPOXRVBzK1Woz94uSrRlAbXEFiFLazkF76M=	\N	f	cont_219-2.402				f	t	2017-10-25 20:04:30.373299+00
1342	pbkdf2_sha256$36000$3fQEdnnSjLRj$4jETcQPR3AYA0A+bHPm2nWpiV8NlebnvGNwU1PIBIGE=	\N	f	cont_219-2.403				f	t	2017-10-25 20:04:30.492913+00
1343	pbkdf2_sha256$36000$LxvEdlFj8VPu$OkMVNorVmzO0rMR7G47H+B24ki96W4t4+kzZwxnev0E=	\N	f	cont_219-2.404				f	t	2017-10-25 20:04:30.580045+00
1344	pbkdf2_sha256$36000$5YpVhpUvCMK2$y/fDUANiDulZsaSizqBom0tLQuzwfT4qMozBWN0l3+s=	\N	f	cont_219-2.405				f	t	2017-10-25 20:04:30.67108+00
1345	pbkdf2_sha256$36000$0AvoudQXbuDZ$N2sodkJCOq4PYYdztZql3pXl4FYuWAOt+bWsaHoNv1U=	\N	f	cont_219-2.406				f	t	2017-10-25 20:04:30.763509+00
1346	pbkdf2_sha256$36000$coPNxA3p8RWn$2RMhdOZ/kKorZjCwRvSaugIsPFUMO5YLSHGIUtkil3g=	\N	f	cont_219-2.407				f	t	2017-10-25 20:04:30.854184+00
1348	pbkdf2_sha256$36000$7Crhave9vD4c$38MnJosmh33n9lqRD8i7yxrUEYw8Rm+8GiB6v1R+WBM=	\N	f	cont_219-2.409				f	t	2017-10-25 20:04:31.033352+00
1349	pbkdf2_sha256$36000$jJZzWr7QBsPi$iP2iRVrcwDu4/XoCDV3YBxj5wlsbaraR5BioY87RUdg=	\N	f	cont_219-2.410				f	t	2017-10-25 20:04:31.109047+00
1347	pbkdf2_sha256$36000$U78iWP1TgU2K$zm1yx+DqN/AA1LdUSNr+MlkEd79+v6RJfDaa9d8XzHM=	2017-11-09 06:13:25.401514+00	f	cont_219-2.408				f	t	2017-10-25 20:04:30.944242+00
1351	pbkdf2_sha256$36000$slwasGwgwaZm$FVnFYhpDAjSSdYrnNy1GRwuiGfdfWJelUsO52q8oz9E=	\N	f	cont_219-2.412				f	t	2017-10-25 20:04:31.259915+00
1352	pbkdf2_sha256$36000$MgA4mieJNxHq$sUtzYWfMvGr9eIG+WHkKylbygA6DijYe3KFCMZnAyfo=	\N	f	cont_219-2.413				f	t	2017-10-25 20:04:31.334875+00
1353	pbkdf2_sha256$36000$3PbxEcIozQ0I$q7hpzYGzFcD7njr2J/PQMjSYwY41fasAsbcMeiTARVI=	\N	f	cont_219-2.414				f	t	2017-10-25 20:04:31.409166+00
1354	pbkdf2_sha256$36000$xCl7k7Yj6wRb$3gu2beq6Zwy37rHEJEmPx3882ZPwumFL5WXoHm4s/Pc=	\N	f	cont_219-2.415				f	t	2017-10-25 20:04:31.517567+00
1355	pbkdf2_sha256$36000$pVJgprPoAD9Z$06HahKLrew4RVO9KITvCBRnlUeNiQpbEj9XpH8cq6xM=	\N	f	cont_219-2.416				f	t	2017-10-25 20:04:31.579421+00
1356	pbkdf2_sha256$36000$gioDNJ7C2J9i$hoZZcGsMSFFyf+rN3NCF0yyosekNinYgSK2ztpwl+Yg=	\N	f	cont_219-2.417				f	t	2017-10-25 20:04:31.639828+00
1357	pbkdf2_sha256$36000$HybHirtc6HFf$FONNQo0uizjpGPcAsD2dwKORzJrA5qLMOulyf8dVOpw=	\N	f	cont_219-2.418				f	t	2017-10-25 20:04:31.700093+00
1358	pbkdf2_sha256$36000$dMceWbmgxcjl$QbdnI35vZxftmTZ5gpYDw4x9nRUIEvYX/bG70Uei1nQ=	\N	f	cont_219-2.419				f	t	2017-10-25 20:04:31.761514+00
1359	pbkdf2_sha256$36000$evp0yhFgXQ6P$/yvYYv2imFwYzP0A2a3TL8ZMmunE5XofecVtTedIuYE=	\N	f	cont_219-2.420				f	t	2017-10-25 20:04:31.821996+00
1360	pbkdf2_sha256$36000$uUdP95cN9n9F$TgPt/NXZqJwZ+LpLsFakS3Hxdbq9SxbjYBjvTlry90E=	\N	f	cont_219-2.421				f	t	2017-10-25 20:04:31.882103+00
1361	pbkdf2_sha256$36000$3hNDE4xeUEYh$GU1w6g+UiDXFKwdc8gI0nyJnRJoj8ABrnbikqYLIxac=	\N	f	cont_219-2.422				f	t	2017-10-25 20:04:31.941974+00
1362	pbkdf2_sha256$36000$fFHr2JVUVEAb$Uzfj1PfUXGKzkJ1iEDildiFl9dl8uxqigjS6+ZxPw8A=	\N	f	cont_219-2.423				f	t	2017-10-25 20:04:32.002186+00
1363	pbkdf2_sha256$36000$9QXseSiq6vdk$+ETzR+ZO74S1ExErzd8MWPLXIyGhmc/ZXTLcBfYeXjc=	\N	f	cont_219-2.424				f	t	2017-10-25 20:04:32.058688+00
1364	pbkdf2_sha256$36000$qFatsN16JI0o$MjhubFboNI4txP7XsSaGx7L6aKQPTisrN1LZAf1EzYU=	\N	f	cont_219-2.425				f	t	2017-10-25 20:04:32.113265+00
1365	pbkdf2_sha256$36000$kDeqGCbPz1hm$5p9Pw7hdkZruyfR/yGGxAVjULDRybU94P+2mzhU/pCA=	\N	f	cont_219-3.1				f	t	2017-10-25 20:04:32.167635+00
1366	pbkdf2_sha256$36000$3Zcyzdp7YvIb$HsNlugbFonAxU0HR5HSw4hu53AWPoioYCXWzt4yYWJY=	\N	f	cont_219-3.2				f	t	2017-10-25 20:04:32.222847+00
1367	pbkdf2_sha256$36000$92CyE7E9FoiA$bhp0ZIohCcULPWyASRsvCXaJdAP55LPsv0kgUGHMfMo=	\N	f	cont_219-3.3				f	t	2017-10-25 20:04:32.277038+00
1368	pbkdf2_sha256$36000$suaXiInnfCH9$k+NbyH0Xg7aDveoNF5FAzHndGcXb4TuBzhzNhCfHYL0=	\N	f	cont_219-3.4				f	t	2017-10-25 20:04:32.331948+00
1369	pbkdf2_sha256$36000$cJrcwlDxq5Tu$8BN8ryNskNQh6KSsWWp4QYUujph25oHRR+RInX3F7LQ=	\N	f	cont_219-3.5				f	t	2017-10-25 20:04:32.387013+00
1370	pbkdf2_sha256$36000$As6R9infVGnj$9meRsY8qjKXr1DK7VNdZ7cYuG6QW4r/wchH3lHK2t3w=	\N	f	cont_219-3.6				f	t	2017-10-25 20:04:32.44331+00
1371	pbkdf2_sha256$36000$6qbAZ0681EPL$uW3up3klAlvzYxonxTILxPhsk5dj3D7jsRpzubNAqTc=	\N	f	cont_219-3.7				f	t	2017-10-25 20:04:32.498795+00
1372	pbkdf2_sha256$36000$Jib5kxfdh0vd$BVhPjymNs6mlnsQ0qt22rYwmreaFY8A59nON3aKoUec=	\N	f	cont_219-3.8				f	t	2017-10-25 20:04:32.580741+00
1373	pbkdf2_sha256$36000$kvnDu3FmfXuU$JRU5UTyOH3AQSvR6aKrM5b2Im4vvciytZu5GA8bV434=	\N	f	cont_219-3.9				f	t	2017-10-25 20:04:32.637227+00
1374	pbkdf2_sha256$36000$KknVxCqiPVaJ$xLuQbemBfeLXOUpRyEcacJ0bQDeROO2l80WsQUpqj7Y=	\N	f	cont_219-3.10				f	t	2017-10-25 20:04:32.692109+00
1375	pbkdf2_sha256$36000$iBV5mpuTMNjd$JCNMVZ1ZoB7LnmEwi9g/PBvxyX3t36XrIq12MeJ3NDA=	\N	f	cont_219-3.11				f	t	2017-10-25 20:04:32.76705+00
1376	pbkdf2_sha256$36000$5CEywsfv9HKY$LOrbMwWGRoQIt2hvf1GU35ySgmucOvILkfrLvoeFdgU=	\N	f	cont_219-3.12				f	t	2017-10-25 20:04:32.823342+00
1377	pbkdf2_sha256$36000$qhSni7axokGE$4QQi0byhNDaNBMl9j7O/k2itU5Mb4njXk29M7mi0wBk=	\N	f	cont_219-3.13				f	t	2017-10-25 20:04:32.878298+00
1378	pbkdf2_sha256$36000$gCfob2TfoWuB$EvkUhPwIlCITTX2rkQHbioC011H5WH/2eEWQe2HDvFs=	\N	f	cont_219-3.14				f	t	2017-10-25 20:04:32.933261+00
1379	pbkdf2_sha256$36000$Oj1bAUndOmYc$2D+gx/paORPAZQIPoc7RrUaSROAqi1crSU+YnxxZfHM=	\N	f	cont_219-3.15				f	t	2017-10-25 20:04:32.988391+00
1380	pbkdf2_sha256$36000$AzUp8OTpH2T2$MOPtPkU8itCtLeLB18Acevn9VqdPzVjgV6CG2TrElUY=	\N	f	cont_219-3.16				f	t	2017-10-25 20:04:33.043459+00
1381	pbkdf2_sha256$36000$HV7eezBbVMEK$wuCFaMSP/xefC+qFfOpX2B553sZH/rdLxo+1daRUmoA=	\N	f	cont_219-3.17				f	t	2017-10-25 20:04:33.098463+00
1382	pbkdf2_sha256$36000$SdP4cIQOhGGw$E2SdAfb89VakYXjx7UtDpza6XPmE2gDefpUq9acV5+I=	\N	f	cont_219-3.18				f	t	2017-10-25 20:04:33.169715+00
1383	pbkdf2_sha256$36000$OjQATcFBg9El$ZAJUC6a9CdFMwggYsAbpWkgD5mVPTej/WYxD7cwJ3hQ=	\N	f	cont_219-3.19				f	t	2017-10-25 20:04:33.225162+00
1384	pbkdf2_sha256$36000$XsMe3nPAoUUq$KRLn45vKSJ5W0vXvMLX1xzRdVioekphGQV1W567g2Qc=	\N	f	cont_219-3.20				f	t	2017-10-25 20:04:33.280042+00
1385	pbkdf2_sha256$36000$qRA6tRTN0BjL$ggfMy1yeYIQY0NNI3thFr9+r1baMmsRqY3/n4fQBKco=	\N	f	cont_219-3.21				f	t	2017-10-25 20:04:33.335524+00
1386	pbkdf2_sha256$36000$zqUjBb5wkbKR$ZNheoT5+3vLqpo8XyHTKDII9CbPT2hgQ1f3kvkVBKYI=	\N	f	cont_219-3.22				f	t	2017-10-25 20:04:33.390693+00
1387	pbkdf2_sha256$36000$L6uwDelXqHtU$myv2RhKEUuCzd8oK7NX/YpJKGE6uNe3O/QmFV5nUXrI=	\N	f	cont_219-3.23				f	t	2017-10-25 20:04:33.446218+00
1388	pbkdf2_sha256$36000$y9swwqY1HAQU$4nUHsYoRiu8EwiDqyhPC11QDDPusCK6DoTYUs2hMdP0=	\N	f	cont_219-3.24				f	t	2017-10-25 20:04:33.50079+00
1389	pbkdf2_sha256$36000$XdVNrYPAr526$zzs6iuzkqseV0C2FqnKEtHB/eQ03B+IV2qK0rKKAB/k=	\N	f	cont_219-3.25				f	t	2017-10-25 20:04:33.555789+00
1390	pbkdf2_sha256$36000$oALTEBoGKKti$6zCSWi7HTAJXPvU4SnHukx2g2gGHDtif1JZazGz5A1s=	\N	f	cont_219-3.26				f	t	2017-10-25 20:04:33.637895+00
1391	pbkdf2_sha256$36000$f1ZNC6i6QrcW$JPXd40AQQYRWkTUL9IfT3TBPQyc8dJHhRL4FnsPrP8w=	\N	f	cont_219-3.27				f	t	2017-10-25 20:04:33.695567+00
1392	pbkdf2_sha256$36000$GZka9D2yHwPN$s2R2tIQidXEWunhbJ3PFMqAjbmhaUdwgUXwGJ/jQdx8=	\N	f	cont_219-3.28				f	t	2017-10-25 20:04:33.752522+00
1393	pbkdf2_sha256$36000$dDd5fO6xFBe9$oFpT8HgcMnk9xJ23j96d5KkG1C6pFcxFoAv7mPnblUk=	\N	f	cont_219-3.29				f	t	2017-10-25 20:04:33.806798+00
1394	pbkdf2_sha256$36000$ykI5nB1ECLve$P1L1RYygnjF3US3Jv+E3DUlWGxlBe0TbFQ1Bk2lLIG8=	\N	f	cont_219-3.30				f	t	2017-10-25 20:04:33.860825+00
1395	pbkdf2_sha256$36000$C01wtm7MQ4P4$LUlxGlgdqqi6xz+uS2XgDKfwDkDaXqCc6l+wub+Wt20=	\N	f	cont_219-3.31				f	t	2017-10-25 20:04:33.915024+00
1396	pbkdf2_sha256$36000$yl9ZGulWIOYH$CMa2FO5JhYJgDoU3mx/992z0kDkV850CP0J+sZ1A6sQ=	\N	f	cont_219-3.32				f	t	2017-10-25 20:04:33.969234+00
1397	pbkdf2_sha256$36000$7JKP52o3DpHb$oYA6Hj+bJ8Fb8gFMFmWuUemWnNn5mpbBOxXb9HycP7w=	\N	f	cont_219-3.33				f	t	2017-10-25 20:04:34.024223+00
1398	pbkdf2_sha256$36000$1qYggqGU6lx9$hGP0cSwSjg1yMJPq2vVvmRuO4yqOvBkpw+CZkz1ukEY=	\N	f	cont_219-3.34				f	t	2017-10-25 20:04:34.078302+00
1399	pbkdf2_sha256$36000$pIeUEo2Bx4an$Kn77IILXStcWBZdwKBDJoQV+KSZPp3yL8jbviw4GBuk=	\N	f	cont_219-3.35				f	t	2017-10-25 20:04:34.132664+00
1401	pbkdf2_sha256$36000$lQZ7ztsk9y4e$1qTsLKhjDfygsK388H8lK1pDKJAbSlcjWfFLZ2+yn2M=	\N	f	cont_219-3.37				f	t	2017-10-25 20:04:34.24164+00
1402	pbkdf2_sha256$36000$EF34uPdDDXYy$ioE+P2XJju/7WKfzDXv3KnScMcZFmUrwPtoPKcVoH6A=	\N	f	cont_219-3.38				f	t	2017-10-25 20:04:34.295375+00
1403	pbkdf2_sha256$36000$dxUDzoCM0wgL$MVZRw+e+yGz4urlw7DzRNnigarGpvPlGOts8rbYCM0A=	\N	f	cont_219-3.39				f	t	2017-10-25 20:04:34.355413+00
1404	pbkdf2_sha256$36000$DvuFBngZyHHX$I1ZIwMU/GPaBKnn5hLHS9LmyZm3zFQACo1IV4qeEM3c=	\N	f	cont_219-3.40				f	t	2017-10-25 20:04:34.410321+00
1405	pbkdf2_sha256$36000$Ol753pVI8dZB$hfUYRbGeu/3KZX5Gj3VAp/Kgv/SAsJKn63u/YP0uInY=	\N	f	cont_219-3.41				f	t	2017-10-25 20:04:34.464439+00
1406	pbkdf2_sha256$36000$eQZsfoa4LRbd$N3khK9+PulRpLCxBTBBAhXi2jwmRz7TpX5bVfl/TW+c=	\N	f	cont_219-3.42				f	t	2017-10-25 20:04:34.519474+00
1407	pbkdf2_sha256$36000$M9dIFLzOuOKX$vwCfrhVxyTWU8gnIw6vw07XIpZT4RZqlpl41TztV2PQ=	\N	f	cont_219-3.43				f	t	2017-10-25 20:04:34.578574+00
1408	pbkdf2_sha256$36000$bYa6lFHNKMkM$ePQ4jCFfmeAL++3UjKnpDWYDJoFBeIyeeBH+MzxXOP8=	\N	f	cont_219-3.44				f	t	2017-10-25 20:04:34.665908+00
1409	pbkdf2_sha256$36000$QhZ7Siooy4Zr$iNcCoAJ01gpm6gjbg2BTDJwbFvrLwX2jdd/iQduMbBY=	\N	f	cont_219-3.45				f	t	2017-10-25 20:04:34.722254+00
1410	pbkdf2_sha256$36000$kOL8Lp70zB7y$TqRusorEMdwS1eg3uh7tu+cW1/xNspeSsE7wa+hqLHQ=	\N	f	cont_219-3.46				f	t	2017-10-25 20:04:34.778413+00
1411	pbkdf2_sha256$36000$wYs8CPt1pxnT$er4GP8yvFR6/wKstWDvsB9KJ+2QHoWb0PFOChvLWwks=	\N	f	cont_219-3.47				f	t	2017-10-25 20:04:34.833996+00
1412	pbkdf2_sha256$36000$1cCYk9Q5UIKi$+4iZmC/hvEH38vHe9OfHxmK/B7KJaDD0Xiq6Le3TRVk=	\N	f	cont_219-3.48				f	t	2017-10-25 20:04:34.888285+00
1413	pbkdf2_sha256$36000$RM2WcNCnXVdG$ksSyV2DJSRZrvyNboCmOqq76f3Jk0fPQpTfshAhqc3Y=	\N	f	cont_219-3.49				f	t	2017-10-25 20:04:34.942552+00
1414	pbkdf2_sha256$36000$GSz65QEOFGgU$csIyPIBxMsrWJ9ykT+ytjN6KUTaPuZfAwfvo1CQtQtY=	\N	f	cont_219-3.50				f	t	2017-10-25 20:04:35.000934+00
1415	pbkdf2_sha256$36000$FGSJ4MWc1I5G$Hr29td/gvPpspTzMZMJ3q1Htcp/tOjvqoCfr1Mqgw8Y=	\N	f	cont_219-3.51				f	t	2017-10-25 20:04:35.0577+00
1416	pbkdf2_sha256$36000$ZrgWogP1CkBe$FIsLn1x4UUA1bf6uNaCruhheOMwqJRkXFmGPFDG/66M=	\N	f	cont_219-3.52				f	t	2017-10-25 20:04:35.112849+00
1417	pbkdf2_sha256$36000$IR0XhQPe0sEh$V+eRJWE3v1ohMEc61cV1qFAp8/ThQQOwxsbtZwTOAKA=	\N	f	cont_219-3.53				f	t	2017-10-25 20:04:35.168141+00
1418	pbkdf2_sha256$36000$TgxUqKHEOzdh$j0cGzD9MdR0tUQf0mhG0uKUtLmcx9wowCIMwCCthOkE=	\N	f	cont_219-3.54				f	t	2017-10-25 20:04:35.224433+00
1400	pbkdf2_sha256$36000$X8JMj1h4ET5O$dSvqFtHmCVirhgSxBCZuHLLMyywtcrYSJOZHpu3prFI=	2017-11-09 10:22:02.614858+00	f	cont_219-3.36				f	t	2017-10-25 20:04:34.186808+00
1420	pbkdf2_sha256$36000$4RtoGEajnyME$9nQ9ObrWIHAm3kj/fphrL8JyiqodiiKb1pYtFUbLpwk=	\N	f	cont_219-3.56				f	t	2017-10-25 20:04:35.334138+00
1421	pbkdf2_sha256$36000$jznHYrkRCB4D$EHSreTAN8JrWmhYxl+rNYmO/vTkwP7jxYvixPTu7NVw=	\N	f	cont_219-3.57				f	t	2017-10-25 20:04:35.392426+00
1422	pbkdf2_sha256$36000$YrQLh6ivlUQ5$vWv/Ib5ORVKCLE6gM+PQxEL4e7H+2uw2bVXeCBy8tgk=	\N	f	cont_219-3.58				f	t	2017-10-25 20:04:35.446145+00
1423	pbkdf2_sha256$36000$SDnORzovEzSc$R7PRRz12iSa+ZHk7qW2prl+Ap5SeDSsx5YqoEx2udVo=	\N	f	cont_219-3.59				f	t	2017-10-25 20:04:35.500897+00
1424	pbkdf2_sha256$36000$B9yXa2C9ByVA$YbdrpIy1iUosccwizbUd33j+5Edk19FcEYe1GyCVVGQ=	\N	f	cont_219-3.60				f	t	2017-10-25 20:04:35.556388+00
1425	pbkdf2_sha256$36000$0DNbpT4dXtLL$xSy4RwyAgDNUxrOuZQTcY1ZjGisqjKd5QDgqqrhcDVM=	\N	f	cont_219-3.61				f	t	2017-10-25 20:04:35.610242+00
1426	pbkdf2_sha256$36000$SxIgTmcpeGly$Jx/45cce7KIPOPS51ZuSeFwq9eu4LDfeFq+CnG+HCRQ=	\N	f	cont_219-3.62				f	t	2017-10-25 20:04:35.663955+00
1427	pbkdf2_sha256$36000$r88yvMawmJMt$TKt3P+inzU6I9NwiINv3X3OnWNDpJDFCRXk1X8c61UY=	\N	f	cont_219-3.63				f	t	2017-10-25 20:04:35.755064+00
1428	pbkdf2_sha256$36000$9TqRjJSdJ4uc$MvZdHlAc3HUi2SMov4/56C7PpDFItB3/b0ywfgWFnQg=	\N	f	cont_219-3.64				f	t	2017-10-25 20:04:35.808609+00
1429	pbkdf2_sha256$36000$LIiFFFsv8zZ6$wovE8+ntJiBMqShxcx1n1xpNFUvrCJbvPlxDzWInA2M=	\N	f	cont_219-3.65				f	t	2017-10-25 20:04:35.862849+00
1430	pbkdf2_sha256$36000$Q7oqMBhxNMEP$QbzKI8A2BHtxSVPsvdsQmijEh6k365heu+XEGAYnoCg=	\N	f	cont_219-3.66				f	t	2017-10-25 20:04:35.916632+00
1431	pbkdf2_sha256$36000$uuayqoHpX9FU$sNz81Mb5DmzKXoTkhPw+Q7imYIFJqygoaeYrB9pDEvc=	\N	f	cont_219-3.67				f	t	2017-10-25 20:04:35.969874+00
1432	pbkdf2_sha256$36000$sECOugeDzHfv$r2eH7vBoMENhi75N/+rmQQcPXGzIUcYILBvaYDivl7M=	\N	f	cont_219-3.68				f	t	2017-10-25 20:04:36.024255+00
1433	pbkdf2_sha256$36000$ux4nJWeApJFH$O+Fzv8LaafoWF4e8fEj2gvvDLnvqc1OKDjI2fvUicJ8=	\N	f	cont_219-3.69				f	t	2017-10-25 20:04:36.082024+00
1434	pbkdf2_sha256$36000$Myy6xISupY9E$n09lokuocEvK5y7CUC6nchrigS0L6F+BC6EPShNv7Ig=	\N	f	cont_219-3.70				f	t	2017-10-25 20:04:36.136459+00
1435	pbkdf2_sha256$36000$cPNcf4oMR5ZD$JH+nRpVyN9jiIatXMwvdV2wGn4aCk6IwuxkKMLRm584=	\N	f	cont_219-3.71				f	t	2017-10-25 20:04:36.190404+00
1436	pbkdf2_sha256$36000$9mKW3fKcxslc$8F0EjMTBCRvUlV3m05dClMc2JCllHKxSPLzammiHL7o=	\N	f	cont_219-3.72				f	t	2017-10-25 20:04:36.2454+00
1437	pbkdf2_sha256$36000$YM3JQ9Aw9Ia2$uVWQXstWWfXSbq06fVHQxUVSqXZJ2wiC6EAOuejS/IQ=	\N	f	cont_219-3.73				f	t	2017-10-25 20:04:36.300449+00
1438	pbkdf2_sha256$36000$iONIgYXOvgzJ$KWOuYel+JptZyKFE4A5+CnzVpRuPPA7lMxiDHlfiU7Q=	\N	f	cont_219-3.74				f	t	2017-10-25 20:04:36.357945+00
1439	pbkdf2_sha256$36000$wnHBucHKjdQg$ovS3kUg8MfV5RFHsetRxJ/bdVXwrlfRasYMFATW5I8s=	\N	f	cont_219-3.75				f	t	2017-10-25 20:04:36.413119+00
1440	pbkdf2_sha256$36000$0RALpYu1XxWa$KH17LyML6TgQ/m6qFUkCnFeeAUhlhND7cqh+E9BwLzk=	\N	f	cont_219-3.76				f	t	2017-10-25 20:04:36.467427+00
1441	pbkdf2_sha256$36000$A14BXqNlXe7r$vapO9HtO32tbjxL11w8/PB2vHqbnmFJiQrsgcYeyFX4=	\N	f	cont_219-3.77				f	t	2017-10-25 20:04:36.521287+00
1442	pbkdf2_sha256$36000$LQR7wi5dcuIO$5GyNkqJt0ceHag37icIMZwEYb+sPG2RVO/VT/4Pc5Og=	\N	f	cont_219-3.78				f	t	2017-10-25 20:04:36.575583+00
1443	pbkdf2_sha256$36000$yjVDi3ptFOIa$7fKUTYhJet79eFkaXtw3qQBTsikpbL5IqW5dDy8jNQE=	\N	f	cont_219-3.79				f	t	2017-10-25 20:04:36.630226+00
1444	pbkdf2_sha256$36000$gVMi3w6YQgqO$J7po1VQWsTHwItGdianGcYGrFBeW+KiVjKMKrLz1vCw=	\N	f	cont_219-3.80				f	t	2017-10-25 20:04:36.683859+00
1445	pbkdf2_sha256$36000$4X5bVULYDKkZ$KhASRmNtNFQ1CX/AWWAIXDu/rj4kmtzGexVKv4wrgYY=	\N	f	cont_219-3.81				f	t	2017-10-25 20:04:36.752203+00
1446	pbkdf2_sha256$36000$6cSESbnbcZpG$LQLOpa8LXcDWrt0ndXVUa5X/FAiuJD4meIoh1rrEGe4=	\N	f	cont_219-3.82				f	t	2017-10-25 20:04:36.823817+00
1447	pbkdf2_sha256$36000$3fQ2KRThjg1p$nggqdpCLfMRSN9YABrIXvKBbku97EtEmPnBeAD/Y4/c=	\N	f	cont_219-3.83				f	t	2017-10-25 20:04:36.877753+00
1448	pbkdf2_sha256$36000$CyEcbaNV5liz$tmkpTeXeEIYdgiMtA/OP//vRfXWK2kcwhzXfq2vQozk=	\N	f	cont_219-3.84				f	t	2017-10-25 20:04:36.93176+00
1449	pbkdf2_sha256$36000$McFT5E15z7eI$6WpRzxFgGFakoFIC9v0xrHThLqRYg6kD+MfTzZXTKhM=	\N	f	cont_219-3.85				f	t	2017-10-25 20:04:36.985736+00
1450	pbkdf2_sha256$36000$9UQrj8lwgivp$ypu46PkCmEQomVAaKNthFXZOuPZ+fEh+UUKWjIURKHQ=	\N	f	cont_219-3.86				f	t	2017-10-25 20:04:37.040462+00
1451	pbkdf2_sha256$36000$LzFpwvsmPdbg$wTmBiFc9UryXUxNdGhRRWJKi0+EyUHh4kxCj4ie5/V8=	\N	f	cont_219-3.87				f	t	2017-10-25 20:04:37.094684+00
1452	pbkdf2_sha256$36000$1BVVFgmfxkEk$BnlgRilaMUrsXj4aBhvzxxDC403hzxe4jQugHiBMxy4=	\N	f	cont_219-3.88				f	t	2017-10-25 20:04:37.148582+00
1453	pbkdf2_sha256$36000$RipcZ0YaUv0M$ixVSTLK1mTwD3U4Axuo8giuJ1go/6h3oSyAxD9FQ+po=	\N	f	cont_219-3.89				f	t	2017-10-25 20:04:37.202859+00
1454	pbkdf2_sha256$36000$BBBy2mAILtqL$EImdUIVqOiDetIslVlB8wiswCl3bZH5u6/Lsf1+75Rk=	\N	f	cont_219-3.90				f	t	2017-10-25 20:04:37.258636+00
1455	pbkdf2_sha256$36000$niNDPHDX7S4z$hQM8XdDf9ULTxrqFxEO4GOTtFW0RBWK4rz4wQ0vkS/k=	\N	f	cont_219-3.91				f	t	2017-10-25 20:04:37.313795+00
1456	pbkdf2_sha256$36000$GCnfvCnLlsCw$rPRdl6J85murrR8rAXZ7dqzv2jdMF0qVrcdH59hVsOA=	\N	f	cont_219-3.92				f	t	2017-10-25 20:04:37.369198+00
1457	pbkdf2_sha256$36000$Kw4MmjwkR6iv$OVoTHc7wTiVCGdUNTEhD8FlkLniZBSr42HGAUawqFwY=	\N	f	cont_219-3.93				f	t	2017-10-25 20:04:37.422947+00
1458	pbkdf2_sha256$36000$CiCqCuzzXGbS$Mi4a88/qfxUf1u/UVI7SGec8c6D6doS1+PTYYEJIwZs=	\N	f	cont_219-3.94				f	t	2017-10-25 20:04:37.477376+00
1459	pbkdf2_sha256$36000$wMniziuBNfWE$wq8pNUd88mMbSwRJkAv9d8W3Qprz/l1XCFo3WUhWE20=	\N	f	cont_219-3.95				f	t	2017-10-25 20:04:37.532246+00
1460	pbkdf2_sha256$36000$CVrqCS2QzYTi$1dWC3gSBOY8Bx0++Aqy94/iMZ1uyNJpE4VlG/YZfQ6g=	\N	f	cont_219-3.96				f	t	2017-10-25 20:04:37.58753+00
1461	pbkdf2_sha256$36000$HuB7kZZM3SCN$cX7FbKt4S6QufrHF+sPyJN7FNCgkrTsy3s7Hg+C+kfk=	\N	f	cont_219-3.97				f	t	2017-10-25 20:04:37.643252+00
1462	pbkdf2_sha256$36000$lcVfCsjuqFsj$7n3plRXO5cnzpkgXok9TDvbU7M2z/pGfLzmBSsd1uEI=	\N	f	cont_219-3.98				f	t	2017-10-25 20:04:37.698774+00
1463	pbkdf2_sha256$36000$V0tDFxyPKpNQ$qbBQyXAd52GxJYBAiULMZAKG+Oqf010jynQ/t5irJ3o=	\N	f	cont_219-3.99				f	t	2017-10-25 20:04:37.754303+00
1464	pbkdf2_sha256$36000$RoYIbxDGk9DS$ODjefYzJzIkRpnDvC0OohBPNapSMC9HcgJNDAaRAMpM=	\N	f	cont_219-3.100				f	t	2017-10-25 20:04:37.8309+00
1465	pbkdf2_sha256$36000$6BMzKpG3shTB$WHKyUI/vmXptam5RnN6tWcWzpp12CRcWIfjQQyPTXnU=	\N	f	cont_219-3.101				f	t	2017-10-25 20:04:37.890711+00
1466	pbkdf2_sha256$36000$cwGnJGOtu96q$sSCmpl5oaDm68xCghExtX6NkV7ZMJ8SeclLNmoPtfQY=	\N	f	cont_219-3.102				f	t	2017-10-25 20:04:37.945951+00
1467	pbkdf2_sha256$36000$5AcuwrN3hgFv$OECSBPqp69oAcCFKeKkpw8wTrQsA3LVf1mHL4Zzimvk=	\N	f	cont_219-3.103				f	t	2017-10-25 20:04:38.001838+00
1468	pbkdf2_sha256$36000$7FKNQIAL1cCD$Lowja0hrUnGeih0WGFURCUx4AFHFP62wLJYugBYdS9E=	\N	f	cont_219-3.104				f	t	2017-10-25 20:04:38.057272+00
1469	pbkdf2_sha256$36000$7u2Z5qavJGpy$oe2yGNqEnekkBFneO3qpqOlzBOiNgSvot69EslT6dO0=	\N	f	cont_219-3.105				f	t	2017-10-25 20:04:38.112256+00
1470	pbkdf2_sha256$36000$Eha44ofdWXOy$mdROJgufmifAqg9PiJkJ0kUVDEMxJBC2J0XI/rlVtTg=	\N	f	cont_219-3.106				f	t	2017-10-25 20:04:38.167714+00
1471	pbkdf2_sha256$36000$qvZcXRNh2cyu$w6tzKgBFm4/OUcnYyK6AjZZlqCpPaoF3RNSQjxj6Ovg=	\N	f	cont_219-3.107				f	t	2017-10-25 20:04:38.223499+00
1472	pbkdf2_sha256$36000$GIfBlTMWIC7l$5SNzHo77OBO3NXcdG+NiPzgUH5SeGwF2Fx5hXoplx5M=	\N	f	cont_219-3.108				f	t	2017-10-25 20:04:38.27868+00
1473	pbkdf2_sha256$36000$pkghvKvHVm4C$cNUJK4RZ1Q1Lt0v4vKp2LloO4R7GwEpOCB7gP1MlD9Q=	\N	f	cont_219-3.109				f	t	2017-10-25 20:04:38.334484+00
1474	pbkdf2_sha256$36000$CyVQZbYVNqUi$A4WG4AipzNNYVEmCVmu3Clgu+UpxHk5XB63iwnxw/JU=	\N	f	cont_219-3.110				f	t	2017-10-25 20:04:38.391443+00
1475	pbkdf2_sha256$36000$4XKeatSNY00f$a2JHxevnqKZX8UeOcDuXOb4pb98Q3Ba0JMIFOszmS+g=	\N	f	cont_219-3.111				f	t	2017-10-25 20:04:38.446852+00
1476	pbkdf2_sha256$36000$kjVXpS1m0Wo9$iiMKz9J+k5KfSeeO74K0yk/vgtIRTMTI1gguimEedZM=	\N	f	cont_219-3.112				f	t	2017-10-25 20:04:38.502064+00
1477	pbkdf2_sha256$36000$JQAUPM7Lqf8V$unbmFERpMMfgXGefDWM096DBvPpiLKj8i7ZwmEturd4=	\N	f	cont_219-3.113				f	t	2017-10-25 20:04:38.556956+00
1478	pbkdf2_sha256$36000$ZDcjIHRExCsM$fvLosTn8vqaoRQSuMvT3jd21rKEfEfzwmuXx5ba32ow=	\N	f	cont_219-3.114				f	t	2017-10-25 20:04:38.611276+00
1479	pbkdf2_sha256$36000$nrcCfgLQEhYh$xIyduXI1B3oGWu5Xy1oEsqwsaaXlPzq5nFog5DZxbYc=	\N	f	cont_219-3.115				f	t	2017-10-25 20:04:38.666444+00
1481	pbkdf2_sha256$36000$L2YMYbNrUcMO$R+JIzVJvu9lHIajklGceAubL4vnWz8savHo9bdp6/V4=	\N	f	cont_219-3.117				f	t	2017-10-25 20:04:38.776268+00
1482	pbkdf2_sha256$36000$xniJe4dgy2hu$2QX4vRYU75PYlfOiaqZ9VbMZyyiVRlFgxp4leYMDdHk=	\N	f	cont_219-3.118				f	t	2017-10-25 20:04:38.831225+00
1483	pbkdf2_sha256$36000$uxn2RTzf5mhg$zRioTEkYJhaCvyZ5Wt8hFrQfOuxr+oLkLab3V6Qqg7M=	\N	f	cont_219-3.119				f	t	2017-10-25 20:04:38.91285+00
1484	pbkdf2_sha256$36000$gJNxb4c2CNGP$5BwtRRbT+vm3v5XtxsnOrDGwC4j/Bkec5PNwUhYWf0I=	\N	f	cont_219-3.120				f	t	2017-10-25 20:04:38.968074+00
1485	pbkdf2_sha256$36000$HFONLfgVjSdk$J73KmtQ9BE17Byr1zcVe6rIXhUeM6xx4ovaJLhSzNsY=	\N	f	cont_219-3.121				f	t	2017-10-25 20:04:39.023822+00
1486	pbkdf2_sha256$36000$rzY92UHln1vg$EmBBSIjIU/zLaYDmzqeqMRbUCpATsq1FBkyC8r0rRT8=	\N	f	cont_219-3.122				f	t	2017-10-25 20:04:39.078465+00
1487	pbkdf2_sha256$36000$GERNuwFGPMqk$XjESIBS9ysTN7Vskd82JcQMoCrs1KybX2rDYl4XS1NI=	\N	f	cont_219-3.123				f	t	2017-10-25 20:04:39.133162+00
1488	pbkdf2_sha256$36000$W5y6UBXbbFhI$7i3LecR3IyZEvgy1Godx1yzVVlAx1iz59v7T+6PVrwI=	\N	f	cont_219-3.124				f	t	2017-10-25 20:04:39.187862+00
1489	pbkdf2_sha256$36000$NcsDkd8G95CA$sND85cvnj3Jw8sfxxcqd2mAxgqBaxOYWJNj/Fk51vgc=	\N	f	cont_219-3.125				f	t	2017-10-25 20:04:39.254755+00
1490	pbkdf2_sha256$36000$9N8Rt8LpGkFQ$XyMiuRCfR9Y/TriybSssC4pIfmtHMYlfMjD/yldAGPM=	\N	f	cont_219-3.126				f	t	2017-10-25 20:04:39.310798+00
1491	pbkdf2_sha256$36000$tw9wnblAnsBm$2lPDtgSWEOowEXWYP4aef8fIYLXByK0A2N/cT+a0wUY=	\N	f	cont_219-3.127				f	t	2017-10-25 20:04:39.366208+00
1492	pbkdf2_sha256$36000$Ajir5M90w3Dj$OYPdnaYOCCqLTMmLoBiup/vYtsGtb5rccuBD1iHVATc=	\N	f	cont_219-3.128				f	t	2017-10-25 20:04:39.420759+00
1493	pbkdf2_sha256$36000$wyFkGCYeIwS0$IX9/FEjI+axijh0BAmN54OdwmUpuq79mPuY2fHfXwUA=	\N	f	cont_219-3.129				f	t	2017-10-25 20:04:39.475313+00
1494	pbkdf2_sha256$36000$PUoddgcwTKuX$RjOcYany23JoZvX3zmUgkOfWPUSOepwRMS6CptfOk8w=	\N	f	cont_219-3.130				f	t	2017-10-25 20:04:39.530098+00
1495	pbkdf2_sha256$36000$y2GnMyuPS5vg$YS/vd8g6PhJ/uAbyssiPX2F6cAVqgfwUZ47lTtIGA1o=	\N	f	cont_219-3.131				f	t	2017-10-25 20:04:39.584935+00
1496	pbkdf2_sha256$36000$26tVdP8X79mv$uS6A6+kge62JGuxFYyclJBvV79LIJq1aJZpd8kiJzdY=	\N	f	cont_219-3.132				f	t	2017-10-25 20:04:39.63963+00
1497	pbkdf2_sha256$36000$SCMAWIw22xqq$Nddu9+uJosb9qw1tR9z1g5dlcHovMFFDy2/oYyTFHHA=	\N	f	cont_219-3.133				f	t	2017-10-25 20:04:39.695997+00
1498	pbkdf2_sha256$36000$wDcSEqK4ueHR$lfGN/iUon1BIU5L0howKjnZFRvRKejPcJw7qG79Ojs0=	\N	f	cont_219-3.134				f	t	2017-10-25 20:04:39.752939+00
1499	pbkdf2_sha256$36000$zKl07rqw2K0N$216CrOsuGTx+QuAN2+eqvax//F8oyxSnge+eo2i+714=	\N	f	cont_219-3.135				f	t	2017-10-25 20:04:39.808801+00
1500	pbkdf2_sha256$36000$ytZ6XXpFV4TY$cHuAj+AYGyCANDhhfo5XXA1R8iEzHV8PkKQkpW8iJ0Q=	\N	f	cont_219-3.136				f	t	2017-10-25 20:04:39.864428+00
1501	pbkdf2_sha256$36000$ryikETJ2Zh8t$PoYcxiRaOPl4ZfMJtGXSDJCQF29SDVeIBBF1J9d8Cj0=	\N	f	cont_219-3.137				f	t	2017-10-25 20:04:39.947729+00
1502	pbkdf2_sha256$36000$kwb7rM3sOWXW$hh/lcrmhAcr8ikWka4nqJXOcThzObO9WqRiLrTNoDCk=	\N	f	cont_219-3.138				f	t	2017-10-25 20:04:40.002895+00
1503	pbkdf2_sha256$36000$VchQz8ukWMVd$wTuD8qrOcgjQte7T7d8pwl8CIm+eiYmVL5O7483LfTY=	\N	f	cont_219-3.139				f	t	2017-10-25 20:04:40.05834+00
1504	pbkdf2_sha256$36000$2etXabTgJ9XN$F01SZYp9JK11xB/+1kF2muNZi5Ej4h9z9q9a5zhxBWs=	\N	f	cont_219-3.140				f	t	2017-10-25 20:04:40.112557+00
1505	pbkdf2_sha256$36000$CsdKdnNTFvTi$R6Xljzp8w2d5AL4K27sB02hYkZ9ObDliRY+TpC+PKk4=	\N	f	cont_219-3.141				f	t	2017-10-25 20:04:40.167085+00
1506	pbkdf2_sha256$36000$XYvmpBol9Ez3$9y4aMyMzcoqjQEMjscMbC7tVSIXdMIz7B6dDQztYnlU=	\N	f	cont_219-3.142				f	t	2017-10-25 20:04:40.22269+00
1507	pbkdf2_sha256$36000$YXzwUoSqv4q4$e8Ws/P9MNWnC2jleJfoAtkux5RcB/6GcfYL+0t1vubk=	\N	f	cont_219-3.143				f	t	2017-10-25 20:04:40.277058+00
1508	pbkdf2_sha256$36000$0sG2PiNdtsnv$20asAdSz6TyhIsxH/OBtqsgZCP//119kmxonxmEATbE=	\N	f	cont_219-3.144				f	t	2017-10-25 20:04:40.332572+00
1509	pbkdf2_sha256$36000$St8YUq66WKPu$hTXiTY0SAgK2LcFFoGKX4DuMMkayCjnuovctHUsMSKI=	\N	f	cont_219-3.145				f	t	2017-10-25 20:04:40.388516+00
1510	pbkdf2_sha256$36000$UGDSUzD0FbmZ$GQH2hseYVHPm9UIKQcYoqoKkf5gvtv85Rew0Y0NGH6g=	\N	f	cont_219-3.146				f	t	2017-10-25 20:04:40.44376+00
1511	pbkdf2_sha256$36000$4l4yqsnl840X$JESfCs6EVX8LKoX5wunkeBxHSzGzn1XL3qtRW9bpbM4=	\N	f	cont_219-3.147				f	t	2017-10-25 20:04:40.499027+00
1512	pbkdf2_sha256$36000$F5bAbQrKwVAX$u5M3xnN3TVHig1a9lkaAWGsF+WS9OrT5Zrcd3c3L38E=	\N	f	cont_219-3.148				f	t	2017-10-25 20:04:40.554255+00
1513	pbkdf2_sha256$36000$3kTucLHiCHqc$Zbjqd5/UFcp4s3pMfU1GDHGDH3NhAYGh8xyneFYMaQs=	\N	f	cont_219-3.149				f	t	2017-10-25 20:04:40.60865+00
1514	pbkdf2_sha256$36000$4oOkEbYQY696$pCevRv3OLH992ubG1kXVjE5a2D7n3u3Ve7TyXj2sgvY=	\N	f	cont_219-3.150				f	t	2017-10-25 20:04:40.66503+00
1515	pbkdf2_sha256$36000$TkJRYGUyuN6E$FxjKhmLL49w2qAr5Soa0oOKP6wuVTLE9ZyXcZ4JncQc=	\N	f	cont_219-3.151				f	t	2017-10-25 20:04:40.720057+00
1516	pbkdf2_sha256$36000$NR4rMhTx00Eo$12T3gVb4lBpzLcNmawxRK2kZa5ye+tsTM5FgxbeD8nI=	\N	f	cont_219-3.152				f	t	2017-10-25 20:04:40.775253+00
1517	pbkdf2_sha256$36000$3MWF3Zfg5gF5$NMk6EnQ4tL47VZOo93rH6rH7zxj5aTLPwRL8Z2KU/4M=	\N	f	cont_219-3.153				f	t	2017-10-25 20:04:40.830581+00
1518	pbkdf2_sha256$36000$Ao2GJhC4ehSV$hS2RSXCllbhE92W4szr0ywHr82DZ8sbcqwQ1c0aPhD8=	\N	f	cont_219-3.154				f	t	2017-10-25 20:04:40.886687+00
1519	pbkdf2_sha256$36000$AUo7Su5K3W2d$KgFRelWIyN6++EUBS0PyHyTsNjnqo0u4BXUq2lmdyEo=	\N	f	cont_219-3.155				f	t	2017-10-25 20:04:40.951837+00
1520	pbkdf2_sha256$36000$sKdDxOaOx6jY$t+DzYSa/O+WcSbkbptxaQrw2ol+tCwW8CLYjC+Zmrdk=	\N	f	cont_219-3.156				f	t	2017-10-25 20:04:41.030337+00
1521	pbkdf2_sha256$36000$3wpmLdCPGHum$KHlWjpuW8Mp+LRIyOcrMXCcgYRunifU9LoqXDcUTIFI=	\N	f	cont_219-3.157				f	t	2017-10-25 20:04:41.171616+00
1522	pbkdf2_sha256$36000$u8786RREFBx3$aDre8w3GxfV0sbL9CxWwXkvzBEAqqhCXjM2x8RHL6jw=	\N	f	cont_219-3.158				f	t	2017-10-25 20:04:41.314456+00
1523	pbkdf2_sha256$36000$9f8EddgUncHo$PeizeidUg4/9D0VBXHyTKBYYs9eDdP+tygEzTXgHk6Y=	\N	f	cont_219-3.159				f	t	2017-10-25 20:04:41.455497+00
1524	pbkdf2_sha256$36000$MnwEbi9K2equ$156j9ikKVhDy+uze1WliWorM0r+jBZ1M1CyH3WMt/OI=	\N	f	cont_219-3.160				f	t	2017-10-25 20:04:41.581922+00
1525	pbkdf2_sha256$36000$mVJvxBaItmgs$KMkx5xK/mHWe1eeW9DY+y98GLPJ7ldhUp8NR31yqnjM=	\N	f	cont_219-3.161				f	t	2017-10-25 20:04:41.695074+00
1526	pbkdf2_sha256$36000$KKeD27EEBdTx$j3kiSetVqNA7q35qBpPrr4BkYCzRMoS/2DQLzhyEcpE=	\N	f	cont_219-3.162				f	t	2017-10-25 20:04:41.809567+00
1527	pbkdf2_sha256$36000$HdaWL7ZAO1md$BLIX9ozWVnrDRx0SwxgQV/nPMrsEtsN5F5ii+3dDbk8=	\N	f	cont_219-3.163				f	t	2017-10-25 20:04:41.923534+00
1528	pbkdf2_sha256$36000$4vaT0L3GZifs$MWgxQGBtfoQcN5NeJS7sD1Tp+riI9EDAeD4VrZFiSDg=	\N	f	cont_219-3.164				f	t	2017-10-25 20:04:42.102192+00
1529	pbkdf2_sha256$36000$HsD2uEfwAIzw$caHmiY+luXS1mG8ZRTcuH82SbUu92BTtirIT2uOVNCg=	\N	f	cont_219-3.165				f	t	2017-10-25 20:04:42.24837+00
1530	pbkdf2_sha256$36000$3AjtbNNcgf0C$kYp1bbOV6kgd0CpEXb/YLo+EJRcugR+Ffb6f8xtteKo=	\N	f	cont_219-3.166				f	t	2017-10-25 20:04:42.39103+00
1531	pbkdf2_sha256$36000$uRe6M5uOzujT$SdEluSlkFGWx73QGtAhMzRSvKE21RajdWWlzVOgUuis=	\N	f	cont_219-3.167				f	t	2017-10-25 20:04:42.533617+00
1532	pbkdf2_sha256$36000$yNN6HRNIeJRR$kT62onDJsatatNAAkzzDu1og4+jomhnhAaS+iDl9kb0=	\N	f	cont_219-3.168				f	t	2017-10-25 20:04:42.675003+00
1533	pbkdf2_sha256$36000$HdfXWdeNCQn7$CL4D3ZDLjkhu6rS4eDpWTO02WrIHMyn1cvLvt5GPxBY=	\N	f	cont_219-3.169				f	t	2017-10-25 20:04:42.818161+00
1534	pbkdf2_sha256$36000$AhBjb3xShQCQ$+hRPUC8R5+i2s5MOSOd/W+v8XMTcIqCHheGRLG9lyDc=	\N	f	cont_219-3.170				f	t	2017-10-25 20:04:42.959857+00
1535	pbkdf2_sha256$36000$xZatT029tEnq$KL+m6PA5Yex/6zzHnfieA5owQlBoymidYAzx0mvYvDg=	\N	f	cont_219-3.171				f	t	2017-10-25 20:04:43.086658+00
1536	pbkdf2_sha256$36000$LpNMXhe9ZarU$rUnbouTH08vXO4Vsn2ZPGiPcTWoa1vl1FX3QPl7kzzs=	\N	f	cont_219-3.172				f	t	2017-10-25 20:04:43.252243+00
1537	pbkdf2_sha256$36000$UFeBYdFMsDHx$MD65WNQBOeElPTW1PaHibaHuyLtbuMzaWIN4GUStQF0=	\N	f	cont_219-3.173				f	t	2017-10-25 20:04:43.364374+00
1538	pbkdf2_sha256$36000$IZ68KpW2lVCF$gW9KDPLiM7AJZglymBrlBE3uIH3XJx4OZGySaSLnhJQ=	\N	f	cont_219-3.174				f	t	2017-10-25 20:04:43.476369+00
1539	pbkdf2_sha256$36000$JJG1qZimbMQs$bBft+ZFBWeeMzSXRdZIf5XOopXk+cX/SKJbdUkuVxQA=	\N	f	cont_219-3.175				f	t	2017-10-25 20:04:43.554663+00
1540	pbkdf2_sha256$36000$TdgnQeKRLs3y$0gcF0sWu2n6edEP55gwQF9jZQekNvlUZr4iDhTQDC2s=	\N	f	cont_219-3.176				f	t	2017-10-25 20:04:43.60903+00
1541	pbkdf2_sha256$36000$1zoBZFSFPnf6$38lmS53OR3UFm+0pmSp3QyzB5FiYTzqFty0ZX6Ltr/c=	\N	f	cont_219-3.177				f	t	2017-10-25 20:04:43.663507+00
1542	pbkdf2_sha256$36000$ZhNEPIC8he4h$kgR+kBi8ZCfaHh3KUVSeNvvfU5QMBQWobBuGwBKTO4U=	\N	f	cont_219-3.178				f	t	2017-10-25 20:04:43.718328+00
1543	pbkdf2_sha256$36000$NyvbQUNMcLdI$7/YBBlHo6a7Xo88KPE7lu+MwFb0Kt7wH+lqohjTVbSw=	\N	f	cont_219-3.179				f	t	2017-10-25 20:04:43.772799+00
1544	pbkdf2_sha256$36000$27y0eSWp0OKu$+YLIvmQsokM7rUoaPO9y6xiAiLHIC+35glcyrEWxjik=	\N	f	cont_219-3.180				f	t	2017-10-25 20:04:43.827165+00
1545	pbkdf2_sha256$36000$EFwUEvLNFHI6$/8N9V5uKiIYxCk0hHbLrQAXHNHhPuSuDSfyCNpg7SfI=	\N	f	cont_219-3.181				f	t	2017-10-25 20:04:43.883009+00
1546	pbkdf2_sha256$36000$uHBbFP4y3YIa$Kgc3gvnpeYUO553Lrv77AI6NzqDSGRitRZoGdPlTFL8=	\N	f	cont_219-3.182				f	t	2017-10-25 20:04:43.93861+00
1547	pbkdf2_sha256$36000$90MnysyBNotq$J9ZzrdBhD/xFU1LWUqaGCGM+B1+sJgEyGv5IYl15wBQ=	\N	f	cont_219-3.183				f	t	2017-10-25 20:04:43.994495+00
1548	pbkdf2_sha256$36000$czVfAFxVVL1x$q8EkPrjnyXYxOwNTMqkkovxvWio/WAe98YgTWJOXUK0=	\N	f	cont_219-3.184				f	t	2017-10-25 20:04:44.048916+00
1549	pbkdf2_sha256$36000$9Dv9u4CBMkwX$lkxh1sBczZi3KP8CWS3v9DOlY8eZjEGqdEWdfUCK8Io=	\N	f	cont_219-3.185				f	t	2017-10-25 20:04:44.109794+00
1550	pbkdf2_sha256$36000$T3NF5YjG77i3$9tY/yL+xEC/kMllAZPCnGtVih59L/KLG3Xnabi03czA=	\N	f	cont_219-3.186				f	t	2017-10-25 20:04:44.165259+00
1551	pbkdf2_sha256$36000$XwKohBYSQtuT$vki2lQLDRb4jR5NQQ5kzqQlFcCNIwDTVO2Wdn15rKoc=	\N	f	cont_219-3.187				f	t	2017-10-25 20:04:44.236465+00
1552	pbkdf2_sha256$36000$ZHXYGWq4pfvE$cmOFKbxdWdGJyV6mEH2w4oYwpKekNiHsp9fXvyZ9pss=	\N	f	cont_219-3.188				f	t	2017-10-25 20:04:44.300597+00
1553	pbkdf2_sha256$36000$UK5dG1YQzLnw$Slp3+o99YLYheW6kduVes7b5X+96d3hSK/hFcBVIDkw=	\N	f	cont_219-3.189				f	t	2017-10-25 20:04:44.356276+00
1554	pbkdf2_sha256$36000$tA9cMYrth26Z$n/ocPyFRILpapYhbg5M4HAg92//SYwMTml9gCN7vIDs=	\N	f	cont_219-3.190				f	t	2017-10-25 20:04:44.411027+00
1555	pbkdf2_sha256$36000$GzlgAKqz1YE6$ihKqQ2DVp+FBIL+LJh0aH6vyMh1K1/BdNh9odTMifHM=	\N	f	cont_219-3.191				f	t	2017-10-25 20:04:44.466642+00
1556	pbkdf2_sha256$36000$TJIMfawxBRIo$i5DvNkJUbQ0s8v48yRyfYrBKMEikxphtgjx2nhduijI=	\N	f	cont_219-3.192				f	t	2017-10-25 20:04:44.522201+00
1557	pbkdf2_sha256$36000$gj9zPAkGP87Q$k7IlIKZhjWD4nfWeB/bXVxJ67ULHFrNZCjj7wdkibII=	\N	f	cont_219-3.193				f	t	2017-10-25 20:04:44.577598+00
1558	pbkdf2_sha256$36000$FKWWjizKiCKJ$8+uOEr6eBqs5g+/pBHYF4hnDRGcgma+TOq0HzCSEkMo=	\N	f	cont_219-3.194				f	t	2017-10-25 20:04:44.633015+00
1559	pbkdf2_sha256$36000$kdX11zBcgjyj$NlnJK53d9j7Y3LOp0AlPOaXD5kP3M8jEQ59JHFOGAbA=	\N	f	cont_219-3.195				f	t	2017-10-25 20:04:44.689217+00
1560	pbkdf2_sha256$36000$XTbOqokCr6gK$B7ghyDZlhTXriIX/H3FKa5kfnFPreXkkPUgGSiu0LYI=	\N	f	cont_219-3.196				f	t	2017-10-25 20:04:44.744471+00
1561	pbkdf2_sha256$36000$ltlc7H7TH20D$0cnPnk//eprCiSSDJcv0wojpn2QStNRyUk5aYRSpvRU=	\N	f	cont_219-3.197				f	t	2017-10-25 20:04:44.799167+00
1562	pbkdf2_sha256$36000$U7vTQh9xsZ81$L7ct4tt2GfGCy5294/IUsCCJDKZ7tgCN2iQPEhKCAU8=	\N	f	cont_219-3.198				f	t	2017-10-25 20:04:44.853556+00
1563	pbkdf2_sha256$36000$gxNvXvJF9v5m$I68Vz/rbHgEXZGYFLQkjZi8h79JwEf5YYwMbRHuJI0Y=	\N	f	cont_219-3.199				f	t	2017-10-25 20:04:44.909119+00
1564	pbkdf2_sha256$36000$W0lsNNubIOIq$lxfRtoyguBSOfvQ62XeokoEosRQ+j8iNpkTdKganpMI=	\N	f	cont_219-3.200				f	t	2017-10-25 20:04:44.963618+00
1565	pbkdf2_sha256$36000$Od4Mf3iI9hNd$SZiob6hMOsEN4pvT56K8x5FYUqt7O3PqQGquhViuiTc=	\N	f	cont_219-3.201				f	t	2017-10-25 20:04:45.018684+00
1566	pbkdf2_sha256$36000$hfwspH7vTBbV$Hf4i+ojdGDMnF3pF+PP3IamGIWXmO8VIj5S55QkGekA=	\N	f	cont_219-3.202				f	t	2017-10-25 20:04:45.073637+00
1567	pbkdf2_sha256$36000$JqHm0Hvu41SA$9V+2c28Br7FbvuGI6mU5Vx49div3+ao1Sq/0qydTfVA=	\N	f	cont_219-3.203				f	t	2017-10-25 20:04:45.127897+00
1568	pbkdf2_sha256$36000$m0zFG9BkX6q0$mmVX+E811V9wOrRtGYGfb51nnyZxr5D+J2hXjUU2AiE=	\N	f	cont_219-3.204				f	t	2017-10-25 20:04:45.182179+00
1569	pbkdf2_sha256$36000$SNXfTQB7ryAi$5JcrdzPH26Xa8X3Tcb4oXJQjNnvjFXRhVc9Rud2Ewek=	\N	f	cont_219-3.205				f	t	2017-10-25 20:04:45.237513+00
1570	pbkdf2_sha256$36000$MIctDPjvb7oZ$jXs6NzAiKgZ+JjOntytG/CXbJ+v1c1AbNN0KaT1PsMQ=	\N	f	cont_219-3.206				f	t	2017-10-25 20:04:45.317979+00
1571	pbkdf2_sha256$36000$WEOhl6NS0Xpg$ZS6FnSpIfA45DGYLHOk6E4mRmIu8j17Newug1pZux6w=	\N	f	cont_219-3.207				f	t	2017-10-25 20:04:45.372986+00
1572	pbkdf2_sha256$36000$87sMKCJjUEM5$+IdGFWIFiJVuuWqqJ+WEUYfhAAgKtNXu0i4+g5sxkUw=	\N	f	cont_219-3.208				f	t	2017-10-25 20:04:45.427902+00
1573	pbkdf2_sha256$36000$729mwqAmoooV$DvRMcTYZxaBwYAQZzBsk+wKQZ8Gd8U9EwkjMJmo7W8k=	\N	f	cont_219-3.209				f	t	2017-10-25 20:04:45.482445+00
1574	pbkdf2_sha256$36000$PffPKmsNQFgw$NhfDyK0e+i+Of1BXRLoqiFjxv//qnodcNisPVvhr52c=	\N	f	cont_219-3.210				f	t	2017-10-25 20:04:45.537587+00
1575	pbkdf2_sha256$36000$jzK1fwlt0zQv$1cL04laSi2xth/pDoB/azYCBVcJLV7djHpHFIDAebdo=	\N	f	cont_219-3.211				f	t	2017-10-25 20:04:45.591847+00
1576	pbkdf2_sha256$36000$OFf5kFm1W9bj$UXZ6lD60QcbrW15mRF5TC+Du/VCUAccDdf6Vb2it5I4=	\N	f	cont_219-3.212				f	t	2017-10-25 20:04:45.646276+00
1577	pbkdf2_sha256$36000$hdy86CV4A3h0$tDauRx6k/xQCPtVBwmpFOoUbYMdkJRYR/1SN6Q7mBig=	\N	f	cont_219-3.213				f	t	2017-10-25 20:04:45.700322+00
1578	pbkdf2_sha256$36000$Lc6oHv9ybAnI$Ewo7EWk8PH6FFF4xRNwD0FMgClE86Ic8/MqG2fE63x0=	\N	f	cont_219-3.214				f	t	2017-10-25 20:04:45.755185+00
1579	pbkdf2_sha256$36000$vum3YMRwnHPE$HmlR1OTBSsdyu0/Y+Rwp9IIHu6KmaWtx6Tph/UU4RuE=	\N	f	cont_219-3.215				f	t	2017-10-25 20:04:45.809819+00
1580	pbkdf2_sha256$36000$1aZgs1osE52Z$35XpyN9zvfVuWLzQFT9Jqr0G9es4McA+1Wd5fgcacOc=	\N	f	cont_219-3.216				f	t	2017-10-25 20:04:45.864267+00
1581	pbkdf2_sha256$36000$0UFiF1L9OC53$BKQbc6I6wLixjInKa0l2v/jQu3gdZgq10OSn9Dig33Q=	\N	f	cont_219-3.217				f	t	2017-10-25 20:04:45.918403+00
1582	pbkdf2_sha256$36000$fXeMiWsb7Rn3$FHAgVhsy0rNbywSXbOOEq8VIiMHJ0klzSAt56X6Acuk=	\N	f	cont_219-3.218				f	t	2017-10-25 20:04:45.972308+00
1583	pbkdf2_sha256$36000$GORLm1ANbf8L$4tdRa5ZUxU0EZ/Q/b89/kvV113bGmMVzRLLwndCvCfc=	\N	f	cont_219-3.219				f	t	2017-10-25 20:04:46.026962+00
1584	pbkdf2_sha256$36000$btAJyhIF87we$tGYAi2pwFgaQOz5/LEEoycXmNvppuIR2iWxmL7nkADE=	\N	f	cont_219-3.220				f	t	2017-10-25 20:04:46.110188+00
1585	pbkdf2_sha256$36000$P30FZqi5zqXn$OHxNC2JKzvMdro1G6wgNmZ+NRnh8/lqeuoi5Fp1oxzI=	\N	f	cont_219-3.221				f	t	2017-10-25 20:04:46.165748+00
1586	pbkdf2_sha256$36000$kebO6WPgEeRM$wA0OjqXl0Wq3xe3BzfQXEjs0mI/CTbQVizvCj3vJdHE=	\N	f	cont_219-3.222				f	t	2017-10-25 20:04:46.220728+00
1587	pbkdf2_sha256$36000$8wgqEbBsAd5E$V0cU+yguZ6w6RnjgwnujEAwzJm7Onaqce55meSjrsOY=	\N	f	cont_219-3.223				f	t	2017-10-25 20:04:46.274176+00
1588	pbkdf2_sha256$36000$aWOZcWheclo9$qiQfU624Z3a3eDC9GSYuBNwVBLHQNYSV40AybiXF4jk=	\N	f	cont_219-3.224				f	t	2017-10-25 20:04:46.354699+00
1589	pbkdf2_sha256$36000$0PIg0CkHpDNn$G+WKKXXjhEtbOujbAW+qOfu/yKtgxzxUP+MRYZIFgi0=	\N	f	cont_219-3.225				f	t	2017-10-25 20:04:46.408895+00
1590	pbkdf2_sha256$36000$tMu39e4nImGt$E1if+QiJdDw5KRf5jQEC4OcPN89YOm+Dzu2JNtjEs+k=	\N	f	cont_219-3.226				f	t	2017-10-25 20:04:46.464471+00
1591	pbkdf2_sha256$36000$BNcVUVYImPch$+Iks2Pnp8x6bkEPwIm0qiY41ybpIl1yQtNlPcgdJuZM=	\N	f	cont_219-3.227				f	t	2017-10-25 20:04:46.518705+00
1592	pbkdf2_sha256$36000$CLXQYmRdgHtd$j1zH22YqQEDKcheDFtfGkjnoIMlWvtuIEDxt/RmY7R4=	\N	f	cont_219-3.228				f	t	2017-10-25 20:04:46.575012+00
1593	pbkdf2_sha256$36000$mQ5UQVP5LHfS$atLxWsoOFSoxLBKStIAf89ny8G3BWXyL0K5ea5O5JBU=	\N	f	cont_219-3.229				f	t	2017-10-25 20:04:46.630028+00
1594	pbkdf2_sha256$36000$26aCOykVJ5W0$8yEV9UX/7NeKu3du36CBZ8HCENQDNwkQCZ/vYyP/7lE=	\N	f	cont_219-3.230				f	t	2017-10-25 20:04:46.684476+00
1595	pbkdf2_sha256$36000$2JkAIjf5bJfw$fdO7i0FQjAKotsNr4ogkvYNAnVZIledQlW0d3GN9Zsg=	\N	f	cont_219-3.231				f	t	2017-10-25 20:04:46.738491+00
1596	pbkdf2_sha256$36000$Yuof7o7OezgN$Dg0a5w++U2rQn7gpNgV0g0f+9OwurQlRdrbeDfI5Hjo=	\N	f	cont_219-3.232				f	t	2017-10-25 20:04:46.792773+00
1597	pbkdf2_sha256$36000$wMjL6K2EviIo$Om80ws+1IEpUbwMsVknLF6BpmEiQh8/2om9nRZWpN9Q=	\N	f	cont_219-3.233				f	t	2017-10-25 20:04:46.847344+00
1598	pbkdf2_sha256$36000$jhQqDP8f3E4C$KHzrOWqpprRHiG1citK3hXmutsuA/+PrjvbUKYU9mtg=	\N	f	cont_219-3.234				f	t	2017-10-25 20:04:46.901932+00
1599	pbkdf2_sha256$36000$0awPyXsisw5B$FxdVK8OjelDVNl+HExJcDx7gHJF/5uhZL3Y//WM4gj8=	\N	f	cont_219-3.235				f	t	2017-10-25 20:04:46.95583+00
1600	pbkdf2_sha256$36000$watqVzc6FvwD$YHpyr5CpIj3PtExJaUJAUlvlE5ESxkMSfuPWaM6fJSA=	\N	f	cont_219-3.236				f	t	2017-10-25 20:04:47.010698+00
1601	pbkdf2_sha256$36000$FppKtPKVBX2P$A1r07yaUm6Ob/wdbe2UQU2JK2ifHjeoREqXtniS8z7k=	\N	f	cont_219-3.237				f	t	2017-10-25 20:04:47.06604+00
1602	pbkdf2_sha256$36000$Ssv19LH47Yut$PAc68+OiQinyv/3ydwP7wNz7IiyzGYyRRYI6QME+bwY=	\N	f	cont_219-3.238				f	t	2017-10-25 20:04:47.120514+00
1603	pbkdf2_sha256$36000$HNZWrnanGKqh$evccAlqHjfk+mQcDhixzm8Fsq1RXC01TczFdQB05BvY=	\N	f	cont_219-3.239				f	t	2017-10-25 20:04:47.1748+00
1604	pbkdf2_sha256$36000$wAl9W1fpC3IR$HbvKWp4A31PG6LOVfYAfo5Rz8zAa2Tan5VYsY+/8BL8=	\N	f	cont_219-3.240				f	t	2017-10-25 20:04:47.229981+00
1605	pbkdf2_sha256$36000$LgBMxFWBrYUN$IGNOJNA0ArHWgcAwerCs08bx2BtEDC0B5NCF5CeMmQ0=	\N	f	cont_219-3.241				f	t	2017-10-25 20:04:47.284799+00
1606	pbkdf2_sha256$36000$aahjRWylOkkO$LBKwivWu39BCbfghHb5OrACm1YnbsNtmpseIcgW0bKg=	\N	f	cont_219-3.242				f	t	2017-10-25 20:04:47.339213+00
1607	pbkdf2_sha256$36000$bdVE3S7rAcdU$oZnJ/HmLyR5vN1wwF3dq1S1f8lpUhn363nncyVaN5Sc=	\N	f	cont_219-3.243				f	t	2017-10-25 20:04:47.419344+00
1608	pbkdf2_sha256$36000$JxeNtGJZjHGD$KrTWzTQM0wM3Brz3zSMBuG/6RB8FAHjFtZ9m3CvIINA=	\N	f	cont_219-3.244				f	t	2017-10-25 20:04:47.474166+00
1609	pbkdf2_sha256$36000$zOvg7r12PiNL$kA2git6W1JzZKPJ0LEer44MJcuFDgiunwbrkL9oT5JQ=	\N	f	cont_219-3.245				f	t	2017-10-25 20:04:47.528821+00
1610	pbkdf2_sha256$36000$Lc0jo9JdPKAO$sXAPu59vUYsbczmrNOlDrqsQAc/ZSLATcFmGVSomPD0=	\N	f	cont_219-3.246				f	t	2017-10-25 20:04:47.584381+00
1611	pbkdf2_sha256$36000$rJ0p89tYWVlF$W1juBVx9VRoTWmuZTpYtx2iFlQCEGQOhNlZDEk7ee5g=	\N	f	cont_219-3.247				f	t	2017-10-25 20:04:47.638867+00
1612	pbkdf2_sha256$36000$g3UjXV6bEJP6$xA3Fkpd6kSjugyJsO9H1Xp0Lg+NYQT8iSIuen0zm7hE=	\N	f	cont_219-3.248				f	t	2017-10-25 20:04:47.694609+00
1613	pbkdf2_sha256$36000$71We2BYxDdsC$qkjXL7lipxTYH6pJ/i+9vRUSJg4cWLSGelbBsP7ROwM=	\N	f	cont_219-3.249				f	t	2017-10-25 20:04:47.75073+00
1614	pbkdf2_sha256$36000$WJT0ZSLxuoYo$nhB7dZwunp5NDRIJquH3L+y60bWth4Mmda029bMPF2c=	\N	f	cont_219-3.250				f	t	2017-10-25 20:04:47.806391+00
1615	pbkdf2_sha256$36000$fQlb6E4R3mEf$iFAuUhq1j1pBj+yqweP/RfWvvmipafiqEjTBA+gW46k=	\N	f	cont_219-3.251				f	t	2017-10-25 20:04:47.861541+00
1616	pbkdf2_sha256$36000$VUKixr7KMp8R$T3dJZR0o8/nbdDSUodb+ETR02Gju2UG7x8+ErwKOh+s=	\N	f	cont_219-3.252				f	t	2017-10-25 20:04:47.915901+00
1617	pbkdf2_sha256$36000$TqFFxBWR63Yc$QlI5zh4y7TReJ27xLIVYypafZ+c0V9jxq/8IMczRbcg=	\N	f	cont_219-3.253				f	t	2017-10-25 20:04:47.970285+00
1618	pbkdf2_sha256$36000$iy4I2rRizomX$mPX2h3bowFmoFOTlbHY0GqzLxhgDw4ioJr9YBs1WOEw=	\N	f	cont_219-3.254				f	t	2017-10-25 20:04:48.029667+00
1619	pbkdf2_sha256$36000$2obrvMmMfO1w$2fAWxii4Pb6kwV7oYkSc3+/BwcZKX4V6CkUFUtKZBbs=	\N	f	cont_219-3.255				f	t	2017-10-25 20:04:48.08554+00
1620	pbkdf2_sha256$36000$iolHLO6nXf8f$+mVjOpSmacR514LMzdntaguv2AEKgE8Oeto9K9YBH+U=	\N	f	cont_219-3.256				f	t	2017-10-25 20:04:48.140948+00
1621	pbkdf2_sha256$36000$g0Pw5fKFjWAW$2Kixi/InkqiWM+5/4o9zx2CRVJfrc4E7T+rxA70W+FA=	\N	f	cont_219-3.257				f	t	2017-10-25 20:04:48.200677+00
1622	pbkdf2_sha256$36000$NzKLta3cm9MS$koUr58CpmtCmSsIcJd7PPGMdavgHz9F+PTkpRlXM5h0=	\N	f	cont_219-3.258				f	t	2017-10-25 20:04:48.258021+00
1623	pbkdf2_sha256$36000$9r6G0GoqUkIY$9cnJEmJUEE3jxCQhrlg5iExllJbboV8mXgqoUF6DH5k=	\N	f	cont_219-3.259				f	t	2017-10-25 20:04:48.313315+00
1624	pbkdf2_sha256$36000$SleOQy3qwhFt$KZXzs5emJGDoLWGY6/1Zx3WGAtlC+sPRyvP96hXQdkM=	\N	f	cont_219-3.260				f	t	2017-10-25 20:04:48.368291+00
1625	pbkdf2_sha256$36000$OkZlTIVolOBa$PFgN3Bh/sHQCrTdxkgw3SO926HRB2KC6JDb+WiPUzbw=	\N	f	cont_219-3.261				f	t	2017-10-25 20:04:48.454448+00
1626	pbkdf2_sha256$36000$ZcukgeYTYP2i$doGScC3NQbpIk9GMnze2Agi9aMhRK3HX+pKjXeLzmLg=	\N	f	cont_219-3.262				f	t	2017-10-25 20:04:48.51659+00
1627	pbkdf2_sha256$36000$4Z3k1F6cJXNT$YKMahNlGIlzRzcUkxTqTyXjLtuPUitK+7mdf+b1v5HA=	\N	f	cont_219-3.263				f	t	2017-10-25 20:04:48.572544+00
1628	pbkdf2_sha256$36000$DUYk5JHaD0Gx$Xfv9R1yDh2av4/lXQJhqjua1ZfZeHzf23pamnvoVkHg=	\N	f	cont_219-3.264				f	t	2017-10-25 20:04:48.630618+00
1629	pbkdf2_sha256$36000$qVRP9No6RlCs$RI7fuWlbXlNppqOEvIjeOpSPJqzCyPZW2bG+1lXJ9mc=	\N	f	cont_219-3.265				f	t	2017-10-25 20:04:48.687387+00
1630	pbkdf2_sha256$36000$2gOoG7aJdva6$Osz0qivVIJTOlg1cNEObqLfeC2kXqfsnQUBKYXwiutU=	\N	f	cont_219-3.266				f	t	2017-10-25 20:04:48.744693+00
1631	pbkdf2_sha256$36000$k3hJAEm3xxzC$F+vnMM5HRgGe3wioZhsHaILIyZBeQzxPZSSTVOWdCLU=	\N	f	cont_219-3.267				f	t	2017-10-25 20:04:48.798994+00
1633	pbkdf2_sha256$36000$0SlnfR1Ra7lC$+iEm3IYgRdBHV7iF384sFEEUjmJcuf/kAK0/uUEat74=	\N	f	cont_219-3.269				f	t	2017-10-25 20:04:48.908515+00
1634	pbkdf2_sha256$36000$ikcjrHy6FrzY$gcK9dTp9krOsBmWip1CsSkDxCsjiD409cifs6kBDOpQ=	\N	f	cont_219-3.270				f	t	2017-10-25 20:04:48.963032+00
1635	pbkdf2_sha256$36000$Vx4idDkWT5K6$e7kXnHj8rxjSdYbTE9ygBZ64LUhIIghNjNB7hFrY0eg=	\N	f	cont_219-3.271				f	t	2017-10-25 20:04:49.020349+00
1636	pbkdf2_sha256$36000$1Kep2hqnJr75$NSM6COttt8Q18f3sXQrzmRsEs2cCO+dXVLTe2ljH4xE=	\N	f	cont_219-3.272				f	t	2017-10-25 20:04:49.076057+00
1637	pbkdf2_sha256$36000$E9AEOLyy9JzA$KezmctT+QnGKpRu+0e2kOIWfu/zEPIF2eqLvVD7IIA8=	\N	f	cont_219-3.273				f	t	2017-10-25 20:04:49.131614+00
1638	pbkdf2_sha256$36000$m1TqcsbvyRMQ$gkQmV0nh6IE+vIWkSVw7lUrbdhIUUSt9Sbg9dmqpLXw=	\N	f	cont_219-3.274				f	t	2017-10-25 20:04:49.189049+00
1639	pbkdf2_sha256$36000$dCjh9RaI4B7Y$kj0FAKTY2XTnOf6PXbY24q/acvTydLpzfaiC+e2A2mk=	\N	f	cont_219-3.275				f	t	2017-10-25 20:04:49.246566+00
1640	pbkdf2_sha256$36000$cjH662tElZ3r$POlZMVlS72ZNVYDSKAtDIiItDpAMyaBF9Xk8AxbC9eI=	\N	f	cont_219-3.276				f	t	2017-10-25 20:04:49.319357+00
1641	pbkdf2_sha256$36000$B5MpLfxK1j1T$Kc+5itVMTdMKWc3yqpi9xb42izHgm9VQbKsO1FZEIb4=	\N	f	cont_219-3.277				f	t	2017-10-25 20:04:49.374795+00
1642	pbkdf2_sha256$36000$0MNCN7fd7PNa$NhkePl7Vwuu81FJOlGVdVb7RN+n/pHeooFBmkNAdz6c=	\N	f	cont_219-3.278				f	t	2017-10-25 20:04:49.435003+00
1643	pbkdf2_sha256$36000$awq65MgFImom$m6xsPse4vaNeNVXdxbUR42rskgBqLcv4FYxzEyFgry4=	\N	f	cont_219-3.279				f	t	2017-10-25 20:04:49.514529+00
1644	pbkdf2_sha256$36000$kV47CudNScRF$Fdu+Up8ej6Bd48PpvWcgjWpx7ERynDRJkC4Sl8JiIt4=	\N	f	cont_219-3.280				f	t	2017-10-25 20:04:49.576578+00
1645	pbkdf2_sha256$36000$m0j8ulIEhDC1$MRTOY2tzQBo9blUbonaazxpTu0/NQ0Y7c4rqGBdKPrQ=	\N	f	cont_219-3.281				f	t	2017-10-25 20:04:49.636608+00
1646	pbkdf2_sha256$36000$pvwTdKW5glrS$dIXge8LAagggAZNqMxyInzvH2Cije7P9T1lglJpDxp8=	\N	f	cont_219-3.282				f	t	2017-10-25 20:04:49.692286+00
1647	pbkdf2_sha256$36000$Mn3aMtJthJLP$8jIr2lbY+Kkn+hCWLObTr+nbwO9/TdGA1ItLY/WeVh0=	\N	f	cont_219-3.283				f	t	2017-10-25 20:04:49.75036+00
1648	pbkdf2_sha256$36000$ozAkK64HUWlh$NHjoC0EZVrju7WxDOuJpMPf2AGMVYZD2k7h9zOIIVGg=	\N	f	cont_219-3.284				f	t	2017-10-25 20:04:49.806334+00
1650	pbkdf2_sha256$36000$voyV4crqWQM3$0rgslWPHb5AEDFLN6ls2Zdue/b0oERVwusrnmOYz0Cs=	\N	f	cont_219-3.286				f	t	2017-10-25 20:04:49.922617+00
1651	pbkdf2_sha256$36000$MwTJV1RmmCmQ$ysRuugNOtZSr+70MCN57wK1dVrspFCI06PM7RiHBqls=	\N	f	cont_219-3.287				f	t	2017-10-25 20:04:49.978488+00
1670	pbkdf2_sha256$36000$rokfCbf7e2g3$yJ3KtGk+vd8mJrPT2FQ1JoukzZhJwSpFTPoMJ2F7uXo=	2017-11-10 13:35:12.853689+00	f	cont_219-3.306				f	t	2017-10-25 20:04:52.042191+00
1653	pbkdf2_sha256$36000$HNU2qus1RL0X$Z4aZP+DdXT2R/KcZgJ+/qoJeX4oB5LVWNxnkdbS6bEo=	\N	f	cont_219-3.289				f	t	2017-10-25 20:04:50.19945+00
1654	pbkdf2_sha256$36000$Hkkoxeh3fQhh$XF3DIcpx6daVtn8ZzN7NznRi7foZddor3ak657kJKAY=	\N	f	cont_219-3.290				f	t	2017-10-25 20:04:50.353946+00
1655	pbkdf2_sha256$36000$EEByyNszJENp$6yi5eZOiNDirTYfqQrmeYoVV8gkn7O5a+/F6I/Cbel4=	\N	f	cont_219-3.291				f	t	2017-10-25 20:04:50.505619+00
1656	pbkdf2_sha256$36000$c1YlEnZfxXwf$gLbcP6umOdJDK5uo8LXShuVMUkAvNCdCk7CmtPQaAOE=	\N	f	cont_219-3.292				f	t	2017-10-25 20:04:50.70481+00
1657	pbkdf2_sha256$36000$1shuhOtG7zLv$J8pCK88QL3bFfI0h8te09Ef2fTNheL05RDUIQ1vfUq0=	\N	f	cont_219-3.293				f	t	2017-10-25 20:04:50.843727+00
1658	pbkdf2_sha256$36000$iD9LobJQ9ocu$PWcFUBF00uSvBDR9JMOIPw34sDZaaXgUFtisDtBdnwU=	\N	f	cont_219-3.294				f	t	2017-10-25 20:04:50.974613+00
1659	pbkdf2_sha256$36000$VobbDFm9g7WO$E+u84F2U+KHppXaVK+318897Itth7o7S+wVmzEyJQWw=	\N	f	cont_219-3.295				f	t	2017-10-25 20:04:51.111669+00
1660	pbkdf2_sha256$36000$K3AAfDfgE4Kw$F96yA9YT9Cs3vIzA4KuK1FJCBFD/97KAQVY5s6m95aI=	\N	f	cont_219-3.296				f	t	2017-10-25 20:04:51.26037+00
1661	pbkdf2_sha256$36000$shgW6GEaQi7P$HxgQOSbqBepMq9OUYo7Ogz13yQDJ7hiuyiuqguA6/BY=	\N	f	cont_219-3.297				f	t	2017-10-25 20:04:51.407088+00
1662	pbkdf2_sha256$36000$ijYhyh2acOFM$mb68JcB4BVZ/bnxLA0/F/7WNz7HIc4oZv2YBe6O5lNM=	\N	f	cont_219-3.298				f	t	2017-10-25 20:04:51.535227+00
1663	pbkdf2_sha256$36000$QKPwwCvi9KNY$taaK6KbPPksqNJigIA7HlG0uHw1fJrf0PQOSgQMQoAc=	\N	f	cont_219-3.299				f	t	2017-10-25 20:04:51.591653+00
1664	pbkdf2_sha256$36000$NfmhNVFdIMp2$yqzgkSHVeOKykMjmP9bQU9aqTNJejeUwTp0OUm9hqiQ=	\N	f	cont_219-3.300				f	t	2017-10-25 20:04:51.655901+00
1665	pbkdf2_sha256$36000$DDK6UYodw5ex$zuB8BXi3WZTdlNftJ/gN6HEY6edShjjJnzo/mQT8U48=	\N	f	cont_219-3.301				f	t	2017-10-25 20:04:51.749029+00
1666	pbkdf2_sha256$36000$4CQ7AVtEjNIv$JIruonMHurJDBO+K55jMY0qVuNJc6YXjzZeEevPtkiA=	\N	f	cont_219-3.302				f	t	2017-10-25 20:04:51.805776+00
1667	pbkdf2_sha256$36000$U5WYLUFiXorG$r653u2Yw4i1rUIzr5M+hDsTIgLMNDohJLFuTl+9NqFg=	\N	f	cont_219-3.303				f	t	2017-10-25 20:04:51.870923+00
1668	pbkdf2_sha256$36000$iXE1LJ7k86vD$7N7WtltaL2opOnK+F9/yFgX9xK4zdJvN14Hjd3Zp1pU=	\N	f	cont_219-3.304				f	t	2017-10-25 20:04:51.928387+00
1669	pbkdf2_sha256$36000$ImQOoL5UBmpZ$oAFWIX25GsXrwKPW4s5DZi7QLtzbCgfdXBu56SP7338=	\N	f	cont_219-3.305				f	t	2017-10-25 20:04:51.9848+00
1652	pbkdf2_sha256$36000$laZpStnLrqWP$qrj8XTQ/IUNwwN7PMwjbfJP3nn99IneNa5G+KLnB9Qk=	2017-11-08 15:06:58.712257+00	f	cont_219-3.288				f	t	2017-10-25 20:04:50.056762+00
1671	pbkdf2_sha256$36000$Jv6NnFErAC9V$OqNM77F1eDbJFMHKYwC7Z2fkcJVhRDB/ReCOIsXA8Ew=	\N	f	cont_219-3.307				f	t	2017-10-25 20:04:52.106082+00
1672	pbkdf2_sha256$36000$Qdw1AQ8kZsBL$0OsIUuiAD6DUywjjsEvMWmShFL3sm9TI24GboBaUa2g=	\N	f	cont_219-3.308				f	t	2017-10-25 20:04:52.166285+00
1673	pbkdf2_sha256$36000$q1erF0Gk24FT$cpT+FjYggiOnwKydCgru4K+E4xuxw3wPgUWgLVLzuBg=	\N	f	cont_219-3.309				f	t	2017-10-25 20:04:52.227258+00
1674	pbkdf2_sha256$36000$xnn4NTkj56Ks$puLnFrWhMGu8dAQUis7Q5R4enFY0QsoLHz9uyPmHZxI=	\N	f	cont_219-3.310				f	t	2017-10-25 20:04:52.287784+00
1675	pbkdf2_sha256$36000$JnYUzBf50AXm$MP0yZBNXkAad4/6y0fXv7zImf84/ohCfOs9ZEuJx0bo=	\N	f	cont_219-3.311				f	t	2017-10-25 20:04:52.359554+00
1676	pbkdf2_sha256$36000$vtaSpTUZc5TR$FGtaTO6WL67gGXVo2/o05emN0jOd7Af7sWC0K00cS1g=	\N	f	cont_219-3.312				f	t	2017-10-25 20:04:52.419176+00
1677	pbkdf2_sha256$36000$aIdytQegMv7s$YIqb55VXFv0ouqTP1KfL3k7lxAQNslB7+g/Mt4mPATE=	\N	f	cont_219-3.313				f	t	2017-10-25 20:04:52.479489+00
1678	pbkdf2_sha256$36000$DXiB4RZ0hmMv$QQuL1yy/0ArYZM02NjjuvykyxcHhTmOnCrhrHDaxcPk=	\N	f	cont_219-3.314				f	t	2017-10-25 20:04:52.539986+00
1679	pbkdf2_sha256$36000$gas21kpljrFY$PSXwUMR9UfWR27/ldC1rch6kHLxg++bvV1CPj9qXtpI=	\N	f	cont_219-3.315				f	t	2017-10-25 20:04:52.595483+00
1680	pbkdf2_sha256$36000$mgBniYDunFOh$r9udNVGz+LFyc+iNXxSnR88uxCZB4gfIRHf6trr04K4=	\N	f	cont_219-3.316				f	t	2017-10-25 20:04:52.650791+00
1681	pbkdf2_sha256$36000$4k68PfedISFA$Fkz8psb1E70LwHyqpYVq8Uk6eFLlntSAj2B22iLu1VU=	\N	f	cont_219-3.317				f	t	2017-10-25 20:04:52.705887+00
1682	pbkdf2_sha256$36000$q4DwamsVhfMR$V7bDQo/4vp7JFzk7jH01yy0xSBl2Hb4e8d/oU1fLhUM=	\N	f	cont_219-3.318				f	t	2017-10-25 20:04:52.792421+00
1683	pbkdf2_sha256$36000$ejL5dWoIElex$51v0ALUGdy4jXu1t20HGs4HjV5Zz4GQMLHkqzly1WB0=	\N	f	cont_219-3.319				f	t	2017-10-25 20:04:52.850513+00
1684	pbkdf2_sha256$36000$YsSIVh8EhJNq$5eARGUGRaIcyh+ez/m7GMHgWedSkt2b/kKy7y7yxah4=	\N	f	cont_219-3.320				f	t	2017-10-25 20:04:52.905455+00
1685	pbkdf2_sha256$36000$BUxAfIYaMIxG$bVZ+3CNivzp+q8krFr8AwvgL2gGTJgyCDmhx88culAc=	\N	f	cont_219-3.321				f	t	2017-10-25 20:04:52.9595+00
1686	pbkdf2_sha256$36000$2o7DqtGhONTA$b8TgIDsQHLhNBbDt8bBRZd3uknHPOYhfx1oc+pox2CM=	\N	f	cont_219-3.322				f	t	2017-10-25 20:04:53.014366+00
1687	pbkdf2_sha256$36000$Qj3CPchvTFbM$QSk8ZUtv1ANY9fCdlUxkOM37xRVcI+ScyDqQfK9uYiE=	\N	f	cont_219-3.323				f	t	2017-10-25 20:04:53.068827+00
1688	pbkdf2_sha256$36000$4jttRITmOO7G$savGmS9NONatkqInbfL/Ir16g/dMGkyJ7qh85MLZ2oU=	\N	f	cont_219-3.324				f	t	2017-10-25 20:04:53.123084+00
1689	pbkdf2_sha256$36000$GC6NGwhEPq13$qiXD7bM7I7mlYMiJkdRb8650tGSqgzhIZDkhpfLra8k=	\N	f	cont_219-3.325				f	t	2017-10-25 20:04:53.179273+00
1690	pbkdf2_sha256$36000$sVu9OgplcoDV$OIcFW7BXSlXbgU/A2Nos8q7mtALBjwjvbRKs3L4+MJY=	\N	f	cont_219-3.326				f	t	2017-10-25 20:04:53.249302+00
1691	pbkdf2_sha256$36000$ECdmZfVvfom9$50JCGT0S/uA09yoIMEFjbTnsssI8ueuX2svBf6O4l84=	\N	f	cont_219-3.327				f	t	2017-10-25 20:04:53.303817+00
1692	pbkdf2_sha256$36000$aSANxj7zXD2R$qFsT0gzAdVEm7qVXO3q/GT0f1Y6JbwXnMGkz7IgdX9w=	\N	f	cont_219-3.328				f	t	2017-10-25 20:04:53.35889+00
1693	pbkdf2_sha256$36000$8c9QfskLGwcn$Ntuw153oSx4QgQeUUbGJuO2qLP2Wtq6ikgutgWTss58=	\N	f	cont_219-3.329				f	t	2017-10-25 20:04:53.414537+00
1694	pbkdf2_sha256$36000$RV81vAfPs0Wg$8a6FNcRKlDwFxMFXfqSXDqoQNjMmp2+LddLoUmTW8is=	\N	f	cont_219-3.330				f	t	2017-10-25 20:04:53.471877+00
1695	pbkdf2_sha256$36000$1RuUOTC3sTR7$XZOk7cYgtHX/1c6G5IPtvPRXhREq1gTeJB0jTewMSS8=	\N	f	cont_219-3.331				f	t	2017-10-25 20:04:53.527481+00
1696	pbkdf2_sha256$36000$RizpreOSfWHG$iPh7Ratz8p0cgs6GeTvtjT8PMahIaRzpU2nAOFEfHRE=	\N	f	cont_219-3.332				f	t	2017-10-25 20:04:53.582041+00
1697	pbkdf2_sha256$36000$wwCaBLkQhjgn$nXRc6lhAzBR9YKlGARlqzBfmqTTJHux4MVUUYWkw2xc=	\N	f	cont_219-3.333				f	t	2017-10-25 20:04:53.638657+00
1698	pbkdf2_sha256$36000$z5H9B2kimriv$BqvTXBVfaW2FpgSOQ42icbVOV7YklXo37r/Dejoh0Ns=	\N	f	cont_219-3.334				f	t	2017-10-25 20:04:53.694206+00
1699	pbkdf2_sha256$36000$dYPPnhC5yQZz$UYU4JTtCEPQsMTbJUq0mvEVHsn7bhJ4BGyhb64q0L2c=	\N	f	cont_219-3.335				f	t	2017-10-25 20:04:53.749495+00
1700	pbkdf2_sha256$36000$oeKCmnIrSTrG$SusUkH1m8XzfvhF4MaKDvMexq8BYBxd+4uZu5Sl+bt0=	\N	f	cont_219-3.336				f	t	2017-10-25 20:04:53.808286+00
1701	pbkdf2_sha256$36000$zum8ShETsE7Z$75ml3lSQFpUpUc7oxsR2jQK8RKL8Ru4yKaWHqpvFjMs=	\N	f	cont_219-3.337				f	t	2017-10-25 20:04:53.884453+00
1702	pbkdf2_sha256$36000$Ea8U1Nibab7k$PlVxr7XzJwJttBWyAdr9y0wGotyJXaaC554GEDmYoZ8=	\N	f	cont_219-3.338				f	t	2017-10-25 20:04:53.940698+00
1703	pbkdf2_sha256$36000$N5nLZv7WPfea$wADq5kBhupOjHFk70BHZHf21rcXwkirTsfa3nTkHLqg=	\N	f	cont_219-3.339				f	t	2017-10-25 20:04:53.999165+00
1704	pbkdf2_sha256$36000$l89xF4iCr5dZ$yrL2Sx7hcvEP1gYzYgqQuGVKGbVulOQpZ1Ix7YjbRuk=	\N	f	cont_219-3.340				f	t	2017-10-25 20:04:54.061846+00
377	pbkdf2_sha256$36000$yJ0fLfP5ox1P$mVmj3c74x8TUdTMl7lzjRRBU64p+nL+mC6PIROjrdgk=	2017-10-25 20:05:23.961248+00	f	cont_219-1.33				f	t	2017-10-25 20:03:18.824896+00
1712	pbkdf2_sha256$36000$JnYYYHbxr5fx$01TfmkQsAciH1QWTxy/4YOVY1PNhrsrq3+oMtlv7UvQ=	2017-10-25 20:55:15.158589+00	f	del_1-1.8				f	t	2017-10-25 20:08:52.292408+00
1706	pbkdf2_sha256$36000$zvtMDbUU2hKj$mgeEjFTJvotISUW7/bNhcVHpHMhPBjFD+FJFre9LNw8=	\N	f	del_1-1.2				f	t	2017-10-25 20:08:51.49902+00
1707	pbkdf2_sha256$36000$Q1o6guq1sZMw$z6YAPOcjc6jy546WjCQmbIU35NoIedi+WlMr8SGoyj4=	\N	f	del_1-1.3				f	t	2017-10-25 20:08:51.648599+00
1708	pbkdf2_sha256$36000$X3H8vxDmNXcK$HMKBbVViDGiq1P5Ud+udleMDfUexcCo6xBeg33VJ1t8=	\N	f	del_1-1.4				f	t	2017-10-25 20:08:51.796136+00
1709	pbkdf2_sha256$36000$h7xcJiEHNDoO$QjVTCS/Hs7pwRB1OLawfqCAUSKm0KLWK+tMO9e2l+wE=	\N	f	del_1-1.5				f	t	2017-10-25 20:08:51.93821+00
1710	pbkdf2_sha256$36000$QnIjPtwhA2MA$bJwPDf/4Y3hNd7i7IusUDMb41jGNYcvYPdTXrhv25GM=	\N	f	del_1-1.6				f	t	2017-10-25 20:08:52.06778+00
1711	pbkdf2_sha256$36000$HwPDrveGug85$8SvaRPIkpuXaSSQv2L8+95SpAYcbKopnl2vV2uADWKg=	\N	f	del_1-1.7				f	t	2017-10-25 20:08:52.179533+00
1705	pbkdf2_sha256$36000$BCUFf8YdQ9tu$PP6hvcDYwoWXPxxJcv7eALjGDAGpNf0ivcUKYG+oPOI=	2017-10-26 11:19:42.41074+00	f	del_1-1.1				f	t	2017-10-25 20:08:51.235423+00
1713	pbkdf2_sha256$36000$eqtvlhDYYX7n$pqucW9mCE970ATgI6tiP/FLJ7XeV+YMCP/6erhqU9PM=	\N	f	del_1-1.9				f	t	2017-10-25 20:08:52.425779+00
1714	pbkdf2_sha256$36000$nCwiZTJVutzs$71CkwAnHmJ+mY+dfqTOdxPkFAguDSwc8CozrALQgwnU=	\N	f	del_1-1.10				f	t	2017-10-25 20:08:52.62704+00
1715	pbkdf2_sha256$36000$D18w6EuPMMQL$Rw7huzkGRCN/71Bst4IkLTorhQdDg5Kr00OuhG+kjFE=	\N	f	del_1-1.11				f	t	2017-10-25 20:08:52.797104+00
1716	pbkdf2_sha256$36000$qeTcPPkfqIDR$NA5ZHw3cZar9Etf1pPyCN4osgHq+2AtRyzK1pTi1kTE=	\N	f	del_1-1.12				f	t	2017-10-25 20:08:52.937855+00
1717	pbkdf2_sha256$36000$m7FofhaJEX1A$LT7Z+00H+b6DCKIUbNvEuyUobmMeCD9SoqHpAEmqtzM=	\N	f	del_1-1.13				f	t	2017-10-25 20:08:53.069663+00
1718	pbkdf2_sha256$36000$3oS1rjzAjFnL$fUXvR7ZJY+xqtd3bb6/0bX19yXL+4azfHnyZJt2rVT8=	\N	f	del_1-1.14				f	t	2017-10-25 20:08:53.181965+00
1719	pbkdf2_sha256$36000$xlffPBBqbCnW$/tPkMx7SBrsM/JTcMNOIu23hbgJR8z/k/6+DLSXiUS8=	\N	f	del_1-1.15				f	t	2017-10-25 20:08:53.30092+00
1720	pbkdf2_sha256$36000$n7wyHDyxFDZo$m5zKGNanO22jVWskHEsTHi13OgU5o2r4LzLCaN/KHFg=	\N	f	del_1-1.16				f	t	2017-10-25 20:08:53.435669+00
1721	pbkdf2_sha256$36000$RzsMgVQjrWiF$QgYpR9tII7FZl4bYAyiHswFRHLhRrwpCJle2uX9J+VE=	\N	f	del_1-1.17				f	t	2017-10-25 20:08:53.622478+00
1722	pbkdf2_sha256$36000$jCKIM4N3MUgu$lZYRoNhq0FJnrWcJj3/WGs7YXNK9jjPBAB3zBnIX0kQ=	\N	f	del_1-1.18				f	t	2017-10-25 20:08:53.799146+00
1723	pbkdf2_sha256$36000$HCfaKa3m86SH$BW6QCbzznP2iZVa5LhtGNRz47IrxpAT0m8OUhL3W/U8=	\N	f	del_1-1.19				f	t	2017-10-25 20:08:53.940751+00
1724	pbkdf2_sha256$36000$G8dVsJI9oieP$7w39KdfBg715M+zcDiTPmHrnBoESuAABvBE2fBUlPTU=	\N	f	del_1-1.20				f	t	2017-10-25 20:08:54.087209+00
1725	pbkdf2_sha256$36000$nl9y7N7YclGn$1Mmuj2AZihjo1YQ8zIeD8g+AxEdcJdXWPd15xnjoJrQ=	\N	f	del_1-1.21				f	t	2017-10-25 20:08:54.230366+00
1726	pbkdf2_sha256$36000$9PJYe8TVvbWV$U6uSxPmhDEjo0Tcp9CTJHx1rayKy8W8rJWRE+rDDzcU=	\N	f	del_1-1.22				f	t	2017-10-25 20:08:54.374399+00
1727	pbkdf2_sha256$36000$nqEECHra1VKW$hSv9ft7Nw4C1JRkcwPkalVyr79rQD8w0z5DdGPVWaTU=	\N	f	del_1-1.23				f	t	2017-10-25 20:08:54.517673+00
1728	pbkdf2_sha256$36000$jO2RGwoDKjI4$d3Qf7SEKhhouwTw+lxqikO/yAV0gKu/bWvAfuKTTBdY=	\N	f	del_1-1.24				f	t	2017-10-25 20:08:54.631789+00
1729	pbkdf2_sha256$36000$uWzuL90hXFAi$ZGhWRzbuVwuAbJxMQX2R29O4nf4w0CkXLs637PMomgs=	\N	f	del_1-1.25				f	t	2017-10-25 20:08:54.802168+00
1730	pbkdf2_sha256$36000$ZmtLiyAIjVVt$8Yu/2Kx5x3+A87vpm6YtCirq5+zEldCNiISObu7W7fQ=	\N	f	del_1-1.26				f	t	2017-10-25 20:08:54.923551+00
1731	pbkdf2_sha256$36000$BABbOddgDjUk$hlsvrTq2vT+dhm3aDb4Ca3hH2MHYNI8F8bM6kNFtD5g=	\N	f	del_1-1.27				f	t	2017-10-25 20:08:55.033715+00
1734	pbkdf2_sha256$36000$18zdq9NxTiQV$CUAtfybRzZzNWluI6XCFKYQpIw959ig+Gt5BtWqlo3k=	2017-11-14 12:26:20.551247+00	f	del_1-1.30				f	t	2017-10-25 20:08:55.301427+00
1733	pbkdf2_sha256$36000$YldvFDbx219V$rNqtu1SFuqEZWHCULeMMEZGp3ULHp+KRKZaXTrdOp1Q=	\N	f	del_1-1.29				f	t	2017-10-25 20:08:55.212777+00
1735	pbkdf2_sha256$36000$wQ2CmisOSvvP$pBbLgC5rFTOF0YxZokmCdzySwm06IW/EoriermMPC3Q=	\N	f	del_1-1.31				f	t	2017-10-25 20:08:55.391295+00
1736	pbkdf2_sha256$36000$UKcKXz7JSLDU$ORlPiDpbOdeo2wnhPOvAPruP1YUQdCjZ3F1HfGCGqGE=	\N	f	del_1-1.32				f	t	2017-10-25 20:08:55.480271+00
1737	pbkdf2_sha256$36000$XP2gM0lTQp07$Z8noWR4baYNtaBK7vulANPHX9XNzfhuZnPM/EM+REDw=	\N	f	del_1-1.33				f	t	2017-10-25 20:08:55.562177+00
1738	pbkdf2_sha256$36000$C7eQlU5Zqynh$t4gQEgDV6PJGSt6YbBeI1Buzd31ftg26JJoJU77w/hI=	\N	f	del_1-1.34				f	t	2017-10-25 20:08:55.63716+00
1739	pbkdf2_sha256$36000$gQYt2oFMqs3B$Q4xnTu67pL8JBRG55TmA4M2TB8tqg0TIOkdHxpF5JxU=	\N	f	del_1-1.35				f	t	2017-10-25 20:08:55.713133+00
1740	pbkdf2_sha256$36000$FsM9WsovuzCl$Awlh32MeVWBgmwZQQmtVUTctHcHBwLSYdUPNAkzrEbQ=	\N	f	del_1-1.36				f	t	2017-10-25 20:08:55.802392+00
1741	pbkdf2_sha256$36000$1R4j6Ejo6eBD$m72oE2CESv0UBbI4yY/azM3/6UTKzzAgXV5bVkmjRaA=	\N	f	del_1-1.37				f	t	2017-10-25 20:08:55.897915+00
1742	pbkdf2_sha256$36000$vJilmWWtulPB$zPU0sB5J5YoG1Sx5rgIBY2wnG5aDmjtNA/myHL3XxrE=	\N	f	del_1-1.38				f	t	2017-10-25 20:08:55.972747+00
1743	pbkdf2_sha256$36000$ELvNqOnmAFUD$OstTcvdy8sYb+KRMcJqGian/JeKsFsiVvwvAcKcmbCY=	\N	f	del_1-1.39				f	t	2017-10-25 20:08:56.047+00
1744	pbkdf2_sha256$36000$kkAotlbkTNs1$CliiqRCJwzwvDXvkf+CzM9Y15IYQ6yVkcp9SG5iyp20=	\N	f	del_1-1.40				f	t	2017-10-25 20:08:56.112357+00
1745	pbkdf2_sha256$36000$BQRT1OXbg2KK$JuLkSSUUPrUn+mzArzS1U+xUmmBgmFzh7fxlQXERDLg=	\N	f	del_1-1.41				f	t	2017-10-25 20:08:56.178187+00
1746	pbkdf2_sha256$36000$eedbhsE5W6Xt$S6+jT1LFwWP1cOmrM/gAJxu2TdkQYlOfkhWRJFn3Oyo=	\N	f	del_1-1.42				f	t	2017-10-25 20:08:56.246438+00
1747	pbkdf2_sha256$36000$5WTIxPQV7oAl$b0pTDYlYCsWrY5NZSy8ayrJLS4HWRy/T1Q0hT40GHWM=	\N	f	del_1-1.43				f	t	2017-10-25 20:08:56.312626+00
1748	pbkdf2_sha256$36000$xbXheFfWYxfn$1O06XdA67Pp10OwsQCLRkV+NDGfoyL6Sctr2/JuCgHM=	\N	f	del_1-1.44				f	t	2017-10-25 20:08:56.378427+00
1749	pbkdf2_sha256$36000$Juoa7oFrUwNJ$Ae8A6vEY8Xleo7oj9C4w6n38CQtIYpXRDTADp59mtxY=	\N	f	del_1-1.45				f	t	2017-10-25 20:08:56.443532+00
1750	pbkdf2_sha256$36000$ye3dcFelTeR4$CVntpD3r2TOvYZlDvGtNTjVeabpKkPlPhq4zjVvyoMk=	\N	f	del_1-1.46				f	t	2017-10-25 20:08:56.509225+00
1751	pbkdf2_sha256$36000$E4k21WfVknbw$za4vH3wpJyhJokMZihEbKgSpx9vPVNTf3I3jJ1rkIl8=	\N	f	del_1-1.47				f	t	2017-10-25 20:08:56.567565+00
1752	pbkdf2_sha256$36000$KVrAsxCpDb38$VcgyIPrfLQOx6YjaFOfds6GRVSHgEPZ9G9B9SyvA4rQ=	\N	f	del_1-1.48				f	t	2017-10-25 20:08:56.623789+00
1753	pbkdf2_sha256$36000$DCxzN4PBuZCO$pwaFfIZJeqH2f6v1GMQEcm/buvJgGcWByiV10MmqIAU=	\N	f	del_1-1.49				f	t	2017-10-25 20:08:56.679227+00
1754	pbkdf2_sha256$36000$9YlxVILwpTLk$ZHMEsZgnVCw2VDXIrc20kfvd+3ihZ8D/FZxdnR8/3zY=	\N	f	del_1-1.50				f	t	2017-10-25 20:08:56.735419+00
1755	pbkdf2_sha256$36000$RwBYm1zTFZd8$py0RSsSfljXv2bc4iA5BCerf/SKEkeuoQ8U4BURrtRI=	\N	f	del_1-1.51				f	t	2017-10-25 20:08:56.791422+00
1756	pbkdf2_sha256$36000$uegtn23iXWBc$aRVTQtT7yqhw/OMzPOD2o62SMY8GrMINRko79OBJ7+s=	\N	f	del_1-1.52				f	t	2017-10-25 20:08:56.846587+00
1757	pbkdf2_sha256$36000$18SORMdfmwAw$PvGUyJ8c7UL1cjmq9Kn29RAJphe9TT2H8FYXsLxtNcs=	\N	f	del_1-1.53				f	t	2017-10-25 20:08:56.929599+00
1758	pbkdf2_sha256$36000$ENuWV30u7RnH$F4cJmDbsHCCdOXKNP5sjRdT0e2oRqudKahwuCb/0xaY=	\N	f	del_1-1.54				f	t	2017-10-25 20:08:56.987296+00
1759	pbkdf2_sha256$36000$LCkmkEd7GKJr$jFe0qvSRe7DMDtZRwf9LxaZYgkIV0ekU42U+eQSWNlo=	\N	f	del_1-1.55				f	t	2017-10-25 20:08:57.042616+00
1760	pbkdf2_sha256$36000$at3SAh0uR5H9$SO7hTboYE8qWhgtvZC5C9ZvowDvOhOtD9T4XReyORDE=	\N	f	del_1-1.56				f	t	2017-10-25 20:08:57.097853+00
1761	pbkdf2_sha256$36000$izqWKUtTEv0L$+EvI1spaCgP7F9GETD/S60yVQT2Ri1i5LY3VtH7Qqjo=	\N	f	del_1-1.57				f	t	2017-10-25 20:08:57.158448+00
1762	pbkdf2_sha256$36000$E8LhgdpLA3nX$fCOCL6rXrIGLXwDdKIcfd+guuh+YronY/3OCrISK6U0=	\N	f	del_1-1.58				f	t	2017-10-25 20:08:57.21562+00
1763	pbkdf2_sha256$36000$NV6X6CNv9k3m$OH8+pQ+hmotudT1dhkFOAzpOivprO+xhhreuvjhRGhI=	\N	f	del_1-1.59				f	t	2017-10-25 20:08:57.271043+00
1764	pbkdf2_sha256$36000$oqwx4GTJFX3P$pd42JBpOQjIeul/XuVrKGJ95DqSTc4iqvogn3vnrRmI=	\N	f	del_1-1.60				f	t	2017-10-25 20:08:57.327631+00
1765	pbkdf2_sha256$36000$GuoT5OgKwOW9$Jn2Q95wOn6JOln68HM0aE5hg8wyBSS1OQQjqrj/XYSQ=	\N	f	del_1-1.61				f	t	2017-10-25 20:08:57.383874+00
1766	pbkdf2_sha256$36000$EvyPxWESaWSW$n3XIBHTmrP92F5ufnAn5zheD6T1X9Eav19zvDZOXonY=	\N	f	del_1-1.62				f	t	2017-10-25 20:08:57.439202+00
1767	pbkdf2_sha256$36000$gpFXOHBBRxvW$tELaLnsFy5q5qB0GYyc2HTvfk3teQVAThVjpOM8oA1w=	\N	f	del_1-1.63				f	t	2017-10-25 20:08:57.494461+00
1768	pbkdf2_sha256$36000$em7cZIPm43qU$Yse8JYvPIJeIEXmHzjDiRUv15vWFiscuR5Yd3WL0cnQ=	\N	f	del_1-1.64				f	t	2017-10-25 20:08:57.589648+00
1769	pbkdf2_sha256$36000$YWoyNIxNGokC$HKFzxsMGLeWHAN65SpYVoGT0ltWwLS9N/JU57jKiFfQ=	\N	f	del_1-1.65				f	t	2017-10-25 20:08:57.732154+00
1770	pbkdf2_sha256$36000$s45KJnW6sU9t$sS4ogB61/xP7up0/nKWjko0u5u20zoklGNAoTu+2s+M=	\N	f	del_1-1.66				f	t	2017-10-25 20:08:57.873692+00
1771	pbkdf2_sha256$36000$j7HiX8YiekOB$XS/4TmQnkrjpysiTI75+L15UJ+PgLeynNP2PTZR/Ukw=	\N	f	del_1-1.67				f	t	2017-10-25 20:08:58.094927+00
1772	pbkdf2_sha256$36000$TNS0Odw1fctx$2NZvN9/4hE7yOs2j8Kwl4P3RvgriS8fGI8FcB462adw=	\N	f	del_1-1.68				f	t	2017-10-25 20:08:58.239456+00
1773	pbkdf2_sha256$36000$pUWhS2fGYDIp$UhJFvQhUJC2R+3tCxLMMmBeeyPySt5mjQ4oKQsTRigk=	\N	f	del_1-1.69				f	t	2017-10-25 20:08:58.384149+00
1774	pbkdf2_sha256$36000$BT9RyRfEOwr2$uypzKoGFrmRlhHXszzraUrvkOAX2u5DN8B3HAITUuEM=	\N	f	del_1-1.70				f	t	2017-10-25 20:08:58.525882+00
1775	pbkdf2_sha256$36000$YbH29YxbkKBr$LwaclEq4Zj5r/Bw/5WAZw13JQeJOW6DINDXx55D4oc4=	\N	f	del_1-1.71				f	t	2017-10-25 20:08:58.639132+00
1776	pbkdf2_sha256$36000$E7tuX7DV3rXl$bklY4/l+zg8xwFhugHPvLR0Vqqi7N79QzdNAJyUugmA=	\N	f	del_1-1.72				f	t	2017-10-25 20:08:58.773946+00
1777	pbkdf2_sha256$36000$ikekXthBoA9o$sK68QYEnSn0tMuvsNdBOnE10mfMiWEKd4PMq8HLCq0s=	\N	f	del_1-1.73				f	t	2017-10-25 20:08:58.920946+00
1778	pbkdf2_sha256$36000$GuUyTloP3TnD$G2i5GP8NVBbxYACuy+yzbXORr/ZLMrSkhTYk5k4WiFc=	\N	f	del_1-1.74				f	t	2017-10-25 20:08:59.082737+00
1779	pbkdf2_sha256$36000$eYJCZjBRfiEl$jT6GQhY8KcoXaZX/z4FyMniVNuOi4mBblq/5CFOlnmI=	\N	f	del_1-1.75				f	t	2017-10-25 20:08:59.278708+00
1780	pbkdf2_sha256$36000$NSsVcRBHQNRv$bmCVnl37kDIEfMtStUoDVKBnY4nLg3svE8vuYVKDOgQ=	\N	f	del_1-1.76				f	t	2017-10-25 20:08:59.420961+00
1781	pbkdf2_sha256$36000$LHfT52GXmHFi$WAwAkpJImKILDldJZTMMaYS7aox3GEZ7M41UUbvhvG8=	\N	f	del_1-1.77				f	t	2017-10-25 20:08:59.543886+00
1782	pbkdf2_sha256$36000$PJgeAlPMWYoy$jNUSwWbsdOjl7FjyF+7+DGYAz9dD4mvjJvswPk0TjSs=	\N	f	del_1-1.78				f	t	2017-10-25 20:08:59.598947+00
1783	pbkdf2_sha256$36000$VXTELjxHWcRC$crWV5OL09mKdUskYD/zWO8lnprG/SX1NWngTPlEOYXI=	\N	f	del_1-1.79				f	t	2017-10-25 20:08:59.654585+00
1784	pbkdf2_sha256$36000$mIEk7vCFITVv$+8ukLImCtZDIxiXsKi3dHi3ydUcgjdw6woXHi5bmqBU=	\N	f	del_1-1.80				f	t	2017-10-25 20:08:59.751485+00
1785	pbkdf2_sha256$36000$ItUtzxWrZ7H3$aKOWV7qKPeDe+Wnxn3afsYen0H7IaPe6/X2TYDzjhx8=	\N	f	del_1-1.81				f	t	2017-10-25 20:08:59.892395+00
1786	pbkdf2_sha256$36000$CE1G8hxJut6y$bhupPK7JHDU/DcBqfMR2JJ5jCWj4wbs3eQ/zaIy+YuU=	\N	f	del_1-1.82				f	t	2017-10-25 20:08:59.970752+00
1787	pbkdf2_sha256$36000$geOyPhrwFmHs$ex9522G/DiPThkPx0YJEf2UIr79Fg43tN7EQvJrsZrI=	\N	f	del_1-1.83				f	t	2017-10-25 20:09:00.033946+00
1788	pbkdf2_sha256$36000$tfzuS9xXVypE$2B2zZ5hFVT3vF3bhQvSsCLrlviz/tdG/3h3MwBmcdkc=	\N	f	del_1-1.84				f	t	2017-10-25 20:09:00.204478+00
1789	pbkdf2_sha256$36000$dg6RzZzimrVc$qNB/9QmXw4ZtU8WMr0Jv/F+W3vwbqn3a+GbAXDmuM24=	\N	f	del_1-1.85				f	t	2017-10-25 20:09:00.420763+00
1790	pbkdf2_sha256$36000$jvuRWDWeNWCH$gId++XXi3T0bpKdxIrsjqfxUDMHmCacc2LPYXsJYcJU=	\N	f	del_1-1.86				f	t	2017-10-25 20:09:00.569478+00
1791	pbkdf2_sha256$36000$kjGNfR9z6a2g$mGSK/MrlF8E9u0jU/qw/XjnMz4GG5XJTcLQ0d687UHc=	\N	f	del_1-1.87				f	t	2017-10-25 20:09:00.71954+00
1792	pbkdf2_sha256$36000$X7OlPWHE03cQ$4/ugdnoTH1fRtuTgUc49n/o+P/ZUf/UZaAc9MNieNm4=	\N	f	del_1-1.88				f	t	2017-10-25 20:09:00.860452+00
1793	pbkdf2_sha256$36000$COIwqvpFRtEY$TytyqHZx5gly2HVOWYgjX16hzG1D5xnnT+eb44CJUtA=	\N	f	del_1-1.89				f	t	2017-10-25 20:09:01.00694+00
1794	pbkdf2_sha256$36000$llOP5PtKdVWP$EXFvfGUgSD6lYtYzTTdW//NhI1jRcvAjzaUxxmSCPZ4=	\N	f	del_1-1.90				f	t	2017-10-25 20:09:01.137378+00
1795	pbkdf2_sha256$36000$TM6ESQy0v30b$LIJuVsVlI+DBml9mLFJxgFDCzylXRs7O8zu3uCIMsfg=	\N	f	del_1-1.91				f	t	2017-10-25 20:09:01.269768+00
1796	pbkdf2_sha256$36000$uO6C697Vop0B$JHneidwyyxLGHTOJZHljH6iCkRLUmQLQ6BgrCzl3iHk=	\N	f	del_1-1.92				f	t	2017-10-25 20:09:01.433468+00
1797	pbkdf2_sha256$36000$lGzeWqxOXW1t$BfwcT49JVzZBdtfbiA+Jvi+3qJPI7zV3dkxmPSWrIJU=	\N	f	del_1-1.93				f	t	2017-10-25 20:09:01.546792+00
1798	pbkdf2_sha256$36000$A2kmtfhf95gx$gyfjwyS8qw+kllf+Ye+7ZjYQWsCU+2wAhGWj1l78fcw=	\N	f	del_1-1.94				f	t	2017-10-25 20:09:01.602614+00
1799	pbkdf2_sha256$36000$xU4c88XvRvBp$PU21WiWFVvP4at2BZ4OITRu0NMhX0nyzaNR/KIsvLwc=	\N	f	del_1-1.95				f	t	2017-10-25 20:09:01.659056+00
1800	pbkdf2_sha256$36000$7gthvYkygtIX$Mj0UiQSPxfMPybWBhlmQrgg8NEd7yEAwo8axHes0ESo=	\N	f	del_1-1.96				f	t	2017-10-25 20:09:01.716065+00
1801	pbkdf2_sha256$36000$r8RVGeYRM6nJ$gh7eZBCRgBBpMe5Q+OKh7oYyI0LZlWDR2rE6L7e513I=	\N	f	del_1-1.97				f	t	2017-10-25 20:09:01.77244+00
1802	pbkdf2_sha256$36000$A0aswgDzqE8w$WWMBuBViLGmt/AlirY1qLjKcK+jSkjxkzSqJCuEtVvQ=	\N	f	del_1-1.98				f	t	2017-10-25 20:09:01.828611+00
1803	pbkdf2_sha256$36000$cTwGCi5xIEEG$pZep0Mn9HqzyTMLHy1JfjKoii346hveP4wYfyTo+VQs=	\N	f	del_1-1.99				f	t	2017-10-25 20:09:01.885311+00
1804	pbkdf2_sha256$36000$qfxp6DW7Pabv$3m6cHP3iBmqgOCz3uioQ6VvkjA2uq7pMj5XVNgO3+cU=	\N	f	del_1-1.100				f	t	2017-10-25 20:09:01.941443+00
1805	pbkdf2_sha256$36000$zpfboAloL7mQ$iPpMFBSm47Mgw+YZNx+xMOpZT2tEB/D3TSlja6z7sUs=	\N	f	del_1-1.101				f	t	2017-10-25 20:09:01.99765+00
1806	pbkdf2_sha256$36000$Ts90QdF21gFr$i+XnDXlawUYSCozhy4Gdfi1HNvPJ+ocwhee93ucoFXU=	\N	f	del_1-1.102				f	t	2017-10-25 20:09:02.053029+00
1807	pbkdf2_sha256$36000$sWRAWiMBRCFj$UP0ft+9uaUIXCca+3qvxEvN7lz5FKYudACfTMCLTcd4=	\N	f	del_1-1.103				f	t	2017-10-25 20:09:02.10856+00
1808	pbkdf2_sha256$36000$LmbxX0zosSOJ$qswf8bPnOLFGzaHsc343DSDpnMV/kvWisgTDwUEpTMQ=	\N	f	del_1-1.104				f	t	2017-10-25 20:09:02.164946+00
1809	pbkdf2_sha256$36000$SD3Owb5bl5ow$ZlEjjIXtVh1Vw51GaUcUJ1QR+zbXwNYNMuwms+s1HFU=	\N	f	del_1-1.105				f	t	2017-10-25 20:09:02.222104+00
1810	pbkdf2_sha256$36000$UBi75BmWl6id$cEDJrbPBVamH54PIedfBbsxeI3eGtActziAKNGraTY8=	\N	f	del_1-1.106				f	t	2017-10-25 20:09:02.278374+00
1811	pbkdf2_sha256$36000$SC4xMVBJGZl0$o/IQGsgh7e7VZPQFv3gr3gZukIdsBMp4Wls4/OcIZ4c=	\N	f	del_1-1.107				f	t	2017-10-25 20:09:02.334506+00
1812	pbkdf2_sha256$36000$i1K7UQEOZ710$n09Xv1gFH+94JrotU6uZv0k1k94iG2TEUge/rLPkycE=	\N	f	del_1-1.108				f	t	2017-10-25 20:09:02.396711+00
1813	pbkdf2_sha256$36000$GcjawzJrzhqP$cfRnxHy01x3BwA43n/X+b0YXhyXZV34wUOsb3W8Wx7U=	\N	f	del_1-1.109				f	t	2017-10-25 20:09:02.451941+00
1814	pbkdf2_sha256$36000$bzMxeOiOU7G0$diqTtBKVcUNRzRIC9e1LI9zAA8DoY9Ia7ffrlMFZBB0=	\N	f	del_1-1.110				f	t	2017-10-25 20:09:02.534007+00
1815	pbkdf2_sha256$36000$LEHIbQjKD3OD$sXWlOQz1KJ1O+Nnwd3hB9JCk8ENCAHCp7nBvPcJ2oCQ=	\N	f	del_1-1.111				f	t	2017-10-25 20:09:02.589498+00
1816	pbkdf2_sha256$36000$AI8PWMvlIW27$CQl6tQHysN1Wz19iLNSNZgCPeLb2sY3nHy77Fszqt8g=	\N	f	del_1-1.112				f	t	2017-10-25 20:09:02.644535+00
1817	pbkdf2_sha256$36000$aljACUnM0s33$OOmQj3p2g6C9FDK1fRWBfSC0zbb1FG9qTCL3Qe9aGrI=	\N	f	del_1-1.113				f	t	2017-10-25 20:09:02.700003+00
1818	pbkdf2_sha256$36000$1ez5J69Ymz73$4PXc5k+DU2sJE/ByPwAZ/DCgV+/YuheZo9M47gkDs1Y=	\N	f	del_1-1.114				f	t	2017-10-25 20:09:02.757417+00
1819	pbkdf2_sha256$36000$WnkJIG6dTOC0$236wrXruLozH52bMTo6v2nBuGatKC4CRu+863JmtuIg=	\N	f	del_1-1.115				f	t	2017-10-25 20:09:02.813021+00
1820	pbkdf2_sha256$36000$wOUyt9pVnyLu$nbX3evvP7OoMywkbflTdGuA1aZqXyz/FeItcjTT9maY=	\N	f	del_1-1.116				f	t	2017-10-25 20:09:02.869315+00
1821	pbkdf2_sha256$36000$SB01KeLfV8lL$y7qipkHoBjpuWk/clFnFKRtrYi+DYVxRHwiMdnB0fcI=	\N	f	del_1-1.117				f	t	2017-10-25 20:09:02.924879+00
1822	pbkdf2_sha256$36000$M5Z4YpRhllGX$MHRpD/Xiyi5GeMeKkNjvykxntjTSUPLHupPiq0/8Wsg=	\N	f	del_1-1.118				f	t	2017-10-25 20:09:02.979957+00
1823	pbkdf2_sha256$36000$Iit95mFOzlDl$lSX9Sg6OH1sy4gBZWwnAPlYBjFgKT9xtBqn7fXm+TJI=	\N	f	del_1-1.119				f	t	2017-10-25 20:09:03.035892+00
1824	pbkdf2_sha256$36000$1KMJfZN5GxNU$iXwlLPofodjKIsurwM9Y7l5W7UTL7SMO02ebqpxGlx8=	\N	f	del_1-1.120				f	t	2017-10-25 20:09:03.091488+00
1825	pbkdf2_sha256$36000$rXfA8Imrebgx$5Rzg8n1aK1L1etKoIpnYESdoNiYXX+CklpASRx3xgsU=	\N	f	del_1-1.121				f	t	2017-10-25 20:09:03.147504+00
1826	pbkdf2_sha256$36000$K8ps6zWPgClc$cBHWk7EMtlAKyfVXZfVnOAiIxfTBax6neSQVJGBnQtM=	\N	f	del_1-1.122				f	t	2017-10-25 20:09:03.203058+00
1827	pbkdf2_sha256$36000$9MhwzIfdgEhu$NA2byNsxTYdym36xwYg/H5B57250UugM4d0RmwkV9SQ=	\N	f	del_1-1.123				f	t	2017-10-25 20:09:03.259962+00
1828	pbkdf2_sha256$36000$6RvqbLySZTCm$BYZfh4NrlGfSBL39baC7hqp1ear4fLvsDt+wXCIH+Co=	\N	f	del_1-1.124				f	t	2017-10-25 20:09:03.315039+00
1830	pbkdf2_sha256$36000$tlqlgtFgWPwy$qemyBqQ4Z9nfMlQwo/hsuAEG+mP+Oqw0m7oi34cirys=	\N	f	del_1-1.126				f	t	2017-10-25 20:09:03.427298+00
1831	pbkdf2_sha256$36000$WMKQGCojY7zT$cEJRiYLWGubOzVN/3zPE1ZwmqKosO3kInAF8KX+2rfA=	\N	f	del_1-1.127				f	t	2017-10-25 20:09:03.483328+00
1832	pbkdf2_sha256$36000$zmFPCwngdx1Y$4v4Ul437l3Rkj290C2c/mmoVe7w9wH5d7PiH5Z3hF5c=	\N	f	del_1-1.128				f	t	2017-10-25 20:09:03.561323+00
1833	pbkdf2_sha256$36000$RzI8Eff8kywV$w5XoINbxPSNK7SpPFM/3AyKOfQHNtwP8ylsgZeF3bQc=	\N	f	del_1-1.129				f	t	2017-10-25 20:09:03.625116+00
1834	pbkdf2_sha256$36000$NxR1krhWqnd1$40SCCIF1botP8zNMHxo/ZChTwgBZ5Y4DGZF5v67eU7Q=	\N	f	del_1-1.130				f	t	2017-10-25 20:09:03.689066+00
1835	pbkdf2_sha256$36000$mi2YyjqLcCi6$hLfkulsMPk4vZ0z5D/jCcZ9l8THUZwGIwhwNoa/0LkU=	\N	f	del_1-1.131				f	t	2017-10-25 20:09:03.774513+00
1836	pbkdf2_sha256$36000$ptJxJ5iKYmcK$PhxGEPo66C8A8SvQ9WwMUwkHCDcQnPxEKLuPLGRiN/c=	\N	f	del_1-1.132				f	t	2017-10-25 20:09:03.831456+00
1837	pbkdf2_sha256$36000$wEzn3m2GUrDJ$vOUz5RzQQafYMTJ6GntCiFYwuP4Vi79hRrYyzo49//w=	\N	f	del_1-1.133				f	t	2017-10-25 20:09:03.887434+00
1838	pbkdf2_sha256$36000$3vPwwjKd0XFW$dItyOmHLv2a+TnxG2kt5hzWfqaxF283RQ1verxZH3Mk=	\N	f	del_1-1.134				f	t	2017-10-25 20:09:03.9438+00
1839	pbkdf2_sha256$36000$QaAJMczlcf1W$iWQhd+Pe79GJFOk5N/FW94H7himbpK93Fy9EzwGTErQ=	\N	f	del_1-1.135				f	t	2017-10-25 20:09:03.999253+00
1840	pbkdf2_sha256$36000$tfeAT6iB4Apx$XgvoC7Yqgnh3+LOBA28G/oMA9pYCNnvyboXGO9umU3o=	\N	f	del_1-1.136				f	t	2017-10-25 20:09:04.055297+00
1841	pbkdf2_sha256$36000$3wsION0qDmwD$MMcRPVcM4dMW+RAG9mUD6PARsBIITxJZhr2GB7GXFeU=	\N	f	del_1-1.137				f	t	2017-10-25 20:09:04.111368+00
1842	pbkdf2_sha256$36000$u6Ijy5so1KjF$4IYxSI5OC3vLNTjDdQLCM501QcPChI2zrCMh5dGwjKg=	\N	f	del_1-1.138				f	t	2017-10-25 20:09:04.167592+00
1843	pbkdf2_sha256$36000$X6MRQPS0zVgb$fRvPGlvUPZZM9PgHcu5RBetV8xnL+r4/xFmZbTZI3Zs=	\N	f	del_1-1.139				f	t	2017-10-25 20:09:04.224763+00
1844	pbkdf2_sha256$36000$2gmNohMt8EoX$/YHgCxRTIQg5+yFilQeZTmshTrXP3LV5m0dfY+eJMio=	\N	f	del_1-1.140				f	t	2017-10-25 20:09:04.280375+00
1845	pbkdf2_sha256$36000$aW7iK9aM16TL$haOTILA+O7cxgvN4t9ltxQlcfeaMS8qFtsm2DMmTpUQ=	\N	f	del_1-1.141				f	t	2017-10-25 20:09:04.335902+00
1846	pbkdf2_sha256$36000$KMkxiw3FkYUb$PxViAb1kH8JG9cozx1mu2187fn1YfXQqEbyMlybXh84=	\N	f	del_1-1.142				f	t	2017-10-25 20:09:04.391421+00
1847	pbkdf2_sha256$36000$L8r5yjlGRF1y$rEEdKcGkEo9BcKoz6sK6WSg1+Ui7ZsWS/EwgVUPSYaY=	\N	f	del_1-1.143				f	t	2017-10-25 20:09:04.446796+00
1848	pbkdf2_sha256$36000$RjV0xDAJXLWp$iegio6tpawVmUx0dYvibYNvRytqEilNUwDTQkdhYx00=	\N	f	del_1-1.144				f	t	2017-10-25 20:09:04.502514+00
1849	pbkdf2_sha256$36000$T8mFqhmn2Qsy$MsajJ1IEGjEkBNpmcw5fUse9ESPSt3DyN34cPigIKFw=	\N	f	del_1-1.145				f	t	2017-10-25 20:09:04.558746+00
1850	pbkdf2_sha256$36000$vNFATCQP0mI5$eCNjFt3rWbTyvltdVCdN5xlzXGBn0sV15Jxdq6W3gWw=	\N	f	del_1-1.146				f	t	2017-10-25 20:09:04.641454+00
1851	pbkdf2_sha256$36000$lnohSaAdqB0A$wIyGKUzjMlK3/lf1br6eNubzZz98egLOVkVFJx0LrFg=	\N	f	del_1-1.147				f	t	2017-10-25 20:09:04.696449+00
1852	pbkdf2_sha256$36000$S0LUY84enWgh$H0qhF5s9JKKff2hZaoRAzlgG1PiHqbw+h3GUbdcH3/I=	\N	f	del_1-1.148				f	t	2017-10-25 20:09:04.752618+00
1853	pbkdf2_sha256$36000$vVML1BdwF5tO$yew2MDG8USSQWACxU8zIsL9I87tfeXLJnwnPVGYHF7k=	\N	f	del_1-1.149				f	t	2017-10-25 20:09:04.80758+00
1854	pbkdf2_sha256$36000$Pu7k7tkLeKvN$S/cHIbeL8OAVoIXL6Pr1fVHgVB6GBQAmMyENZxBgAhs=	\N	f	del_1-1.150				f	t	2017-10-25 20:09:04.871845+00
1855	pbkdf2_sha256$36000$9ohdNDrsoLyf$2e8L7usSAEzEUMbl//iveLhU03SnfsgHutSxFXvwedA=	\N	f	del_1-1.151				f	t	2017-10-25 20:09:04.928436+00
1856	pbkdf2_sha256$36000$MyVgsZTDZEjh$c09MchA3PvhLvJ6SPFb+W/ZSTlO07KAeSfniOCByRck=	\N	f	del_1-1.152				f	t	2017-10-25 20:09:04.983465+00
1857	pbkdf2_sha256$36000$3DomMqrnVlMp$mczlSB2JW9RyNd+54MpLa3poCE7W5QpCJrvvECeO8ck=	\N	f	del_1-1.153				f	t	2017-10-25 20:09:05.039746+00
1858	pbkdf2_sha256$36000$8gCkTTbL742m$HBLJG4IYvuUu7eHSlWioYzy/ZQcShKdRWmHwYKiD9Ok=	\N	f	del_1-1.154				f	t	2017-10-25 20:09:05.095098+00
1859	pbkdf2_sha256$36000$MvJDCIvMnnK5$vy+gbhfJ77XB/zlMo9kI5F33ku9qrOcY5BuEBwjc04o=	\N	f	del_1-1.155				f	t	2017-10-25 20:09:05.150519+00
1860	pbkdf2_sha256$36000$hliTkufhcab4$oValv8B/TvLqa1Xmr4a3aimrIXwyJbk9z8dnnltT5J4=	\N	f	del_1-1.156				f	t	2017-10-25 20:09:05.213896+00
1861	pbkdf2_sha256$36000$UtdMFl4ZREsL$4hV97ynTOVwKyzbi2194VHnwcfFLDERkU/fuEuILlqM=	\N	f	del_1-1.157				f	t	2017-10-25 20:09:05.269565+00
1862	pbkdf2_sha256$36000$iMu2mlfp07ls$NNYNjj7DH7U0E4RdKKIcOIKwJNMU6frAgW7uWyaCBdY=	\N	f	del_1-1.158				f	t	2017-10-25 20:09:05.324986+00
1863	pbkdf2_sha256$36000$8A1z7tDMoaoJ$JXSSjBCSrbeU3rP4WokHb37fKH/vuj7+6vQMv75EazE=	\N	f	del_1-1.159				f	t	2017-10-25 20:09:05.381008+00
1864	pbkdf2_sha256$36000$T1rdTdX4mop0$xDLV+SrcqFTWMu9l0jyVTVKG7iFR7BpVdxB/e/2jQPI=	\N	f	del_1-1.160				f	t	2017-10-25 20:09:05.436033+00
1865	pbkdf2_sha256$36000$6rDGU0RfMNsB$Ktf1jMR4sVAWgypfrb6suOYMjZQQg2JGDnElNUrcTEg=	\N	f	del_1-1.161				f	t	2017-10-25 20:09:05.491477+00
1866	pbkdf2_sha256$36000$LtHafpv31rBE$Pz65YPSqb+RIj38Fa7uQZJJ+EXEw/qKrNwaZNc2aedc=	\N	f	del_1-1.162				f	t	2017-10-25 20:09:05.547033+00
1867	pbkdf2_sha256$36000$6wZo5m2moVjl$oLrltXQhlggb4d85xr6N2TrFGoqERehrh8wAp/OAd4g=	\N	f	del_1-1.163				f	t	2017-10-25 20:09:05.602947+00
1868	pbkdf2_sha256$36000$XU6atM2RjWfW$kbiBsmsGIq5k+tZZ0P+FnveEe7GX18UfQVVCLY0V72k=	\N	f	del_1-1.164				f	t	2017-10-25 20:09:05.687194+00
1869	pbkdf2_sha256$36000$U5wlkKyLJepc$kx9mmi9/eBXX83Be6iZnB4ThUctme23MrhEW4ahViUE=	\N	f	del_1-1.165				f	t	2017-10-25 20:09:05.742421+00
1870	pbkdf2_sha256$36000$uvDntXlPAuCd$V/1CvR+fUut/VRi6nbamaA343d7imfU3OtZvQNPuy2w=	\N	f	del_1-1.166				f	t	2017-10-25 20:09:05.797027+00
1871	pbkdf2_sha256$36000$wlxhb374pOq9$u+iq4NWyXdanB8B4Fvo/cVkSaBTtr/4lqy+K1QwRkfE=	\N	f	del_1-1.167				f	t	2017-10-25 20:09:05.851234+00
1872	pbkdf2_sha256$36000$Mvnz6Cmhd9Aq$WD/Vx6wYN6Euwy7yUZgbushpKiTW+uzdnw+JUj1pqp4=	\N	f	del_1-1.168				f	t	2017-10-25 20:09:05.906184+00
1873	pbkdf2_sha256$36000$HY683K4FssX4$AFM/aj9FPRrFGKZ+sH492Wg++aObU+2fQqk3DGI/Xws=	\N	f	del_1-1.169				f	t	2017-10-25 20:09:05.960794+00
1874	pbkdf2_sha256$36000$YLmWN3b2IjEH$/KlfJLfgBWkqfj621SsmiCBkeTe5GjIjyb1eRRGQY+w=	\N	f	del_1-1.170				f	t	2017-10-25 20:09:06.016765+00
1875	pbkdf2_sha256$36000$ZW1qVQWVzCrs$3emtM3cR1DzmV9Rk+iBDrhg7dDXeeJiZeinIv7Kz0Hc=	\N	f	del_1-1.171				f	t	2017-10-25 20:09:06.070813+00
1876	pbkdf2_sha256$36000$0HSFyDWnizro$wR55k/C6nGKGleYvYcgrWpV4juEfnukvkqeOibdvKPs=	\N	f	del_1-1.172				f	t	2017-10-25 20:09:06.125296+00
1877	pbkdf2_sha256$36000$e0ocCaSeL9Or$hCLDsxJeVPSjf6YqeATR+CLNsHwk5GKTZ04heTY/LkM=	\N	f	del_1-1.173				f	t	2017-10-25 20:09:06.179791+00
1878	pbkdf2_sha256$36000$bMYlmU01hb9E$17TsByRf+SsRBDYC+QVmhNyKEiR4t/XFDY3R9DKvp7g=	\N	f	del_1-1.174				f	t	2017-10-25 20:09:06.234866+00
1879	pbkdf2_sha256$36000$uejly2l3HIyX$rfZW6QvSxgQg3lQJIwq7A0Cm5xnhlbGJclK+WPajNGA=	\N	f	del_1-1.175				f	t	2017-10-25 20:09:06.293031+00
1880	pbkdf2_sha256$36000$BY9CEeUtHHpB$WpDPagepW9origOdGrOd66ChEMJSmKZQEEgQYAnsXmw=	\N	f	del_1-1.176				f	t	2017-10-25 20:09:06.347904+00
1881	pbkdf2_sha256$36000$ujSJ8fbzuIGA$Mrykonckgxjw3K0Z+O8HvNNLHvwg+iIjjYO5VaAyZ4I=	\N	f	del_1-1.177				f	t	2017-10-25 20:09:06.402407+00
1882	pbkdf2_sha256$36000$e9Y6c3fZRBTC$LRH1esDVS8gf6MrQ/hTKLQYYuOX35aAEGB+19wnZeJw=	\N	f	del_1-1.178				f	t	2017-10-25 20:09:06.457032+00
1883	pbkdf2_sha256$36000$CnHqn7TZvqL9$IDwtorR4G9RAQr+dyARWV/cc2cM4s2Rs4p7tWEbAlho=	\N	f	del_1-1.179				f	t	2017-10-25 20:09:06.513521+00
1884	pbkdf2_sha256$36000$kYDISVmVZ07t$2hCZl7AVY/yCPi2oqG8lQOVi+/syEjlT7sUkoFFNmak=	\N	f	del_1-1.180				f	t	2017-10-25 20:09:06.569376+00
1885	pbkdf2_sha256$36000$auRM8E4Sig4w$Y7fNWAsfuoj9svPGchSU4QxONu37W7R9zky8uM1mqa0=	\N	f	del_1-1.181				f	t	2017-10-25 20:09:06.625331+00
1886	pbkdf2_sha256$36000$38pPTpCJHmLd$VjN2o/JmGt8AvWATBf7jUJTRSYoI5DQ5EGHTnUI+qcc=	\N	f	del_1-1.182				f	t	2017-10-25 20:09:06.688469+00
1887	pbkdf2_sha256$36000$5cJLiuX8kG0w$ShiaSE0u3IaprQN6i2sT1GcGwdc+Q1Cu5YsUN0awSlI=	\N	f	del_1-1.183				f	t	2017-10-25 20:09:06.76338+00
1888	pbkdf2_sha256$36000$sIFdZ6gELXmN$nepWGdwQlNL47fauGfq+NypLuO10ZLP5ml9Ha81hCjg=	\N	f	del_1-1.184				f	t	2017-10-25 20:09:06.818502+00
1889	pbkdf2_sha256$36000$pkiW4rEnX7LN$zeLiu6i7OEsQG2jaUBnyBJ46Kx/UNNnm+e5Pi/Vv7aQ=	\N	f	del_1-1.185				f	t	2017-10-25 20:09:06.873603+00
1890	pbkdf2_sha256$36000$IStfee7W0AtP$8khI+arixdiBa+gXaemd8uS0zT70YY9795OatlHSf4I=	\N	f	del_1-1.186				f	t	2017-10-25 20:09:06.92835+00
1891	pbkdf2_sha256$36000$2HWgEyWICXUt$UbDqLc6UBxswtCld/7pW3hYW+zLoyAEDVK/EdO+pTuo=	\N	f	del_1-1.187				f	t	2017-10-25 20:09:06.983759+00
1892	pbkdf2_sha256$36000$J4yv187CbKCQ$irxtbinOrYlKn5snhNkm77BDzccsHvtkhCEVZXK4n5A=	\N	f	del_1-1.188				f	t	2017-10-25 20:09:07.038486+00
1893	pbkdf2_sha256$36000$LPlJQZboh7Y8$ArCeGXdU/jSzadgdBd2vMy8TjGVN3ByIuM+vx0XoKyw=	\N	f	del_1-1.189				f	t	2017-10-25 20:09:07.093875+00
1894	pbkdf2_sha256$36000$YczOWcQcnXPL$SfA3XVfPyoDau9pj1YwCUljqJbwVICnLGcuz8WvebY4=	\N	f	del_1-1.190				f	t	2017-10-25 20:09:07.149116+00
1895	pbkdf2_sha256$36000$h6J6yJsrQU1P$FuzlUp2LIAaLTwi6dT4oxZiPRNMabKgDs76K0XaVBgs=	\N	f	del_1-1.191				f	t	2017-10-25 20:09:07.205314+00
1896	pbkdf2_sha256$36000$8U7bbxGMyZKZ$+rpf6cZLx0vVTlRAusH/i5xls7LT6uzAPvVYyu6mMXk=	\N	f	del_1-1.192				f	t	2017-10-25 20:09:07.261817+00
1897	pbkdf2_sha256$36000$n9f1igu88NjQ$ibgr/1IqgEDeSR4idC46Ohg/hygoBssIJfFIsSY31qU=	\N	f	del_1-1.193				f	t	2017-10-25 20:09:07.316921+00
1898	pbkdf2_sha256$36000$1AXzyhJNhKOI$i6PzhR240BhrQtrtyooHSJx5VRt96pwtqXmaGMoiDQ0=	\N	f	del_1-1.194				f	t	2017-10-25 20:09:07.372444+00
1899	pbkdf2_sha256$36000$WGi50QhrJ708$Qi4eVhm4J33jzBXyqLxVGT1tA3ve3dUF/Y7JStETnoo=	\N	f	del_1-1.195				f	t	2017-10-25 20:09:07.430726+00
1900	pbkdf2_sha256$36000$FRonpwnIuKo5$rPO/yD3p2PLYuoFZKgaKfw4lKnidkScMv92/Bd74J+E=	\N	f	del_1-1.196				f	t	2017-10-25 20:09:07.485711+00
1901	pbkdf2_sha256$36000$6rijGnYhMfZK$hHAw0icnURl0y+bqCWO7bSrQAXBZxb/oM1HRV4jRcec=	\N	f	del_1-1.197				f	t	2017-10-25 20:09:07.540765+00
1902	pbkdf2_sha256$36000$kDEONBqNcq29$1QyZ132JbmncU6Cq36xCqHR+NBYYXk1y4C9kxhxdjxY=	\N	f	del_1-1.198				f	t	2017-10-25 20:09:07.596398+00
1903	pbkdf2_sha256$36000$xsBhadCjp0t0$jc8TgQWBe34JalZkIn7YIKDhuOtsgw2JSMPoimLFhcY=	\N	f	del_1-1.199				f	t	2017-10-25 20:09:07.651986+00
1904	pbkdf2_sha256$36000$c5pYSm1HMe2U$ZWhVttzQD5hw70Q7McpanW+Re5bGAayaWIRlenqAHy4=	\N	f	del_1-1.200				f	t	2017-10-25 20:09:07.707122+00
1905	pbkdf2_sha256$36000$PuZ4ymrSbjXD$DerRvaujhi1PTWvDIxwanAHxITzzWGndfk9vYDW9gHI=	\N	f	del_1-1.201				f	t	2017-10-25 20:09:07.790613+00
1906	pbkdf2_sha256$36000$7aSP4UYOrdsh$VPY92qREKgb3B0kCZd9AWn809UkKtKRiWH+Vb3kygrA=	\N	f	del_1-1.202				f	t	2017-10-25 20:09:07.845994+00
1907	pbkdf2_sha256$36000$69gFNTWED7ny$6xBYN65u5U9RcqB/ibKruTfw1tQ/YvSmAX4RUV0w10M=	\N	f	del_1-1.203				f	t	2017-10-25 20:09:07.901413+00
1908	pbkdf2_sha256$36000$2GGBd3ixUAl5$TkZpFxuwaWgJi6ZfYhJFS25ojByIE7oLUxp3wF5irw8=	\N	f	del_1-1.204				f	t	2017-10-25 20:09:07.955832+00
1909	pbkdf2_sha256$36000$dBTKEN8JKcUz$QonJnul58lhPwI1xVJi5j470FXfvHTkVrThhJQ6x0pM=	\N	f	del_1-1.205				f	t	2017-10-25 20:09:08.010378+00
1910	pbkdf2_sha256$36000$e90cImJd0GJI$kyPHb6sVSkncsbs9SHaNkaEZe9rOfVLH+x44ckBA2Xw=	\N	f	del_1-1.206				f	t	2017-10-25 20:09:08.069476+00
1911	pbkdf2_sha256$36000$2YivK1fU2010$PLNNGF/KNdvtCyFaatMPP+2iUgMPULpodpunhg+qHMs=	\N	f	del_1-1.207				f	t	2017-10-25 20:09:08.128809+00
1912	pbkdf2_sha256$36000$ypI7L975bpuT$PcbfC7lCYUOltF6cl0P+rXwyerOxb3CpgDetjkJT/Lw=	\N	f	del_1-1.208				f	t	2017-10-25 20:09:08.188035+00
1913	pbkdf2_sha256$36000$xk5Gv30KSzQQ$P4jYd2xPGn+NEgnCES9bhbdnBNpAPHOmE78jMbA2fVY=	\N	f	del_1-1.209				f	t	2017-10-25 20:09:08.248079+00
1914	pbkdf2_sha256$36000$WoclRayabBCq$HbbhDYw7sjsr/IB0wE+7PWxvRMCCaVnN1qAjaLZf3vU=	\N	f	del_1-1.210				f	t	2017-10-25 20:09:08.307889+00
1915	pbkdf2_sha256$36000$eNIo4IqdnxLW$KAdaTRC3BmTGG6/7Ct5fLq8rpt/iFDZKvLvBUmk0LhI=	\N	f	del_1-1.211				f	t	2017-10-25 20:09:08.367419+00
1916	pbkdf2_sha256$36000$NHynHPNob6O5$U27xrPKt5CtrrARhxlIr7tNLPY4pWLWRa8xnpqlliUU=	\N	f	del_1-1.212				f	t	2017-10-25 20:09:08.426914+00
1917	pbkdf2_sha256$36000$8DI3MiUZF3uA$qsxpNf0UlPj4hjxBHt9DJe7k/7FOb1vu5dRNv7egxxA=	\N	f	del_1-1.213				f	t	2017-10-25 20:09:08.486487+00
1918	pbkdf2_sha256$36000$qmbvHwTfe3KZ$u0wd6RuUjNgf6e5WJRbzJ+TtmsoXGKgvOSDxxlOMtb8=	\N	f	del_1-1.214				f	t	2017-10-25 20:09:08.544092+00
1919	pbkdf2_sha256$36000$ilgkZyW5MbuO$k29PoPC9VfvHBFmqOvHbXEIhUWQ4a9L4DX/ek8hv56M=	\N	f	del_1-1.215				f	t	2017-10-25 20:09:08.598279+00
1920	pbkdf2_sha256$36000$ffxUpN0yKOiH$n4IC7rdxRvpLvLzMiM9ErkA6XbRPmfqdVYrqyKExDdQ=	\N	f	del_1-1.216				f	t	2017-10-25 20:09:08.652893+00
1922	pbkdf2_sha256$36000$ldjMsw8bhe50$viddZwzbr0iCX5RRs3AyfqAmmBTCYyDIsRpylZb4L7I=	\N	f	del_1-1.218				f	t	2017-10-25 20:09:08.762501+00
1923	pbkdf2_sha256$36000$8rHsht9Mj9CS$akrnSblVUUZEiu7l4lps9OhHWJSGJAbfV7/LeB9J4bU=	\N	f	del_1-1.219				f	t	2017-10-25 20:09:08.85367+00
1924	pbkdf2_sha256$36000$4hPK6O5uu8q1$sounu+JiTLjJfNawtm5OH+A4y9YtXFmQlgUwxokGgyA=	\N	f	del_1-1.220				f	t	2017-10-25 20:09:08.997527+00
1925	pbkdf2_sha256$36000$CLvuPOyaP1Je$5VcyazJSKcM6gGVo4fmiXlQRh3u9Q/4mj/5Qnp6hWTA=	\N	f	del_1-1.221				f	t	2017-10-25 20:09:09.141991+00
1926	pbkdf2_sha256$36000$W2caeCBQ9SEG$kF8pFN2CUCcy1U+DwTWBDSoJ4KQBZsTe5M9jh2nOzVQ=	\N	f	del_1-1.222				f	t	2017-10-25 20:09:09.297957+00
1927	pbkdf2_sha256$36000$EIeRW6AVIng8$PF3VcWcCyxi40sMMsTiNAvtgOZcIsqCmGFUdSyDuuCM=	\N	f	del_1-1.223				f	t	2017-10-25 20:09:09.440497+00
1928	pbkdf2_sha256$36000$uC5c5aZniRDa$cvahU9k+9jFWYPFM0VR9RBQNn0jzuL1rlIwcQLorvJ0=	\N	f	del_1-1.224				f	t	2017-10-25 20:09:09.574839+00
1929	pbkdf2_sha256$36000$sPBoFW4CWIN8$SuM4uHOnEnkZlF6n1SDmQz9XQGEXNErDoHVmJo9cTzA=	\N	f	del_1-1.225				f	t	2017-10-25 20:09:09.695859+00
1930	pbkdf2_sha256$36000$7136cvam559H$vNw94H/15ZTV9z1n5lbhQ+5lBlnSxmueHKSHJ36gnPU=	\N	f	del_1-1.226				f	t	2017-10-25 20:09:09.821195+00
1931	pbkdf2_sha256$36000$vD5NFbxW0W5s$FP30eCGnOhPmA5K1FXW4lzsF71+md6A37yCk670CcVI=	\N	f	del_1-1.227				f	t	2017-10-25 20:09:10.000787+00
1932	pbkdf2_sha256$36000$8hW1LeqG6ab8$u57P41+w7/XKaam9H9f8BYOOV8u+MGjdfH4NrsLjhZI=	\N	f	del_1-1.228				f	t	2017-10-25 20:09:10.103642+00
1933	pbkdf2_sha256$36000$VyQI8KPgLVs4$sHzGraeUSJA18+6pp3Q5vJye95LthgNlV0Cc4/UiQUo=	\N	f	del_1-1.229				f	t	2017-10-25 20:09:10.205561+00
1934	pbkdf2_sha256$36000$4i2bJLJTWYue$jwVD2hCo67LqdNfXSPSI3iORxUiAG3T3XXHPdKBJnmg=	\N	f	del_1-1.230				f	t	2017-10-25 20:09:10.306973+00
1935	pbkdf2_sha256$36000$OBY0TPTeUlEv$P4s8FC5fkEqnOUGJBFYNTi/rzbFSj8pBhVFcTgMQbZo=	\N	f	del_1-1.231				f	t	2017-10-25 20:09:10.405855+00
1936	pbkdf2_sha256$36000$bfW4HIHJsYnI$sLZ3+9YinoE7uO0tPQqQHPTpwDd1f9iyhRhK2OfXvCQ=	\N	f	del_1-1.232				f	t	2017-10-25 20:09:10.508085+00
1937	pbkdf2_sha256$36000$obGpHaivzUrn$T3OjzxW+jAx+06TYa8wHEQAS+AoiQJzAUiqoSQprWt0=	\N	f	del_1-1.233				f	t	2017-10-25 20:09:10.594962+00
1938	pbkdf2_sha256$36000$OUY9mc7vh4Ei$g6D2wtlb7ipVhFiCiRNy1OjJkVu1QJpkC/RQljnOA7o=	\N	f	del_1-1.234				f	t	2017-10-25 20:09:10.679212+00
1939	pbkdf2_sha256$36000$CdbPBVatI4gi$4H+hCEi6mEMn0qqvvGel8iwSFIpOpf1CXiiK03NlMF0=	\N	f	del_1-1.235				f	t	2017-10-25 20:09:10.764337+00
1940	pbkdf2_sha256$36000$RN6D8RaYauEC$3mo2ccKXyBtRSGbk0zNnix407S7ePbk9xIGMZrGzkk8=	\N	f	del_1-1.236				f	t	2017-10-25 20:09:10.849468+00
1941	pbkdf2_sha256$36000$uzvBgUTCMHuX$lIIl0AijGMD80Vw2vL0XAsWbQP52u+h7kbsMTfy6Oa0=	\N	f	del_1-1.237				f	t	2017-10-25 20:09:10.932987+00
1942	pbkdf2_sha256$36000$6Nt9fiRxHCAF$j0v3mAMW8Lchd19VxZqvmqDjCdA8v9zdpOouz9VGnYs=	\N	f	del_1-1.238				f	t	2017-10-25 20:09:11.051138+00
1943	pbkdf2_sha256$36000$WDrwj3raesyQ$XhrFGAti40bCMmf3OkUHsWpqITNThwDSzdfsmetLhFg=	\N	f	del_1-1.239				f	t	2017-10-25 20:09:11.119138+00
1944	pbkdf2_sha256$36000$RVkA8vziFeex$FVGRTOhZ1RnqRLE1xA3pFydERY09Q6xerHz2j5l7lI0=	\N	f	del_1-1.240				f	t	2017-10-25 20:09:11.191095+00
1945	pbkdf2_sha256$36000$5GRdSDhb37Y9$5e/VWGdIOZC1710ZY8PUV5pYjUHkn5HN5D+Xjwpq6+4=	\N	f	del_1-2.1				f	t	2017-10-25 20:09:11.277927+00
1946	pbkdf2_sha256$36000$tq9By7iTIY54$u6ksNbRHVBOcdMOO/xaGEAYz16trESc31qnJSX0xOb0=	\N	f	del_1-2.2				f	t	2017-10-25 20:09:11.38496+00
1947	pbkdf2_sha256$36000$6isfFrPjQXcU$+H4pt4HFRqiSPnF9AnIrCGkWhwx/PHuLqVpMnD+Bqvk=	\N	f	del_1-2.3				f	t	2017-10-25 20:09:11.453164+00
1948	pbkdf2_sha256$36000$qejgWPMhvzwQ$2CdpCSriMpNhSwStIetKOzzz49J7yEqVLk15u7ar+V8=	\N	f	del_1-2.4				f	t	2017-10-25 20:09:11.520776+00
1949	pbkdf2_sha256$36000$iOC8jZ2ceMO1$pT7E5/n+z5gOD8Nule7NFdwVZ68cYMKMe/QxgUsiTZ4=	\N	f	del_1-2.5				f	t	2017-10-25 20:09:11.659374+00
1950	pbkdf2_sha256$36000$qBlYgH2ifvlD$LLb4Vpk0KGbWjbFO0cwiAMYCNKLUA8pqh2xWREYLkK0=	\N	f	del_1-2.6				f	t	2017-10-25 20:09:11.803334+00
1951	pbkdf2_sha256$36000$sUlOczen8mm4$YIcMmeWK538x6cqHnydWYYZzJ1pSEcYxJ3yxf5RoCBQ=	\N	f	del_1-2.7				f	t	2017-10-25 20:09:11.945944+00
1952	pbkdf2_sha256$36000$fya9ymKE3DOC$aWCOWRTeqllsCjiOCymGpuxmnwHgMYVrT/fB7ypingc=	\N	f	del_1-2.8				f	t	2017-10-25 20:09:12.148381+00
1953	pbkdf2_sha256$36000$xC7h682qUBIe$JHYt0Oa7jC2wGsMAvAAdZTgQ9F3Xybx1t6IjrAd80xI=	\N	f	del_1-2.9				f	t	2017-10-25 20:09:12.281872+00
1954	pbkdf2_sha256$36000$8BQnNHiONXAG$OAmfS1AfVhZs1jjFg6lF01JiYsLvQtOYYqG65IKLf9I=	\N	f	del_1-2.10				f	t	2017-10-25 20:09:12.413941+00
1955	pbkdf2_sha256$36000$5pqM1joNBDrp$6WTfkUNjTmmml9Zv7TOHD0FQ0P0nmzQs2wUXB56FWUg=	\N	f	del_1-2.11				f	t	2017-10-25 20:09:12.542366+00
1956	pbkdf2_sha256$36000$FZtSdZ73FZGw$kFi7aj0r3Eak8EI4x9h+n5w3OXY14AtJjUiJyUcz7lE=	\N	f	del_1-2.12				f	t	2017-10-25 20:09:12.648514+00
1957	pbkdf2_sha256$36000$FF0l0NkmTX2x$j6gvENC+8NYTiUmFjhZ3oZvLt6+X+PqQ9/35TuPpax4=	\N	f	del_1-2.13				f	t	2017-10-25 20:09:12.756428+00
1958	pbkdf2_sha256$36000$kQAxg0tdnF5z$bfMtPQ+JZnAPGxBGKuTol/w+ZsQC1vMYAe2NGEPt0FQ=	\N	f	del_1-2.14				f	t	2017-10-25 20:09:12.862517+00
1959	pbkdf2_sha256$36000$UPfOECNejeJe$+Vc/XLbrtuQL0jq/Rx7W6EFpJtFsdCNYtOEioy/OlEI=	\N	f	del_1-2.15				f	t	2017-10-25 20:09:12.969614+00
1960	pbkdf2_sha256$36000$EpUJT8LDRrwB$LJPE16s5VLH7FkQtcLQpUuD3Udu8X6Z9cfRNU5HEWRk=	\N	f	del_1-2.16				f	t	2017-10-25 20:09:13.073564+00
1961	pbkdf2_sha256$36000$HF6Iin6o0Orr$2HUy/0+SsgZtgogTH/FHsmfkY5Rr6REFuJQv+hZV+J4=	\N	f	del_1-2.17				f	t	2017-10-25 20:09:13.172512+00
1963	pbkdf2_sha256$36000$Z8zyA4veON0O$fRaVguxqH9UUw3LfHbVdw+YgqdeFyOkZzqi+YEeQKA8=	2017-11-13 14:04:13.633246+00	f	del_1-2.19				f	t	2017-10-25 20:09:13.512206+00
1964	pbkdf2_sha256$36000$3d6bbFmHWz6Z$DUDISEZoVQceSkYQd5Za9ez1kvhJR1OI2tEopNW3HPo=	\N	f	del_1-2.20				f	t	2017-10-25 20:09:13.653627+00
1965	pbkdf2_sha256$36000$ePz2POi4yScn$tyx5STWE4rLtqIwlRqiJHGLp734clCYL/vctyszPcQ0=	\N	f	del_1-2.21				f	t	2017-10-25 20:09:13.799971+00
1966	pbkdf2_sha256$36000$NTxZoYwBXgsN$IBI7zsQGXPuHnCAwdeNur61tbVKf/NJe4lCXXJvYk+U=	\N	f	del_1-2.22				f	t	2017-10-25 20:09:13.943467+00
1967	pbkdf2_sha256$36000$xJcRv4ZVZhF5$fHiWW8LVp4Z2MDBETo/g5WEZu+Rk24UFoNstuV1W4bU=	\N	f	del_1-2.23				f	t	2017-10-25 20:09:14.096141+00
1968	pbkdf2_sha256$36000$rp61Zsu7BwSB$qioUPHhSK4sQmSRulo5QVwIpjACDlpGPxTekSbgmNgU=	\N	f	del_1-2.24				f	t	2017-10-25 20:09:14.247731+00
1969	pbkdf2_sha256$36000$jc0A4frLULXa$oU84vCzO8JnZ44/vmI4Mil1AyrkJQLipSVaL/BPvmM8=	\N	f	del_1-2.25				f	t	2017-10-25 20:09:14.459292+00
1970	pbkdf2_sha256$36000$Dyx9UDymsl82$T0QUsd7cmneKh7HUv2fewYJWkTQeBe8YeJAirWWzPy0=	\N	f	del_1-2.26				f	t	2017-10-25 20:09:14.605371+00
1971	pbkdf2_sha256$36000$wuCAVBGrnXlv$ODDicUJSwoz3aiGBTJMPRtJTIuFSBYWA+p/XKiMK8pA=	\N	f	del_1-2.27				f	t	2017-10-25 20:09:14.749051+00
1972	pbkdf2_sha256$36000$FImh6KoQCax8$VNFwJV+BQB8wFird/glEv8AxVDUCQFfHB9uH4zYFzrc=	\N	f	del_1-2.28				f	t	2017-10-25 20:09:14.893828+00
1973	pbkdf2_sha256$36000$KizNfhvjydW7$TpAfJ8j8p9qFTsAvBbVAfpG68QbvpxPKCUWQAJKjGX0=	\N	f	del_1-2.29				f	t	2017-10-25 20:09:15.040291+00
1974	pbkdf2_sha256$36000$yxFkQj4r1SR3$aP/gjKjILYdYJMxKxhof1hnyw5Gj07uAzrYfjLARu4g=	\N	f	del_1-2.30				f	t	2017-10-25 20:09:15.184848+00
1975	pbkdf2_sha256$36000$SjsSKYeTN1t6$5MzfIf8aNZUOd/+93W3kh0MkT6nntDzOLnEcEXzYQQs=	\N	f	del_1-2.31				f	t	2017-10-25 20:09:15.335253+00
1976	pbkdf2_sha256$36000$uSAP4Ojl1SMk$MZaD9g++JCiTSEosKxjFEq3tur4XW1OJdiNnMkNcJ3w=	\N	f	del_1-2.32				f	t	2017-10-25 20:09:15.546052+00
1977	pbkdf2_sha256$36000$vV3ytEJTIUZa$Ulle62p1yzS3SMYzv5LGYUrKkXypENXOHRvp/6zBTuk=	\N	f	del_1-2.33				f	t	2017-10-25 20:09:15.688518+00
1978	pbkdf2_sha256$36000$baW6o80QOLQI$DcFJhWug7uhsQXFW32Hvd2cY/DLEh7UJ0xX5hmHk/EA=	\N	f	del_1-2.34				f	t	2017-10-25 20:09:15.831067+00
1979	pbkdf2_sha256$36000$qEIf0lwh169O$mLQWvJV63A4aEe4/ASZbI6qAGkRkPG6kKjtLvKG8AAU=	\N	f	del_1-2.35				f	t	2017-10-25 20:09:15.974033+00
1980	pbkdf2_sha256$36000$5C0PhHn1pt6T$OcaTO6HJeSX/2pDhTzpqpU9ce3h8Hv02lmtJR2oJJQY=	\N	f	del_1-2.36				f	t	2017-10-25 20:09:16.100887+00
1981	pbkdf2_sha256$36000$3BpPiR8RIMWR$MviyOB+l821kaOSSFhoWvsD7mb9fRYSWBQ/aOzCvvzo=	\N	f	del_1-2.37				f	t	2017-10-25 20:09:16.215628+00
1982	pbkdf2_sha256$36000$LQHfh7cPnxxB$UKmmvSCGMjUuSLJllvKB3s2D6WzmYyWrbRmo0iC8x+I=	\N	f	del_1-2.38				f	t	2017-10-25 20:09:16.341804+00
1983	pbkdf2_sha256$36000$4Xa0ISRuSAz7$nrmMEapYxUYSgC9t209/b0PZ5QMtGXGVqLE8bC35o1U=	\N	f	del_1-2.39				f	t	2017-10-25 20:09:16.461085+00
1984	pbkdf2_sha256$36000$AJT0h0lIkOlS$PS6wQ8My5mYX5UfCdfbumYBXP7pPGrx93pqVtckEqJM=	\N	f	del_1-2.40				f	t	2017-10-25 20:09:16.613236+00
1985	pbkdf2_sha256$36000$CHrgCOim7WIi$4277QG7aRUjnfyPDVqz3yoE1VZeZOM/vQ9i7ogGlN0A=	\N	f	del_1-2.41				f	t	2017-10-25 20:09:16.735119+00
1986	pbkdf2_sha256$36000$TPuY51caI6Q2$jYOyzqw1y5hAYdx7KL2A5g5HyX2+85jFeRYcEvjWuFk=	\N	f	del_1-2.42				f	t	2017-10-25 20:09:16.844867+00
1987	pbkdf2_sha256$36000$jttT81hADyQq$+Esz5t0iON+ECJJu/ErFlt+pLoULnBObEgx+R4tQQLU=	\N	f	del_1-2.43				f	t	2017-10-25 20:09:16.949362+00
1988	pbkdf2_sha256$36000$8HYPkMyYPlHj$vCcFRJ6VJbbKDDC9/EJ+pF4Hz+ACogEVtWPqfVH7zD8=	\N	f	del_1-2.44				f	t	2017-10-25 20:09:17.040073+00
1989	pbkdf2_sha256$36000$gNJvTdLLahmt$NG0XMN5aGTBH0/LYl1X4FPytQhgJsHpvGYyTNPxBV9M=	\N	f	del_1-2.45				f	t	2017-10-25 20:09:17.09559+00
1990	pbkdf2_sha256$36000$PzRcpRBsW6wz$6NSH8eHF9VE4KRzx+wy3nIfWp3S1LeUHczmuXlMYW0U=	\N	f	del_1-2.46				f	t	2017-10-25 20:09:17.150664+00
1991	pbkdf2_sha256$36000$g1Kilxvg9SHD$r0kieT3gynzmZroe9aztKPgoNlbkbHrQA3Llf7mui4Y=	\N	f	del_1-2.47				f	t	2017-10-25 20:09:17.206442+00
1992	pbkdf2_sha256$36000$QCSyTnBdjEjP$P2qlXsQ7XDj63XrnojKUl11dqW4zzenHHhu53tdHD+c=	\N	f	del_1-2.48				f	t	2017-10-25 20:09:17.2627+00
1993	pbkdf2_sha256$36000$fUsgaLI0uqnj$92B3granwp0/vgPjTmKCRpFNJUqfvy5FnqFADRzbnbQ=	\N	f	del_1-2.49				f	t	2017-10-25 20:09:17.317205+00
1994	pbkdf2_sha256$36000$hNrx4vFPT9fO$PXGQxkmiQSo/UdzsP7MYC35OGzQ9zJk6GIca6OUNGFk=	\N	f	del_1-2.50				f	t	2017-10-25 20:09:17.372513+00
1995	pbkdf2_sha256$36000$szYuWSR876uw$E+YmDGJ0H83NCTdUMa2EziZu7Zrt52Jw4esBsVsWtXM=	\N	f	del_1-2.51				f	t	2017-10-25 20:09:17.427331+00
1996	pbkdf2_sha256$36000$HCnyOh7PUr3K$obBmHSG9fPZ+oQdFKghEuvaxj5AB03XvhJVttetV9U0=	\N	f	del_1-2.52				f	t	2017-10-25 20:09:17.482341+00
1997	pbkdf2_sha256$36000$RU6bVs4Mfzws$Sf9YbBuz/lZ7fnRpKdbN3rCcX5qVbUBiJGhdNlvd944=	\N	f	del_1-2.53				f	t	2017-10-25 20:09:17.539467+00
1998	pbkdf2_sha256$36000$WR7IhqBtAsNW$Av6AGwffPDCDjPxdAHdfjJuLBqTaCF/VPx+ybZJ/KdM=	\N	f	del_1-2.54				f	t	2017-10-25 20:09:17.594649+00
1999	pbkdf2_sha256$36000$0SVw3Lf72YKA$RpeWma6eJK7WxSvqDNVZWVgWlIbGqAGUxxkegKMzDbQ=	\N	f	del_1-2.55				f	t	2017-10-25 20:09:17.666458+00
2000	pbkdf2_sha256$36000$vRS8lyDl3GpZ$m/NSMyopATTPYGpgzRp0iwuGhFx4hTaRF2uZnrWX2to=	\N	f	del_1-2.56				f	t	2017-10-25 20:09:17.734109+00
2001	pbkdf2_sha256$36000$wIeAizQvmba6$af/+7ZLaZYVgVTTaGdwaqwdxDEDwy9yBc4MutlycLIQ=	\N	f	del_1-2.57				f	t	2017-10-25 20:09:17.789452+00
2002	pbkdf2_sha256$36000$WE7DS73p3h75$CAxwxhwWnGCYdSSxZyhSL54E9ssOJ5+DQ0SauT7i95M=	\N	f	del_1-2.58				f	t	2017-10-25 20:09:17.844983+00
2003	pbkdf2_sha256$36000$hLoY1vvAFAIm$HeAsawcfYbjJ7wlTxTQzhIHf5tF+MeC5bmy+IbesOtc=	\N	f	del_1-2.59				f	t	2017-10-25 20:09:17.902335+00
2004	pbkdf2_sha256$36000$F59Rjtum32Vi$Mmlk38Cet4+HSKkOgpnmxSUIcOLGYDXNTtnidmxFOq0=	\N	f	del_1-2.60				f	t	2017-10-25 20:09:17.957417+00
2005	pbkdf2_sha256$36000$Ay3MjpZlvW0Q$AGBWlJawp59zFUGFN+36oNe4JDRb8c2oNCZ/X/0/U/o=	\N	f	del_1-2.61				f	t	2017-10-25 20:09:18.012592+00
2006	pbkdf2_sha256$36000$9Ym25tW16eDa$qmooZ8lpNRZKfvdZGmQpofRobRkITHr64j54lxOOkTU=	\N	f	del_1-2.62				f	t	2017-10-25 20:09:18.067878+00
2007	pbkdf2_sha256$36000$DLPBgbiw4jod$tp63bJN39LAOsOplieob356ZaqO3yy2e9aj3jyoBwoo=	\N	f	del_1-2.63				f	t	2017-10-25 20:09:18.12292+00
2008	pbkdf2_sha256$36000$B8nz1kjEqah7$QYYgziG7Qy9QZnAZRvUh8GutAS92+/mULs2jMk2d/6I=	\N	f	del_1-2.64				f	t	2017-10-25 20:09:18.177678+00
2009	pbkdf2_sha256$36000$tcFCr11JeSHf$6Ufp/sbhdzM6kyqajEDVrVDnYh9n2cAOt/FppE9yqbY=	\N	f	del_1-2.65				f	t	2017-10-25 20:09:18.233449+00
2010	pbkdf2_sha256$36000$yJyZqul8YSa4$SSxXqlqft4W59J+iX02CgUYwrBogAv7XQwpCc7AzN2U=	\N	f	del_1-2.66				f	t	2017-10-25 20:09:18.288314+00
2011	pbkdf2_sha256$36000$XH9LrfOaEl5D$hCfudflcGrVjf3zoyMjW8Qvr+1PYVOFXj9oZtCjuqiU=	\N	f	del_1-2.67				f	t	2017-10-25 20:09:18.342793+00
2012	pbkdf2_sha256$36000$gETy38OD3o1S$eifTk/qq8WsjfuG73SGYx00QEJByc6vNg6Y5fCBnFqE=	\N	f	del_1-2.68				f	t	2017-10-25 20:09:18.397124+00
2013	pbkdf2_sha256$36000$b6vGJPS3Y2ix$27l7KqM9qx3AZ4KAbZv0vHH+1HMu4HX4AiZgUCVvbow=	\N	f	del_1-2.69				f	t	2017-10-25 20:09:18.451276+00
2014	pbkdf2_sha256$36000$9AEdqiVYc7Y6$oTXKZ0qyIol42OjfvzdXrzPgdFpxElrMVLIl41EztkA=	\N	f	del_1-2.70				f	t	2017-10-25 20:09:18.506531+00
2015	pbkdf2_sha256$36000$t596UML054CB$0YJBJ+5vjuTV9S9Padb+WlJzrI25YAPqCMusj7dyXZM=	\N	f	del_1-2.71				f	t	2017-10-25 20:09:18.565444+00
2016	pbkdf2_sha256$36000$pAXGy0ABZ4qX$EsWk6L+r2kaeWAK4hHyxw0uHicnyuDqBPxMXxL3WU4Y=	\N	f	del_1-2.72				f	t	2017-10-25 20:09:18.621109+00
2017	pbkdf2_sha256$36000$tpkRhOuxIg4h$b22gVsiGtFebkZW7xwthMHLX0XgqSsUpDj7C4+JB/qg=	\N	f	del_1-2.73				f	t	2017-10-25 20:09:18.675996+00
2018	pbkdf2_sha256$36000$jRPgcOHKXew2$3ouxcgZKhqrxvbomJiwxdvKo+c1Vsh7r8aPu6SYuMv0=	\N	f	del_1-2.74				f	t	2017-10-25 20:09:18.758242+00
2019	pbkdf2_sha256$36000$wpN4477o9SIK$i4YFzmQdizllEXCzyf6j8pkaWFq4A+L6YUOF/aIcr7k=	\N	f	del_1-2.75				f	t	2017-10-25 20:09:18.813034+00
2020	pbkdf2_sha256$36000$ovOOYUd8ELu9$yK0H4aoX+rR2O3laJBNiS3NUEPrcUovVlwDJZau0rnw=	\N	f	del_1-2.76				f	t	2017-10-25 20:09:18.868603+00
2021	pbkdf2_sha256$36000$RRCvoW2dFcc6$AGktSA/gFcD4tMdc8U03XfshMo3CGMIw9oa043DcsG0=	\N	f	del_1-2.77				f	t	2017-10-25 20:09:18.936771+00
2022	pbkdf2_sha256$36000$UhhIscRiKd0o$mgncAV7oYBt138A5Px9jimmOCl2508kCxFYBpaZ3BtI=	\N	f	del_1-2.78				f	t	2017-10-25 20:09:18.994065+00
2023	pbkdf2_sha256$36000$OAYC3Ooeiq8M$Ex6iyeCLRzQR1WwcSxz/lTbxmIJDKRbTyoxPipZkO/s=	\N	f	del_1-2.79				f	t	2017-10-25 20:09:19.050053+00
2024	pbkdf2_sha256$36000$392kRNe1C8PI$aZ8Rx/ce9I8Bv7jBMDChvOVlEpzTHiYsIZJE0EsrceU=	\N	f	del_1-2.80				f	t	2017-10-25 20:09:19.107337+00
2025	pbkdf2_sha256$36000$gWRUIuBwX327$Iw6EZraQ5dOPRbAUdPQEHMsRxuR6Q1huoqGtcr0WYww=	\N	f	del_1-2.81				f	t	2017-10-25 20:09:19.16518+00
2026	pbkdf2_sha256$36000$ka9PvlnZVmYk$GNUe1yfCJsCqjwfgl7o1SlMg1tkrmyWSPd8zQvytRtY=	\N	f	del_1-2.82				f	t	2017-10-25 20:09:19.223664+00
2027	pbkdf2_sha256$36000$G4g7ra135m4I$Ud6hXYTVNJdEvHjPEeeH/OLQkbRXeYAazP1Fy9p++X8=	\N	f	del_1-2.83				f	t	2017-10-25 20:09:19.280769+00
2028	pbkdf2_sha256$36000$ummZexNkYQ3Q$OtV9GeapvZKeUsyrNn57sCc/BezLYKdyaBdpuJPHXOA=	\N	f	del_1-2.84				f	t	2017-10-25 20:09:19.337108+00
2029	pbkdf2_sha256$36000$I8dFjBhmglEE$NwFk+W60luwxl1ErgufatCz0pwAjRRYfmRxCtkjSNzA=	\N	f	del_1-2.85				f	t	2017-10-25 20:09:19.395066+00
2030	pbkdf2_sha256$36000$rYugnc9M6OoS$3gGGwSqnsINOlME+WSNwQo/BirRZutK7okju5sVvO7Y=	\N	f	del_1-2.86				f	t	2017-10-25 20:09:19.450892+00
2031	pbkdf2_sha256$36000$dSGFyEncXb9A$dYtv3fYWm8HsRbn2hVVZIzguIWReC82ITjAgIQcLto4=	\N	f	del_1-2.87				f	t	2017-10-25 20:09:19.507371+00
2032	pbkdf2_sha256$36000$cdLYtkVEWU5u$n0d683FwkOdeHI4Y9agnVFNamg4zPTwxsZCZg065BCM=	\N	f	del_1-2.88				f	t	2017-10-25 20:09:19.562714+00
2033	pbkdf2_sha256$36000$AGKtiRihxaC7$JyhY68HQJyfT58PLpbhLSHtzLk9kSR1PDxDSr4lW1UY=	\N	f	del_1-2.89				f	t	2017-10-25 20:09:19.618236+00
2034	pbkdf2_sha256$36000$mUfPhnCltubK$Cn0NLuNQ5hDGueniMXHot1YM1Pxbrrw1UKhlYjma344=	\N	f	del_1-2.90				f	t	2017-10-25 20:09:19.673436+00
2035	pbkdf2_sha256$36000$23I5E5h5VRwD$Jsmthi295SRWI9Ota51GJIn7PBde2TmJjt3OpgvXUU0=	\N	f	del_1-2.91				f	t	2017-10-25 20:09:19.729593+00
2036	pbkdf2_sha256$36000$i3hgQptXsaVu$9Yk5r/dbOzt0MmXKauCjP6MHoi+FoGbZPalTULl4g9M=	\N	f	del_1-2.92				f	t	2017-10-25 20:09:19.811056+00
2037	pbkdf2_sha256$36000$1ttxWd98tgF2$19dxf+CDBH0G5N0IqizDcFzwvM0STblxNp6+u3pAVTg=	\N	f	del_1-2.93				f	t	2017-10-25 20:09:19.866403+00
2038	pbkdf2_sha256$36000$MjffQnNJrPkR$mMvqtRMrW7a6ZY20aoxqVB7KEdNu4N3JSDO2n+VIh94=	\N	f	del_1-2.94				f	t	2017-10-25 20:09:19.921931+00
2039	pbkdf2_sha256$36000$twJcmiWhORf2$/fgKFSF8GtLcFNaAVQeXokedjBvJehzPWj4voDR7VBc=	\N	f	del_1-2.95				f	t	2017-10-25 20:09:19.977314+00
2040	pbkdf2_sha256$36000$wAwtSsndDw5j$nOsPTvGX4oaebkj9RBO7MXM1gE3CofVVdXYcpQos54k=	\N	f	del_1-2.96				f	t	2017-10-25 20:09:20.032857+00
2041	pbkdf2_sha256$36000$zv6shlSX03NA$oeJSTjAXHifsXFDeBgtTlRMQQ3Ov2mPCO3LohOmiMsw=	\N	f	del_1-2.97				f	t	2017-10-25 20:09:20.088081+00
2042	pbkdf2_sha256$36000$rTHVe8DvFIel$rN4oS9gJAYVQ+IPaVoiQ+GRuTg4R0BGvhl2AF9Y8Wo4=	\N	f	del_1-2.98				f	t	2017-10-25 20:09:20.143466+00
2043	pbkdf2_sha256$36000$gfIx0LmwTAtz$IJetJGaWMguhTVCppW1SNP324gsYjxYWMISg843iey4=	\N	f	del_1-2.99				f	t	2017-10-25 20:09:20.199409+00
2044	pbkdf2_sha256$36000$yX25O0t6lsyn$NbnMCx8YEWtkGkd1ubkvdSvmRHTVkdbtdcdRiawVgCc=	\N	f	del_1-2.100				f	t	2017-10-25 20:09:20.25671+00
2045	pbkdf2_sha256$36000$CgKcM441QDLv$s+wauynOtlHpucZoO67yieqkhTojKpdcREH5cSddIsk=	\N	f	del_1-2.101				f	t	2017-10-25 20:09:20.317463+00
2046	pbkdf2_sha256$36000$58VfoeqzNKt4$DvEmRjs8wfj2nz9R6dVKxT7NIC5K5scnEAJHJvqEAz8=	\N	f	del_1-2.102				f	t	2017-10-25 20:09:20.373069+00
2047	pbkdf2_sha256$36000$Rw8wwcczy2wv$rg8XEhBavBo+c8yu/W4NqYUe/bafs/muciDPnFKoaYk=	\N	f	del_1-2.103				f	t	2017-10-25 20:09:20.42833+00
2048	pbkdf2_sha256$36000$uBsJX11t2pja$KwQBWVuK77/a0yBrqhbwvaLMcMApt8jtqr+MA6KBxTY=	\N	f	del_1-2.104				f	t	2017-10-25 20:09:20.485434+00
2049	pbkdf2_sha256$36000$X1QFsHV7lH7i$v6VYvHGBK84DJklXDZusfZmzKrJGvPfHzXoiCa7pRSU=	\N	f	del_1-2.105				f	t	2017-10-25 20:09:20.541063+00
2050	pbkdf2_sha256$36000$p2yawu6bGxls$9Gt6Q5UiYc2mn6Egx1j7D/R8Y53kh6daJsjRH7Crpdg=	\N	f	del_1-2.106				f	t	2017-10-25 20:09:20.597112+00
2051	pbkdf2_sha256$36000$eQA5a3Ju7gV3$H08zDk2oqIIxoP06LIjYLzt9QWsmPKVbaOSU3x3rTJc=	\N	f	del_1-2.107				f	t	2017-10-25 20:09:20.652115+00
2052	pbkdf2_sha256$36000$8NWRs4KCSG5y$Mx7IVwFwGOaGs9ejMbwXOZcTH+2JMDoySNmTtUVphzo=	\N	f	del_1-2.108				f	t	2017-10-25 20:09:20.707068+00
2053	pbkdf2_sha256$36000$hGXGuUO9Xx39$9izUJ3lAUV76JiXK+uXVzaNLoiB1hK9nHlcUHE8fRDc=	\N	f	del_1-2.109				f	t	2017-10-25 20:09:20.763866+00
2054	pbkdf2_sha256$36000$KWIhXry2YciT$TB38rrcba4y+q+EtwzPq1AQHAVxYl7Jy/BP3Yc4JuJ0=	\N	f	del_1-2.110				f	t	2017-10-25 20:09:20.852931+00
2055	pbkdf2_sha256$36000$kD6xBtvvdJxG$aNC0z/pYU5eXY42M4Ge4it07s76m0cJuHqA39X7PtVg=	\N	f	del_1-2.111				f	t	2017-10-25 20:09:20.911198+00
2056	pbkdf2_sha256$36000$HdfAjQJXu3r7$tsR65nnmOi9X86f74YOKLMwLPDV0G+Jc/cBSA9RCNhA=	\N	f	del_1-2.112				f	t	2017-10-25 20:09:20.9703+00
2057	pbkdf2_sha256$36000$Jc2psdUjqOXT$40p0HWB/l3mLWiEbOjb+6HztZfigRFbifE6UtIafj+0=	\N	f	del_1-2.113				f	t	2017-10-25 20:09:21.02911+00
2058	pbkdf2_sha256$36000$8LXJGCGRdEII$kz8+gQYVE0C+BA9e7sEHzCLUzN1oRi8fukjboQjETnw=	\N	f	del_1-2.114				f	t	2017-10-25 20:09:21.087369+00
2059	pbkdf2_sha256$36000$OlKA5hLTXJ5b$Y7wRzzYNAR3AY9IBHknkk1GhR58100FRGkcU6HKd8d8=	\N	f	del_1-2.115				f	t	2017-10-25 20:09:21.155399+00
2060	pbkdf2_sha256$36000$6IoyKPGoyhAC$luJ3OpA5HRBjensgjj0d8CQfapGn1JqArv7yoOkTpyw=	\N	f	del_1-2.116				f	t	2017-10-25 20:09:21.214064+00
2061	pbkdf2_sha256$36000$Q1bslBx0iooL$U5lkncoejTTNJcWjtrv2N7TVKse+JBQT7vI3pMbT5QM=	\N	f	del_1-2.117				f	t	2017-10-25 20:09:21.273711+00
2062	pbkdf2_sha256$36000$1B6hixMw2URB$oqVjtIcijByzgF82eTzmJ2RMOzW/X2hCcJygXYqYfDA=	\N	f	del_1-2.118				f	t	2017-10-25 20:09:21.331647+00
2063	pbkdf2_sha256$36000$Z4FP26QwFQcB$tvQ/7DbUdrUxcxOwzZsxKWlmWmGl861AuK99lYmMhOk=	\N	f	del_1-2.119				f	t	2017-10-25 20:09:21.389344+00
2064	pbkdf2_sha256$36000$ZlrM2kq7NEQd$fxIx7FIpvaoy+N93ZYu6EV6Q3NW4DDlvr2NpRN7WDQY=	\N	f	del_1-2.120				f	t	2017-10-25 20:09:21.444783+00
2065	pbkdf2_sha256$36000$RtOcsg005J6G$WkhzxkhlvmAdO6UOyxO0qIjeB4U3fl5EPXjJLSernRE=	\N	f	del_1-2.121				f	t	2017-10-25 20:09:21.500957+00
2066	pbkdf2_sha256$36000$bI3vuIB5f3l6$Y5XqDDtYC4cMkK0LCJyuJ1MIv+yEQasWHiCGVLi3dsk=	\N	f	del_1-2.122				f	t	2017-10-25 20:09:21.556536+00
2067	pbkdf2_sha256$36000$Sw6nvEKTM3Qv$N2Vze2tGtE2MIlMGwPu6IByzzm5+5TEHjTpRZvNFaIo=	\N	f	del_1-2.123				f	t	2017-10-25 20:09:21.614457+00
2068	pbkdf2_sha256$36000$pc2WPTfnbNEH$8VY37xqTLlJks66xmtIGBaPw64KtYVIo0CCXwuF1V2w=	\N	f	del_1-2.124				f	t	2017-10-25 20:09:21.669547+00
2069	pbkdf2_sha256$36000$MWA9xxLjSHgr$9dSRIYWB63x/QdHkKaW1IAkTBLFWAbv8ZAAmgGLqrPY=	\N	f	del_1-2.125				f	t	2017-10-25 20:09:21.725815+00
2070	pbkdf2_sha256$36000$LxRSlRJT0OOB$fRiz9eHfG5po2QsA4pi+ks5+k2XQ4KgZMlmQpgZrRiA=	\N	f	del_1-2.126				f	t	2017-10-25 20:09:21.782088+00
2071	pbkdf2_sha256$36000$wrAZFWGoi8FZ$a6zkyP/mwmkkS7Yxbq/nAIiuBmiCAo08/9HWFrOBIcw=	\N	f	del_1-2.127				f	t	2017-10-25 20:09:21.839718+00
2072	pbkdf2_sha256$36000$dEhTSGxmE2yG$3Jj+9P0BjKyuRjOqy61SO62cznJQPlP9tj1P7uodwkQ=	\N	f	del_1-2.128				f	t	2017-10-25 20:09:21.923397+00
2073	pbkdf2_sha256$36000$F0sexpKyLzNu$BoP67LtPjgYmVXP97IKfFOPlFy63PLq78I5PrztIxAg=	\N	f	del_1-2.129				f	t	2017-10-25 20:09:21.979648+00
2074	pbkdf2_sha256$36000$5rUN95in4lLG$O/2UC/yaudkyfz34a79sv6MHsUoSdn6yIYt0F1nRHiA=	\N	f	del_1-2.130				f	t	2017-10-25 20:09:22.036847+00
2075	pbkdf2_sha256$36000$FJzhb57YItSP$RuJkPlXWDxmrZ8WHm8i3dTJLN+yi/pso/PCVsfgbdYI=	\N	f	del_1-2.131				f	t	2017-10-25 20:09:22.093028+00
2076	pbkdf2_sha256$36000$88nrADN6g1Cb$SiShNLjJsIPGKVPLYX42+DEWqB+lpk3lZ7mH8qmD5B0=	\N	f	del_1-2.132				f	t	2017-10-25 20:09:22.149259+00
2077	pbkdf2_sha256$36000$zRDle1AQAnbD$m4Henc9lJ6arPLaulCTKpIk7SO8G5YlKaxMuX20h66g=	\N	f	del_1-2.133				f	t	2017-10-25 20:09:22.205955+00
2078	pbkdf2_sha256$36000$keF0JLQYbM8y$zS+yfu2YoldSbVqzNuA7KD8r/TZxY9iz31onnpI4//g=	\N	f	del_1-2.134				f	t	2017-10-25 20:09:22.264588+00
2079	pbkdf2_sha256$36000$Sr3MmtyPP37D$xivt028hdZ1tXNmY6vO6jcztdgVpBuNL5Tt151AJy/o=	\N	f	del_1-2.135				f	t	2017-10-25 20:09:22.320948+00
2080	pbkdf2_sha256$36000$Plqvmvqfu20A$gAiaZHfhPMMWHVpOngHvo2j8K2XDpyZ14U+4rsPmbmg=	\N	f	del_1-2.136				f	t	2017-10-25 20:09:22.377744+00
2081	pbkdf2_sha256$36000$NkkAUaNkQQ1s$sbylYDax/GlOBO0LKraeyHt3uz0IsqU5RPS9SpOnO60=	\N	f	del_1-2.137				f	t	2017-10-25 20:09:22.436112+00
2082	pbkdf2_sha256$36000$hUlvfg5caBJM$MDXx4JDd8fygFJ87M1u/jVwc+AkoIGalwrIF2XY1b1Q=	\N	f	del_1-2.138				f	t	2017-10-25 20:09:22.496418+00
2083	pbkdf2_sha256$36000$DlNR3YpK2TvX$LXzjB7H21r+Ljgyl2sO9eii7kHqNQJkf6LW4okNbbis=	\N	f	del_1-2.139				f	t	2017-10-25 20:09:22.554078+00
2084	pbkdf2_sha256$36000$U9GD684ZqTKc$wTTDpfVBPVEmrt2cLyfczRyw5akD2+yHAinDjv0rAC0=	\N	f	del_1-2.140				f	t	2017-10-25 20:09:22.60996+00
2085	pbkdf2_sha256$36000$DAfPC6SXsLeP$ZIaskfRFtuQY6sHdXvTNSKbkmUQDs4LAOqrmbrkVCHE=	\N	f	del_1-2.141				f	t	2017-10-25 20:09:22.665918+00
2086	pbkdf2_sha256$36000$s7mRuC1qKcTZ$LCCcC6eeO6k6fQn9URopdCs89mA4f/+Z309FbrNRVsY=	\N	f	del_1-2.142				f	t	2017-10-25 20:09:22.722832+00
2087	pbkdf2_sha256$36000$hsHjRpjPdTd9$qmJ9XifNcNhh6m7MHgliMLLxEUU4/bvfN40FzrbSTfY=	\N	f	del_1-2.143				f	t	2017-10-25 20:09:22.780954+00
2088	pbkdf2_sha256$36000$gOKxsll1aKTT$CMVgjPIgc8jHCbBq+/wP2ezfedEzhBVOVB/VX12VHPU=	\N	f	del_1-2.144				f	t	2017-10-25 20:09:22.837793+00
2089	pbkdf2_sha256$36000$qYXQDK61Knpa$NmGWNf7RqohOoPZRSPF2zwwfAoK1kgN8nAgpAf7Gv28=	\N	f	del_1-2.145				f	t	2017-10-25 20:09:22.894933+00
2090	pbkdf2_sha256$36000$6TEPCtB0YMBk$EwDfLtlCoh9x/nN6XOQtU013Aj00ZKCHqquGj9tnhtk=	\N	f	del_1-2.146				f	t	2017-10-25 20:09:22.981633+00
2091	pbkdf2_sha256$36000$auF2hM6Iiynb$gmpmGmgAjqhLF/2bCebowATDREk45iFK9aZf8s1hoqY=	\N	f	del_1-2.147				f	t	2017-10-25 20:09:23.038476+00
2092	pbkdf2_sha256$36000$RC63D3zazljg$1x0JWLeK5/bcTkGTHE1TZKwSqsx3UDWyzS10rXg3l1g=	\N	f	del_1-2.148				f	t	2017-10-25 20:09:23.094613+00
2093	pbkdf2_sha256$36000$zsZciHlgLco3$mHdhTfm9RgmkiyExkMFEUrSmagNEqZOb6xqGr3mLkJk=	\N	f	del_1-2.149				f	t	2017-10-25 20:09:23.151813+00
2094	pbkdf2_sha256$36000$YBYDiqKz7l8q$XsPIwP/+ZeadEQWiTBA5rTwDv6Miu4p5vN09ZQ9IflQ=	\N	f	del_1-2.150				f	t	2017-10-25 20:09:23.207307+00
2095	pbkdf2_sha256$36000$L456xlo2Hjxs$juaqkuiRIf5NqX/y1CMtgZUb8PhIKWJPQdHiSsV8/wc=	\N	f	del_1-2.151				f	t	2017-10-25 20:09:23.263397+00
2096	pbkdf2_sha256$36000$etuN99ix8TVG$wk9HHGi4pVoxc4+iK/p30ojtmAG6EmEbxinTkk2efuo=	\N	f	del_1-2.152				f	t	2017-10-25 20:09:23.318885+00
2097	pbkdf2_sha256$36000$6XpNUVa2m4Ea$Qe2c6qe3ZxxnsGcNu+T7RJ8AUxZ/glgrElVdTDrrMx4=	\N	f	del_1-2.153				f	t	2017-10-25 20:09:23.374128+00
2098	pbkdf2_sha256$36000$wJDCUsaMmMAT$etuYtINo4WTCWgNsYTcnHG/deN+hsAts4WbEHxifnec=	\N	f	del_1-2.154				f	t	2017-10-25 20:09:23.429687+00
2099	pbkdf2_sha256$36000$S5j65hHg93CD$EiYkZYADADI8I2GdaSh3iVl7XVJqlrxnGzWd2DQtlRc=	\N	f	del_1-2.155				f	t	2017-10-25 20:09:23.484684+00
2100	pbkdf2_sha256$36000$gvEJkt30sTCs$6nhGjhvqbcL5YK4mZVfM2fdbLHQKPDAi1c3gWid71ZM=	\N	f	del_1-2.156				f	t	2017-10-25 20:09:23.539389+00
2101	pbkdf2_sha256$36000$3PBYHCJTaSRr$paPbDF0jJmgB3wro0FqyFSN9dXGe8qwIKraQND9lfBQ=	\N	f	del_1-2.157				f	t	2017-10-25 20:09:23.594617+00
2102	pbkdf2_sha256$36000$h5VrkCR4Bged$VSOClLKTm51/RS66HIO7J+yJVwLTRUjKVP3jbcZXhCU=	\N	f	del_1-2.158				f	t	2017-10-25 20:09:23.65003+00
2103	pbkdf2_sha256$36000$WqtrZGFJ9ORu$/tBo71MC1Q1dKBt/iojjGYQaF89hI7I0swhFGs/t9PY=	\N	f	del_1-2.159				f	t	2017-10-25 20:09:23.704929+00
2104	pbkdf2_sha256$36000$6IIsI63Vulm3$NDwU334U3Y4VISGru56cxHYRmxf6ccO3CC2Hs3J2d+o=	\N	f	del_1-2.160				f	t	2017-10-25 20:09:23.759776+00
2105	pbkdf2_sha256$36000$VApv80so11g2$JsnDoFqftbieLViKe/Jx6BXoG1CcyCMaX025ni6f5/I=	\N	f	del_1-2.161				f	t	2017-10-25 20:09:23.814128+00
2106	pbkdf2_sha256$36000$zYqLc7A3dGsI$yMaof7Rv0Aq2CuHPA7RRSCl6K+Q6xI09KqgVA0S7Iqc=	\N	f	del_1-2.162				f	t	2017-10-25 20:09:23.868762+00
2107	pbkdf2_sha256$36000$0FjmV8csX5iJ$izqj4s7zNof1j/drXOUkhN6dpaLptxWD8peCN+OB428=	\N	f	del_1-2.163				f	t	2017-10-25 20:09:23.923488+00
2108	pbkdf2_sha256$36000$2WEAHWdh3h49$7E1DydIGJBXCwdMZ7hu9QvyhGZbaTYN9zSUERR0Uo3Y=	\N	f	del_1-2.164				f	t	2017-10-25 20:09:23.996411+00
2109	pbkdf2_sha256$36000$frp1z5bgOGA6$fjKNlZliuNiA6RwG12Ahm1XDuBOG6Xhj1DsxFHoNYo4=	\N	f	del_1-2.165				f	t	2017-10-25 20:09:24.058863+00
2110	pbkdf2_sha256$36000$KFheBPretqAO$/SUr7OGz9P+AItCmpxwSH63DjgbH+3OfxZ1ng/lwky8=	\N	f	del_1-2.166				f	t	2017-10-25 20:09:24.114199+00
2111	pbkdf2_sha256$36000$udLzssgI3xPr$xm27iiR7UvDwSs2x71eoj8tHTKT7kh5BcCLoqqS84eA=	\N	f	del_1-2.167				f	t	2017-10-25 20:09:24.169571+00
2112	pbkdf2_sha256$36000$8u1nKzBVz3sw$g2957PbHhh566k819O092kRjW+b94d+VjnrEpzkaqLE=	\N	f	del_1-2.168				f	t	2017-10-25 20:09:24.225634+00
2113	pbkdf2_sha256$36000$gtZp1L9ityKI$GnD0BM3o8y/gjHqwWIfaJvERdBbQ7ALW/Y4t636S62Y=	\N	f	del_1-2.169				f	t	2017-10-25 20:09:24.281065+00
2114	pbkdf2_sha256$36000$UYEoMEZiMp4y$gORFGVf9pgqbmoWmVUlC4pqCEynpXl1DIh2WmBRBW/0=	\N	f	del_1-2.170				f	t	2017-10-25 20:09:24.337226+00
2115	pbkdf2_sha256$36000$oBrnr3kkHdP1$Y3HKuA+SiLPb9dsWywzD0f+53jTu0IaSNakYgdGxILM=	\N	f	del_1-2.171				f	t	2017-10-25 20:09:24.392805+00
2116	pbkdf2_sha256$36000$YedlO2NMvvz8$x3LpVY0qzxGB2SIrYeUTIREAVLDBLgJjOlCMl4MMhJ4=	\N	f	del_1-2.172				f	t	2017-10-25 20:09:24.449127+00
2117	pbkdf2_sha256$36000$O3pICV6Nic2R$UzYfeK/jDjxW2eV4X4ulYIjSIimUG149RkR6WzYnMkc=	\N	f	del_1-2.173				f	t	2017-10-25 20:09:24.503891+00
2118	pbkdf2_sha256$36000$2yZfi0t8dDcb$/kqn1USnEgq91XzIPEd+n1XcgK9v7M8vxkjlHcKSQ5c=	\N	f	del_1-2.174				f	t	2017-10-25 20:09:24.561447+00
2119	pbkdf2_sha256$36000$Wm9HcOQ8fsQ3$ZcaFzeSbs6Aa/+13Gwe+478q6vNi79rV0NDSCGHrKPk=	\N	f	del_1-2.175				f	t	2017-10-25 20:09:24.616695+00
2120	pbkdf2_sha256$36000$7CC6GpFXRIHA$gBT1Bz/Nl0wQuR9MSKOFnJMWZYhL560Db2plwLmljg4=	\N	f	del_1-2.176				f	t	2017-10-25 20:09:24.67214+00
2121	pbkdf2_sha256$36000$kT7K6qaEsFVw$bEOVIqzzDinQvdct4tZVrKdInJBQcdDTlY99jdj0n88=	\N	f	del_1-2.177				f	t	2017-10-25 20:09:24.72871+00
2122	pbkdf2_sha256$36000$izYuOIszje5u$GkofpwQQ76R9LMd8CiAxdKnOL52IR8idxSsNxZJ74ck=	\N	f	del_1-2.178				f	t	2017-10-25 20:09:24.784169+00
2123	pbkdf2_sha256$36000$CffoP1KEpVEA$+jt7UgqU7hDHuUHsAsbRQJRlJsIf6JDKSpWLRoi5uIc=	\N	f	del_1-2.179				f	t	2017-10-25 20:09:24.839918+00
2124	pbkdf2_sha256$36000$Oz4NISVBqkdc$V4ti6SbxgtcHzpC5AOusZFA8HooPfDQueJbw+FWkJUo=	\N	f	del_1-2.180				f	t	2017-10-25 20:09:24.895777+00
2125	pbkdf2_sha256$36000$sa6uOYw1QUxv$wdzytHLYqUg8zAYuKSJuXCVS2gMbYHFhnG7tKmkgXCM=	\N	f	del_1-2.181				f	t	2017-10-25 20:09:24.951169+00
2126	pbkdf2_sha256$36000$lSaj3F0Ll57e$p22WlHAn3Ef5U94RoN+wEqyryrW6K+vGsQI9NZl7Qe0=	\N	f	del_1-2.182				f	t	2017-10-25 20:09:25.006591+00
2127	pbkdf2_sha256$36000$oPaCXGGu6IWi$zn/lzSMTLF2Qk5nLd5lZbpB64R0+Bqynhxb0BT3egac=	\N	f	del_1-2.183				f	t	2017-10-25 20:09:25.088899+00
2128	pbkdf2_sha256$36000$36aU1Ak8J0Jk$YnflhVMjN6NgEGdUtwfmbTU9piQLythfagn95WHQybg=	\N	f	del_1-2.184				f	t	2017-10-25 20:09:25.144569+00
2129	pbkdf2_sha256$36000$RFhBT8Tw347V$awQBWf0f7DXdZbrPPPnVXz5GHBjG9vyjSfLQ40VeK8o=	\N	f	del_1-2.185				f	t	2017-10-25 20:09:25.200131+00
2130	pbkdf2_sha256$36000$QHoyAdpPpMu9$iF1+otlDcYsL200ic+atjWYkWN1vw+bvpUGutBijoqY=	\N	f	del_1-2.186				f	t	2017-10-25 20:09:25.256051+00
2131	pbkdf2_sha256$36000$xm4cCxMJ13Pe$v1uCp2cS0luu/0tNCt8+o9iwrnXh3lU+83okX2yBKFs=	\N	f	del_1-2.187				f	t	2017-10-25 20:09:25.32243+00
2132	pbkdf2_sha256$36000$Axae1gcFMd2C$19ijX1uhb6Qf2U4bRZTQ3B5Gp9xqi37cE9x8si5CsPs=	\N	f	del_1-2.188				f	t	2017-10-25 20:09:25.37743+00
2133	pbkdf2_sha256$36000$ZXlqEXiUjM0H$uFw8PSPBO260MZjudQGVj/l67boef6niw/kj3sw4X7I=	\N	f	del_1-2.189				f	t	2017-10-25 20:09:25.432981+00
2134	pbkdf2_sha256$36000$qZhmJeiDG6TO$kx2YkbFZx6jFeU/dec1diJGHwtVR7/Sc3kkTRZNoqhU=	\N	f	del_1-2.190				f	t	2017-10-25 20:09:25.488159+00
2135	pbkdf2_sha256$36000$FhQMTzqC6F6p$L1HPJ3hy7GQswqCdP99QMyYrAzLj5uxWhNMDy2TdWgM=	\N	f	del_1-2.191				f	t	2017-10-25 20:09:25.543787+00
2137	pbkdf2_sha256$36000$ZsxqfQuzcPvT$/DKFKE7zufDrW/uxxR6bp+2cirz39lFWc6Pcfd6Zf/Y=	\N	f	del_1-2.193				f	t	2017-10-25 20:09:25.653056+00
2138	pbkdf2_sha256$36000$vElrFPe6nC1G$AHCqHMePnCx9+y8fUg2FYJGN/ZSwuvTzu+BbsN5ksVg=	\N	f	del_1-2.194				f	t	2017-10-25 20:09:25.710459+00
2139	pbkdf2_sha256$36000$lt7LFqFBe8gR$36NuuGpBAp3ErjJhF7lw7YdOe1k7bRv68S6a9stLwmI=	\N	f	del_1-2.195				f	t	2017-10-25 20:09:25.765706+00
2140	pbkdf2_sha256$36000$OvNJa52fC3Vg$3t0bEnAcpG7kVb3ixABfVOXI9X7lpW5ZaAFWyjbrpmM=	\N	f	del_1-2.196				f	t	2017-10-25 20:09:25.821038+00
2141	pbkdf2_sha256$36000$f0A7bbWFg0Ra$XDiUPxcRkQgtwWehqlW6vctrg7h6a5VXxHZCLhrnhcQ=	\N	f	del_1-2.197				f	t	2017-10-25 20:09:25.876232+00
2142	pbkdf2_sha256$36000$kC44sKF7MG50$Gr1+mYJBscHq+dWx3eg3p+8Gfx5ytcHLizppl4TOecI=	\N	f	del_1-2.198				f	t	2017-10-25 20:09:25.930843+00
2143	pbkdf2_sha256$36000$dULqGkXv8XHj$6GRnpHEt8//Khji8i0b2plIBlTYg87JwwlJrDEVJBeA=	\N	f	del_1-2.199				f	t	2017-10-25 20:09:25.986059+00
2144	pbkdf2_sha256$36000$IcYjq5niTWYi$4mm1AxTZH2cwDp9NXhuQH5Fb74VXB+L/tMVRkrJoAyU=	\N	f	del_1-2.200				f	t	2017-10-25 20:09:26.041178+00
2145	pbkdf2_sha256$36000$3FoiftO7Setd$89rs8lpc2XmfIaazAIIOIe8ClLkuL/A31Dyu9wobwkw=	\N	f	del_1-2.201				f	t	2017-10-25 20:09:26.128042+00
2146	pbkdf2_sha256$36000$fMkf56R6rVuj$wb1EUTni2netFepRiebJNxH0jSdQP8e4Z+3A21ix8zc=	\N	f	del_1-2.202				f	t	2017-10-25 20:09:26.183045+00
2147	pbkdf2_sha256$36000$8BovMmWarzkg$Wh7nI0LHnFtt5drVyN7SIT7gICnwXqARHApjnFZoKs0=	\N	f	del_1-2.203				f	t	2017-10-25 20:09:26.238659+00
2148	pbkdf2_sha256$36000$zeGWaeqAboWS$0Z/Bo5hChjt6Lu/xpAVdOQup0eKAve5elQmnkp377Rg=	\N	f	del_1-2.204				f	t	2017-10-25 20:09:26.29338+00
2149	pbkdf2_sha256$36000$RIANfG7GuBdm$9Pz8rphFZJ0lNQZcEu+pMzCwIbeUpkxYVOP77nZPiLA=	\N	f	del_1-2.205				f	t	2017-10-25 20:09:26.367061+00
2150	pbkdf2_sha256$36000$0tTaoMVKZexc$ink+FUMBPcyhXD8oVwI/flyfOl8YxtaN8iAscbBU0Qw=	\N	f	del_1-2.206				f	t	2017-10-25 20:09:26.423378+00
2151	pbkdf2_sha256$36000$jaCtmQ3XGafX$Yfheykrfz1uoWiHHKbuLicLYmQQP58nf6gM44Q1BbfA=	\N	f	del_1-2.207				f	t	2017-10-25 20:09:26.478766+00
2152	pbkdf2_sha256$36000$dwPZVH3basUU$m1RuNvDlVticjxoMwAhLSESwbIVAgGaetex9EhfV6kA=	\N	f	del_1-2.208				f	t	2017-10-25 20:09:26.534202+00
2153	pbkdf2_sha256$36000$AXRlioEQNH4a$klm5TzU83BD4l3aEIQ4MTgN2ndjzwLno9rlXk+wh2YQ=	\N	f	del_1-2.209				f	t	2017-10-25 20:09:26.589991+00
2154	pbkdf2_sha256$36000$Zlb5YDZLNp2o$7965SqYaqJXOdeG9WwSM0wKDJrNZGZRWJdpnumbOx9Y=	\N	f	del_1-2.210				f	t	2017-10-25 20:09:26.646141+00
2155	pbkdf2_sha256$36000$q8WOFuJROago$YYF4JpR2XzGAJ8DYI6guzbA4NSBr+aJrFiZ1jFn2yfs=	\N	f	del_1-2.211				f	t	2017-10-25 20:09:26.701713+00
2156	pbkdf2_sha256$36000$HuWWLCzi4h95$MWHAJZnZUhm3d7LUyj74L31xXeeY2/8nwjX02xJq8AM=	\N	f	del_1-2.212				f	t	2017-10-25 20:09:26.759012+00
2157	pbkdf2_sha256$36000$e9Aj2f2bnGs7$RHO8+HbeYhtL6nI94ixxYN7HxmwXkGYq7AdH2OqxWOU=	\N	f	del_1-2.213				f	t	2017-10-25 20:09:26.814186+00
2158	pbkdf2_sha256$36000$iWTX4nSglUqE$6kZmbboLhzzEpMq3BKFLvFeBK8VD83FMTjKBG//6L48=	\N	f	del_1-2.214				f	t	2017-10-25 20:09:26.87093+00
2159	pbkdf2_sha256$36000$8m3Ly77bRLBO$yg8mxOMRxRIRSNRiIkmlSYDHO0MjYVBpWd8g0tQUF3c=	\N	f	del_1-2.215				f	t	2017-10-25 20:09:26.927868+00
2160	pbkdf2_sha256$36000$cSFoFbPHTh4E$Wkcag1YdrsLIU6DJViJSyJSKzw19T/GHcJLpixeziic=	\N	f	del_1-2.216				f	t	2017-10-25 20:09:26.983809+00
2161	pbkdf2_sha256$36000$smPsdiMvZTjL$POKL5JBA8Yng20pIg4os1niL4q1TQOl5dZ1LMlFu+20=	\N	f	del_1-2.217				f	t	2017-10-25 20:09:27.039043+00
2162	pbkdf2_sha256$36000$28W9WZOPioHB$ww8axaK2UvcSEOy/Y25zoaZPCg/rQxVjh113Vb3yOuQ=	\N	f	del_1-2.218				f	t	2017-10-25 20:09:27.094342+00
2163	pbkdf2_sha256$36000$Zp0alPtSgbFL$E5l/l1BFozopW5CqMBJQHDqe/Yx3phHfczoDEK3lgp8=	\N	f	del_1-2.219				f	t	2017-10-25 20:09:27.175207+00
2164	pbkdf2_sha256$36000$b4yhsa6ulCz5$mdE8Oq/l6bWmo7fj0D1oDG/gxATizThajiw0oUboBd8=	\N	f	del_1-2.220				f	t	2017-10-25 20:09:27.231181+00
2165	pbkdf2_sha256$36000$4y1YMC3dpcB5$tZ+/UNZCaM1trzfldqNtjiJNafkjRJx8mjHB6f7ivdk=	\N	f	del_1-2.221				f	t	2017-10-25 20:09:27.286763+00
2166	pbkdf2_sha256$36000$2bdoU3X0aQW2$wWAjoLn2ResX2OnKm8kCRfIYU5+atVW/96T13JliBik=	\N	f	del_1-2.222				f	t	2017-10-25 20:09:27.34217+00
2167	pbkdf2_sha256$36000$c97vaZqqxlis$XUeEjRcXQf7hKhITtNuhTr7wDCa4ocJdLY9bp61wetA=	\N	f	del_1-2.223				f	t	2017-10-25 20:09:27.397178+00
2168	pbkdf2_sha256$36000$ijoQhZy3MRIr$0mGBERvM1N9hR1MPNdbzhpBBZRYJhLfw52HqQqJykQc=	\N	f	del_1-2.224				f	t	2017-10-25 20:09:27.453795+00
2169	pbkdf2_sha256$36000$6LNxG82vZZbh$8TN8UDrPGmF+BU62FLQ4JhxUt4ZV2A5u8IS6EvQcNkQ=	\N	f	del_1-2.225				f	t	2017-10-25 20:09:27.50999+00
2170	pbkdf2_sha256$36000$3cK7gcYagH9R$uVhhyejurpg4qj4bSpyxE6CtOhnhkf70NTQhyJhrIVs=	\N	f	del_1-2.226				f	t	2017-10-25 20:09:27.565937+00
2171	pbkdf2_sha256$36000$nCVnlVHcbu4p$Q+PRFmWXoLXvra0oHIDJ4EGQOrY78RPRkLoYuNNGnzY=	\N	f	del_1-2.227				f	t	2017-10-25 20:09:27.622802+00
2172	pbkdf2_sha256$36000$HPb9vHvjubHU$irUq3qb/GWrx+uj74Wxq/6xdV6jQbZmag9HV9TDo7Yk=	\N	f	del_1-2.228				f	t	2017-10-25 20:09:27.678812+00
2173	pbkdf2_sha256$36000$ssOM8716P6L5$gHxDISiBQA7D/M26i1GxP6JKpet3/FUFVyu4gHMKHMg=	\N	f	del_1-2.229				f	t	2017-10-25 20:09:27.735722+00
2174	pbkdf2_sha256$36000$j1B4FM4LQ6dM$ZusL1wXeW+Gqw5pJ2ZIf1C+9GLVripKYhRfsaYTcB+4=	\N	f	del_1-2.230				f	t	2017-10-25 20:09:27.792267+00
2175	pbkdf2_sha256$36000$AjSHyugrELCu$jeSNbszYZOLNjYit4hlzCeTXC9L6BIJfOb6TEkiVvKQ=	\N	f	del_1-2.231				f	t	2017-10-25 20:09:27.848197+00
2176	pbkdf2_sha256$36000$0TV3LHbCHHH6$/1IuFDUTfdt2+c6ST3oY2+tTAGOrtZDwIp2l9yxeOCc=	\N	f	del_1-2.232				f	t	2017-10-25 20:09:27.904129+00
2177	pbkdf2_sha256$36000$SfnOpGMEEy4z$0dbyHv32YGNzZDHkFfpCSkYgkUXg8yq4oVixJw53iXY=	\N	f	del_1-2.233				f	t	2017-10-25 20:09:27.960738+00
2178	pbkdf2_sha256$36000$pOVGhSrAHLDl$1PrC+NZ6tTI4wniZwWOQ42iJUVj+ixovWqk7Ulw8WVM=	\N	f	del_1-2.234				f	t	2017-10-25 20:09:28.016906+00
2179	pbkdf2_sha256$36000$A1H0YCsjiZU5$4rN+QyvQXXeI7P0YqONoRwxFrP1PF5wG4vAtHKxcVI0=	\N	f	del_1-2.235				f	t	2017-10-25 20:09:28.143062+00
2180	pbkdf2_sha256$36000$gE6rOK907yIW$cZ449d8dxcZyl6zDOkjhjN6XJxYZCwBnw/Tt7x/Si8w=	\N	f	del_1-2.236				f	t	2017-10-25 20:09:28.291475+00
2181	pbkdf2_sha256$36000$WZkNNjGQ1MQu$fxe/xQr6uV9Y0MyShtPWTh9ixgcc3Z6WXAz1W35XHjM=	\N	f	del_1-2.237				f	t	2017-10-25 20:09:28.346345+00
2182	pbkdf2_sha256$36000$LzBNYq1htEir$JYN0EfLaQd5r6q9H94IsGnV/+zaj6UP/VGaRVCOPiA0=	\N	f	del_1-2.238				f	t	2017-10-25 20:09:28.401631+00
2183	pbkdf2_sha256$36000$qW7RnHVGHCWQ$fuibPFbN+K77poHEKai0KOdE7ohzHMvpzKflPAYTseI=	\N	f	del_1-2.239				f	t	2017-10-25 20:09:28.45651+00
2184	pbkdf2_sha256$36000$5BjQNlTh9Oue$FuVhY5hXI3U970has2ixlxk1fFsEQ6QXzaLYgbGoHas=	\N	f	del_1-2.240				f	t	2017-10-25 20:09:28.510946+00
2185	pbkdf2_sha256$36000$GsDL5wnNO93G$e2+0rY+cx/PZ8sWTp9rpJE/JoIHHowT/LUe3O1F1OPE=	\N	f	del_1-2.241				f	t	2017-10-25 20:09:28.630004+00
2186	pbkdf2_sha256$36000$bxYHkRz6GvAi$5rKA7eEytjFsDeO+4D+j+PFx//Oqt+q9chSCdNqxbE8=	\N	f	del_1-2.242				f	t	2017-10-25 20:09:28.772302+00
2187	pbkdf2_sha256$36000$d2Pw36qPsjuM$IvNBJtuvEWis619a6r8XTLpat+SzOg3o1pWK033/lhc=	\N	f	del_1-2.243				f	t	2017-10-25 20:09:28.913716+00
2188	pbkdf2_sha256$36000$e54rnt3HDsQp$hhs62adwX2PVmLiX9r9ZE9cr573EXhxNZELhUxWY5kU=	\N	f	del_1-2.244				f	t	2017-10-25 20:09:29.049844+00
2189	pbkdf2_sha256$36000$pK2Z6gmAMRMr$BplTqz5r48CWR4sAD8NARkBlpcpmp5MBvGqU4EWHFIA=	\N	f	del_1-2.245				f	t	2017-10-25 20:09:29.167751+00
2190	pbkdf2_sha256$36000$DTNOQq59TjL5$JxenZVsDgRpaXhMGPOkrTm0nG3XQbaoOaDiiixm30rE=	\N	f	del_1-2.246				f	t	2017-10-25 20:09:29.29144+00
2191	pbkdf2_sha256$36000$qoVH1Fd7IDFT$Sf0Ue8UCWZYKBdcwwvw7GY+hjSTKtbS/Q0f7h9qEqik=	\N	f	del_1-2.247				f	t	2017-10-25 20:09:29.451613+00
2192	pbkdf2_sha256$36000$2RiR9YNIk12y$E6XFmQzSvbWEJX3VfQh5peHCCmfXgIN4nXTjgySd1ws=	\N	f	del_1-2.248				f	t	2017-10-25 20:09:29.557729+00
2193	pbkdf2_sha256$36000$5mlB1NNKwY7O$kbRZXoBQvJ5IxdPzcQ5Dt7YZBSH+VHSpnOoO+Dotdqc=	\N	f	del_1-2.249				f	t	2017-10-25 20:09:29.650574+00
2195	pbkdf2_sha256$36000$pC0u6N8xfo5m$CpwL6WclzYl6iDQ5uMqb6Z49LynvNyEc2xP6I8/tloQ=	\N	f	del_1-2.251				f	t	2017-10-25 20:09:29.840339+00
2196	pbkdf2_sha256$36000$D6gusHoUREVR$oBskqogNeB5omSGG+2gC+TtRyCMfpdx5vr4vCazwXgU=	\N	f	del_1-2.252				f	t	2017-10-25 20:09:29.933633+00
2197	pbkdf2_sha256$36000$E53pnkH687ou$4oPeMZa6UXMnE+Hq4bOE3DdzmkWrrvQst2COvasBAxM=	\N	f	del_1-2.253				f	t	2017-10-25 20:09:30.028186+00
2198	pbkdf2_sha256$36000$1ClTeF3tADFI$g26Yq9VQ+fIdkr8yRefxebMyUYeJ0zamK/PUNlEF0uI=	\N	f	del_1-2.254				f	t	2017-10-25 20:09:30.170371+00
2199	pbkdf2_sha256$36000$mE2fckh7R2mP$2vPojaCtmwyCoPG8/3MA5CYrEW1iELYTRCfGNkaI0jI=	\N	f	del_1-2.255				f	t	2017-10-25 20:09:30.329675+00
2200	pbkdf2_sha256$36000$U0F3hCMcbuXo$WQhOuJDQISiaEDSc6Mba5JrcFu3SqrUzpj8c/bBzmB4=	\N	f	del_1-2.256				f	t	2017-10-25 20:09:30.54509+00
2201	pbkdf2_sha256$36000$l9S1kgzQOOKC$f/5xgbuNeHv0c7uWymdjvF4FWRSOh7Ys9lp3Pm0Fbh8=	\N	f	del_1-2.257				f	t	2017-10-25 20:09:30.688399+00
2202	pbkdf2_sha256$36000$eX84zFUwTBsa$FCsI65e0FUbr8s22F7Lri/y9LbBEKgn+n2w1aPw+nUc=	\N	f	del_1-2.258				f	t	2017-10-25 20:09:30.840499+00
2203	pbkdf2_sha256$36000$Bn6eGXUMnKXT$hHH17FJzkk79YbINc4+PbqBH1p9DKVIOjq0d8FB4qUE=	\N	f	del_1-2.259				f	t	2017-10-25 20:09:30.98476+00
2204	pbkdf2_sha256$36000$hHJsLhRRiwdB$85e0l0mJ6wZJOTHuiO13B0eCfUpQUsIVsT8p19fsZc8=	\N	f	del_1-2.260				f	t	2017-10-25 20:09:31.126903+00
2205	pbkdf2_sha256$36000$nQk30IebUvHV$UKWHg4k2+kiKkGaeYH58z4D+SzFDjQo+dgsqlXBEx0U=	\N	f	del_1-2.261				f	t	2017-10-25 20:09:31.275127+00
2206	pbkdf2_sha256$36000$4JAAmqp59h98$85ZHoQZyKMqfgeqfQYLjnsq4aiNEeVLJ5Iuu6CL2a5g=	\N	f	del_1-2.262				f	t	2017-10-25 20:09:31.419972+00
2207	pbkdf2_sha256$36000$5ECZVZkXFXvN$UaWFgVnkWjIAYJYFl2MZ59RMN2cA56UBxPek7CJDpp0=	\N	f	del_1-2.263				f	t	2017-10-25 20:09:31.616756+00
2208	pbkdf2_sha256$36000$A9tNR4yOjXaD$bK5ZlKVgUrGWG+qZF8KSiT4aO2jqDeD1LsCnUgCIfhs=	\N	f	del_1-2.264				f	t	2017-10-25 20:09:31.778057+00
2209	pbkdf2_sha256$36000$FmBdO3sxRCDf$ttl7Z5pgOEX7TyM2tEssGENPuE2MFqWjbKMOQIOEAnE=	\N	f	del_1-2.265				f	t	2017-10-25 20:09:31.919574+00
2210	pbkdf2_sha256$36000$ovKCRZtgYIlV$w0EZrKwGAIrMZBTmxrf6hbJyCg0ZnTfYXcbKi3pQdoM=	\N	f	del_1-2.266				f	t	2017-10-25 20:09:32.038842+00
2211	pbkdf2_sha256$36000$m0SNoqKwfkBj$0KNo0irnLeHWaPXB7LeNC2M6UkZXlIQ/dTS31X7wH1E=	\N	f	del_1-2.267				f	t	2017-10-25 20:09:32.09266+00
2212	pbkdf2_sha256$36000$IpKIdZM4H6Ss$aracYvW2b/m+2MIUhgigFbAUV/IaGRiM0dCRqfHtTa4=	\N	f	del_1-2.268				f	t	2017-10-25 20:09:32.146561+00
2213	pbkdf2_sha256$36000$akNt7SQvAZJ4$xTNRTsINcAsDuJ7HL0tpNfESzy03QjRMyeXZYuWITDo=	\N	f	del_1-2.269				f	t	2017-10-25 20:09:32.200232+00
2214	pbkdf2_sha256$36000$kcdoBZ8G5dHw$hGxBY/HDcUSJTpQ3+RUWSQe7ypTJWsq2/AVAuYqnEOE=	\N	f	del_1-2.270				f	t	2017-10-25 20:09:32.260371+00
2215	pbkdf2_sha256$36000$CsUWPg2hBly5$2awRTyuO+xJyc/mOr3hHzuUVk76eUROOCpv0kCiBl2I=	\N	f	del_1-2.271				f	t	2017-10-25 20:09:32.315439+00
2216	pbkdf2_sha256$36000$oALCW2i4sFsQ$fGu3RRqRYCAkSZJt8HMafXtvxWcEtlQDKgJzpVPqQkE=	\N	f	del_1-2.272				f	t	2017-10-25 20:09:32.369804+00
2217	pbkdf2_sha256$36000$g2cGH1y9JKRE$jb59QrDpmYomALmHn5hO/wdFypnIwAA9YdgNnKVh3ps=	\N	f	del_1-2.273				f	t	2017-10-25 20:09:32.422898+00
2218	pbkdf2_sha256$36000$R6OgBLkzlL0J$ogaZIsaRzlCBFaqLc9WqGqWVm/X3Y3R1x80qxOn17yI=	\N	f	del_1-2.274				f	t	2017-10-25 20:09:32.477072+00
2219	pbkdf2_sha256$36000$ZMeaoikCys6j$BA9dQ9ZVSfN7Op2HI+6OxyhVdrHCJmfxEiNLvt68OuM=	\N	f	del_1-2.275				f	t	2017-10-25 20:09:32.598262+00
2220	pbkdf2_sha256$36000$jxgRPuF9PNT1$5S0yCy4yrgh+UVX/RpQRQAryTDxfyc6NucVtpZWulYA=	\N	f	del_1-2.276				f	t	2017-10-25 20:09:32.818051+00
2221	pbkdf2_sha256$36000$Fwp8aqkeyYi8$vFu0SKKx6rdNDfzmfPIaEoEcgsj2LU7TsXgFW5qwXGU=	\N	f	del_1-2.277				f	t	2017-10-25 20:09:32.960709+00
2222	pbkdf2_sha256$36000$54m5Yvl7bida$9iqQEt0HfRiM0En0Y8j0n9MDtJWY8ul9dRbGnuEtQCY=	\N	f	del_1-2.278				f	t	2017-10-25 20:09:33.05604+00
2223	pbkdf2_sha256$36000$fzTSe07eA1Hs$Wix3rN3bF/TmPn2KuEttBfsdccocqnfQNZb8xrYU0hU=	\N	f	del_1-2.279				f	t	2017-10-25 20:09:33.112529+00
2224	pbkdf2_sha256$36000$5Jb2Tb2rNxkN$0u4FvNMCnBWkRfp/D3z+nTJNN9byks0iLfvhwdsVS2Q=	\N	f	del_1-2.280				f	t	2017-10-25 20:09:33.16953+00
2225	pbkdf2_sha256$36000$3fXZd2a9L1Jl$OxCe9+QffxyXoj9JqrmCTIWr7Y2HyCwmw/o/dkZkPXE=	\N	f	del_1-2.281				f	t	2017-10-25 20:09:33.229159+00
2226	pbkdf2_sha256$36000$yEQxGGoadayy$ZACmtHDjOPwzoq3qINadCHeLp7RQiNWwgUPRCOwMNC4=	\N	f	del_1-2.282				f	t	2017-10-25 20:09:33.284918+00
2227	pbkdf2_sha256$36000$CtvhpXanhxai$+5f8WgVGPyv7yNn2fTK2JU7RBU0Hfl8JLb9i8KBFYHA=	\N	f	del_1-2.283				f	t	2017-10-25 20:09:33.34136+00
2228	pbkdf2_sha256$36000$EDtX0v7VQDfA$RSl9+8+yHSW22MLZoOChWOBZNE+EBlCPV8xdypGLQOo=	\N	f	del_1-2.284				f	t	2017-10-25 20:09:33.397439+00
2229	pbkdf2_sha256$36000$OrqQZs6oTYxe$/KNXdqCzl4F09EC6T9MI2V8ub5n87Vwz2ecFK2rY4UU=	\N	f	del_1-2.285				f	t	2017-10-25 20:09:33.453984+00
2230	pbkdf2_sha256$36000$Stl8lioeS9eu$kie0YtHc1YTRTcVwsvOs0lvmUS6+cX/zIcBm2qHo5f8=	\N	f	del_1-2.286				f	t	2017-10-25 20:09:33.511035+00
2231	pbkdf2_sha256$36000$L9XVeU1XDWmc$z4YFG3i6ygi3jktQAUQZgyIxcoxrmpkGl8q3m6+djF0=	\N	f	del_1-2.287				f	t	2017-10-25 20:09:33.567543+00
2232	pbkdf2_sha256$36000$UBkv2qG0sr6j$9uos9KU8lhCXPjMhOarsjnOH2B3/13d5s+s1nAztJZ0=	\N	f	del_1-2.288				f	t	2017-10-25 20:09:33.623787+00
2233	pbkdf2_sha256$36000$VA6ZPoVKDWZ1$u1Lfs/yj1SyLDbjyXX/X1DzWxIzaaxiG2TTiGVOZphg=	\N	f	del_1-2.289				f	t	2017-10-25 20:09:33.680518+00
2234	pbkdf2_sha256$36000$M2Wsg3AJRjsl$CNpZFYxbCVgz7/NgMdBbfuOYdHpYN4eBy+x4IKbfG1s=	\N	f	del_1-2.290				f	t	2017-10-25 20:09:33.738935+00
2235	pbkdf2_sha256$36000$fcHWBQSDqFZZ$HYBQm4OP9nMK1ycz9hwy46G/lTB4Uftani0dEAQb5w4=	\N	f	del_1-2.291				f	t	2017-10-25 20:09:33.800564+00
2236	pbkdf2_sha256$36000$r1JIDExxws7t$GG23RCrCWOp+r5RcgqrC7vb/56NARc/d3K0M7LDvlKE=	\N	f	del_1-2.292				f	t	2017-10-25 20:09:33.887386+00
2237	pbkdf2_sha256$36000$wS5JQPHAdaGx$8RnOqOR2Adxf4QWsvCQcb6MxbiYNfC0Liu8PfqHAuhc=	\N	f	del_1-2.293				f	t	2017-10-25 20:09:33.942995+00
2239	pbkdf2_sha256$36000$Sbl6FTYUgEc3$2KZN3zSetUcocmJQAvdsKuJrYKgjBLQTzASWNdJTf84=	\N	f	del_1-2.295				f	t	2017-10-25 20:09:34.05567+00
2240	pbkdf2_sha256$36000$eiZ8AsF5Wt5A$vulSKmIjFw3i2IXaKsI5VsbhRhFs1L/DXdYmHcZfTU0=	\N	f	del_1-2.296				f	t	2017-10-25 20:09:34.111089+00
2241	pbkdf2_sha256$36000$xbKE02rlhS2J$oHQGJjBrJ4bhqImn/xlp4nkYqT5wlIoxIR+iRNlmbPw=	\N	f	del_1-2.297				f	t	2017-10-25 20:09:34.166473+00
2242	pbkdf2_sha256$36000$yRb3QTnjrsGn$KCmnbFL23JiapMw9qKQ81pmf5y6IXeNRpVpo275EgtI=	\N	f	del_1-2.298				f	t	2017-10-25 20:09:34.223025+00
2243	pbkdf2_sha256$36000$oROWBl077XCg$7PBa+uwnNgFKkrSdz6RbtzTq095zlVyHypdh8f7FySs=	\N	f	del_1-2.299				f	t	2017-10-25 20:09:34.278588+00
2244	pbkdf2_sha256$36000$0TtuqaTVdPFr$EuqrqHb1tEsPeHO0r3NwOM7Aiwf/Cg+eNlkytC0vh0A=	\N	f	del_1-2.300				f	t	2017-10-25 20:09:34.335193+00
2245	pbkdf2_sha256$36000$PXW5WQpJjRsV$bAyBpk2AUOGpMbuu6v/MT4YaHrH9hE2kTnZOW8PWrWA=	\N	f	del_1-3.1				f	t	2017-10-25 20:09:34.390629+00
2246	pbkdf2_sha256$36000$0rfkXhUHXvsQ$upm5WF/vPFNew9Q3dAU7Lry7xDdqhp9dYCjPW5rxHVo=	\N	f	del_1-3.2				f	t	2017-10-25 20:09:34.446453+00
2247	pbkdf2_sha256$36000$cOJ3WPCtBRAb$RYlyDsn0/H8phHizeqgh9YPd3O7bX6anAv8N4By9UJg=	\N	f	del_1-3.3				f	t	2017-10-25 20:09:34.502602+00
2248	pbkdf2_sha256$36000$yUmopTKORwIL$TKlY8vzAy79BjSSvjPnsf85onR70RORCUQBPvV2ESd8=	\N	f	del_1-3.4				f	t	2017-10-25 20:09:34.559067+00
2249	pbkdf2_sha256$36000$dDyZjBHj41N9$K/ejOYb+rUvjX2hL4c3lp0sgzOlrn+rjd8VLPHx9ofo=	\N	f	del_1-3.5				f	t	2017-10-25 20:09:34.616215+00
2250	pbkdf2_sha256$36000$mpq73mBRykwc$oCM5l4mGoDqIlC7NjrmsjxhyhDH3OECUUHroom5RBmE=	\N	f	del_1-3.6				f	t	2017-10-25 20:09:34.672313+00
2251	pbkdf2_sha256$36000$2llLOm5rrTwX$LCHSHjViUOK7Ysj4Bki/nnEejzYPg4Oq+Rd6Avo1msc=	\N	f	del_1-3.7				f	t	2017-10-25 20:09:34.729133+00
2252	pbkdf2_sha256$36000$d12wc0kajkuV$R2b5VY9MLNlWw/o5nnRZ/JnUA1sxVKLMTqPBpYAUOC0=	\N	f	del_1-3.8				f	t	2017-10-25 20:09:34.785263+00
2253	pbkdf2_sha256$36000$SGXSb74dAktS$U66/U0UtJYecPDxo3o9EmuqojxAiLThM3PI8No1IIt4=	\N	f	del_1-3.9				f	t	2017-10-25 20:09:34.842327+00
2254	pbkdf2_sha256$36000$iJfdMKTRWx05$9WRXJE1EuDXai8S5xObqBsfMO6HfEkh/fpjUrbH+XPM=	\N	f	del_1-3.10				f	t	2017-10-25 20:09:34.924011+00
2255	pbkdf2_sha256$36000$7E9OSJeZN9ez$F+U59Mz2PhvBYzHmZBPNLmLzE4pwCMQAyTyRW+buEJo=	\N	f	del_1-3.11				f	t	2017-10-25 20:09:34.979444+00
2256	pbkdf2_sha256$36000$EZxr1n2axnBD$wo9m8HLFHwqPk32EZ++fHP/YiV1akMj7nBGEcXRNfR8=	\N	f	del_1-3.12				f	t	2017-10-25 20:09:35.039671+00
2257	pbkdf2_sha256$36000$95zYEywWKTcK$vS6jjPXnvLB4TjT9y++60XJPOcw/TcH6lswV1fqlw5g=	\N	f	del_1-3.13				f	t	2017-10-25 20:09:35.096623+00
2258	pbkdf2_sha256$36000$a92lwTZL9Eqj$boNuiFrpLWUZlXf8tH1F9gyaAvWviUayL0qL8mzQaXY=	\N	f	del_1-3.14				f	t	2017-10-25 20:09:35.153172+00
2259	pbkdf2_sha256$36000$qV1ehnzkIMmI$7lTmZCp6OoQPHX9jyFKibjoL+Il3Mv6xnhaTO5HOlwo=	\N	f	del_1-3.15				f	t	2017-10-25 20:09:35.210365+00
2260	pbkdf2_sha256$36000$3lmBj5xyejRS$XSMpPYEoOZ96jYoR2kPlYBac7kzVDqGi1PPuDSgMC3Y=	\N	f	del_1-3.16				f	t	2017-10-25 20:09:35.265722+00
2261	pbkdf2_sha256$36000$9K5nUlj5moFB$cO79z80QpfqSS/esFqSImS72QWNR8arPnMnBL1Cib3g=	\N	f	del_1-3.17				f	t	2017-10-25 20:09:35.321619+00
2262	pbkdf2_sha256$36000$SOWa6KAH0Qiu$Rk7uNKhD/mdw+z820ksIbXvpUGh/ZCsKnt3LBReHnjY=	\N	f	del_1-3.18				f	t	2017-10-25 20:09:35.376768+00
2263	pbkdf2_sha256$36000$mU8gMVHNVlq9$P5B6G+cp87m2pCQ9yrEL7OJZmvItUZlnUQOLm0XRIso=	\N	f	del_1-3.19				f	t	2017-10-25 20:09:35.431449+00
2264	pbkdf2_sha256$36000$llcwi40pmQTE$21wfcJ2RuYDpZqn5sEwUIEA76B6h+SGhCBZNyS6m4BU=	\N	f	del_1-3.20				f	t	2017-10-25 20:09:35.485927+00
2265	pbkdf2_sha256$36000$dH4YMMyv8Xqi$s9wkE2uh3pisfjDcwhbp9eL0T1u2IMIuEq7+kV3OlMc=	\N	f	del_1-3.21				f	t	2017-10-25 20:09:35.54088+00
2266	pbkdf2_sha256$36000$JhPvTskpblLo$lab9jBOPj4Vnm8k8Vh/pDX6SfCFvsO3VEpvkIn5Yicw=	\N	f	del_1-3.22				f	t	2017-10-25 20:09:35.596088+00
2267	pbkdf2_sha256$36000$Qyq5zAk7Nccb$WrS618zCALMK/4f0Vf03qJcVmAivaVbAMcVNF4CFWx8=	\N	f	del_1-3.23				f	t	2017-10-25 20:09:35.65104+00
2268	pbkdf2_sha256$36000$phic3oSU9zfC$VGDDzVfQ2+v90rm855uVjXyBBM9huMzf6O2ukmV3OgA=	\N	f	del_1-3.24				f	t	2017-10-25 20:09:35.706491+00
2269	pbkdf2_sha256$36000$zEzMBrTaqvST$68Gzv59JOTR3Q4YsaQEpDxid8mAQ7HlTmMTsxD/n/cw=	\N	f	del_1-3.25				f	t	2017-10-25 20:09:35.762589+00
2270	pbkdf2_sha256$36000$I2om1cRDIX0i$yx3ewEAPiHNZl+BcFKFY8S8U34vrHZGXrUH2szRfvwY=	\N	f	del_1-3.26				f	t	2017-10-25 20:09:35.818198+00
2271	pbkdf2_sha256$36000$KADIT40oVToT$dYVkjv4bljGkCQ/xiAOD6RPXWadxjvR7bCG09/hkjZE=	\N	f	del_1-3.27				f	t	2017-10-25 20:09:35.874062+00
2272	pbkdf2_sha256$36000$qZbcD3Qm1UsX$tIDnhDTr9BQEwn5vrBr7vbjsCgm3DQtFOHn2BnRzBS4=	\N	f	del_1-3.28				f	t	2017-10-25 20:09:35.952512+00
2273	pbkdf2_sha256$36000$R0G7V57ftW5q$AAH3Bk1nchfGLMWtM2BzIhE8Vpc4KeVUlQev3CEauyY=	\N	f	del_1-3.29				f	t	2017-10-25 20:09:36.01288+00
2274	pbkdf2_sha256$36000$rFsmRIqXjMm6$YZK2L7RvAWwEvnCNyicmsus68P9CFI+mHi4m/7NUYag=	\N	f	del_1-3.30				f	t	2017-10-25 20:09:36.067828+00
2275	pbkdf2_sha256$36000$CzjXOnnJXXgX$Fi+/37+Wgjg7tA6iX+djMi9Uln0B7Hk70eQYrFiSAu0=	\N	f	del_1-3.31				f	t	2017-10-25 20:09:36.123054+00
2276	pbkdf2_sha256$36000$zrQQnJefl1eC$ayxJo2Y7DCf4J38tY/u4KFC+XH7JYKwUujP02ATPnsw=	\N	f	del_1-3.32				f	t	2017-10-25 20:09:36.18333+00
2277	pbkdf2_sha256$36000$oDnp26s5ajCL$TTI3CnXFXE0bOt27C+tQkjU1oqd9fWRNCPRWK3RsmD0=	\N	f	del_1-3.33				f	t	2017-10-25 20:09:36.241769+00
2278	pbkdf2_sha256$36000$jYNTnrhPLzDe$xqXQ1grxcr4VA2h03Kx2dvnJIfOjFBOuVHso2TqPZLg=	\N	f	del_1-3.34				f	t	2017-10-25 20:09:36.297257+00
2279	pbkdf2_sha256$36000$M9BOYL7l3Hg1$8B9AwKU8WOyI6bWlxNbSC9C0iR0C2uldIsnNRBZ9Mc4=	\N	f	del_1-3.35				f	t	2017-10-25 20:09:36.353738+00
2280	pbkdf2_sha256$36000$ACGkTuRu3SdZ$L/MOmi4X9/H6dhr7X2FLhbtg8HiBELd5tzEzjIM7bHM=	\N	f	del_1-3.36				f	t	2017-10-25 20:09:36.409545+00
2281	pbkdf2_sha256$36000$Boi182JHE1y2$EGoS85humyk1ecgrupOqfL5+e605Tj8O93J2G1PD5kE=	\N	f	del_1-3.37				f	t	2017-10-25 20:09:36.465164+00
2282	pbkdf2_sha256$36000$h7l39mCmlpmk$3fa7S3GKV61nS1ExJ1XL7tErscMMvXi7FIv+MXXbf0g=	\N	f	del_1-3.38				f	t	2017-10-25 20:09:36.521306+00
2283	pbkdf2_sha256$36000$mF2qPjFv1AoN$a6abyl4/KCQ5ke+KcmhTty/L+ctlZ6vrvbre8mVYbkQ=	\N	f	del_1-3.39				f	t	2017-10-25 20:09:36.661184+00
2284	pbkdf2_sha256$36000$yETRDTZ2F3Ii$Oh9wAGf9uwJ7xEk2GbYCVkchBdQgsdjoxQ2/gTZddBk=	\N	f	del_1-3.40				f	t	2017-10-25 20:09:36.805695+00
2285	pbkdf2_sha256$36000$gkqektqJnh7J$jQYO6WsQpoobATbHH3ftPhZ9LPQ3lw6KGp5J+KTNzzk=	\N	f	del_1-3.41				f	t	2017-10-25 20:09:36.948646+00
2286	pbkdf2_sha256$36000$uGZ2OvgdNylI$Sgrhh7TASO6g5hpuOZU13uTfaHv/CvFbyA3AL03vzxk=	\N	f	del_1-3.42				f	t	2017-10-25 20:09:37.15722+00
2287	pbkdf2_sha256$36000$Oy6LImgXmnw6$pl9JOveBhS1nh88DMtwl7LewEUpHkdYIBWOoJuobhng=	\N	f	del_1-3.43				f	t	2017-10-25 20:09:37.311211+00
2288	pbkdf2_sha256$36000$f7UmAxWnixOk$/lCtLLHIPA8JVcCl3wGHrTdM2gKO1I1YBYTfs1ijuQU=	\N	f	del_1-3.44				f	t	2017-10-25 20:09:37.456542+00
2289	pbkdf2_sha256$36000$PUvvWB4io9ja$LQuoGtUzhZrN8YFX4T+E7ogO1/IyUFwPGGv9OG+HgUM=	\N	f	del_1-3.45				f	t	2017-10-25 20:09:37.59267+00
2290	pbkdf2_sha256$36000$5yrQLYESucbv$xevcS8u+7IAVTf75oqXZg3SPUzRLfJHeR8/malYI2JA=	\N	f	del_1-3.46				f	t	2017-10-25 20:09:37.726367+00
2291	pbkdf2_sha256$36000$ZvWwXtI99P4Z$unW0M1zwn666zb/U9IikzMwLKTVvxgeC4TM0wDnN0Qg=	\N	f	del_1-3.47				f	t	2017-10-25 20:09:37.857743+00
2292	pbkdf2_sha256$36000$VkPGG1rVEI6c$r6HYE82D/vXhwxN5Mo062VJJ1PLPfjdVizaLNo0jl/U=	\N	f	del_1-3.48				f	t	2017-10-25 20:09:37.988678+00
2293	pbkdf2_sha256$36000$OJyy3QqJ98I1$KbS9D9erZZj14+jo8fXwiB+BtM67CGDRlxb2yh9a1VM=	\N	f	del_1-3.49				f	t	2017-10-25 20:09:38.117119+00
2294	pbkdf2_sha256$36000$YEdHLszWu3oI$m9EGdomB6Jf7I0zDC3fh/bzSqdEbBZLiKZ+LN186M98=	\N	f	del_1-3.50				f	t	2017-10-25 20:09:38.318125+00
2295	pbkdf2_sha256$36000$eFzZrB3JsOl5$Eq5mIbFY6AkW1GrtkrHozSMjgADTijWYgXx0LS03zrs=	\N	f	del_1-3.51				f	t	2017-10-25 20:09:38.512251+00
2296	pbkdf2_sha256$36000$NeQ5tzUmgkiE$2qrVQG366Aws2dw3G4/fWd/LlCGu31VHrR8QS6oFabg=	\N	f	del_1-3.52				f	t	2017-10-25 20:09:38.652934+00
2297	pbkdf2_sha256$36000$6SvAJ18nXr3U$cBpfg8SOX8Frg3bWiBhqbonLqLJ1ssCgOx9mXeeko5s=	\N	f	del_1-3.53				f	t	2017-10-25 20:09:38.79827+00
2298	pbkdf2_sha256$36000$enJG8h7D5Qbq$Gz8hkbud3kdt9lOUiLuUxE9ZJ6X78LQ7MZZP2l3cZxI=	\N	f	del_1-3.54				f	t	2017-10-25 20:09:38.940156+00
2299	pbkdf2_sha256$36000$x1HOwQ4AbdmX$PCTwPXekJ6NBvL0MlDdkahEtFFnKZ/PL1DXyb4jgisw=	\N	f	del_1-3.55				f	t	2017-10-25 20:09:39.071546+00
2300	pbkdf2_sha256$36000$mvnyBI1cdVxc$o6aYvqxv/TvwLPxLgE7YLQxIo35pspm4rprh6baQ5Is=	\N	f	del_1-3.56				f	t	2017-10-25 20:09:39.184571+00
2301	pbkdf2_sha256$36000$toqBusJZN1Gb$U/GLZi9JXS/b7Vnyfl+Ix5RUrzhjaClZZpFvjZ3eLwo=	\N	f	del_1-3.57				f	t	2017-10-25 20:09:39.380543+00
2302	pbkdf2_sha256$36000$klR86HL5XOY7$F7KJDXFM/y2BkUdnHWSKNFQ9C7gbDfAhlSHvYREEO3E=	\N	f	del_1-3.58				f	t	2017-10-25 20:09:39.494609+00
2303	pbkdf2_sha256$36000$scF1Oc9ovVaQ$QZGj38IPgoqajwxtHmhfMA8xUOmx3ao8Li37SI/2R+k=	\N	f	del_1-3.59				f	t	2017-10-25 20:09:39.632215+00
2304	pbkdf2_sha256$36000$ZMW9XyOyhWzp$UDAgx37k5NmH42AKA+Ucs0NfrqGMkwu4rWLX43S5kHY=	\N	f	del_1-3.60				f	t	2017-10-25 20:09:39.776174+00
2305	pbkdf2_sha256$36000$h1ISfqtj3Bjm$d8ZgRg/zxoxm0NdJrDBjbz/1ot3qG2Eulqe0b+n8X/s=	\N	f	del_1-3.61				f	t	2017-10-25 20:09:39.918199+00
2306	pbkdf2_sha256$36000$Vw32MyWLrzIi$M5ZFpGQD2+9koTirrFWeuLdVcjytJM2PwxtiKf87kAg=	\N	f	del_1-3.62				f	t	2017-10-25 20:09:40.053314+00
2307	pbkdf2_sha256$36000$k1BsXhxSkizw$4kGUgXQY2PEq9ah7z7/rEZfi3r4a14xNNYRJlL/iedQ=	\N	f	del_1-3.63				f	t	2017-10-25 20:09:40.165729+00
2308	pbkdf2_sha256$36000$kcBQtfwHLIRs$yVkRsfc35+TAqLse1WUNTPydOeG38W72U7u+sJ+gLNk=	\N	f	del_1-3.64				f	t	2017-10-25 20:09:40.280625+00
2309	pbkdf2_sha256$36000$iK3WQNbhGnJP$0OgrSci2Avfbgw3CrH1H/1RazEwsDuQwR1lAEADPw60=	\N	f	del_1-3.65				f	t	2017-10-25 20:09:40.413326+00
2310	pbkdf2_sha256$36000$h7pQg2wFKBJW$qK4J2rEAm2khZBxjABq/Z+0wdpJSi3i5QVplD14avys=	\N	f	del_1-3.66				f	t	2017-10-25 20:09:40.554577+00
2311	pbkdf2_sha256$36000$MkFViNL0nisO$A4ElLEy8rCcaSQOjBXBTc5e3CFY+geZRrqB5Fv04AZU=	\N	f	del_1-3.67				f	t	2017-10-25 20:09:40.644234+00
2312	pbkdf2_sha256$36000$sTQghgpTzRrN$k80m3bvjmQDuWawCzD+NcZKX9vcEDuL+mi1gV9fqO3g=	\N	f	del_1-3.68				f	t	2017-10-25 20:09:40.741151+00
2313	pbkdf2_sha256$36000$AV7Bt2fur25J$i+3SChg2/rYni96ijA7Ozvb+6DkwLZ/yWioiphso3YU=	\N	f	del_1-3.69				f	t	2017-10-25 20:09:40.830863+00
2314	pbkdf2_sha256$36000$zDi8ur64G4KZ$igNrytBBaQW7Q24Zl58TdMv8rVV5Y7S84bdq+WN67GA=	\N	f	del_1-3.70				f	t	2017-10-25 20:09:40.919813+00
2315	pbkdf2_sha256$36000$OhtWYa8JHYVp$ugsctVO0gtob5rj93VNU0iBsNBdELIb2Yhl1YAlVil4=	\N	f	del_1-3.71				f	t	2017-10-25 20:09:41.016935+00
2316	pbkdf2_sha256$36000$lCfPJAMBv56x$jxFXFALL7o1OcxKGBEETYR9IQ+wDJ2WFTP+b/cGnOjU=	\N	f	del_1-3.72				f	t	2017-10-25 20:09:41.154936+00
2317	pbkdf2_sha256$36000$EAk7izDzlDDw$Dq7lkx7wf2kA9l+wkIpk3dho3syoN6A31F56TdDURo4=	\N	f	del_1-3.73				f	t	2017-10-25 20:09:41.300204+00
2318	pbkdf2_sha256$36000$WRDILHo8LEZY$oy9qax/kDqwHnzLai9NVwKAqkdImzwbU9dpaltEUFgQ=	\N	f	del_1-3.74				f	t	2017-10-25 20:09:41.442352+00
2319	pbkdf2_sha256$36000$8IG1hqtHe65M$ogI7b8y1h9TB1kP44b3f3ifwXqw5KKe+2xCZGldEMGw=	\N	f	del_1-3.75				f	t	2017-10-25 20:09:41.576519+00
2320	pbkdf2_sha256$36000$94IeaCtcXkqj$+ksmUsp1NZOe46vB4rtWW0UPC7YeDF5U7tKuPZWFLd4=	\N	f	del_1-3.76				f	t	2017-10-25 20:09:41.631879+00
2321	pbkdf2_sha256$36000$lNRQwM65QUzO$lrwSTXlkyz/9gkFqFxp+FYR+N94Fx+DN6MG0VG5SoOs=	\N	f	del_1-3.77				f	t	2017-10-25 20:09:41.687844+00
2322	pbkdf2_sha256$36000$T2ES8IjJJOAI$1ffGl1bjgf715O21TI6VqtwaybFoOLKRNbenIIMCHkc=	\N	f	del_1-3.78				f	t	2017-10-25 20:09:41.748089+00
2323	pbkdf2_sha256$36000$y2n4iQXjplZA$1+kkFhAO/DgGNEGNt1VHPUUFEcJqnKRpFW++tsLof6s=	\N	f	del_1-3.79				f	t	2017-10-25 20:09:41.803874+00
2324	pbkdf2_sha256$36000$1KSioioRyqCC$NcM2ebT922XZArnObt7FyCrv6AR93iX1dRZyHWJjjhI=	\N	f	del_1-3.80				f	t	2017-10-25 20:09:41.859402+00
2325	pbkdf2_sha256$36000$okTEp4xJsru5$vzXSdFD3X/ISyXyNiB7BAwJ7sLHtovg5KsRAdq8g3Ic=	\N	f	del_1-3.81				f	t	2017-10-25 20:09:41.915397+00
2326	pbkdf2_sha256$36000$g458n44QbSPa$l8POd8+u+25MoGo5XywuiM87vxxMS8UIdxxpwbICJVc=	\N	f	del_1-3.82				f	t	2017-10-25 20:09:41.971912+00
2327	pbkdf2_sha256$36000$rBeYoxPu7xry$KtPWeNrBbbffzBkXivK/mQtV07nQm/il2kZYJs0wNH4=	\N	f	del_1-3.83				f	t	2017-10-25 20:09:42.027908+00
2328	pbkdf2_sha256$36000$CNF1FEL2YCNl$A6bqHbeIgA9+DqTtagKuOVMBTl2HXItjI9/gR8As94g=	\N	f	del_1-3.84				f	t	2017-10-25 20:09:42.083629+00
2329	pbkdf2_sha256$36000$uKXpBO0DxQ4J$MM3JhLyLZjLrrVg/Km2JywpFcBUUM9Q00kavBVMIbgI=	\N	f	del_1-3.85				f	t	2017-10-25 20:09:42.139257+00
2330	pbkdf2_sha256$36000$4vaiB2rMIPnP$0nx3Ei2Pydf09j30OW4l7UVmGL09EvRX08w2E0HfhHk=	\N	f	del_1-3.86				f	t	2017-10-25 20:09:42.194868+00
2331	pbkdf2_sha256$36000$iBA6bB5SyIZf$hpELa8I2nsdwvNzGnTFtD8ybHzkpnceMVndxWojr5xM=	\N	f	del_1-3.87				f	t	2017-10-25 20:09:42.259828+00
2332	pbkdf2_sha256$36000$Xz9jUaMoN6IM$vGj2CP7eBNvn4z7PrIihJzzjP5MoM2nZWI1CVnWNA+I=	\N	f	del_1-3.88				f	t	2017-10-25 20:09:42.318722+00
2333	pbkdf2_sha256$36000$bexrdxux7qCs$FSleDjq+WiQS3CH7JH0J+C5KxhOVtuPnPIBGlOcEj0Q=	\N	f	del_1-3.89				f	t	2017-10-25 20:09:42.375949+00
2334	pbkdf2_sha256$36000$PNHbvMTCVHN6$Aj68W65HP5s0MpwWFyu0kQDd3vKYSH+89b1sSDslq3M=	\N	f	del_1-3.90				f	t	2017-10-25 20:09:42.433233+00
2335	pbkdf2_sha256$36000$G4bGiOlzRNrQ$6LV8ZcwDso8rkSh2O6TY/p0nAH+LR726F31pVJylAv4=	\N	f	del_1-3.91				f	t	2017-10-25 20:09:42.490119+00
2336	pbkdf2_sha256$36000$qkax4lyZF5hl$Uile3alsKPiTt3MgosWKRu/GMQwgyxFM/QdbagVDScA=	\N	f	del_1-3.92				f	t	2017-10-25 20:09:42.592674+00
2337	pbkdf2_sha256$36000$kvuPSHaz7cZ8$JZ/BZ8VsGMvsTMUyhh1JultTvwstA2XqGp12l0ozaNI=	\N	f	del_1-3.93				f	t	2017-10-25 20:09:42.795577+00
2338	pbkdf2_sha256$36000$Z58ZBoVszhXd$GZiNpuRVGnB9uNRVmLFRS/nYvGh1cIEn+z+IgmhDTLQ=	\N	f	del_1-3.94				f	t	2017-10-25 20:09:42.937459+00
2339	pbkdf2_sha256$36000$klsN33T1vYns$GnmFEDlupJruubWMCv+QRMS0OxkY9U5IQxPBDXGdasQ=	\N	f	del_1-3.95				f	t	2017-10-25 20:09:43.046202+00
2340	pbkdf2_sha256$36000$NpqYSdeVs7Yn$+UlKie0N/xTCi2iVdpV+JEOtkf2uNFdgyGghxpEPWlk=	\N	f	del_1-3.96				f	t	2017-10-25 20:09:43.101399+00
2341	pbkdf2_sha256$36000$M57pg4SXb0bc$YHqrb7JyKTN/QFkneXs0z0kS58LrRbol7QX6FC1e/wc=	\N	f	del_1-3.97				f	t	2017-10-25 20:09:43.156972+00
2342	pbkdf2_sha256$36000$T5spWBYKRaTl$MN7oDuh2cGIyXZcn2oePtgEaGh4O+3q1L9O6+gQgroU=	\N	f	del_1-3.98				f	t	2017-10-25 20:09:43.214031+00
2343	pbkdf2_sha256$36000$8Tw8XEnjL19y$6blS2mTskM2khNSKXRN/w6LVMCnJO/5R5AEIRfacjpg=	\N	f	del_1-3.99				f	t	2017-10-25 20:09:43.270779+00
2344	pbkdf2_sha256$36000$Wc97Dy7T3Tcq$2FgP8/9Asrz+hmlvW5F1kdpFtnxwqQibYDbTrlgZsqA=	\N	f	del_1-3.100				f	t	2017-10-25 20:09:43.327637+00
2345	pbkdf2_sha256$36000$hoCciZf9Mt6q$hmjJo3uxboQrRFt2DXPZyuOF/zwLwi01MgHKhLJquFc=	\N	f	del_1-3.101				f	t	2017-10-25 20:09:43.383535+00
2346	pbkdf2_sha256$36000$HsvDPMXUqeXv$oEk7QaHWNr0MBokZkn2WROl18Xx+UqYWLb2+PDJ7mhg=	\N	f	del_1-3.102				f	t	2017-10-25 20:09:43.441333+00
2347	pbkdf2_sha256$36000$8pMAUMbvGE5p$GWByWqWNtKXbAPERDFaCP2VsAj7gvW6yWd7/emZ3uo8=	\N	f	del_1-3.103				f	t	2017-10-25 20:09:43.499443+00
2348	pbkdf2_sha256$36000$eq0urew3kKcL$e4LKMa2ybQRGq2CM4Tb0xfBnp5xDmWPR4QU/4JnkJME=	\N	f	del_1-3.104				f	t	2017-10-25 20:09:43.606268+00
2349	pbkdf2_sha256$36000$TsrzWvR5UKAE$eX/cfK7yItsdwSioEbykVcJtuOTbpkxN9Fobo1h4B0I=	\N	f	del_1-3.105				f	t	2017-10-25 20:09:43.785566+00
2350	pbkdf2_sha256$36000$0dcJSSP0rqwF$b18KnIBS3T9nHNHQHkBKy/HrYHdEhCVuRFXztk03SV4=	\N	f	del_1-3.106				f	t	2017-10-25 20:09:43.963633+00
2351	pbkdf2_sha256$36000$4M5lrxcaOj0Z$7g1jNCVzSwnshHmdj3d/8zrh1D66NrI+qDhL04wsPto=	\N	f	del_1-3.107				f	t	2017-10-25 20:09:44.056115+00
2352	pbkdf2_sha256$36000$XCsZTnB38T2i$jIQGy/eDuMzU1iM0/cCo72/Dd0sDJCbUYk1aCSmCqys=	\N	f	del_1-3.108				f	t	2017-10-25 20:09:44.110994+00
2353	pbkdf2_sha256$36000$ZadiAAv9oOh3$Nguc9avH7MNMtzn4BOuPR4L+SiiqdwzePqDlKsGtjm4=	\N	f	del_1-3.109				f	t	2017-10-25 20:09:44.165555+00
2354	pbkdf2_sha256$36000$cotMGuL0mL5R$NhJREhy9auqH+X23ZQPAYe5GOFcu8dyhhqiY06vAgG0=	\N	f	del_1-3.110				f	t	2017-10-25 20:09:44.220454+00
2355	pbkdf2_sha256$36000$gAC1wph3NJnA$l6God6IPq7gRqwrWI8rwN3qTCaA9kQCUbIJq7bFnN08=	\N	f	del_1-3.111				f	t	2017-10-25 20:09:44.274921+00
2356	pbkdf2_sha256$36000$TzHzB6m35Bw9$RIbkRlJd8apyQDlf8wlvpTbTno1AzT1K5hzlYk793T4=	\N	f	del_1-3.112				f	t	2017-10-25 20:09:44.329983+00
2357	pbkdf2_sha256$36000$hkI5neRJVxeL$ZqcXLPxX68fxCJJeDh/qS8vWT6PyG//fsLnFlpryCos=	\N	f	del_1-3.113				f	t	2017-10-25 20:09:44.384579+00
2358	pbkdf2_sha256$36000$APEMUSfJXzhM$uNAQdscdFhgrcq7HmPl3c1/iyOM7WD4/rupdzXbvpWM=	\N	f	del_1-3.114				f	t	2017-10-25 20:09:44.439544+00
2359	pbkdf2_sha256$36000$LADOityiV7LB$zXKqKOVbJdvR2OSxv5pjSokVB88/Li1gJOupa8f0kgQ=	\N	f	del_1-3.115				f	t	2017-10-25 20:09:44.495178+00
2360	pbkdf2_sha256$36000$7ufdgpAmcIuc$/q4J1DWT00LjmCv8z42ATUOy3zM82M+kqQj5S+JmAdA=	\N	f	del_1-3.116				f	t	2017-10-25 20:09:44.550651+00
2361	pbkdf2_sha256$36000$H9WEJl7WoNyA$0yF9W2FFTdVviS3RlMravPYZjJ3L3o5Uq/1ZYyJalwY=	\N	f	del_1-3.117				f	t	2017-10-25 20:09:44.606759+00
2362	pbkdf2_sha256$36000$uKurcm5fSymm$3ZikFOBhaHVWpMiqRpPNnrAJ7GXN7q64AbHACtasaI8=	\N	f	del_1-3.118				f	t	2017-10-25 20:09:44.663609+00
2363	pbkdf2_sha256$36000$ZHikhMijcQby$B6wBaSxqA+Sf2GyAEH98yvvQn6pzDsZiaRm1yGANHxE=	\N	f	del_1-3.119				f	t	2017-10-25 20:09:44.720706+00
2364	pbkdf2_sha256$36000$iBxGC6k4lGDD$GB9jdDbcG34Srr1UtUwvuUKIN4vrhWPyD/RPyt5N0ug=	\N	f	del_1-3.120				f	t	2017-10-25 20:09:44.776811+00
2365	pbkdf2_sha256$36000$W0ZlemnvZ45F$GxKreC8qmYcnUD9y7+oJY3nN3RlzG3b2O+0irrIlBSE=	\N	f	del_1-3.121				f	t	2017-10-25 20:09:44.834081+00
2366	pbkdf2_sha256$36000$BAXiCUedKMie$nWlUvjSzEDztS0iSgK+OQvvog+CxqCqrSdh3DmpX3U0=	\N	f	del_1-3.122				f	t	2017-10-25 20:09:44.917198+00
2367	pbkdf2_sha256$36000$6kTrEnYOmrVQ$TOQezCbGiCgnWelkPK3yavZB7kOg/tcUSB2+Q9L80w0=	\N	f	del_1-3.123				f	t	2017-10-25 20:09:44.971664+00
2368	pbkdf2_sha256$36000$7aKCN4AR0h8P$rPZSR8Zjw6js7S+Ci0lXQD+Ib/qR4wO2MYezowx5DKo=	\N	f	del_1-3.124				f	t	2017-10-25 20:09:45.027599+00
2369	pbkdf2_sha256$36000$CYsvKLdefqel$LMn+2CXeHwg4BXq8u4/g5b7bM3qh7Z7dJQWLiZArQI4=	\N	f	del_1-3.125				f	t	2017-10-25 20:09:45.085363+00
2370	pbkdf2_sha256$36000$lxLMMRJGtdBG$amYVake30cKK8Z/p73buyuhfKC1qoAgnWeiK58ioci0=	\N	f	del_1-3.126				f	t	2017-10-25 20:09:45.140692+00
2371	pbkdf2_sha256$36000$jlgaT6L0FgHx$cXoxtFa4GK8qu5SWinbxuxd1GpHBSyc++nPcNxV2wKw=	\N	f	del_1-3.127				f	t	2017-10-25 20:09:45.195952+00
2372	pbkdf2_sha256$36000$wNI0wJbYmc2a$stOW7w+XI39BOyub3wRsKu/BUvKi4Wm5cNll8GlBt4o=	\N	f	del_1-3.128				f	t	2017-10-25 20:09:45.251664+00
2373	pbkdf2_sha256$36000$fW8AEnxfbDSR$79lZV4jOswG3z3O/+geMa73iRg+z2r37OU9lTAxxXe4=	\N	f	del_1-3.129				f	t	2017-10-25 20:09:45.306713+00
2374	pbkdf2_sha256$36000$WZvM70mjdpBM$DuUDuqsd/j+NikDXTcG3Qd07/2o6Mq/Ng2Oj58TfVCU=	\N	f	del_1-3.130				f	t	2017-10-25 20:09:45.362214+00
2375	pbkdf2_sha256$36000$Vobuisw8Ze1g$45p/PCxmx6vEnElFZlXgokPM8tjoT9Mp7GNAKQ2XuMY=	\N	f	del_1-3.131				f	t	2017-10-25 20:09:45.4176+00
2376	pbkdf2_sha256$36000$l07xrkGYtkCH$SLL58g6IZfQ0fj7S3YCtXtGMwRz58tR0EJphOpyQM90=	\N	f	del_1-3.132				f	t	2017-10-25 20:09:45.473226+00
2377	pbkdf2_sha256$36000$0w3I4K2Uypnk$Wo5KjhgPWZZyfaIcjBE1gc4OKO06IMWoT6Wtublvw8s=	\N	f	del_1-3.133				f	t	2017-10-25 20:09:45.52844+00
2378	pbkdf2_sha256$36000$Kj3CUUnITWx7$HflUeRYcZpkVkue+Y6/N8djkAQYTV1GYkZmI0ZgdoA0=	\N	f	del_1-3.134				f	t	2017-10-25 20:09:45.583957+00
2379	pbkdf2_sha256$36000$Nci4eb9xZ2ZT$vvH30IFPXOla1MV0x3dwDmqZ9KITALT+a+/YP0P/GOo=	\N	f	del_1-3.135				f	t	2017-10-25 20:09:45.638885+00
2380	pbkdf2_sha256$36000$9o8ehmQ9qGJa$DeSQQOSqeumesq2VWkJKjJ8sXYsVvmgDW+V9v8BBU7E=	\N	f	del_1-3.136				f	t	2017-10-25 20:09:45.694256+00
2381	pbkdf2_sha256$36000$4AcO9iyDbmdq$tQZel1Yw4Kd+R0W4DY79oBxzPcQbCYDpLRkg3myww3I=	\N	f	del_1-3.137				f	t	2017-10-25 20:09:45.750379+00
2382	pbkdf2_sha256$36000$0vAbj4IATBtN$mNjaeI/TuAItBRn9sl1v3zd9mKm9A/1XEsdVdvznjkI=	\N	f	del_1-3.138				f	t	2017-10-25 20:09:45.806605+00
2383	pbkdf2_sha256$36000$QwSUh2d5Thah$0yTylmnKdbgHGcZf6EaxX5oHv3nF5dY4/RMnC3ASHzQ=	\N	f	del_1-3.139				f	t	2017-10-25 20:09:45.86201+00
2384	pbkdf2_sha256$36000$p2RahjADc25G$BQ0U9jYdvUQRvOYRFXDLn0eGz8BE+tDSNXoY4O59zRU=	\N	f	del_1-3.140				f	t	2017-10-25 20:09:45.929563+00
2385	pbkdf2_sha256$36000$6diyReXrinkU$9jVGCkDiH8RDfCXqz7ovMQCwX5y774X7aqUbxs7C0qQ=	\N	f	del_1-3.141				f	t	2017-10-25 20:09:45.999715+00
2386	pbkdf2_sha256$36000$M9ZFqrYyNGwv$/FpZzWk6axyKhVPFHHNGBLlNrxFx2g9iWxE9mxbzDGc=	\N	f	del_1-3.142				f	t	2017-10-25 20:09:46.054835+00
2387	pbkdf2_sha256$36000$i1td4dYK0BoE$wcQnvInIEa+fkuxeXOXlD9hrSJU/pXm58CqsP9y1BY4=	\N	f	del_1-3.143				f	t	2017-10-25 20:09:46.11048+00
2388	pbkdf2_sha256$36000$i9izpWUXvAYv$UEJ5ONo9rmM19S2WG9WdLcvv/HVu4HLtmErk2DOfgEQ=	\N	f	del_1-3.144				f	t	2017-10-25 20:09:46.166456+00
2389	pbkdf2_sha256$36000$PN5p1baWMLK0$+9e+acfyt5FOQwg96oizNGgOZrHqO6qwAE0w7aRrD8Q=	\N	f	del_1-3.145				f	t	2017-10-25 20:09:46.222854+00
2390	pbkdf2_sha256$36000$5y7JUnb7fdVH$RQThFKAFnC/MnaVseK8yP0/wysWwoRlI6OmPvDhFKLc=	\N	f	del_1-3.146				f	t	2017-10-25 20:09:46.278688+00
2391	pbkdf2_sha256$36000$3cBQoLi0rI2K$/SjVGpgTOiCqQVzWLNJddz5kcg8Z66pbR6EbpX4pz58=	\N	f	del_1-3.147				f	t	2017-10-25 20:09:46.334499+00
2392	pbkdf2_sha256$36000$2aLiCbrHvkKB$400ZBiV31gAlUBI1PekpFYPcd1qi+CvBmt5LN3Vl2pY=	\N	f	del_1-3.148				f	t	2017-10-25 20:09:46.389883+00
2393	pbkdf2_sha256$36000$i7CJmFOQaN89$ccN/jjgX3ECDVbSjbbdg8bNtfmdYhuZnZ/Op9IhWEv4=	\N	f	del_1-3.149				f	t	2017-10-25 20:09:46.44473+00
2394	pbkdf2_sha256$36000$I606qBoftkHS$GIKi6el1JCbazL9RZHH7RwPtWykaYCu8+OMGoYANVGQ=	\N	f	del_1-3.150				f	t	2017-10-25 20:09:46.499407+00
2395	pbkdf2_sha256$36000$w66R403fGqQl$zHBZ8w7DlMa2a3PB5c9Ic37ZqrRMQXdjQUV1zzWBssY=	\N	f	del_1-3.151				f	t	2017-10-25 20:09:46.603104+00
2396	pbkdf2_sha256$36000$68844wwyEsMk$wRL69tshrKPwSij+hSNgk7blueJ7YDEVqtP1O08KBfo=	\N	f	del_1-3.152				f	t	2017-10-25 20:09:46.750397+00
2397	pbkdf2_sha256$36000$AZapye6uYwav$DDTGkibJ/5LF13HiVqxKwIXb4rpjoh3FR+QM14cQyYA=	\N	f	del_1-3.153				f	t	2017-10-25 20:09:46.904381+00
2398	pbkdf2_sha256$36000$60dzePjhTluR$8Rnm0az/hQGJq1SrnUBSJNS3S7o6GVM/DblYpzLMfE0=	\N	f	del_1-3.154				f	t	2017-10-25 20:09:47.115096+00
2399	pbkdf2_sha256$36000$G5ARWs9qKMTJ$rs6cxDdfoPnhMOhh484JkOmvlt01hNPGCgEq54I8A9s=	\N	f	del_1-3.155				f	t	2017-10-25 20:09:47.261827+00
2400	pbkdf2_sha256$36000$zzZnnCmHdhI6$Ly9nlMjbAN43dfcNJ47dttncmFssdAvb4GmkyyLB88g=	\N	f	del_1-3.156				f	t	2017-10-25 20:09:47.403792+00
2401	pbkdf2_sha256$36000$N3BfXLYokHR7$ddD36zaEqH/AuQddeqEQvQez8BTtN76KG1mK3sBcs+o=	\N	f	del_1-3.157				f	t	2017-10-25 20:09:47.5536+00
2402	pbkdf2_sha256$36000$SBtao8rkQQKk$/v259DEY9FIQZeOK6vhMUBfjyo0qnMtoFKN12A/fDGs=	\N	f	del_1-3.158				f	t	2017-10-25 20:09:47.696616+00
2403	pbkdf2_sha256$36000$nfyoZ7KH0ixd$ngABqR7G6HG2oHMG/ixAvpjkGkIURCi5g4x/DBJFA2M=	\N	f	del_1-3.159				f	t	2017-10-25 20:09:47.840635+00
2404	pbkdf2_sha256$36000$VJciJhIhaItV$4g/Z37fvNyhRZ9aOy6WjoyfEUCun4pd+ZlRh7Ur8IVs=	\N	f	del_1-3.160				f	t	2017-10-25 20:09:47.982389+00
2405	pbkdf2_sha256$36000$PYBvNYG6nKjW$KbwLL+ACurp8uyewwnjle7gWxgIneHhLW5qkJEcZb4w=	\N	f	del_1-3.161				f	t	2017-10-25 20:09:48.132579+00
2406	pbkdf2_sha256$36000$cuf7bYJ0kegF$UV4jNQXPW4wiAUdE9qa88wgdPlt0351CcTBMdZKyX7M=	\N	f	del_1-3.162				f	t	2017-10-25 20:09:48.344816+00
2407	pbkdf2_sha256$36000$1fQ5odueDj8E$ZFx7kdwLwoY07KKAH0+8tosnIiHd4/earcvANHrpyo0=	\N	f	del_1-3.163				f	t	2017-10-25 20:09:48.487961+00
2408	pbkdf2_sha256$36000$yjOrNHJWSqeE$BCyP0AhXVFlk3GEdSKPIieOrydw5zGrmPAgqcRq+bOg=	\N	f	del_1-3.164				f	t	2017-10-25 20:09:48.662364+00
2409	pbkdf2_sha256$36000$DiqOCbuIvGo1$XDJt4fgDktpsHZ23hTweqy1VGe3U8In/Jt2RdqRl8uE=	\N	f	del_1-3.165				f	t	2017-10-25 20:09:48.808994+00
2410	pbkdf2_sha256$36000$NV7Ouvnr7zsu$UGW0OTMH2WbqHI7vHCXvzqi4eVDum3fa/LUKCVaZPKw=	\N	f	del_1-3.166				f	t	2017-10-25 20:09:48.951411+00
2411	pbkdf2_sha256$36000$5buj5lga9roK$A3kD4mr+Z3Tw+3UDmIfX5mASW4mX7FRV/mE2DP+k1RQ=	\N	f	del_1-3.167				f	t	2017-10-25 20:09:49.054554+00
2412	pbkdf2_sha256$36000$M3HMMtVdr4Sd$qlv2r9TuL8CNbO43KrIQ/plU/9qtWMCWrEs4DTj+lwA=	\N	f	del_1-3.168				f	t	2017-10-25 20:09:49.111664+00
2413	pbkdf2_sha256$36000$TgJiwsJBau0f$n2u70LI++OArQCeLzCDeOZqGuj2Vut2SamoPw6Jjv7c=	\N	f	del_1-3.169				f	t	2017-10-25 20:09:49.16915+00
2414	pbkdf2_sha256$36000$FN9nG36vH61X$SMUU+o3VG9Myobe/KPFXUoq0FzxgfuZFS7l8BilCmBw=	\N	f	del_1-3.170				f	t	2017-10-25 20:09:49.227214+00
2415	pbkdf2_sha256$36000$qVhfhTyjwGK1$tu6x460BGKwwWiV4w7mgILyz+UOXaPvsZlCD++JjdiY=	\N	f	del_1-3.171				f	t	2017-10-25 20:09:49.312557+00
2416	pbkdf2_sha256$36000$8RDLuFYHaxx6$875U8isXgJr0ze8zMSYO93O99c/EJPOs4sSEs4QrXQA=	\N	f	del_1-3.172				f	t	2017-10-25 20:09:49.369602+00
2417	pbkdf2_sha256$36000$fElcg0EA3QCC$goMtq++KGX2pdTmGqrdbGww8xOdL03uUy74BsUHT0n0=	\N	f	del_1-3.173				f	t	2017-10-25 20:09:49.426593+00
2418	pbkdf2_sha256$36000$gNQGAQ3uL4qj$TY6Ge0Ivn1+r3EESkpSgHrfFu2uY1yyyh34XWegGizI=	\N	f	del_1-3.174				f	t	2017-10-25 20:09:49.482796+00
2419	pbkdf2_sha256$36000$pOoh1jnstIS1$yF10vkXP28cxZSt0jpP6GmXpH9KqOsUPsvBj7Kp7v9Q=	\N	f	del_1-3.175				f	t	2017-10-25 20:09:49.560113+00
2420	pbkdf2_sha256$36000$AVfz5Fu5S5wZ$MYZvjBthZRI6joGQtu1XBIQIUnVLUIzz6SdhZo3rsJQ=	\N	f	del_1-3.176				f	t	2017-10-25 20:09:49.706144+00
2421	pbkdf2_sha256$36000$OmZDBBRQ6gpW$tNRjGJIK8jb34xM6qFd27nY1GDEkXwUCHhWYi1U/21M=	\N	f	del_1-3.177				f	t	2017-10-25 20:09:49.85103+00
2422	pbkdf2_sha256$36000$ejKJsx67af2c$kbpukeGhbJfq8r/h/UE0vIY0Y/3GdiRfEHfda8gFreA=	\N	f	del_1-3.178				f	t	2017-10-25 20:09:49.997538+00
2423	pbkdf2_sha256$36000$4PqCdLYSSKor$EqkE5aO3dBfY2H6wat13HHLb5YH6NbFxZKraotMgmG0=	\N	f	del_1-3.179				f	t	2017-10-25 20:09:50.139409+00
2425	pbkdf2_sha256$36000$rxOamvxMjhtR$6XchLZKeiokFn48oOJhUE/sNbVJpo+7VvHUYP3TroC0=	\N	f	del_1-3.181				f	t	2017-10-25 20:09:50.523406+00
2426	pbkdf2_sha256$36000$U0BOKoAFdrie$cPrhfxs04ETPZVOY1PjMOClMpVTOTAyYJ8TksIMzSAI=	\N	f	del_1-3.182				f	t	2017-10-25 20:09:50.637503+00
2427	pbkdf2_sha256$36000$5rlYkj6WcoPf$0b3jLPwwOZXgvtNt9Td2cCqIHiJq7dBfJxOC7rSoqUA=	\N	f	del_1-3.183				f	t	2017-10-25 20:09:50.752462+00
2428	pbkdf2_sha256$36000$qcimePX3SWk5$YXSb5ffsh4/oGYBHuXpGzv0KiLxb2YXHrkjj/mLTGKM=	\N	f	del_1-3.184				f	t	2017-10-25 20:09:50.866487+00
2429	pbkdf2_sha256$36000$PsNPdRmESp6r$HJU1+gBvnWxQYOjMOQdecm4i0Ud9AJZcLi8AsG6rRpI=	\N	f	del_1-3.185				f	t	2017-10-25 20:09:50.98187+00
2430	pbkdf2_sha256$36000$Jl6ELaptPUAV$qsk/TOeHRSkdENtz856gr8aTRNx9lGX+PxNEjKtS6fQ=	\N	f	del_1-3.186				f	t	2017-10-25 20:09:51.085141+00
2431	pbkdf2_sha256$36000$ov0tAq4Qdvor$PcflSo722VSp5g775pkh/Jrr+V/EGTJX49YQ9psM7sc=	\N	f	del_1-3.187				f	t	2017-10-25 20:09:51.179758+00
2432	pbkdf2_sha256$36000$bh4vO6nafjLd$6/e9KEpSovm71FpKEP3IjiHhVtEX0xmS8TuG/EecBA8=	\N	f	del_1-3.188				f	t	2017-10-25 20:09:51.27541+00
2433	pbkdf2_sha256$36000$irkp9bmAAhWF$PEjqLB0ZqeUUaIAfbjzFrXHznP3pR+wWwZ0CwAiZeqg=	\N	f	del_1-3.189				f	t	2017-10-25 20:09:51.369725+00
2434	pbkdf2_sha256$36000$EI0Gq9fVLneD$pPYlayxBF6EWFZ2LzrJfvZ+Q7jrOFR8RpB6iioLZdGU=	\N	f	del_1-3.190				f	t	2017-10-25 20:09:51.480056+00
2435	pbkdf2_sha256$36000$vdwYFP2jxGcu$NXAJsP7LxbbLYm6jaN5cuM4lDqnp4C1g/wyI4SRBNWc=	\N	f	del_1-3.191				f	t	2017-10-25 20:09:51.586714+00
2436	pbkdf2_sha256$36000$v3hLM4Q3n7sK$HEWtvkopVfd1vpa8qToxLSy4i+7tU3xdLZ2kH8gb1AI=	\N	f	del_1-3.192				f	t	2017-10-25 20:09:51.66397+00
2437	pbkdf2_sha256$36000$jX391ww11PQx$ZAfW/fHNE0aiMAHfoHFypkbOOzS7fni8o7DBfjErcuw=	\N	f	del_1-3.193				f	t	2017-10-25 20:09:51.744722+00
2438	pbkdf2_sha256$36000$eWlEE7HeTK5X$PHBeo6VijjE+bcSdrfHjwjAm+9kGBG7fNGXQO4DiQuY=	\N	f	del_1-3.194				f	t	2017-10-25 20:09:51.821681+00
2439	pbkdf2_sha256$36000$Mz67PaBhkvRy$7rVS1rcsJyhISXhmv9jCZeDd6es7GXhtffDiImoIx28=	\N	f	del_1-3.195				f	t	2017-10-25 20:09:51.89957+00
2440	pbkdf2_sha256$36000$cm1hSxXO1Ap8$fjCaPDc+J5a5F/mfD+YwvoCgEABbYiXjeCMgqe6sXBM=	\N	f	del_1-3.196				f	t	2017-10-25 20:09:51.976975+00
2441	pbkdf2_sha256$36000$FYpK7JbZmy7x$e9V8SXAyo2eMz5w4tDQH6JOBdVTcMbKPyLGL3EmX3Xs=	\N	f	del_1-3.197				f	t	2017-10-25 20:09:52.049863+00
2442	pbkdf2_sha256$36000$odHxayEfgG1S$jsh4U8atV0ruTwIR6KgB+X9CPcFHdsokhp97YQyNZko=	\N	f	del_1-3.198				f	t	2017-10-25 20:09:52.113683+00
2443	pbkdf2_sha256$36000$4ecYJNFqTqYQ$jd2Qgtwenn+zlUEUdP2Mpmteh1esrPOSKZU2mtAPjzY=	\N	f	del_1-3.199				f	t	2017-10-25 20:09:52.180995+00
2444	pbkdf2_sha256$36000$HXCaL8q6UIsf$SJj8Wdl6K7M4MMZxiYy9q2vv8VapuU40AN+8hCiQwP8=	\N	f	del_1-3.200				f	t	2017-10-25 20:09:52.24467+00
2445	pbkdf2_sha256$36000$9wX06wfFnlhF$oQ+Cpc6kThEHshWer2TOaZaCZggWbWiTyOkGEyiPTcE=	\N	f	del_1-3.201				f	t	2017-10-25 20:09:52.307478+00
2446	pbkdf2_sha256$36000$Oi3tFWK8Lw05$lOjvAde2TvYAbdR85UQEwjPsp+8YSBiBBzEdh22qUik=	\N	f	del_1-3.202				f	t	2017-10-25 20:09:52.37076+00
2447	pbkdf2_sha256$36000$ZyXaVDCIlgd7$/OobBzhTs908x/Bx28FaEd266tswFd3k5al+TCHWQnA=	\N	f	del_1-3.203				f	t	2017-10-25 20:09:52.433134+00
2448	pbkdf2_sha256$36000$4CzGThS5CFMR$BvkA4qQbrBZWI/WKWtmTaZbUG06pY9OJjaRtZc5djCM=	\N	f	del_1-3.204				f	t	2017-10-25 20:09:52.495358+00
2449	pbkdf2_sha256$36000$ISQOQdLFckJX$ce5EO4vY3Xw1b2OJW1EqxF8c7NbzMCoKZjq8UWL9sIo=	\N	f	del_1-3.205				f	t	2017-10-25 20:09:52.574094+00
2450	pbkdf2_sha256$36000$Bxa4lVrs7KFe$tFMP48KgQD5XONyIIQJFaqR84XSm0xxMc6qSv0KqBuI=	\N	f	del_1-3.206				f	t	2017-10-25 20:09:52.633647+00
2451	pbkdf2_sha256$36000$paUhcYQbzzZH$/lcEUZztZ+2A9ebGT6yvPXRkKdA6kM33QUk5Spj64HA=	\N	f	del_1-3.207				f	t	2017-10-25 20:09:52.688353+00
2452	pbkdf2_sha256$36000$F1NNd3s4cLtk$BtR1YWZIXwXUM9IvHre9yKNEdCOlkjzL5mjEirHYd4Q=	\N	f	del_1-3.208				f	t	2017-10-25 20:09:52.743586+00
2453	pbkdf2_sha256$36000$ZMPfC1cSVjEQ$i8br7JxuQBxXqwWr2rIBVuUUF6EfU1w9aMO2kznqaRk=	\N	f	del_1-3.209				f	t	2017-10-25 20:09:52.797508+00
2454	pbkdf2_sha256$36000$EM562cR9RFMV$qBxOb15NaABPL8zUK4gVPdD9CPgh+GH1BUXY2S525dI=	\N	f	del_1-3.210				f	t	2017-10-25 20:09:52.852296+00
2455	pbkdf2_sha256$36000$opZdeBuV8xUz$jHM3Hfzf3NWYEu6j24Uje4Szr6iCM+ET9SB5aR9mYjw=	\N	f	del_1-3.211				f	t	2017-10-25 20:09:52.90651+00
2456	pbkdf2_sha256$36000$MIxHJ7BbGq4V$+hHjg6YxGRPHOHl71dGELkH/a9vSFwr5wcFnGAI8/vQ=	\N	f	del_1-3.212				f	t	2017-10-25 20:09:52.961333+00
2457	pbkdf2_sha256$36000$CKQAr5jF6z2S$C2bmFugoeDs3otuwX05ymtNZ2MzDKpymjtAXGHe88ME=	\N	f	del_1-3.213				f	t	2017-10-25 20:09:53.015804+00
2458	pbkdf2_sha256$36000$ha79nE66sjRy$MWNeUOdOIuk9oXBVXAFekuhvYQVDv5SIFVUIcs/CSYs=	\N	f	del_1-3.214				f	t	2017-10-25 20:09:53.071611+00
2459	pbkdf2_sha256$36000$jcDhZ6pXHVa4$DgFMOWj2Kha3U5VBJP9MRd5k+C8TeBLWRlH6PAZdluo=	\N	f	del_1-3.215				f	t	2017-10-25 20:09:53.125648+00
2460	pbkdf2_sha256$36000$PgQM2iN1eStM$yfv/d04Cq22XpaOlFmjc/2P0CM9m15B61PV0bVtDr2E=	\N	f	del_1-3.216				f	t	2017-10-25 20:09:53.180243+00
2461	pbkdf2_sha256$36000$uVb1lY9tc7KY$7+3ICogdUDpebrVBEMWL9Vg8/CZ4Y0oH4lo3guiUOPU=	\N	f	del_1-3.217				f	t	2017-10-25 20:09:53.236174+00
2462	pbkdf2_sha256$36000$8PQY6P47Uvfs$YkS6/wN4QCOwPBUT7ZuD1s4TuCt8bUSkRnjPz36jj5I=	\N	f	del_1-3.218				f	t	2017-10-25 20:09:53.291103+00
2463	pbkdf2_sha256$36000$ftxtSYLmN13n$J3+I9LYyQ0xYpdgj8l79NAftoV+k0cVyPL90eNdP578=	\N	f	del_1-3.219				f	t	2017-10-25 20:09:53.346166+00
2464	pbkdf2_sha256$36000$cijRZc5NcT3t$ydHRuOhwTOT1WRC3SwRKjbMS15CNHwyHSVQpafuoDBc=	\N	f	del_1-3.220				f	t	2017-10-25 20:09:53.400597+00
2465	pbkdf2_sha256$36000$y2YRWXgszMxR$JrxQ0AATJIt+/1UXj+eA1DiS6scl/63zQH+zK2QAwvY=	\N	f	del_1-3.221				f	t	2017-10-25 20:09:53.45567+00
2466	pbkdf2_sha256$36000$aXALHLX3Ej1Q$BnAmRHQT0C17jOkTHursm7xaieX69H1o8gs3WFmRkds=	\N	f	del_1-3.222				f	t	2017-10-25 20:09:53.510782+00
2467	pbkdf2_sha256$36000$4GmHn12xz6py$7Ek6sL6mHE/96tQ9WbA69uGdGbgf0gVIW0CHuguR7DM=	\N	f	del_1-3.223				f	t	2017-10-25 20:09:53.567427+00
2468	pbkdf2_sha256$36000$4FGbSVHVVdFC$5Mkr87KKofV0IDVeJv9ZOGFmcl91kjOdFF+aRlZl4y0=	\N	f	del_1-3.224				f	t	2017-10-25 20:09:53.648507+00
2469	pbkdf2_sha256$36000$8fUkc7NCAOsj$myBNku2eGmqEuBcY3h0AspthDTzD2QUqJTDfJ62Q74g=	\N	f	del_1-3.225				f	t	2017-10-25 20:09:53.704255+00
2470	pbkdf2_sha256$36000$XbJVkfGfCFto$+gpQOoKaUreDIgEM6mPloAVoGYRvZUTGDEjrolICaLA=	\N	f	del_1-3.226				f	t	2017-10-25 20:09:53.766193+00
2471	pbkdf2_sha256$36000$jgOdsHlkZuiA$vRStQeNFRlIEU5AQ5dU1nAOe8dvW8vbX3yqhq1KIwTs=	\N	f	del_1-3.227				f	t	2017-10-25 20:09:53.823047+00
2472	pbkdf2_sha256$36000$tpHmo6li0ufa$3cUDetRwXflWRQ3JH4jAk1otLhBUXWn0ZPC28Q/Oc74=	\N	f	del_1-3.228				f	t	2017-10-25 20:09:53.880512+00
2473	pbkdf2_sha256$36000$tOvefwUCKaF1$PtuT7ruCr7Atlou7pD9T3se7Ae2NWGzYBAjhI9Gp3D0=	\N	f	del_1-3.229				f	t	2017-10-25 20:09:53.936866+00
2474	pbkdf2_sha256$36000$0eMVErS71drW$xUAU1Sa3FBJuza2xKNgqZuyLuL7E55PF8AquKVodllc=	\N	f	del_1-3.230				f	t	2017-10-25 20:09:53.993489+00
2475	pbkdf2_sha256$36000$PjFV2QHqQdOM$tjP7HfYEj13xGyKQz10O0lObgbSlPfS7mSq3uFSs5CI=	\N	f	del_1-3.231				f	t	2017-10-25 20:09:54.092774+00
2476	pbkdf2_sha256$36000$37oOWEZVGA9O$VRsK2AcGLzXKSF0klKgpPwfJjAwf0QRGSOEOLCpKipw=	\N	f	del_1-3.232				f	t	2017-10-25 20:09:54.243476+00
2477	pbkdf2_sha256$36000$LYvAvr36jDWb$BNyizmlgUqZM9DWZz/dYVsLcM5LCC00KrKY17mjw62o=	\N	f	del_1-3.233				f	t	2017-10-25 20:09:54.384872+00
2478	pbkdf2_sha256$36000$0qoOAdxKDROc$k52zv/KvEPxcAkWKw753zQeqIj2YVN+DR9+puC1ztS4=	\N	f	del_1-3.234				f	t	2017-10-25 20:09:54.526875+00
2479	pbkdf2_sha256$36000$VLjfAFbDEXbJ$Cs+zJvmC/Be44FhlB2J8moUTIn+3T4Ow+JDx8mtvdqI=	\N	f	del_1-3.235				f	t	2017-10-25 20:09:54.64878+00
2480	pbkdf2_sha256$36000$PbxpFaIAfle7$OU1TgbinCmOOhtS78QzDu9Eim9JZTw/5zuFHSqXqca0=	\N	f	del_1-3.236				f	t	2017-10-25 20:09:54.807523+00
2481	pbkdf2_sha256$36000$PVoMUMB4yyZ5$KNfgGylvHLDgD5aA3vtiu7b8IP9CKcTLu9tmkMfX+6U=	\N	f	del_1-3.237				f	t	2017-10-25 20:09:54.919416+00
2482	pbkdf2_sha256$36000$IgaEET0PLIqa$2bXeh/q0PljGr70Tgyzhw+r6MB1bvb58MMpMexzcZMY=	\N	f	del_1-3.238				f	t	2017-10-25 20:09:55.037104+00
2483	pbkdf2_sha256$36000$mUj1bxlwmIdf$tflwNNLxYxAGdbio4rtVwLOB+/TD10CE1sFwMg2ZBhg=	\N	f	del_1-3.239				f	t	2017-10-25 20:09:55.126464+00
2484	pbkdf2_sha256$36000$QnniUvpIx7y3$IB86qdZpdmsAFzwjJ4t/99xRErGMHjkDCyTZ4xmWzDQ=	\N	f	del_1-3.240				f	t	2017-10-25 20:09:55.217576+00
2485	pbkdf2_sha256$36000$wOnNEgQ0VHn3$sIb53Q2/IsvWayOzZbtPG3wRyqVfhZYbNfQr+8th1P8=	\N	f	del_1-4.1				f	t	2017-10-25 20:09:55.30633+00
2486	pbkdf2_sha256$36000$FKKm6XeN0yGE$u/xsv7yDuENDOGSiBUau5qvlXPmb9/lHigbbxnbQbuY=	\N	f	del_1-4.2				f	t	2017-10-25 20:09:55.395256+00
2487	pbkdf2_sha256$36000$0rpMIE2kcDWt$vADIjWi9OVZBjD5/kSlRVBwXANtJgbAUFqLGikf+2h0=	\N	f	del_1-4.3				f	t	2017-10-25 20:09:55.483984+00
2488	pbkdf2_sha256$36000$eFXSAb89ManS$RdH6S5ZSHz0OAYPikjgtmlZUK9GfKQu3qJWCVA5b8/M=	\N	f	del_1-4.4				f	t	2017-10-25 20:09:55.568384+00
2489	pbkdf2_sha256$36000$8SjGLYj8jGO0$yzvJPcVI0smkFWfLtL9Z7hFiLsdAvjcM6cMeqF+uyVc=	\N	f	del_1-4.5				f	t	2017-10-25 20:09:55.637646+00
2490	pbkdf2_sha256$36000$2tm5fpOiQQgm$Jj9no0zwy8AKhHL1ubS5P+xNjhVDHg8PDMd/rWh+5UQ=	\N	f	del_1-4.6				f	t	2017-10-25 20:09:55.707341+00
2491	pbkdf2_sha256$36000$oaDa8o5cgUob$tkKemDzhyuemFgB36yC0epMCH/vY+zNoLMIvLQ2ZxIM=	\N	f	del_1-4.7				f	t	2017-10-25 20:09:55.811107+00
2492	pbkdf2_sha256$36000$q8P2yegccMJS$TofVLbPwmBKcklBrb4hqlldFteLWK8m6lw2SFI/sirQ=	\N	f	del_1-4.8				f	t	2017-10-25 20:09:55.882419+00
2493	pbkdf2_sha256$36000$He01QV8QC75X$QcZpZij94SxLeWwaix9EQWIMDlXjXl6FdREtLQC+z68=	\N	f	del_1-4.9				f	t	2017-10-25 20:09:55.953758+00
2494	pbkdf2_sha256$36000$wA6wtPCdMbh8$q26Df7OqaVpkfNsGvB5ABXLkCTF3L1N7REGSea5a/d8=	\N	f	del_1-4.10				f	t	2017-10-25 20:09:56.024048+00
2495	pbkdf2_sha256$36000$goBTF0hV6mHp$W+5azUqzzcRL+Ktm4Cj6R4MEB/8SH2b/AdP7JeihFd4=	\N	f	del_1-4.11				f	t	2017-10-25 20:09:56.182139+00
2496	pbkdf2_sha256$36000$UmDifh57MbkG$HFIvlGQJ7p6QkGhiNiQ6J/i80Z92agFR1kzXv4H3wck=	\N	f	del_1-4.12				f	t	2017-10-25 20:09:56.330607+00
2497	pbkdf2_sha256$36000$IVrFg6jqFA5T$qN8U66jHmu3BzW6zp2XRMHcYFOVkLcpUJ5zXjiZbZIs=	\N	f	del_1-4.13				f	t	2017-10-25 20:09:56.471266+00
2498	pbkdf2_sha256$36000$Svu8zsoXTwLC$k8xFEL0rjaEoxp2dltG1PYPFCGzxYqewH3ye4Cin+DY=	\N	f	del_1-4.14				f	t	2017-10-25 20:09:56.594552+00
2499	pbkdf2_sha256$36000$CGxp2OiN0eLk$bJ6Ug+SP62KRV/D0Une8ac1wqq5rt8QXj+AV1KSZP5g=	\N	f	del_1-4.15				f	t	2017-10-25 20:09:56.706584+00
2500	pbkdf2_sha256$36000$r713kgjSdZmD$3cu//PpSRlAiOcPc9+PcRs+2oOZolvkg3Am13UdKy6M=	\N	f	del_1-4.16				f	t	2017-10-25 20:09:56.83332+00
2501	pbkdf2_sha256$36000$tsWg152TvYxo$3bZeo50pxKAAsK3uiZfyfSHu6K4j2I2wjxEYDz722X0=	\N	f	del_1-4.17				f	t	2017-10-25 20:09:56.988352+00
2502	pbkdf2_sha256$36000$YPGwvIffcoeT$Rj9mM3RmgG3usYBvN1hMXr398+YRf69+ZSG3VubA/pI=	\N	f	del_1-4.18				f	t	2017-10-25 20:09:57.062315+00
2503	pbkdf2_sha256$36000$7yuLZcnUUNnS$8/0Y+kpgia8pPWJjwXZ5DwMDdcQAeBSn88AjHU1avHI=	\N	f	del_1-4.19				f	t	2017-10-25 20:09:57.118069+00
2504	pbkdf2_sha256$36000$up4lKK5U6TKR$9Rvd+B0Bb5YW9r2ue1pP2XAAJXPu0WjASYMC+0VD4iU=	\N	f	del_1-4.20				f	t	2017-10-25 20:09:57.173486+00
2505	pbkdf2_sha256$36000$FX7w1Oiv6DqJ$Ftazhj9G7Tv65Y3Ev61TK19Ue1g81KrEuzrppVwfPzs=	\N	f	del_1-4.21				f	t	2017-10-25 20:09:57.229242+00
2506	pbkdf2_sha256$36000$b3oGRgXfrQFW$mkLAVnMn30YW54DOCpsXY1uPo5GfR7Q3Q5NQQ8mGHE0=	\N	f	del_1-4.22				f	t	2017-10-25 20:09:57.28509+00
2507	pbkdf2_sha256$36000$XOpqjFbMItgA$UYXQx4DjtTevtrTKXDFfY8jwh/PM46ptXNvzaczEWQQ=	\N	f	del_1-4.23				f	t	2017-10-25 20:09:57.339596+00
2508	pbkdf2_sha256$36000$CH2fIj2Bw8hp$Uf+/uqAhHCqeHZIFUBgNYHu6WllO1aIRl/F6JppPqMA=	\N	f	del_1-4.24				f	t	2017-10-25 20:09:57.39797+00
2509	pbkdf2_sha256$36000$098YVv7Zc6Aj$B2bqgfonQZP3uKf1j6gGNKMrwJgLVVCWqP/+74TPmhU=	\N	f	del_1-4.25				f	t	2017-10-25 20:09:57.452767+00
2510	pbkdf2_sha256$36000$8Ikfsx6HavvS$KE8m6WTCzwdHWYUzsUauDQ0qvQdbDBsPCzZtFyiPZak=	\N	f	del_1-4.26				f	t	2017-10-25 20:09:57.507551+00
2511	pbkdf2_sha256$36000$izZ7YTvCdnSF$tVQBTSwjQ7Q95Z6M1VQ3hsLpBl9AVtW1w8gFFo8l97k=	\N	f	del_1-4.27				f	t	2017-10-25 20:09:57.562077+00
2512	pbkdf2_sha256$36000$gZvPawWmHW7q$1isq35h4ubJMiUISOvCBK55saGIgGw7hrPgEUk7WDLQ=	\N	f	del_1-4.28				f	t	2017-10-25 20:09:57.616404+00
2513	pbkdf2_sha256$36000$pYkWSrkcwHpY$ONXBoZGwcocyd3CqV2xf4eLzFKHQ1ONM2Z9zcNcrc3U=	\N	f	del_1-4.29				f	t	2017-10-25 20:09:57.670545+00
2514	pbkdf2_sha256$36000$fHRXG3olrisr$za+soNyU1p4BAgEU2nvsSVkMivtBYHcJos8PDbZ8W3g=	\N	f	del_1-4.30				f	t	2017-10-25 20:09:57.726273+00
2515	pbkdf2_sha256$36000$iFZxTnkLIcxK$ZzTpMncGkv1TDoy6N9CohmYA2pPdy+vjVTMm2pr9S10=	\N	f	del_1-4.31				f	t	2017-10-25 20:09:57.78065+00
2516	pbkdf2_sha256$36000$ALWuKwOMqM1m$O11wXZq8PwrjSB/nk4yhW97SVzjoPcBcB3Q9/kTPk0E=	\N	f	del_1-4.32				f	t	2017-10-25 20:09:57.835821+00
2517	pbkdf2_sha256$36000$UrH1hRtK4AbD$35BoVCv4bE1AZ2EsT2vWueW9SXOU+9vi+8lP8GCvkqg=	\N	f	del_1-4.33				f	t	2017-10-25 20:09:57.891226+00
2518	pbkdf2_sha256$36000$hQ92mY8e56ow$IiP3oprzUu7457byD1RiVAyiTVMheMlQvJMyE/czGQ8=	\N	f	del_1-4.34				f	t	2017-10-25 20:09:57.973678+00
2519	pbkdf2_sha256$36000$Ri9UHB6anK8J$KvAokZ6b6ffQlAyWeftAKCKKFRnYX5xRjfq/M1ei12g=	\N	f	del_1-4.35				f	t	2017-10-25 20:09:58.028472+00
2520	pbkdf2_sha256$36000$pe3Rd4V8Hx1D$BlabSCjKqdlE0qHG56GO+wIOZL0RCWjkjH9HC5hi+yk=	\N	f	del_1-4.36				f	t	2017-10-25 20:09:58.083161+00
2521	pbkdf2_sha256$36000$wHsZM1WzS4E0$Prau4QeeDbC6ka8CfFwsR4q5h2X1jtXGO2q+zxppOkc=	\N	f	del_1-4.37				f	t	2017-10-25 20:09:58.137475+00
2522	pbkdf2_sha256$36000$0HQPRaPNXETQ$V7nl8qS71dqhhXGWjiqF8b6uboWmzI7JltU2csAS7dQ=	\N	f	del_1-4.38				f	t	2017-10-25 20:09:58.191738+00
2523	pbkdf2_sha256$36000$Wz59eXqlG4yk$+hZvTpZ4UDhCbCFRSdjiWrM1cthEr2tGd0I0KwqTVw4=	\N	f	del_1-4.39				f	t	2017-10-25 20:09:58.246232+00
2524	pbkdf2_sha256$36000$Ilz2I82fMAiQ$ncsIaokclgeYH9ELsowKhSrQVm5wF+/lwvy+lkKrMcY=	\N	f	del_1-4.40				f	t	2017-10-25 20:09:58.300394+00
2525	pbkdf2_sha256$36000$BugQw5eZy6Bh$bgkca3HKuhpC3YQ+DlXCSEuD8TWGUcY9D7dBkOPfMVQ=	\N	f	del_1-4.41				f	t	2017-10-25 20:09:58.355204+00
2526	pbkdf2_sha256$36000$jfie6I6CuFO8$Q7qvsgChmr5GU0KiP19z0QIYjbTu0jVFFb4CSBlf5PQ=	\N	f	del_1-4.42				f	t	2017-10-25 20:09:58.449114+00
2527	pbkdf2_sha256$36000$aqJGpPsMU57h$g08Q4onUPxvI8updaHE20jJcpME8a4aJ1y2IDzryqKY=	\N	f	del_1-4.43				f	t	2017-10-25 20:09:58.59898+00
2528	pbkdf2_sha256$36000$IVXEWatdRWxU$VefxhPHyFW7hw4S2sqMP4mhH3VprHgMRDfsJ7Y33KMU=	\N	f	del_1-4.44				f	t	2017-10-25 20:09:58.745013+00
2529	pbkdf2_sha256$36000$Lvd9tLY4r50I$FEoZsIVPLYN9egQUaT/hqpmotvnvpnanytYyq9SIOOw=	\N	f	del_1-4.45				f	t	2017-10-25 20:09:58.825014+00
2530	pbkdf2_sha256$36000$6zrTiRxCEUeD$A8w1vFD+5Pvc9+YsSpwIzTeo4m9abNb2ia7pCuxk624=	\N	f	del_1-4.46				f	t	2017-10-25 20:09:58.889902+00
2531	pbkdf2_sha256$36000$mlRqnDoEABKU$vTwgdgmJbX9xSjpKJj5X4UZyJQOuBHdCaG2vw01EpQI=	\N	f	del_1-4.47				f	t	2017-10-25 20:09:58.954811+00
2532	pbkdf2_sha256$36000$pcjVXHpJQkJJ$A3lWRzdFtXCvFwdclKPBBiCnLux7JRhIV3ooHr62UlY=	\N	f	del_1-4.48				f	t	2017-10-25 20:09:59.078104+00
2533	pbkdf2_sha256$36000$u7qzFf8H7Hkg$GYw5dQ/Ez6950T0Pnj08Vu0YrmYLG5FHihnUeFdpQsk=	\N	f	del_1-4.49				f	t	2017-10-25 20:09:59.221443+00
2534	pbkdf2_sha256$36000$UWLEaX6k5GWC$AjvVdKUyXT8a8/q2iYHFIl82LA9loGfTp+Z4D9/s3V0=	\N	f	del_1-4.50				f	t	2017-10-25 20:09:59.367563+00
2536	pbkdf2_sha256$36000$OajWId1RpNjQ$7Y43G8rBrFom5WYxCUVQNfJJIfsk/4tgnOAom/vupDI=	\N	f	del_1-4.52				f	t	2017-10-25 20:09:59.652775+00
2537	pbkdf2_sha256$36000$sjIbZhKQMZI8$zCvB18qp0WF7K4/3WhRBnr7d/57oCfd9geeAHvRi1MA=	\N	f	del_1-4.53				f	t	2017-10-25 20:09:59.796251+00
2538	pbkdf2_sha256$36000$RaOvw5o1EyJk$MfrdTV/t3TGUil5uqNZ6oq7e5KNezCT2/Qw2K/cOh/g=	\N	f	del_1-4.54				f	t	2017-10-25 20:09:59.945745+00
2539	pbkdf2_sha256$36000$LzjWQXnbSR7w$/FRQt0w6INiGumiQcMRwF7BeyCFRTIUcyKEPI7y/2HA=	\N	f	del_1-4.55				f	t	2017-10-25 20:10:00.093178+00
2540	pbkdf2_sha256$36000$g1QpxDT49C3e$xWWW7YaeGuRPGzDdJKy03rmc6NJLzwEApoB7GwS9YFk=	\N	f	del_1-4.56				f	t	2017-10-25 20:10:00.241204+00
2541	pbkdf2_sha256$36000$aqAtDLNR5bvL$A2jdD7VjBoJK2Rn4cct981eWp90ZYAh4PHIsATRIrYk=	\N	f	del_1-4.57				f	t	2017-10-25 20:10:00.355309+00
2542	pbkdf2_sha256$36000$YVjVcoxBy9oV$5OMXjBooRY4viH04hH/ZoZGxE3fl2BPyLWF00a4rkbI=	\N	f	del_1-4.58				f	t	2017-10-25 20:10:00.468134+00
2543	pbkdf2_sha256$36000$SII10RiRa3WO$K8nMORl9L6NNiQl06+x6us+mHEf6YaLZxGqCMz7xuSo=	\N	f	del_1-4.59				f	t	2017-10-25 20:10:00.604889+00
2544	pbkdf2_sha256$36000$T78cVBrZLdl4$TQOA4g28b56mI9cQ24BzAhul4h9PZ9i3SDhBxBVRMvI=	\N	f	del_1-4.60				f	t	2017-10-25 20:10:00.757717+00
2545	pbkdf2_sha256$36000$lphbd9Nh4bzk$sMhrNECeg/8wFle/9YPNeEZMb8VJzjLMIfj+8K/w/PQ=	\N	f	del_1-4.61				f	t	2017-10-25 20:10:00.855268+00
2546	pbkdf2_sha256$36000$peWdoUB8PEXi$06G+o+BcS+0XitTwVJkdLOVODtWQjfftQYKhhagsFIM=	\N	f	del_1-4.62				f	t	2017-10-25 20:10:00.946592+00
2547	pbkdf2_sha256$36000$V4REqxBxLGoJ$LhPz1eAayISB8Xy3N29R1IRFfbEZv8DyvUpPPJDM47s=	\N	f	del_1-4.63				f	t	2017-10-25 20:10:01.043892+00
2548	pbkdf2_sha256$36000$zkMVIpcyOQE4$9VZoJaNr9442PqRuthjI9gOJgdeiRhsxACUTY56KYfQ=	\N	f	del_1-4.64				f	t	2017-10-25 20:10:01.214373+00
2549	pbkdf2_sha256$36000$mjvxWH5PhOYU$o1E0XgJOIdF+0oMPjioegEVCg1E7iC1kVOGxBDTZBBQ=	\N	f	del_1-4.65				f	t	2017-10-25 20:10:01.397137+00
2550	pbkdf2_sha256$36000$81APRcUaBBft$k/fXsM9PGx1xzVEa5DsQZNRqSLsWD3OaJLjAq++Ni1M=	\N	f	del_1-4.66				f	t	2017-10-25 20:10:01.547477+00
2551	pbkdf2_sha256$36000$otkYy2F9fPG5$AMyyAKOi8ZvjoveHDXz5pvDbNtcsn97yul6PLwpu4Ps=	\N	f	del_1-4.67				f	t	2017-10-25 20:10:01.659966+00
2552	pbkdf2_sha256$36000$xmeEqgpODu26$nvj7kf8VqTk1BhSIrhBsh81C4i1zQafo47d+doMF4bc=	\N	f	del_1-4.68				f	t	2017-10-25 20:10:01.777123+00
2553	pbkdf2_sha256$36000$G49ndT7QloWT$m3MjLktc6IJascPgp8rMHljhWCTdsBq5rqRNyR+B7KE=	\N	f	del_1-4.69				f	t	2017-10-25 20:10:01.889964+00
2554	pbkdf2_sha256$36000$wsvK2s6Z23lN$qELHuWK/gUQsDCsFeqJrvuUFvC3/JQcOhaqjlkXYn4Q=	\N	f	del_1-4.70				f	t	2017-10-25 20:10:02.002089+00
2555	pbkdf2_sha256$36000$M2OmsiyvdZNd$4ToHhN6InI7SMLYxJgZwaEhDnSFZXD2q1tBA7Y2SSEM=	\N	f	del_1-4.71				f	t	2017-10-25 20:10:02.099099+00
2556	pbkdf2_sha256$36000$av9sc07EyXWn$4eJ4bBG/3K9PIyFvVsmQ9KzDynvIY+H6kNyEGZwijlc=	\N	f	del_1-4.72				f	t	2017-10-25 20:10:02.192062+00
2557	pbkdf2_sha256$36000$WZaMf2egarQP$Cop9JNbhvjfHFnhZRUNZW0ljjJ0IXnndP8Nf5KmdAeo=	\N	f	del_1-4.73				f	t	2017-10-25 20:10:02.286235+00
2558	pbkdf2_sha256$36000$9n4VQXO03yyf$LoccP5sLMdKHUcocPC3G197Kz9JAih/8iPomI6K+x4Y=	\N	f	del_1-4.74				f	t	2017-10-25 20:10:02.424412+00
2559	pbkdf2_sha256$36000$NwkBehyjRQn6$meXsKo1uFMVmx9x/1E0HRbF5J7MXkoRL0qHBC7ub6SU=	\N	f	del_1-4.75				f	t	2017-10-25 20:10:02.536522+00
2560	pbkdf2_sha256$36000$a6PU4RjXbOJU$+WOnrJwAtqAnh5Py3Xo0uTpylGsMdhyCEt+7IGPTPmE=	\N	f	del_1-4.76				f	t	2017-10-25 20:10:02.623242+00
2561	pbkdf2_sha256$36000$bIw6bQ70ikYa$pbSryd3hwpsFSPW8aWzlIM8ADnxoComFKwvOhwG849Q=	\N	f	del_1-4.77				f	t	2017-10-25 20:10:02.712596+00
2562	pbkdf2_sha256$36000$OVXbc3ntL73l$Lh6cqSNgT+dBoglcPaoOuJlLFi/xqfM+8YFy/fB7U0g=	\N	f	del_1-4.78				f	t	2017-10-25 20:10:02.799569+00
2563	pbkdf2_sha256$36000$UbkT5cIwAVHz$4ZucRl6GvSkHvB91B4BZFhN0UoK5S3dANaDhO5ydPIA=	\N	f	del_1-4.79				f	t	2017-10-25 20:10:02.88698+00
2564	pbkdf2_sha256$36000$gnl2T5asj4ky$NhONUu5CjVkh+c84guD7YCQk4T/Irqjk6HuR8JbfoG8=	\N	f	del_1-4.80				f	t	2017-10-25 20:10:02.981166+00
2565	pbkdf2_sha256$36000$WdKL2LWVVuCL$BTfzK3u8z0Epbi06nKFeuR7eD4aFZZ5T3CqQlYGOIfc=	\N	f	del_1-4.81				f	t	2017-10-25 20:10:03.059734+00
2566	pbkdf2_sha256$36000$6mwRpwb1Nywm$B3eZe6UIo6H6f/b9lCHURxksABhf4casE0FyVeISNEc=	\N	f	del_1-4.82				f	t	2017-10-25 20:10:03.129768+00
2567	pbkdf2_sha256$36000$2RjlJKa0gcN0$qVGfYFu3yzb8ttoeNj8pU4JeqZ0hPJJsOqzY/hgzQyU=	\N	f	del_1-4.83				f	t	2017-10-25 20:10:03.199789+00
2568	pbkdf2_sha256$36000$rskE0BQ16gmo$CFK7U9Zk7DsrSmq8HkVRzDZEHyG4MiysRkZ6tvArENw=	\N	f	del_1-4.84				f	t	2017-10-25 20:10:03.272307+00
2569	pbkdf2_sha256$36000$1PvZouFgv3pH$+peJIGx7RaYnPpxa7r2aErzbR65HHvYk4K92ySTdBdY=	\N	f	del_1-4.85				f	t	2017-10-25 20:10:03.342831+00
2570	pbkdf2_sha256$36000$48JTs2Mtdahj$UW9MqyP+2uWb05S+S07zGopytPdhQP2X9Fyag5E9KQc=	\N	f	del_1-4.86				f	t	2017-10-25 20:10:03.440572+00
2571	pbkdf2_sha256$36000$x7eH4EHxzDRb$AHB6cuySPWH7jsU1Eudw3EeOAZg1GCZMjN6JvCJPdEs=	\N	f	del_1-4.87				f	t	2017-10-25 20:10:03.516794+00
2572	pbkdf2_sha256$36000$hND3v5gXuouL$qdtpA/dXFVRSyhtpEQTAtt2PrOFVy0knbjBow+FyWC0=	\N	f	del_1-4.88				f	t	2017-10-25 20:10:03.575647+00
2573	pbkdf2_sha256$36000$iqKCs2I9PsE7$0JqBE8TfwPoVKC8g20t5y2taeonB1IDGrxyBUkhZn3Y=	\N	f	del_1-4.89				f	t	2017-10-25 20:10:03.632179+00
2574	pbkdf2_sha256$36000$MgvLas29ztom$AFTA6Teo8q2YIFmW7PMAiSaWUBtaGIs/aJa6wFaBOc0=	\N	f	del_1-4.90				f	t	2017-10-25 20:10:03.695207+00
2575	pbkdf2_sha256$36000$u1kHF5HyUnym$jsCgdehuYOdgkoLZHVCVK4aMjReD4Bcwj7zoF0NkPTA=	\N	f	del_1-4.91				f	t	2017-10-25 20:10:03.774503+00
2576	pbkdf2_sha256$36000$od2YjSUwABnh$03pvQezx+5Am0wgKJPLfoLI1qWmV7Vna0KjaypyeDTA=	\N	f	del_1-4.92				f	t	2017-10-25 20:10:03.848312+00
2577	pbkdf2_sha256$36000$9VW48YC0oe12$pEV1qN7faT6R857kMa6EDY6RzWyp8+UAESAc9+zrHTg=	\N	f	del_1-4.93				f	t	2017-10-25 20:10:03.904719+00
2578	pbkdf2_sha256$36000$ssIgvFrEoyML$wfYjpT4/TQXDiTrOIbAkklmhwmJh/H5rPIYzqGBQhgQ=	\N	f	del_1-4.94				f	t	2017-10-25 20:10:03.961025+00
2579	pbkdf2_sha256$36000$E9PJ6WkUsGCE$D/BEToIhYeO57K5hey/3bZlzhdn2aNPL5y+PitLBldc=	\N	f	del_1-4.95				f	t	2017-10-25 20:10:04.017249+00
2580	pbkdf2_sha256$36000$FaxMHCNYk75o$V9xsKxyPizLkWfIlKVhcecFoTC7Acnxqsqp9sPLcKtU=	\N	f	del_1-4.96				f	t	2017-10-25 20:10:04.072442+00
2581	pbkdf2_sha256$36000$0y9AzJD0Jyh6$XcK19utClYWSNp7jHYU3foT6Bj1Sz+tZoJmPcfsqIGg=	\N	f	del_1-4.97				f	t	2017-10-25 20:10:04.12831+00
2582	pbkdf2_sha256$36000$L7BDE9hBCGF1$XvsUls6RO4M/AltW9+mN6kro/RW1yIxul6TLRkw7pHw=	\N	f	del_1-4.98				f	t	2017-10-25 20:10:04.183076+00
2583	pbkdf2_sha256$36000$apDhBMkWDvzb$F0vHN1eS5GxoRFozHfTkc04dQ/kRU+E2PsEGNY7XFec=	\N	f	del_1-4.99				f	t	2017-10-25 20:10:04.239325+00
2584	pbkdf2_sha256$36000$G3Sn5WxUxPZP$Pks2A2BKN6YBIIBsZFeyuCgXNa/IerXiw8T6iVScxi0=	\N	f	del_1-4.100				f	t	2017-10-25 20:10:04.294631+00
2585	pbkdf2_sha256$36000$fYqBF4NQBRpx$bwhJgLmSrS4YalgaMzDIWKmj0mJNZPfmIIGSrBqoyhs=	\N	f	del_1-4.101				f	t	2017-10-25 20:10:04.350007+00
2586	pbkdf2_sha256$36000$R8LZOknUY6O4$w77LH3NLDU5nZ+4rmwtjd/tH7tPdIkiqSbwzxn21prU=	\N	f	del_1-4.102				f	t	2017-10-25 20:10:04.404934+00
2587	pbkdf2_sha256$36000$RwFdlXIy99aD$taRkyMf7J2LEw3co0yXMyihLHtOxU3ioHYxYpx0fMfQ=	\N	f	del_1-4.103				f	t	2017-10-25 20:10:04.469695+00
2588	pbkdf2_sha256$36000$2EF1twqQHx86$1KsUN73gKoYj03X4ycP3N6S7wOjm20KamtdTrKUKKlo=	\N	f	del_1-4.104				f	t	2017-10-25 20:10:04.545016+00
2589	pbkdf2_sha256$36000$2vfenJfhFhfm$wo4ea4zEnhBxVfUamn4NgjaHiKLDFFtSwSuP3FuYeM0=	\N	f	del_1-4.105				f	t	2017-10-25 20:10:04.600123+00
2590	pbkdf2_sha256$36000$k5ze6W02sYxz$8RVhOkHun6V5f8IrWfPL/GsFe/UIimND83dlM2/Zw2s=	\N	f	del_1-4.106				f	t	2017-10-25 20:10:04.654815+00
2591	pbkdf2_sha256$36000$ckMeiguuwiTP$Jxvy3D0dggUwLqfZCCQWXpIPM9tnEu/UJlmZjzVYzls=	\N	f	del_1-4.107				f	t	2017-10-25 20:10:04.710686+00
2592	pbkdf2_sha256$36000$gcDbhSVgjLLt$0x7nMjBWlnrS4MNO1s+xYKknwNp7wMN3QhDVw3uLQdA=	\N	f	del_1-4.108				f	t	2017-10-25 20:10:04.766249+00
2593	pbkdf2_sha256$36000$7lEhpNeXPpHK$Nknf5FtYP/+UaQWwnsIZsZUeIyY7f1OVxzizOneP9d8=	\N	f	del_1-4.109				f	t	2017-10-25 20:10:04.821199+00
2594	pbkdf2_sha256$36000$niGkAHTx7vFB$Ws4K6IXIy4ljsTAg8RQ9APzXkRQb4XuKax0oz0nNugk=	\N	f	del_1-4.110				f	t	2017-10-25 20:10:04.87642+00
2595	pbkdf2_sha256$36000$6JrpyFPoH3zI$NQsEmhOSi5PrMw5H86alJv6iUcCStQAgB6Ctx/Ar8Kc=	\N	f	del_1-4.111				f	t	2017-10-25 20:10:04.931193+00
2596	pbkdf2_sha256$36000$67sak46ddJAd$515X161Q38ziw95BQe8z6B3QyOAA+G0eYqJRTHFstEc=	\N	f	del_1-4.112				f	t	2017-10-25 20:10:04.986785+00
2597	pbkdf2_sha256$36000$n1EvKqb6sLSR$uB3g4FYIkPXsKWqOCY2SJb+qr/2oRdAxbNI9z5obwDQ=	\N	f	del_1-4.113				f	t	2017-10-25 20:10:05.042435+00
2598	pbkdf2_sha256$36000$UoCWLYUx4dT8$TgbTRZAyrh6VhpNugGV4GZjUuHakF6/jy1O5Bhk9m44=	\N	f	del_1-4.114				f	t	2017-10-25 20:10:05.097453+00
2599	pbkdf2_sha256$36000$0KAQoR0phSRZ$YtdViMZsHknwwVisBcTEsrDXrpI9JgN3L3NJwyGZY5g=	\N	f	del_1-4.115				f	t	2017-10-25 20:10:05.153808+00
2600	pbkdf2_sha256$36000$YreU97kOyH5I$M7YUZCQ9KeSEwfpFCPN8EVenYvAIOjukSdDDhefWYTU=	\N	f	del_1-4.116				f	t	2017-10-25 20:10:05.209472+00
2601	pbkdf2_sha256$36000$SmZmHwoVck6z$qM6B1zOjzpPOVy/10bOGkoS9YqidYxZxPrzRe1k0P7g=	\N	f	del_1-4.117				f	t	2017-10-25 20:10:05.264357+00
2602	pbkdf2_sha256$36000$1oRVpDv2CpFk$MzWwf0RE9zvrpUS3WlrSLQtGGUva1ZfupUjwDdpt8lc=	\N	f	del_1-4.118				f	t	2017-10-25 20:10:05.3196+00
2603	pbkdf2_sha256$36000$QnL2w0hzw1zz$xB+I9VxdiAkhOH1tqnC6G3X6vbJ6Upddlel54kUcci0=	\N	f	del_1-4.119				f	t	2017-10-25 20:10:05.373735+00
2604	pbkdf2_sha256$36000$GjczBV06SzeI$FYMP5k2Zyr031tcm76oKSRhnzdO0O7RFneetcuWc5WY=	\N	f	del_1-4.120				f	t	2017-10-25 20:10:05.428231+00
2605	pbkdf2_sha256$36000$rDsAVktf7uoM$tpjfQ0PiHVgAwG+KPY5VBPqPjYrXk/ZrJy+snTlgmsA=	\N	f	del_1-4.121				f	t	2017-10-25 20:10:05.482453+00
2606	pbkdf2_sha256$36000$ETzB1RHlY8M1$9CMv/c7obqT3muJUveEQtwfrTtgk7UjfevZmyOWFh1A=	\N	f	del_1-4.122				f	t	2017-10-25 20:10:05.567264+00
2607	pbkdf2_sha256$36000$iCLiQGf508uF$6PqaVugTuLXt40Vxwwb+jB6j0N1OvXF9E/tMrqwSM4g=	\N	f	del_1-4.123				f	t	2017-10-25 20:10:05.621552+00
2608	pbkdf2_sha256$36000$2AIpKdqfWe97$laxpcDMVOpP1SaH3JU1vosLcY3/fPD9RegiYdJe9Tog=	\N	f	del_1-4.124				f	t	2017-10-25 20:10:05.676785+00
2609	pbkdf2_sha256$36000$nMyyPLyaGy2q$Yu7P8vWdECaEgqCpyvXgNBz3Yv8or3sU/AYLZxu6TpM=	\N	f	del_1-4.125				f	t	2017-10-25 20:10:05.732451+00
2610	pbkdf2_sha256$36000$5UQTIrl644q7$CZLK5D0ZGi2Ar29y37Fv/WAGW/MGLsVs4Er4nnuEJaE=	\N	f	del_1-4.126				f	t	2017-10-25 20:10:05.787478+00
2611	pbkdf2_sha256$36000$nek5SjbeRps3$DlYuybddBdEtSrvEFZNqFPvszdype5srQ24UgWbEalU=	\N	f	del_1-4.127				f	t	2017-10-25 20:10:05.841674+00
2612	pbkdf2_sha256$36000$nxWlYkXoKXx1$erWsEwo4FyzTLjwUUBsuN7NIqfMQKI9qJr59pwOPcSE=	\N	f	del_1-4.128				f	t	2017-10-25 20:10:05.89664+00
2613	pbkdf2_sha256$36000$LBTVa3HSb9fs$/F06jvT6bQD7fMoIToZhD6jqfDvGRLaAofCT43YNtUM=	\N	f	del_1-4.129				f	t	2017-10-25 20:10:05.950554+00
2614	pbkdf2_sha256$36000$bSKGLSH0AC8G$rRXeKk0e2H1d9l9LtCpabHerPWX9BfGMZ8Vlswe+g5Y=	\N	f	del_1-4.130				f	t	2017-10-25 20:10:06.004671+00
2615	pbkdf2_sha256$36000$sNPeqtTJRWT1$ART6v056bbKnWl8zRmYdMN/c6772xPNDC3N5UFut50U=	\N	f	del_1-4.131				f	t	2017-10-25 20:10:06.058783+00
2616	pbkdf2_sha256$36000$yzSpADX4CPyM$sxVbnv6/ZfPPcxVehHkAL7ubW7VQjFEp+daVi7qPNqk=	\N	f	del_1-4.132				f	t	2017-10-25 20:10:06.113136+00
2617	pbkdf2_sha256$36000$fC8d5L4RlIzd$zBSnaBW/3fUtjWh+ddd5MVT3bP1CY8sWu3btJ9iQeXo=	\N	f	del_1-4.133				f	t	2017-10-25 20:10:06.166936+00
2618	pbkdf2_sha256$36000$Cbhk3z0s2j5m$UIcPWr2XUbSu5Pzyepf7fHYHLZPbd/7q6S68R35Ddgg=	\N	f	del_1-4.134				f	t	2017-10-25 20:10:06.222058+00
2619	pbkdf2_sha256$36000$SbULwevaLbk2$kX2+S+xSyFkKVK9WTNtyTmJQnnCoMksytTTjmEOgT78=	\N	f	del_1-4.135				f	t	2017-10-25 20:10:06.276415+00
2620	pbkdf2_sha256$36000$fGHgGNa49cAG$2mQ8In6jcT8UCMU7qCJUk9WV+ZudeGBSqjP9jvdtfPU=	\N	f	del_1-4.136				f	t	2017-10-25 20:10:06.331122+00
2621	pbkdf2_sha256$36000$hrNbTTXEpP10$rsizyzNg1A6OGCOJTj2RUL2k20j9SmY5ZhYIFvSg47Q=	\N	f	del_1-4.137				f	t	2017-10-25 20:10:06.385793+00
2622	pbkdf2_sha256$36000$kQpAT7cXylva$R+WXDuZGqjYbQakUS9MYjhFarsdJ7rEoNXbOBifZeS4=	\N	f	del_1-4.138				f	t	2017-10-25 20:10:06.440136+00
2623	pbkdf2_sha256$36000$wV04VJ9zeZxF$RhvXS6m7kcxU11Fm8s/g0hTpAPRW1mNK01xK6PzHAro=	\N	f	del_1-4.139				f	t	2017-10-25 20:10:06.495802+00
2624	pbkdf2_sha256$36000$0fhWbNrBOvcG$MC+p6pjvmT0bQLDp9v+9geVNMs3B7MaPfiCdC5NrAJ4=	\N	f	del_1-4.140				f	t	2017-10-25 20:10:06.550884+00
2625	pbkdf2_sha256$36000$eF4bcYTqPYHw$oUbJP4SRnJqP9C2ejv2IG9jCnK7m/TsVfeh9BIefYFw=	\N	f	del_1-4.141				f	t	2017-10-25 20:10:06.635018+00
2626	pbkdf2_sha256$36000$zcYf8hSD9wix$iWrWRfswN6TNAxCc1k/cyTu+QZWbYYEJOQzvr+MLysQ=	\N	f	del_1-4.142				f	t	2017-10-25 20:10:06.690464+00
2627	pbkdf2_sha256$36000$G2jH0FM26OV3$nvmqHtojiaLfxzVHscEkLF3PeoqqEEptoi7z9ZrtXuM=	\N	f	del_1-4.143				f	t	2017-10-25 20:10:06.7463+00
2628	pbkdf2_sha256$36000$0VHoTa3O3BLP$NtRnk+K3H/ijWfyV3blX5oCTzfU7D1yF71owI+uk8rc=	\N	f	del_1-4.144				f	t	2017-10-25 20:10:06.801668+00
2629	pbkdf2_sha256$36000$1KlAJuXmTp46$ZeGKoJmZeOJux4Jtuifz171yYVm/0Mj1pSt6PCYgpVU=	\N	f	del_1-4.145				f	t	2017-10-25 20:10:06.856912+00
2630	pbkdf2_sha256$36000$mDfYm3slkcWD$42vj9kXkS4Z1xEulJeVmpzOJHKGGwXaDfvbfSGsQaGw=	\N	f	del_1-4.146				f	t	2017-10-25 20:10:06.912362+00
2631	pbkdf2_sha256$36000$DRcOK8ynlXx7$wEzAq5wnH7mPE2bFk1I/vMYvahQkoFy1cZJ00XqdkR4=	\N	f	del_1-4.147				f	t	2017-10-25 20:10:06.967425+00
2632	pbkdf2_sha256$36000$p7l41SV3iZGj$AOlnrCoerbX6LcA/O2OqLLZv8Ff7TX2SNQ/0nCsdtI4=	\N	f	del_1-4.148				f	t	2017-10-25 20:10:07.022363+00
2633	pbkdf2_sha256$36000$70Ln4Z0Cch1N$8ZPb2Xn3TtLtabn0L3Jro1hXDy8+UZdWp8nmsos+4GI=	\N	f	del_1-4.149				f	t	2017-10-25 20:10:07.077514+00
2634	pbkdf2_sha256$36000$bi7IjaTImQNf$RXqKhkgg/uuAYe6uuCmcnz7IncpEPthUE9/Mttb8BK4=	\N	f	del_1-4.150				f	t	2017-10-25 20:10:07.132173+00
2635	pbkdf2_sha256$36000$HES82aAo3CVD$cGRJ3HE2Q+dygve2fgGgeOpUmt4nRM7jD1BOHOuRtaI=	\N	f	del_1-4.151				f	t	2017-10-25 20:10:07.187048+00
2636	pbkdf2_sha256$36000$i7EcVWiITOHN$Ev/KzpzhYjjgaZvyhE0cqBvjB5DAwwDBYB6mwwLIbbM=	\N	f	del_1-4.152				f	t	2017-10-25 20:10:07.243763+00
2637	pbkdf2_sha256$36000$h78JpbAvlZfz$oLFHa3dK88ixCzCTXM+xT4qZjBxjMou80irES8lkP4g=	\N	f	del_1-4.153				f	t	2017-10-25 20:10:07.298809+00
2638	pbkdf2_sha256$36000$jrDMxpYzBgG1$V/bKI1rlY8HznLn9nAgJV/qtO2fEdeYgPL1tfG15iy4=	\N	f	del_1-4.154				f	t	2017-10-25 20:10:07.354503+00
2639	pbkdf2_sha256$36000$rUe8MU1cCqBc$lM2qB9k1K878CiK+kxTh9x9jCP9KH0LBXYHEWXhv/Ns=	\N	f	del_1-4.155				f	t	2017-10-25 20:10:07.409835+00
2640	pbkdf2_sha256$36000$s0yvQ9wcs4xL$TXHrIQlYZ/PGCiM981RFngj1RfCLArgBx66H6ePaCAw=	\N	f	del_1-4.156				f	t	2017-10-25 20:10:07.465075+00
2641	pbkdf2_sha256$36000$qX6vMyKpYR1h$SucCtm6eXka2+9OG45u1Kde70aa+lCTdNnyjLuLS2Xo=	\N	f	del_1-4.157				f	t	2017-10-25 20:10:07.520407+00
2642	pbkdf2_sha256$36000$dW3SPeyrXfF0$FsYfUsbsNlYVxWPDkBUV0VQH/Ujj9QcYxZ2Qp+WErLI=	\N	f	del_1-4.158				f	t	2017-10-25 20:10:07.591978+00
2643	pbkdf2_sha256$36000$NUtgdRiBcCPt$/eEh0sfnIzy1MQl4oVWQLSzHmyDN4ngqAQWdZsyJ+2k=	\N	f	del_1-4.159				f	t	2017-10-25 20:10:07.67661+00
2644	pbkdf2_sha256$36000$3zeWtvOpkwoj$sYAA00IC95mImhLYnNVcNmewiFUPH96BJbmP1I7qUSs=	\N	f	del_1-4.160				f	t	2017-10-25 20:10:07.733693+00
2645	pbkdf2_sha256$36000$9IhLMmxggO2n$sGFLEPFGZVLQnxNYjZRWF7CjkQfulZZIWDj/qVwoQu0=	\N	f	del_1-4.161				f	t	2017-10-25 20:10:07.788595+00
2646	pbkdf2_sha256$36000$frDRTHbETcCJ$R4mV2JQKnSyL2pwtRuTmbiLtKamRrd8eZRq9jZwqV7I=	\N	f	del_1-4.162				f	t	2017-10-25 20:10:07.843731+00
2647	pbkdf2_sha256$36000$GN6dzfat2GlJ$jLJFi9dS+AdXmhzy210/qFtSZre8/FJtG7Z8tsJF0TY=	\N	f	del_1-4.163				f	t	2017-10-25 20:10:07.899275+00
2648	pbkdf2_sha256$36000$KLtZHZL53FWZ$kQNwbQP6AvQ91pPs2Hd5EGD2esf0qSi8XEbUcdxsyAE=	\N	f	del_1-4.164				f	t	2017-10-25 20:10:07.95331+00
2649	pbkdf2_sha256$36000$lDhLHl7FZCQ0$j2y2fq0+r59wZ/c0OzWntQgtCLUWA/eGRHbNgzzR0rY=	\N	f	del_1-4.165				f	t	2017-10-25 20:10:08.009054+00
2650	pbkdf2_sha256$36000$Wxa9EGMDZ2sq$5/Woy2EYitiyftIFxWwayqpEvAMr0ef/0sUHd9NaHA8=	\N	f	del_1-4.166				f	t	2017-10-25 20:10:08.064678+00
2651	pbkdf2_sha256$36000$ES6xt9EGpmGd$J0AxdQG/uNz1I/No0PL7vl+mnUfjS55g5eiWM/enTcU=	\N	f	del_1-4.167				f	t	2017-10-25 20:10:08.119438+00
2652	pbkdf2_sha256$36000$F9D4xBemaJfH$LVPnoFHuz731trDbj4LUsFGMAqNdnInGvij79GIK47E=	\N	f	del_1-4.168				f	t	2017-10-25 20:10:08.173857+00
2653	pbkdf2_sha256$36000$u07LNDK37D4N$6uBNYfiwZj9K4GeqMesISXApfYqOJpSIqFzFK5YGGKI=	\N	f	del_1-4.169				f	t	2017-10-25 20:10:08.228415+00
2654	pbkdf2_sha256$36000$sikWB2jXTQWl$8tGBiF4RSo+WWAH8Q3KAqfjNzU02jcf26IncmSVhVsE=	\N	f	del_1-4.170				f	t	2017-10-25 20:10:08.28235+00
2655	pbkdf2_sha256$36000$c8H5rPqVlplR$viU5H0WS7ftdupeuHEU7bvHDGtfmlVbYjH7n/TNTWPo=	\N	f	del_1-4.171				f	t	2017-10-25 20:10:08.337367+00
2656	pbkdf2_sha256$36000$RrNaPIw7XSIl$Y6XLz5bSarrkkQPV4OcQYN66XKmaHuQjvs+zF4MwATs=	\N	f	del_1-4.172				f	t	2017-10-25 20:10:08.392401+00
2657	pbkdf2_sha256$36000$StQGkopRQ85W$ETuobuX3zJNRLSzWIdk9k1OWYWfSMrGtIZbNuevG7cw=	\N	f	del_1-4.173				f	t	2017-10-25 20:10:08.44675+00
2658	pbkdf2_sha256$36000$sjfHs0kQlRLk$sBGznc45d3uTXL4FMJek8aLUBHw91PWAJCaTcjsOTQc=	\N	f	del_1-4.174				f	t	2017-10-25 20:10:08.503385+00
2659	pbkdf2_sha256$36000$wMXxHAxZo8lQ$TAg2r/aMqDfjx2yyT9+41dpYVb0Fzvzr+8aTzj9xheM=	\N	f	del_1-4.175				f	t	2017-10-25 20:10:08.558725+00
2660	pbkdf2_sha256$36000$ZcwJRwEGGIS0$6BcMsnugF8YrxfTT66wYzeU7JKYSXxSG6tZkCZ2fCTY=	\N	f	del_1-4.176				f	t	2017-10-25 20:10:08.615059+00
2661	pbkdf2_sha256$36000$JrSVopWJoaRE$IvSHEZ2cPkuw5Dk1ytzPWQc4Zt3l/dZ0l0M286RRWCk=	\N	f	del_1-4.177				f	t	2017-10-25 20:10:08.680312+00
2662	pbkdf2_sha256$36000$ZaVFpOnuBQh6$hXOwQyh3iyA5ReKjbP1jnyvbrLBSEHmKfBT6W+n695I=	\N	f	del_1-4.178				f	t	2017-10-25 20:10:08.7532+00
2663	pbkdf2_sha256$36000$jdwoQJocSBwT$OJ6ItTfiu/y3tFE08vBjRHYKxjBoQvo0oJC+dTfvReg=	\N	f	del_1-4.179				f	t	2017-10-25 20:10:08.80808+00
2664	pbkdf2_sha256$36000$03PL9hOLzeQu$8v2OZwQCUT9bxozQUhJdAoh9CQbNDt6fKdc1GRMQOxQ=	\N	f	del_1-4.180				f	t	2017-10-25 20:10:08.863729+00
2665	pbkdf2_sha256$36000$cbKEJGyj9SnH$JMtGw8z6o/0NwOh78KmShfCLFSxH3H6m2sMe0ndpNDY=	\N	f	del_1-4.181				f	t	2017-10-25 20:10:08.918581+00
2666	pbkdf2_sha256$36000$BNVnxbf2lKH8$jACsBP0EKxEaBGc0t8I5bTNaxwpxBHLLsAkRy98ox0o=	\N	f	del_1-4.182				f	t	2017-10-25 20:10:08.973948+00
2667	pbkdf2_sha256$36000$wRA8tfn5ONd6$i4AmBZyPJmLg2yFcTPYTbU4FDqMkueyW55qlzinOj8s=	\N	f	del_1-4.183				f	t	2017-10-25 20:10:09.029721+00
2668	pbkdf2_sha256$36000$Iw8SlJWrBgoN$OSA2nWyLSHFtdKXBH9P6k5IKtRaRjlcXfLE/adncqI8=	\N	f	del_1-4.184				f	t	2017-10-25 20:10:09.085442+00
2669	pbkdf2_sha256$36000$eSz1YvwKs5Gh$gVY+GWX78j3wdf+TB3GOEGSMhvtYcrO4XNALZVpdOEQ=	\N	f	del_1-4.185				f	t	2017-10-25 20:10:09.139517+00
2670	pbkdf2_sha256$36000$Y2uJTfQw5iWh$WN/8rmlnSBwNUdB+D6St3K0SBFaSaL/HU2TFGL8gRyM=	\N	f	del_1-4.186				f	t	2017-10-25 20:10:09.194599+00
2671	pbkdf2_sha256$36000$2G0o8q8M1rbJ$NBOFRv0/fw9wDGXN7PNpHlsQmsaMdR6bNOMIxy7O78w=	\N	f	del_1-4.187				f	t	2017-10-25 20:10:09.25118+00
2672	pbkdf2_sha256$36000$kT09JJR8UWB5$45h0QIYRqfC9DranQ5Esvu6IrpLmuSyr8nvK6fQl9Os=	\N	f	del_1-4.188				f	t	2017-10-25 20:10:09.305934+00
2673	pbkdf2_sha256$36000$MKOnGadteoi1$edomCEZ08GIqxFC8J6mthcLv+bK+umXvZZZMcBeHOGk=	\N	f	del_1-4.189				f	t	2017-10-25 20:10:09.360168+00
2674	pbkdf2_sha256$36000$n0pqTOLdIHwj$ey/YYwKbX3CupnFTyqj95Lvz61lyJr2mTKilo9a1UsA=	\N	f	del_1-4.190				f	t	2017-10-25 20:10:09.415496+00
2675	pbkdf2_sha256$36000$yNP8zXYJudJA$Z5tUG/G1RLRaiu4xP2l07/ZUQila7X0U5F2jZcEXf6c=	\N	f	del_1-4.191				f	t	2017-10-25 20:10:09.47079+00
2676	pbkdf2_sha256$36000$9dAiWzlAvOvo$288CFasuMVIWvKznEGNOVbB1eQsVg6ik154Vpe2TAr4=	\N	f	del_1-4.192				f	t	2017-10-25 20:10:09.526154+00
2677	pbkdf2_sha256$36000$t5Bdf4VGTZYI$7RMadXF0tbasEVhfqzl9HRcxPj2Qr+gAYc/VFYQkndI=	\N	f	del_1-4.193				f	t	2017-10-25 20:10:09.581388+00
2678	pbkdf2_sha256$36000$n6zNPDVoGsyr$5hSabKcTmLpgqe7V0RnJZEdnd0QWO5mKWEtFmV7p3ls=	\N	f	del_1-4.194				f	t	2017-10-25 20:10:09.63664+00
2679	pbkdf2_sha256$36000$CR0EMXe2hdA0$nW3FHTYG2UrY/GVYIzuzmgFAtwuJVixcONdhTXVR8eM=	\N	f	del_1-4.195				f	t	2017-10-25 20:10:09.691827+00
2680	pbkdf2_sha256$36000$RF6Xaig8837H$Zji01VIgnHR2Zm2/hf/3TSVXgyyHonlCYn6DQJ0+Ep4=	\N	f	del_1-4.196				f	t	2017-10-25 20:10:09.773308+00
2681	pbkdf2_sha256$36000$kndteONOlsRu$Xr9e/tZt6PDPyxUeaL6SjB3kldiM7Jk18h4nR3vd5IQ=	\N	f	del_1-4.197				f	t	2017-10-25 20:10:09.828911+00
2682	pbkdf2_sha256$36000$m4MJphxNycam$VXlOzgDUh+FZgzvL/tNyO6SLsjCHZMO6XVUDwUy+B78=	\N	f	del_1-4.198				f	t	2017-10-25 20:10:09.884485+00
2683	pbkdf2_sha256$36000$If3hYbjuHT8S$5pt6OqaXmnesppLer2nJnVR48elQ5uomAIxuaGuxlHk=	\N	f	del_1-4.199				f	t	2017-10-25 20:10:09.939683+00
2684	pbkdf2_sha256$36000$NW5B96aRTSKv$KtyaJ8bRo6GgM3kPgAfRM/rlL35mwFPyGA9U8INIwNA=	\N	f	del_1-4.200				f	t	2017-10-25 20:10:09.995117+00
2685	pbkdf2_sha256$36000$DpY0JAzQHHS3$eHNHuvW9YnfnxubbIPqBcWBhCcpwAO45xRS0tQaAw2Q=	\N	f	del_1-4.201				f	t	2017-10-25 20:10:10.050578+00
2686	pbkdf2_sha256$36000$QFPNeEyA31EA$jIANY03YXGj6hYRkEbocEKJ9GF82ZO5yeO61NL+JddI=	\N	f	del_1-4.202				f	t	2017-10-25 20:10:10.105906+00
2687	pbkdf2_sha256$36000$0BjU2CvOCTzA$gp98p8PSrI5xwh0HGhBJYs3QZhdn9CbXEy/O/hj77rE=	\N	f	del_1-4.203				f	t	2017-10-25 20:10:10.161836+00
2688	pbkdf2_sha256$36000$yT5XVxGI9zJl$+UN4cSmZi3u2gLCDp0IBPipqLIYg3goMyNjPE3fgxuc=	\N	f	del_1-4.204				f	t	2017-10-25 20:10:10.222981+00
2689	pbkdf2_sha256$36000$gmRE0kBc4p7U$xZgnHMS3JyMUBQ8lSA8pLrjGdcd8aFGF+DgkYgjsxTE=	\N	f	del_1-4.205				f	t	2017-10-25 20:10:10.278834+00
2690	pbkdf2_sha256$36000$7wYdqxXdyFYx$w3FYmlxILWxNpowxiMDShZIm3XMezAuFM/nptKCK/Pc=	\N	f	del_1-4.206				f	t	2017-10-25 20:10:10.334496+00
2691	pbkdf2_sha256$36000$AZN27agcnLv1$jL+YY+wxTkw6TUU9SC5wPRkJgAktzDJIK26MgDZMEOU=	\N	f	del_1-4.207				f	t	2017-10-25 20:10:10.389897+00
2692	pbkdf2_sha256$36000$Zk4KCH3v3g7G$E5+GsDPotiDUYe/EeRlDisd5uHfJeUAaeMwkLs2h0yk=	\N	f	del_1-4.208				f	t	2017-10-25 20:10:10.445039+00
2693	pbkdf2_sha256$36000$LW85fhVK3jCa$RqA/owOX7EJjCqspptCqA7gupGitwr6jx6ieZBEFwA8=	\N	f	del_1-4.209				f	t	2017-10-25 20:10:10.500344+00
2694	pbkdf2_sha256$36000$Wvdqd7uNSnvN$CX1B7rr1gsVudsC5ReiArBOyb4O7q/PJhdYfm3OqcyY=	\N	f	del_1-4.210				f	t	2017-10-25 20:10:10.556219+00
2695	pbkdf2_sha256$36000$1FDicBfKqy5d$b5CecgVrxaeXiP/oRao2QzWbcGE6pX4AGrUdW94MQWc=	\N	f	del_1-4.211				f	t	2017-10-25 20:10:10.611206+00
2696	pbkdf2_sha256$36000$BzF5LkmALfxC$h2VfBuii0oMy3G9EQVd3LzsTP0hUAj2yjoeH/9/opLU=	\N	f	del_1-4.212				f	t	2017-10-25 20:10:10.667015+00
2697	pbkdf2_sha256$36000$oO43YsbNna5X$8JA1514HSoW6UVNpoa+UOM25rtFZivaIMsgyLuzdCsM=	\N	f	del_1-4.213				f	t	2017-10-25 20:10:10.722554+00
2698	pbkdf2_sha256$36000$PoTz5iv6tM3P$fNCnu/m5x8L6y3DrtMgCsT8XAHZ7c4Eo7Z+WRh6U9eg=	\N	f	del_1-4.214				f	t	2017-10-25 20:10:10.798323+00
2700	pbkdf2_sha256$36000$CsPVSwup8jVY$fypxpzuliX3kZuI3q3yX4H5kQnOIxc53qoLD1SR4W2Q=	\N	f	del_1-4.216				f	t	2017-10-25 20:10:10.913678+00
2701	pbkdf2_sha256$36000$ho2YlmkgsAbg$e1RY4K5lJeb3SVrQTPQsu4G06Lp7IsjCVIvWjvYEgik=	\N	f	del_1-4.217				f	t	2017-10-25 20:10:10.969118+00
2702	pbkdf2_sha256$36000$36NASqMlBBrK$qiNleEkbmytMLYUeJbkV2yHRJTWgXu223r5EDO7XPuU=	\N	f	del_1-4.218				f	t	2017-10-25 20:10:11.024968+00
2703	pbkdf2_sha256$36000$RTA8io4STf7w$VKby8rArWIUTLTmum9+2xzoeFqRjIQURvJn69zUk1GA=	\N	f	del_1-4.219				f	t	2017-10-25 20:10:11.079971+00
2704	pbkdf2_sha256$36000$MDQMj07P0BtM$6c5lWDqpASGodFJ92EQJYM8GynWfGjxnIA9o42XJhFI=	\N	f	del_1-4.220				f	t	2017-10-25 20:10:11.135117+00
2705	pbkdf2_sha256$36000$peE2LZokbFnI$Fk3JXwNyu3BxUAhDcXJa1+kwW+Dk3Sx4wWVsECTHCGg=	\N	f	del_1-4.221				f	t	2017-10-25 20:10:11.19023+00
2706	pbkdf2_sha256$36000$ecexGH5EyEFW$NokXcwSvpzLcFhDVlIwSwbUtH3W7Y3fxFRAb8CP3FuE=	\N	f	del_1-4.222				f	t	2017-10-25 20:10:11.247266+00
2707	pbkdf2_sha256$36000$6jBdI4dbLpL1$s2a4LNIC78q7Cz42t2KUKp7EQNF6hiBzudH7jL5Cbak=	\N	f	del_1-4.223				f	t	2017-10-25 20:10:11.301891+00
2708	pbkdf2_sha256$36000$FJcOKxqr45Gp$dfroXGgUhyDxt6VTZsnUxIkdzJrhD91odt8KqbIGdYs=	\N	f	del_1-4.224				f	t	2017-10-25 20:10:11.357607+00
2709	pbkdf2_sha256$36000$5ljLwE6dSbbd$wJo/ow77Otfk1MAPlFqOHpBYAChERer6Gl0OgAOAYRY=	\N	f	del_1-4.225				f	t	2017-10-25 20:10:11.412859+00
2710	pbkdf2_sha256$36000$fPI93oGSKS1k$CamQlFHUyCTgE4kN8z64XpGONzsPONjge+WAovaB8H8=	\N	f	del_1-4.226				f	t	2017-10-25 20:10:11.467936+00
2711	pbkdf2_sha256$36000$HyfuOqPPbHJc$cRcbpDw88/CgP1o21D22RX3MMT0D+PKcTGkBtguOMnU=	\N	f	del_1-4.227				f	t	2017-10-25 20:10:11.522408+00
2712	pbkdf2_sha256$36000$GFUbE0eibcnl$AZN1OfTR0SLbcdS7gFQj9daGx+txqWLuTbI23TN59wY=	\N	f	del_1-4.228				f	t	2017-10-25 20:10:11.576946+00
2713	pbkdf2_sha256$36000$7BCSkXpIIXal$SpZWl2wKhI5/nyVQKgIeM6nW0K1A+TkqfLErUY7MAkk=	\N	f	del_1-4.229				f	t	2017-10-25 20:10:11.631655+00
2714	pbkdf2_sha256$36000$qTfnZ8qdiTQH$QpyVI4VyvoINQY7x3w/V3zJCdOtEZ4Hgf6HcxQr/L+8=	\N	f	del_1-4.230				f	t	2017-10-25 20:10:11.685671+00
2715	pbkdf2_sha256$36000$9g2E0qQVw7rf$UlOKCzuNInlOET9krkenJ6Ibc/+lF7ANvk54bEV69LQ=	\N	f	del_1-4.231				f	t	2017-10-25 20:10:11.741434+00
2716	pbkdf2_sha256$36000$f9FHZEntJwQp$NZJvwvhJDL78XG2+aQUZQTBxOcHJcFTRHcJ+96L53jc=	\N	f	del_1-4.232				f	t	2017-10-25 20:10:11.795821+00
2717	pbkdf2_sha256$36000$v0aAWQxAdHuU$5vNpRpz0cQTJWeiOtNBAZowCtuuNTOdMYp6TAdCEZcE=	\N	f	del_1-4.233				f	t	2017-10-25 20:10:11.8759+00
2718	pbkdf2_sha256$36000$zr2HVsLqYtee$D4LeIaWbw2DDPVue6RGtK3pgTyHbU1LeoHUQgUQ95p8=	\N	f	del_1-4.234				f	t	2017-10-25 20:10:11.930763+00
2719	pbkdf2_sha256$36000$WJ3kLki5MiQc$IGfqWjOd62LUw/32Maix4gk2IeoXXfrzlVIskMNs9Rs=	\N	f	del_1-4.235				f	t	2017-10-25 20:10:11.985504+00
2720	pbkdf2_sha256$36000$sRdTZyRhCnHF$maFQV/h4vF8z28Yn15bs5agvUr8Q17p5UJUe++ymkvA=	\N	f	del_1-4.236				f	t	2017-10-25 20:10:12.040743+00
2721	pbkdf2_sha256$36000$0KuPrVdu7Agv$quiAoIFbU6vV0g8kReiwLBQVqfgIVXsjk5OKwnp4mwY=	\N	f	del_1-4.237				f	t	2017-10-25 20:10:12.095431+00
2722	pbkdf2_sha256$36000$bhEPX613UAkU$zv85mGOemYEG/EKA3FYWu+i985Q3X4SEjqhuNhO9kOQ=	\N	f	del_1-4.238				f	t	2017-10-25 20:10:12.150694+00
2723	pbkdf2_sha256$36000$Xnk5fTYLaF3P$1q01GSkb4bXrI4JMNwjCUF3tWiunT7ceJ6dnV4BS2DY=	\N	f	del_1-4.239				f	t	2017-10-25 20:10:12.205352+00
2724	pbkdf2_sha256$36000$YhquZ6B5DWxh$rQHfobO3BLS1x9m46zmkWWN4sZ60D4Xi1L3elEuFLi0=	\N	f	del_1-4.240				f	t	2017-10-25 20:10:12.260583+00
2725	pbkdf2_sha256$36000$Q2oIKzPeUxq3$RgbeaUGPo2jyHa1Aw5QVKu2rW6J60NTLOL2WaWbdcJc=	\N	f	del_1-4.241				f	t	2017-10-25 20:10:12.315002+00
2726	pbkdf2_sha256$36000$wqWTwzKTXOZ7$qGjwiNnY1+Z4MhGRyHO9fC0WnK4K9AX+m7qHRFQeL0Q=	\N	f	del_1-4.242				f	t	2017-10-25 20:10:12.369563+00
2727	pbkdf2_sha256$36000$9Leyk7MEd50b$XNw7YOfHAFh3M+xqojTgUMFaZeFuFia/d4Gz9nl/J/k=	\N	f	del_1-4.243				f	t	2017-10-25 20:10:12.42426+00
2728	pbkdf2_sha256$36000$cx3b5889ZSfi$QL2UjWo7b3UK7hLWglWYTX/38jglpGLRywNMkG5ZTek=	\N	f	del_1-4.244				f	t	2017-10-25 20:10:12.479312+00
2729	pbkdf2_sha256$36000$u7rFDQrB9432$wOwq5EJUA93UDXhzybng8nPn2OdKTGjdIVS3LPU7nDA=	\N	f	del_1-4.245				f	t	2017-10-25 20:10:12.53421+00
2730	pbkdf2_sha256$36000$4wU6MoOpPbWg$ZjOO5Fwgud14yMyiDJ4RaqWxa1KKmoWIrQK+JVx8OvE=	\N	f	del_1-4.246				f	t	2017-10-25 20:10:12.606386+00
2731	pbkdf2_sha256$36000$s0EvGDOW5RHa$HIUaPpohN6NIEdIUBQ393wXiPt5eTPv51OoKaWKVReY=	\N	f	del_1-4.247				f	t	2017-10-25 20:10:12.662436+00
2732	pbkdf2_sha256$36000$xABzK8KGMF26$2kQeyb32/ac1m9HEJq6jjhh5h7Itmm4bjopDH3l3lFI=	\N	f	del_1-4.248				f	t	2017-10-25 20:10:12.722998+00
2733	pbkdf2_sha256$36000$PimhJGe0G8sP$40QjSRpWb3FLmP1Mgp9g/dFpvhhCTU67Qc5CrGV6m0U=	\N	f	del_1-4.249				f	t	2017-10-25 20:10:12.780797+00
2734	pbkdf2_sha256$36000$tnANx2rURoI4$nuFYWfpjMGZUHYorU+tJCdxjYCzcFOyzkEYJF/u8Uu4=	\N	f	del_1-4.250				f	t	2017-10-25 20:10:12.83562+00
2735	pbkdf2_sha256$36000$sQT3o0HiwwWe$mGtINXoTqWpd708QxAOONqFreLI6sUVJosdXfpdgmR0=	\N	f	del_1-4.251				f	t	2017-10-25 20:10:12.918511+00
2736	pbkdf2_sha256$36000$2G4DNZLfJgkD$W2eh7lMdDpwWT5YaTXXY+ZzplOP+sSnin011SNihejo=	\N	f	del_1-4.252				f	t	2017-10-25 20:10:12.97304+00
2737	pbkdf2_sha256$36000$FRXQyLEf6nfB$srjjy/kU5HteX6I6JEuOZB4fLdOXqu8rXsnfT1U30qI=	\N	f	del_1-4.253				f	t	2017-10-25 20:10:13.027526+00
2738	pbkdf2_sha256$36000$AZfkXE0Aze3g$u3MJIiO2uvGff5aDlIKWxK0BMzmv8+UWmMwoFrTBBMM=	\N	f	del_1-4.254				f	t	2017-10-25 20:10:13.081843+00
2739	pbkdf2_sha256$36000$mO1VfOC3Ps8A$UTtBIG+AdFBqL163mglMtc/HUwN+WP6qw0Se8sWEqvQ=	\N	f	del_1-4.255				f	t	2017-10-25 20:10:13.136507+00
2740	pbkdf2_sha256$36000$mQ5FfjPTXJvM$bfw9ZJk29weUlJcpgbYSmPoN+B0nxnOyRTH+i76uZwE=	\N	f	del_1-4.256				f	t	2017-10-25 20:10:13.191159+00
2741	pbkdf2_sha256$36000$H82wgJDgPHHF$7vZRVwTGU4xQryBXxO9013Zzxqkgu5Ab8pxJGDZ0VPQ=	\N	f	del_1-4.257				f	t	2017-10-25 20:10:13.247782+00
2742	pbkdf2_sha256$36000$rCKAm5KhFn9j$6h1oVHsBIddcRVBF/51nNifPGmQwosmqdYv72gjerWg=	\N	f	del_1-4.258				f	t	2017-10-25 20:10:13.303339+00
2744	pbkdf2_sha256$36000$1GrH6eFc7pfg$/mu65t0ns3doZoKxD/5ZbR50DL+bNz/v1Pc+Awiwkfs=	\N	f	del_1-4.260				f	t	2017-10-25 20:10:13.41447+00
2745	pbkdf2_sha256$36000$DChTIOzr1VDy$iQXdYgCsxBWTgUHiZDl23RndfEQDVzokeBjt9CoX4uQ=	\N	f	del_1-4.261				f	t	2017-10-25 20:10:13.469672+00
2746	pbkdf2_sha256$36000$8NLRzhntaD7C$xl+y+O3j7AuHM5hv4/aiTjjWMmImCuPr30nS3ZE1/lc=	\N	f	del_1-4.262				f	t	2017-10-25 20:10:13.525569+00
2747	pbkdf2_sha256$36000$q8dNTBHxGVws$jr/KY2JccnPkinGPQitVvmzMS/V7gtnbnrga/X0cYyE=	\N	f	del_1-4.263				f	t	2017-10-25 20:10:13.581043+00
2748	pbkdf2_sha256$36000$9sAtRcUdgeSA$nJHAVwNj/JSJCdygwKDlJOA8oJIN87bnyyhFTs03XTk=	\N	f	del_1-4.264				f	t	2017-10-25 20:10:13.636785+00
2749	pbkdf2_sha256$36000$IvpSPrpiVyQe$POh2dHpccGYquzyqBpHWJpMDAG2HJp8hBmuQB212E3g=	\N	f	del_1-4.265				f	t	2017-10-25 20:10:13.692738+00
2750	pbkdf2_sha256$36000$iyZPOkSjKcQm$YI7lwaGUUpIMvyweX1ywg6pQ65tsboqcbsjbS98PMt8=	\N	f	del_1-4.266				f	t	2017-10-25 20:10:13.748935+00
2751	pbkdf2_sha256$36000$xrlt8wSTLMbi$uEw4O8UWBplImHlU2+et4ZOIFaNSplc1Y6UQeL8GxlQ=	\N	f	del_1-4.267				f	t	2017-10-25 20:10:13.805138+00
2752	pbkdf2_sha256$36000$O3BCrdIkAQx5$4Z1mtOufpF5GFUtrQRADYte4I0PNfq+XedrvF+R+Szo=	\N	f	del_1-4.268				f	t	2017-10-25 20:10:13.860279+00
2753	pbkdf2_sha256$36000$vv8rPHvXoBOC$jqr6lg1ijl5jCqzngizcN/CQrnqZRBZjb3Z8wM2/RQY=	\N	f	del_1-4.269				f	t	2017-10-25 20:10:13.915581+00
2754	pbkdf2_sha256$36000$5gzUnK28v8T6$+VELgf0JpmxKZ8SWwrWP0ZijdBYMZVTmw3bhBIMVEtY=	\N	f	del_1-4.270				f	t	2017-10-25 20:10:13.997037+00
2755	pbkdf2_sha256$36000$ASAQir2Ls2gg$bIb8fqNFY/Zvw3w896AP+BOBNrmFYd9q8uDEibbeBRc=	\N	f	del_1-4.271				f	t	2017-10-25 20:10:14.095849+00
2756	pbkdf2_sha256$36000$GymxBbntM3sq$9VdvSNOTRFjo8LV+KBB06Ubey0QflPYxNLDoaTW0VgA=	\N	f	del_1-4.272				f	t	2017-10-25 20:10:14.239512+00
2757	pbkdf2_sha256$36000$qmh7Pf67QGNo$ngH6Q/m9cSPTw/VeIAa8dVuoRzLs2EYpdYaiRO6Ao0Y=	\N	f	del_1-4.273				f	t	2017-10-25 20:10:14.381498+00
2758	pbkdf2_sha256$36000$hoqsEvdq85wd$ZdWn7MUtIoRAicIGb1a8AbmTRSI+7Hj1CJpKpFxJ1ws=	\N	f	del_1-4.274				f	t	2017-10-25 20:10:14.524511+00
2759	pbkdf2_sha256$36000$Ho3UJJ3BTFS2$sQk/ToyyqvKFFgXY4khyLugiHGZDuY78ecNPbidKbOM=	\N	f	del_1-4.275				f	t	2017-10-25 20:10:14.666195+00
2760	pbkdf2_sha256$36000$0WMR8xBwp0RI$m7EwxL35KkPn58ZqpLm7uLJHz5UUhYP2lEOIJGuVoHc=	\N	f	del_1-4.276				f	t	2017-10-25 20:10:14.809596+00
2761	pbkdf2_sha256$36000$GpGPMjTIcWdd$dgeyRFz6AtIjfCl9DyDDAMOsuOXJ1OkZ/xZKPzEgz54=	\N	f	del_1-4.277				f	t	2017-10-25 20:10:14.950729+00
2762	pbkdf2_sha256$36000$n9KOXufIBZRB$3KfX646Ed7QtD4Bh6/Rqh1GN1HnghLyCFTQCWpRWPJo=	\N	f	del_1-4.278				f	t	2017-10-25 20:10:15.129616+00
2763	pbkdf2_sha256$36000$ftvRR51COvfq$eQ1V5bo/JkHcCLpitmgXTrqqrzbcw8/Gx0KX1JIVY8M=	\N	f	del_1-4.279				f	t	2017-10-25 20:10:15.249574+00
2764	pbkdf2_sha256$36000$kvzC1NbhB8C7$hlGE8weY4bqtCQpV4pufGbdF9Jrt+NCbB9JtzRB2cYM=	\N	f	del_1-4.280				f	t	2017-10-25 20:10:15.364429+00
2765	pbkdf2_sha256$36000$fLc2mzBXsHVF$TXQomMoZBjEi5S927pDDqHpBO0nWLFDJVq43N+84A3c=	\N	f	del_1-4.281				f	t	2017-10-25 20:10:15.47768+00
2766	pbkdf2_sha256$36000$kpwX3WjJaMAW$xS5qsUa/M8qia5vZiyg+oLe4KUapkLWOr6D1x6ZbCa4=	\N	f	del_1-4.282				f	t	2017-10-25 20:10:15.576898+00
2767	pbkdf2_sha256$36000$ESgWiPtNmBUr$AXwOKCqaMEax1fKpagd6UHXxZvhn/zZceeqMjhmJe2w=	\N	f	del_1-4.283				f	t	2017-10-25 20:10:15.680706+00
2768	pbkdf2_sha256$36000$SsuEHdXUdnZ9$pU1cj/AwgYhm8Y1UDACelnvqP+IR0bY9QJfkhiQzSYw=	\N	f	del_1-4.284				f	t	2017-10-25 20:10:15.823076+00
2769	pbkdf2_sha256$36000$B1kBXY2vwO3d$EkG0ZBUPhOf2So+iBzogKuN4yb2ITkU8YhHj6fIT7vs=	\N	f	del_1-4.285				f	t	2017-10-25 20:10:15.969901+00
2770	pbkdf2_sha256$36000$1b12B94Vbh7a$JkKOtaGpj0tZ2h4+lwflAYIY5ahXmM5soSEiiW05CSs=	\N	f	del_1-4.286				f	t	2017-10-25 20:10:16.148058+00
2771	pbkdf2_sha256$36000$D4WtDY7AWZ1I$STNmGXGW+EvHKrw+5fb9bP6Kdk9Fk/DwrF1D/cL+aZ0=	\N	f	del_1-4.287				f	t	2017-10-25 20:10:16.335548+00
2772	pbkdf2_sha256$36000$h6qGdecqYnjj$bnzSnjU9hWw3cQ+b/dBrhcmiaSjmQY7N8pCvJPbcRrI=	\N	f	del_1-4.288				f	t	2017-10-25 20:10:16.479892+00
2773	pbkdf2_sha256$36000$25qTfwtcQL4N$XPk6QmvSFr6KBZJ2dRc1D2t/gOtP9hYqlPVE7jX8AyQ=	\N	f	del_1-4.289				f	t	2017-10-25 20:10:16.621879+00
2774	pbkdf2_sha256$36000$RRncDDhuWFzq$t+uCDTZBgs5+yL0P/YSlPzyk63lRQ2g+XBl74IWZ0Is=	\N	f	del_1-4.290				f	t	2017-10-25 20:10:16.770439+00
2775	pbkdf2_sha256$36000$4KzLE9CfsCeU$25A8Dimw5l/n+z07xHgiVA6EwjGTitnoB+IcgVVMFmE=	\N	f	del_1-4.291				f	t	2017-10-25 20:10:16.912935+00
2776	pbkdf2_sha256$36000$CGNPRorKQNbL$vFHY/KVhmIrzLbLJvqlBDuue5t/PHxcGaQ5+yn7ledM=	\N	f	del_1-4.292				f	t	2017-10-25 20:10:17.057421+00
2777	pbkdf2_sha256$36000$SDkeXNxn4gBO$0zlmXwhGK95hY6uFmUvPrznxmi4vN+auuJlrk3RjTGI=	\N	f	del_1-4.293				f	t	2017-10-25 20:10:17.175133+00
2778	pbkdf2_sha256$36000$QQJXzjBCqjWw$FSr4xgqvCUE84madJNqmr9sAkmDPs9W7gg9x9Slr9Xw=	\N	f	del_1-4.294				f	t	2017-10-25 20:10:17.34102+00
2779	pbkdf2_sha256$36000$keYGaLzgNq7t$WNURIiIeUSUTkE8oYid6TP/3YOZ4HIoHkbevg9pDQLE=	\N	f	del_1-4.295				f	t	2017-10-25 20:10:17.453982+00
2780	pbkdf2_sha256$36000$18xu41WCiqlq$Bv60tnZlaAAo+pPzjURWbAqWzutFMMOeNATlXQ+HdiM=	\N	f	del_1-4.296				f	t	2017-10-25 20:10:17.558901+00
2781	pbkdf2_sha256$36000$6NmJVbPcJhSE$reXVNqQH0xtEmE35YhQRzlSU8nXps9KPjqBwPm8WTNA=	\N	f	del_1-4.297				f	t	2017-10-25 20:10:17.657088+00
2782	pbkdf2_sha256$36000$58w2fOHJa7cH$Q8Nk3YqO1IUUOX8DSSMgHqQb51hvplqsDdFU7QXTMug=	\N	f	del_1-4.298				f	t	2017-10-25 20:10:17.748848+00
2783	pbkdf2_sha256$36000$KYFAWKfWI36k$tAYyJji+jDu/LRvU2evwBBpKg5dteskpARi2hiQTdvY=	\N	f	del_1-4.299				f	t	2017-10-25 20:10:17.838343+00
2784	pbkdf2_sha256$36000$xDeib7taPE3q$gQ3kKkUEFsb41fKBc1wKl9qNabcOMWI59UtPrJGs8no=	\N	f	del_1-4.300				f	t	2017-10-25 20:10:17.927845+00
2785	pbkdf2_sha256$36000$F1zJai5uNM7c$rqMmx66dPjP/Pgn/CYDC+1NVBQ9EVNf3hbUbfziEUak=	\N	f	del_1-6.1				f	t	2017-10-25 20:10:18.017511+00
2786	pbkdf2_sha256$36000$55DPrbASZOJG$nBiRul5jl42s9zxVfjK6v5QKMOv2UlU8onOgSrwkv40=	\N	f	del_1-6.2				f	t	2017-10-25 20:10:18.093367+00
2787	pbkdf2_sha256$36000$pqyttQnapoQh$MUfG+Dtkg68Yi8zYLYY2OdssOfNiHb4WMf47pTScB0k=	\N	f	del_1-6.3				f	t	2017-10-25 20:10:18.167093+00
2788	pbkdf2_sha256$36000$cegdsnFI8aot$cQSY4jtYZPVdH7XfVFBBQ2jGzarjwYPFbsfFTGZIkjM=	\N	f	del_1-6.4				f	t	2017-10-25 20:10:18.241607+00
2789	pbkdf2_sha256$36000$aRICbqhYB0lW$eH7YD+ZsuoimV9G9roc4FN/hj1/GIhbiKAEK4I3NtLM=	\N	f	del_1-6.5				f	t	2017-10-25 20:10:18.315653+00
2790	pbkdf2_sha256$36000$lNrZthjgpPZH$KhXNhm7Scw0NdHhuKzIuhs7AZtYiPyszmOHQjBTO7CE=	\N	f	del_1-6.6				f	t	2017-10-25 20:10:18.42544+00
2791	pbkdf2_sha256$36000$x9FOofmQ1hNc$qTxiemNTPUHOk+X4QLB8i/Eic85yxxY0Ym2UmvtoXpQ=	\N	f	del_1-6.7				f	t	2017-10-25 20:10:18.4995+00
2792	pbkdf2_sha256$36000$NEM9sueNpN52$gyUSrnu0DcC0XnQGFpaHY+fgxaKJf701WDrxQY0xN8A=	\N	f	del_1-6.8				f	t	2017-10-25 20:10:18.564676+00
2793	pbkdf2_sha256$36000$2VBxDzQVFVdw$1YbkPUZ52yRZW9hcEdf4Tn5vnLLv+X/NVeOoUnVo0o4=	\N	f	del_1-6.9				f	t	2017-10-25 20:10:18.675771+00
2794	pbkdf2_sha256$36000$tpVe5hJnD5V9$gp5wKrkURyvcbdAsI7z6fzqauI2IM39VgF4artfJ9AE=	\N	f	del_1-6.10				f	t	2017-10-25 20:10:18.738416+00
2795	pbkdf2_sha256$36000$1U01ZEO7tB1j$ACH4kYS067/3+8qzgVVNE5sd+aioRRUd9PBV2WiBNqk=	\N	f	del_1-6.11				f	t	2017-10-25 20:10:18.800893+00
2796	pbkdf2_sha256$36000$klEketDH8gRd$33WeTHTs0ZBcHlcJP1Sncuq8TwGvsKUSQMc2q/HCPCo=	\N	f	del_1-6.12				f	t	2017-10-25 20:10:18.863206+00
2797	pbkdf2_sha256$36000$aCXksyHpxCx0$IWzj2fVxrG9dRz+2SnzNlXTgb4vKupb3RYXg8ee+1+I=	\N	f	del_1-6.13				f	t	2017-10-25 20:10:18.925194+00
2798	pbkdf2_sha256$36000$uNd5FP9tZdNg$/2QSzu8Bz62vvNJC+jgnN/RunewYZiUpmqtxwN5L6EY=	\N	f	del_1-6.14				f	t	2017-10-25 20:10:18.987276+00
2799	pbkdf2_sha256$36000$NFy7MnNT048C$CsYTCmhG8oA8HQ9WQ//bX94wCvfuOQL4lhGao40tbfE=	\N	f	del_1-6.15				f	t	2017-10-25 20:10:19.080505+00
2800	pbkdf2_sha256$36000$WVyMGyXIFcQ6$SihnyAIRAkdQL289aGFdtEclwXm8NR9Rs+blems36LI=	\N	f	del_1-6.16				f	t	2017-10-25 20:10:19.226731+00
2801	pbkdf2_sha256$36000$wZQgxNf2zPVE$oRg8hcTkjufEnWdeUoB76L0OPpmNt6Gk2D/Go787QCo=	\N	f	del_1-6.17				f	t	2017-10-25 20:10:19.370906+00
2802	pbkdf2_sha256$36000$UkvcWdVeL8Cv$OwZipZP5sIQcDiFPysGyNmHnJJ5d84QvnaiBo/J44Vk=	\N	f	del_1-6.18				f	t	2017-10-25 20:10:19.569961+00
2803	pbkdf2_sha256$36000$whTmqt9AliGv$WaorS/ulNTQaJoojQzy747XW4gjnQ79460eaOhM9uPM=	\N	f	del_1-6.19				f	t	2017-10-25 20:10:19.684992+00
2804	pbkdf2_sha256$36000$aWGXKqf3oeEG$twVoV/2y6Je37LSzrDJPlaeslLn9HkzNhmuPUJhiP2k=	\N	f	del_1-6.20				f	t	2017-10-25 20:10:19.800482+00
2805	pbkdf2_sha256$36000$C9Sum3xdzrrI$FZ2qP0P33IzKeKS7jxaqZsiigNBqr6uXmBLqti76rp8=	\N	f	del_1-6.21				f	t	2017-10-25 20:10:19.915317+00
2806	pbkdf2_sha256$36000$lBkXPWPaMptx$P9VydXgnXIFbupF07b0Z/LUJT27cT3sDtSF5DqbYty4=	\N	f	del_1-6.22				f	t	2017-10-25 20:10:20.028548+00
2807	pbkdf2_sha256$36000$n2ht6s0FI7xW$gTwUpdU6NZFMv88f4pyKVyfNpsCUSpv26wVyghmUo/8=	\N	f	del_1-6.23				f	t	2017-10-25 20:10:20.123061+00
2808	pbkdf2_sha256$36000$gjmO46mSuZGs$65yx7XqtdO5LXzktwOp9DqlkmFPGuJb8fsIwi2gSSu4=	\N	f	del_1-6.24				f	t	2017-10-25 20:10:20.21876+00
2809	pbkdf2_sha256$36000$cUf8hAeIPQ3T$XS2Bt1Q/9LAHPzEbS68Ube1oZsuC2Qh985hHmETovUQ=	\N	f	del_1-6.25				f	t	2017-10-25 20:10:20.321228+00
2810	pbkdf2_sha256$36000$peIYixkjMLLZ$0/MXPX1Ya8gJ/Z9upn0pL8bLZJQKQm3kNXWMNjuqRD0=	\N	f	del_1-6.26				f	t	2017-10-25 20:10:20.419052+00
2811	pbkdf2_sha256$36000$tXVuhBCseaXW$QWz620Hjk/e6484uI4CWt84fWG1auv1nIvVEK6PP66o=	\N	f	del_1-6.27				f	t	2017-10-25 20:10:20.514035+00
2812	pbkdf2_sha256$36000$7B3zdFartErN$V7ag09iYWN5cOSCkyhOg85DjuMXM+lJqviao8FuzPyc=	\N	f	del_1-6.28				f	t	2017-10-25 20:10:20.629905+00
2813	pbkdf2_sha256$36000$gMZ1IeyGVYUV$/Cqzt832wgtPVIR+GHLe5Ex0lcAb1si0MNFxkijU3Mw=	\N	f	del_1-6.29				f	t	2017-10-25 20:10:20.707772+00
2814	pbkdf2_sha256$36000$C77mULPTTK8o$UZu2BQR+SVJT0r7u5xhdpHewAodchWfFngLVq73P5Gs=	\N	f	del_1-6.30				f	t	2017-10-25 20:10:20.78657+00
2815	pbkdf2_sha256$36000$XJZb0QZwTUF2$qvXdsNZbS00ygUuvGQ8hLI/qLUjqIm2ScYomM0l1SS0=	\N	f	del_1-6.31				f	t	2017-10-25 20:10:20.864035+00
2816	pbkdf2_sha256$36000$sXqODKmCzt2R$z4FFHuD/hCOJ6aqfRSCymIEO1+UZ11ZrDnrx1jKxius=	\N	f	del_1-6.32				f	t	2017-10-25 20:10:20.942284+00
2817	pbkdf2_sha256$36000$vWugXsDxGP8W$jJj1fi7RLJAr5+yd92OannX/oBOL8P6B53Uw1tcaqZk=	\N	f	del_1-6.33				f	t	2017-10-25 20:10:21.019808+00
2818	pbkdf2_sha256$36000$1O22ugqOPjxK$3v756nGEgLngUQyhHDGwuiP6j5W8d+695yYDA7zPkOw=	\N	f	del_1-6.34				f	t	2017-10-25 20:10:21.084172+00
2819	pbkdf2_sha256$36000$9QsxFmJWdtLc$jZrihSzksAWUnQ1PL/fFadfGAifvFBeVT9ij2hgmieI=	\N	f	del_1-6.35				f	t	2017-10-25 20:10:21.14758+00
2820	pbkdf2_sha256$36000$cuVjhOGHms3T$AREX0V5ZByuc4oI5KZVZqDBw+O0jscd2urrDqIg4l/A=	\N	f	del_1-6.36				f	t	2017-10-25 20:10:21.211482+00
2821	pbkdf2_sha256$36000$ykafcsvaEQmX$fUOFec4k3BmONiDs4BfXsgAIwApDMpYfQKyr1RqH9ns=	\N	f	del_1-6.37				f	t	2017-10-25 20:10:21.274612+00
2822	pbkdf2_sha256$36000$lbqY51PAbM9l$d5JCGgWF1p4oZQS46Pe/l0i0XlFd+0j4PZH8w6xiV8Y=	\N	f	del_1-6.38				f	t	2017-10-25 20:10:21.337373+00
2823	pbkdf2_sha256$36000$sM40qmQGrBNl$87iPsbOkEGYHtihDudlbh1hYNFkjtGoqE7pO9I53R9U=	\N	f	del_1-6.39				f	t	2017-10-25 20:10:21.400223+00
2824	pbkdf2_sha256$36000$c1Dfy2lAnMHo$H7ppUlyeKjL6KwThdq8+klzjuHLfGcKWEUYs+tJuEG4=	\N	f	del_1-6.40				f	t	2017-10-25 20:10:21.463768+00
2825	pbkdf2_sha256$36000$P8TahpMdjIRx$mABvjUMts+yP2+GjLcaDBhY0/hatcdDjCUTCa5jGw8w=	\N	f	del_1-6.41				f	t	2017-10-25 20:10:21.527277+00
2826	pbkdf2_sha256$36000$FSdTyEQedZ5q$SeWrQE/e/XyAknx7stGiBXkmtOic617J3wJnz2BF1JQ=	\N	f	del_1-6.42				f	t	2017-10-25 20:10:21.585703+00
2827	pbkdf2_sha256$36000$MyWKZaKREefD$hbVEOe10XlECGGbFsqD7pPhnG5vYQ6Vki72IAeMoMWw=	\N	f	del_1-6.43				f	t	2017-10-25 20:10:21.668775+00
2828	pbkdf2_sha256$36000$OerZxXJ9Z0Ff$CAIvxzLIm9HOi405lDiqiiqWft6QFrRcTBFyu6vaqTg=	\N	f	del_1-6.44				f	t	2017-10-25 20:10:21.725822+00
2829	pbkdf2_sha256$36000$yHZonpVxPrKO$xNq99P4j3Co30Uzj6q34KHO6Gh2lW6Whp5L7/+hLN6c=	\N	f	del_1-6.45				f	t	2017-10-25 20:10:21.781972+00
2830	pbkdf2_sha256$36000$34K99j4maCSq$l3VfhH9vx3HlO4irNm/+1sZH2baaRcT3xkqJtEt17Hc=	\N	f	del_1-6.46				f	t	2017-10-25 20:10:21.837697+00
2831	pbkdf2_sha256$36000$SiXOUj2J8fjS$iJ2kTa3BUBr0SDhzKToryJPkyOLRF1Md8Bvg3sRKT1M=	\N	f	del_1-6.47				f	t	2017-10-25 20:10:21.893672+00
2832	pbkdf2_sha256$36000$uNIRXFTMBoJa$n+cJ7qUlz7a9ceFLs7Ta9qk6s8es7o14sOw2wY0wteg=	\N	f	del_1-6.48				f	t	2017-10-25 20:10:21.949654+00
2833	pbkdf2_sha256$36000$jrERx5hwApsc$yN80nsmqTsCYbPW9cW4GuOEg/vKoCIsz3V326MB7F0g=	\N	f	del_1-6.49				f	t	2017-10-25 20:10:22.006144+00
2834	pbkdf2_sha256$36000$SD7Yl0qzbqut$6vfXmjDbHJiEwkaN4WEBVhQes8YWUa4DbubPD4txHdU=	\N	f	del_1-6.50				f	t	2017-10-25 20:10:22.061833+00
2835	pbkdf2_sha256$36000$p61aWaCcwvHI$1arFd1xHHuxRolXATi90jFdZmBAw53XjwlPejw3DcJs=	\N	f	del_1-6.51				f	t	2017-10-25 20:10:22.117668+00
2836	pbkdf2_sha256$36000$ey1qBclAOl9d$NZpGXDoSD/KHYIuynBztaHUCIRCThE7i2WepyxgGRMY=	\N	f	del_1-6.52				f	t	2017-10-25 20:10:22.173363+00
2837	pbkdf2_sha256$36000$3SkxhtOskbge$5KmAPm7atI/NGUMJdvnkWgh5xOajL/+HurNul4fYpfo=	\N	f	del_1-6.53				f	t	2017-10-25 20:10:22.229623+00
2838	pbkdf2_sha256$36000$3GaLSmQzJAMw$ovRK5Eh3MnZiiiH8aKp/ATHrHla1itm3s0tWnBFeKu0=	\N	f	del_1-6.54				f	t	2017-10-25 20:10:22.292008+00
2839	pbkdf2_sha256$36000$et5wJLjeb7Qg$rpOTz5H1QT5L/7uRQ4ibpcrLHdZriC7n3tWj98Pe4wU=	\N	f	del_1-6.55				f	t	2017-10-25 20:10:22.349082+00
2840	pbkdf2_sha256$36000$h9w54nDM2KXd$g8Bsp9ptvSzl6Ua8qaZaydE894d+3mDZvxhMcVyf5yg=	\N	f	del_1-6.56				f	t	2017-10-25 20:10:22.406089+00
2841	pbkdf2_sha256$36000$TX0MQS7CTbNw$a/woXYMdr2Z4SWhQQ4XmzrgMKAs3r6RrStuBljxESkQ=	\N	f	del_1-6.57				f	t	2017-10-25 20:10:22.462089+00
2842	pbkdf2_sha256$36000$7VJ3QSp6iO7P$J1zHPtTPw2e7sNCNLyu3p+zqX+OYSjRAPOC/Jfkm3JE=	\N	f	del_1-6.58				f	t	2017-10-25 20:10:22.518354+00
2843	pbkdf2_sha256$36000$R88gNNOelkKP$N6PmaSOZGMn2ZKjpzsWoSRU0ySJt3MUFWR7p6cHQDRs=	\N	f	del_1-6.59				f	t	2017-10-25 20:10:22.574548+00
2844	pbkdf2_sha256$36000$nTdU5EixGQ9O$HcEWTQ2k5ydIau8yWhZ11oi9Id8N4hchxzId7EJ8YOY=	\N	f	del_1-6.60				f	t	2017-10-25 20:10:22.631488+00
2845	pbkdf2_sha256$36000$8KTtjHCKExKc$rimksq1vvBlLCyre2ONDZNJlYDtsHPXOISup/L7R7rs=	\N	f	del_1-6.61				f	t	2017-10-25 20:10:22.718143+00
2846	pbkdf2_sha256$36000$ZTAllqgjznMk$DkDfY+63srDnWBDH/7/ZHz+WaC5GL3rMQSpFCsPsIjE=	\N	f	del_1-6.62				f	t	2017-10-25 20:10:22.776476+00
2847	pbkdf2_sha256$36000$5cqx5gXNqxpK$2T5JIXbHCSeY8ZtJUBETGc06DNoP3gV/mZa0dt9Acxs=	\N	f	del_1-6.63				f	t	2017-10-25 20:10:22.833699+00
2848	pbkdf2_sha256$36000$B7gq9C8lzKIG$cbClHaIMuKjjiE5zJFRkOa1XHbcknaKA+abQLeHiba0=	\N	f	del_1-6.64				f	t	2017-10-25 20:10:22.891408+00
2849	pbkdf2_sha256$36000$P9fVrGrhvmZ5$BU6mfZTx9rNMa5WYKM55+aqsLKr8c6QMn7il/PHSkzU=	\N	f	del_1-6.65				f	t	2017-10-25 20:10:22.948652+00
2850	pbkdf2_sha256$36000$zd7OZyuWlunr$h+HeTEDpF76eBaQKlaDIZryU2bL/eTZoQ1atdTFiql4=	\N	f	del_1-6.66				f	t	2017-10-25 20:10:23.006548+00
2851	pbkdf2_sha256$36000$sciW4PME9gxm$Zvk1Iq4iuj+2cAWZBqfSMvtVDnE8grhkyKIkH0zVNjQ=	\N	f	del_1-6.67				f	t	2017-10-25 20:10:23.063107+00
2852	pbkdf2_sha256$36000$Ln3k5Q61mvdb$5tWT2FJf2vWPUA6inCnZEg5F4y0lEdrHxZ7bsv0l6f4=	\N	f	del_1-6.68				f	t	2017-10-25 20:10:23.120359+00
2853	pbkdf2_sha256$36000$zu3nOBgoLaXO$dH6xcrvBcCbIDnPNHv69nSYiEQWHR9qYz35itYa+O2A=	\N	f	del_1-6.69				f	t	2017-10-25 20:10:23.179793+00
2854	pbkdf2_sha256$36000$romD4XPliNU4$Pi95f4BVwFhIohhe/3ucpSXztCqOexLUcu2ogWJetpg=	\N	f	del_1-6.70				f	t	2017-10-25 20:10:23.238904+00
2855	pbkdf2_sha256$36000$wFMkiVEKkOVd$Vzi6Gx/Qjv32SlrPS4kXUvrey7xLsCQp8SN8eEBRNgg=	\N	f	del_1-6.71				f	t	2017-10-25 20:10:23.295448+00
2856	pbkdf2_sha256$36000$IVYrKDYtmrlC$s5voaTGB51HflfxDyjqWocDSdB3BLMNFNrzJobF603w=	\N	f	del_1-6.72				f	t	2017-10-25 20:10:23.352657+00
2857	pbkdf2_sha256$36000$ZBr448qat8qH$p6R3K5IviDOT0U2EUcZ+oElW4FBD0abdPPtQDtDrfXE=	\N	f	del_1-6.73				f	t	2017-10-25 20:10:23.40853+00
2858	pbkdf2_sha256$36000$Bg8h3qShXhf1$ormvJHEoFOk9POKDTj2jkD/t35ODJpjvruYbIMvaeIM=	\N	f	del_1-6.74				f	t	2017-10-25 20:10:23.465469+00
2859	pbkdf2_sha256$36000$GJIqNTjxEpY2$eJW2bvH3AZlhBpuw5IRp9jtaZVKwbLP2DCgmmiCsTY8=	\N	f	del_1-6.75				f	t	2017-10-25 20:10:23.520965+00
2860	pbkdf2_sha256$36000$5CmiMwxxALvR$mlWi46pAdB9MMlV+I3hd5ia5DyqzS/xj0F8A/vnCQBY=	\N	f	del_1-6.76				f	t	2017-10-25 20:10:23.576825+00
2861	pbkdf2_sha256$36000$btd4sTAEKCYb$31uPd2ebe9E+N16rrkvrW3sVgnFXWwbWuRf+BvDrLbY=	\N	f	del_1-6.77				f	t	2017-10-25 20:10:23.632778+00
2862	pbkdf2_sha256$36000$mmkfNjXZjG0i$b3w8WNWUvOeQwcnBsJt4GMtl9Ntuobel7pZkAZokLbo=	\N	f	del_1-6.78				f	t	2017-10-25 20:10:23.70543+00
2863	pbkdf2_sha256$36000$XLDDH6PNpEQn$jD98v8W17xHMnibp9/61ivUx9F50v+RHXt3hL+lBoVM=	\N	f	del_1-6.79				f	t	2017-10-25 20:10:23.788885+00
2864	pbkdf2_sha256$36000$XV2iUtdLR5PS$moYV8WqrqV0OtTk8Cnldob7g9z6PzzfIyerR64SJxZw=	\N	f	del_1-6.80				f	t	2017-10-25 20:10:23.844818+00
2865	pbkdf2_sha256$36000$MzSaF0arRAxo$jLCw2Y5a6OUu77MjEk08j7NMPUYMjK0hQR5rJUe4X1A=	\N	f	del_1-6.81				f	t	2017-10-25 20:10:23.900746+00
2866	pbkdf2_sha256$36000$yDyqKrlIzs4Z$jKLSBWx1n5qeK8sHPzfRjvt3pCgx/Z6ykZw9HLHeWGM=	\N	f	del_1-6.82				f	t	2017-10-25 20:10:23.955473+00
2867	pbkdf2_sha256$36000$stErK3BlAdhu$kkGr6kCBJJ1dEYghScpzlNgzxsPyHJYZPqAcbeNDD/8=	\N	f	del_1-6.83				f	t	2017-10-25 20:10:24.010051+00
2868	pbkdf2_sha256$36000$DgAdiOFXzlQl$b9QHgMFwY3B3aoU18+6qZGbaYik89lx2bQUKvZt76SY=	\N	f	del_1-6.84				f	t	2017-10-25 20:10:24.06571+00
2869	pbkdf2_sha256$36000$P4VJEBOw81tq$W6aK7qWJZSsH05V5U6FXkppEIAq4Og29OAWsqrtgCaM=	\N	f	del_1-6.85				f	t	2017-10-25 20:10:24.121443+00
2870	pbkdf2_sha256$36000$vBDTl0u6UYuI$d1sfnvRw/BGkQoFQXLRDqR51NHJJJDr4WSr1HIakD18=	\N	f	del_1-6.86				f	t	2017-10-25 20:10:24.176995+00
2871	pbkdf2_sha256$36000$9RSR17Hbx5EB$NNnTWm5TTBoDSrJgcG7W/lBt67dlIpsiuhvp/OGxZqY=	\N	f	del_1-6.87				f	t	2017-10-25 20:10:24.232527+00
2872	pbkdf2_sha256$36000$PVqyrXQmBGE8$/5T0VLrmhpwRg5xqRoUruX9ywDVSC77MIpWQtJj1hh8=	\N	f	del_1-6.88				f	t	2017-10-25 20:10:24.287271+00
2873	pbkdf2_sha256$36000$S66b3SLYyFrh$qjXYxDZx696QvboCdY5RK8SR19lHYM8DRAEY7Vctd4M=	\N	f	del_1-6.89				f	t	2017-10-25 20:10:24.34653+00
2874	pbkdf2_sha256$36000$9PdfjqsMwS1B$NLDlUWcQvzF7cGPWzikz4VeA7X5a5a3E73ThND8RPTI=	\N	f	del_1-6.90				f	t	2017-10-25 20:10:24.401452+00
2875	pbkdf2_sha256$36000$dYNbmTTwNCqQ$/PKgvQP18ZT/Iaih+z20he6zvfaBoCjRe8IPdPh5dqw=	\N	f	del_1-6.91				f	t	2017-10-25 20:10:24.456448+00
2876	pbkdf2_sha256$36000$QRJPZ9XLfZft$kPKiLL4xxF3qpZyVWOdAUHvGUAbSgcspdiiKyu/MfYU=	\N	f	del_1-6.92				f	t	2017-10-25 20:10:24.511307+00
2877	pbkdf2_sha256$36000$7QbKzuujnqRL$Z5Ashl1WA3LKIZnvTgIYCeMdAKlhukdAi8u6T02RpbQ=	\N	f	del_1-6.93				f	t	2017-10-25 20:10:24.565939+00
2878	pbkdf2_sha256$36000$6rmLPGXni5SG$S1B+MXyweylyklC7zROnxi7SlUztdyfmeRhA7+gP7cI=	\N	f	del_1-6.94				f	t	2017-10-25 20:10:24.620302+00
2879	pbkdf2_sha256$36000$UbWml0PLzk32$vjQC00umTwleA+9dkIg1S8RHAqDTSTjEnuKaKzx8lXM=	\N	f	del_1-6.95				f	t	2017-10-25 20:10:24.674606+00
2880	pbkdf2_sha256$36000$CxFk8xyhDTBo$wE3MYWO12Vov/OZZXWJGKPSpPNN/MfSoQ4Whm12oSxY=	\N	f	del_1-6.96				f	t	2017-10-25 20:10:24.729987+00
2881	pbkdf2_sha256$36000$HbKmppKpBipD$ijQ4ISBd8W4BGyvNsy3pj7AuFyQaXObfwzORuAVmfz4=	\N	f	del_1-6.97				f	t	2017-10-25 20:10:24.810603+00
2882	pbkdf2_sha256$36000$Xh2zG5JvFZnd$rNwsaKIXT7/0vMV8DJvJqOXIt+Dmg7StErxbqO6JkQg=	\N	f	del_1-6.98				f	t	2017-10-25 20:10:24.869214+00
2883	pbkdf2_sha256$36000$5dPrDXr2Nzs4$0Bt01Y0QX8k+D7mvKe8SVVAytMQN0xxqnYw5cmFVJYA=	\N	f	del_1-6.99				f	t	2017-10-25 20:10:24.924705+00
2884	pbkdf2_sha256$36000$OQlWiUGed9Iy$xAE0qxZGAK8AqSgTjKwC9iSUZvAjTb7Xxze0xM1VZSo=	\N	f	del_1-6.100				f	t	2017-10-25 20:10:24.979213+00
2885	pbkdf2_sha256$36000$kDAe7DDJtMwo$wGglYZLVcfOwUPbmjPQPJbYOwLZ5/XsQvzIETuUbtFM=	\N	f	del_1-6.101				f	t	2017-10-25 20:10:25.034571+00
2886	pbkdf2_sha256$36000$iQVurTHcIuIY$lC2rI9KiIUeLftlA4UKyVn0mbw2UrhtoMcMIpSzNI7Q=	\N	f	del_1-6.102				f	t	2017-10-25 20:10:25.090373+00
2887	pbkdf2_sha256$36000$wDUnJXg3RlAY$JZ5r2cmc8WtVYHNlV4nLwLt4iwAkJYQ5XBN9qkfm7Vo=	\N	f	del_1-6.103				f	t	2017-10-25 20:10:25.147816+00
2888	pbkdf2_sha256$36000$4EndbVKNK5lj$0mwKiw/06dvcYlLfNd6wldKToEJpsUl0k0ZcIpMiwaw=	\N	f	del_1-6.104				f	t	2017-10-25 20:10:25.203753+00
2889	pbkdf2_sha256$36000$uqD4tPNWq6E9$fE02KUmLYi0bGwmhcYKnedXXYCvjlDvb7op5I0MlECw=	\N	f	del_1-6.105				f	t	2017-10-25 20:10:25.259546+00
2890	pbkdf2_sha256$36000$Gp7pTGFtAVfa$CQ3XvPly/hgP0DwhFQyx7uj1lq8QWuRW57QbiP3v+iw=	\N	f	del_1-6.106				f	t	2017-10-25 20:10:25.314885+00
2891	pbkdf2_sha256$36000$1mZIBbzp7w3J$Ey7nmms2k6760d9cVKKMjSmZMMeuOS3rIjXMq0UiZFk=	\N	f	del_1-6.107				f	t	2017-10-25 20:10:25.370283+00
2892	pbkdf2_sha256$36000$loHBsDTi5tuQ$/xBDUxHWUWtof1SQqaf3CuQp4DMWah3P8jzAykYO1bk=	\N	f	del_1-6.108				f	t	2017-10-25 20:10:25.425853+00
2893	pbkdf2_sha256$36000$TscAg6txDK4Q$EA2vOtAmC5eMxZJ/5OxP5ulvsFPsrw2YxXNUtRY48DY=	\N	f	del_1-6.109				f	t	2017-10-25 20:10:25.480539+00
2894	pbkdf2_sha256$36000$UkDxKMTaBkku$3jxEiQOiand8l/5s9VBAtpU145wyoqBd0Bo4b1ep+SE=	\N	f	del_1-6.110				f	t	2017-10-25 20:10:25.536037+00
2895	pbkdf2_sha256$36000$Tz309C9Meh2o$rC7Sye0ao3OuJBLvGLG8Tu2Mke8WD2mZOR0VFwFwAxM=	\N	f	del_1-6.111				f	t	2017-10-25 20:10:25.59191+00
2896	pbkdf2_sha256$36000$5Oi6fzwLWcVP$mPBgD5kf1+hkwgZ/lWiW0WzBdriUBGARn4kWKd0efL0=	\N	f	del_1-6.112				f	t	2017-10-25 20:10:25.648523+00
2897	pbkdf2_sha256$36000$5fzg2T2eCjj5$JLvUO20wi6PF/R+PuthXAyxUxfF2CWIa0nyNqvr7/VU=	\N	f	del_1-6.113				f	t	2017-10-25 20:10:25.703883+00
2898	pbkdf2_sha256$36000$G9uDifEbC0bA$ON2O1cfdm5BWAqCMhAiR+Lus7mOlSPxE37VasdFgQI0=	\N	f	del_1-6.114				f	t	2017-10-25 20:10:25.760036+00
2899	pbkdf2_sha256$36000$Pgf0kpBpN3FP$2wFKHE2LiRMgsxl9b/OxPN7K6TooHUNa8RerNoiHINU=	\N	f	del_1-6.115				f	t	2017-10-25 20:10:25.815412+00
2900	pbkdf2_sha256$36000$vbb61ftYMwtq$qBvGV2Xme7ClZabEOq8LiMLVDk9El4GTWPqMt8Ym0GQ=	\N	f	del_1-6.116				f	t	2017-10-25 20:10:25.897095+00
2901	pbkdf2_sha256$36000$OABhDfRE46eg$EWndSymSGtwbSB5JoQIFHeRDDsqSJ/lWatuk5pmJyn4=	\N	f	del_1-6.117				f	t	2017-10-25 20:10:25.951908+00
2902	pbkdf2_sha256$36000$VCaXOddbLMh3$VrvWvKvuGLIfG7/vgkLxI5Jtiewe/NLn2u4K7W2c/Nc=	\N	f	del_1-6.118				f	t	2017-10-25 20:10:26.008102+00
2903	pbkdf2_sha256$36000$6mP6gkjSNBUY$TBgiWlUV6g4bHEs9E+YCTeTKxFwWmjiGLgM16j0gh1U=	\N	f	del_1-6.119				f	t	2017-10-25 20:10:26.0644+00
2904	pbkdf2_sha256$36000$yRJK2scyXZmk$TXrUFKzUkMwmwE05LTqCa0phLS9rV+MKC0VXw7EYTrs=	\N	f	del_1-6.120				f	t	2017-10-25 20:10:26.121849+00
2905	pbkdf2_sha256$36000$7r4BP9KVlxla$SHnQwt1JV79mqjn2jP/Yvd82ZYCk2bC+7jv7LdFl9NM=	\N	f	del_1-6.121				f	t	2017-10-25 20:10:26.17866+00
2906	pbkdf2_sha256$36000$hfccNNFrUQUy$9Ts25wojBwnhYnv8GNgIfHaiLpLTLHxCDmlTNjwAEB8=	\N	f	del_1-6.122				f	t	2017-10-25 20:10:26.235424+00
2907	pbkdf2_sha256$36000$D3t7PGupSdKW$w3t2I9O4QhvgQfkMuduaGqDC43VEdvPxdpzQreekuEM=	\N	f	del_1-6.123				f	t	2017-10-25 20:10:26.29054+00
2908	pbkdf2_sha256$36000$Li7wognZ85lE$CtGMPEa4He9PsQX5FQIgKeT8RxrQyfpIrVWoKoXtxsM=	\N	f	del_1-6.124				f	t	2017-10-25 20:10:26.351958+00
2909	pbkdf2_sha256$36000$JmkgVyrAfT7Y$TOanb+G/mf1+awNsE+/pUW26o34ptVSNfiWQioofUQg=	\N	f	del_1-6.125				f	t	2017-10-25 20:10:26.407888+00
2910	pbkdf2_sha256$36000$mIhqRLZ6Hk78$uSbsV/2tLRVYx2WMbcDOieKOHcIjEtwMokHs0G8FNME=	\N	f	del_1-6.126				f	t	2017-10-25 20:10:26.464374+00
2911	pbkdf2_sha256$36000$dT5uQTK0L4Mh$4P55v181xP+O8qN771Ys+GuGurmP2rXtrwIkwc+cWlY=	\N	f	del_1-6.127				f	t	2017-10-25 20:10:26.519519+00
2912	pbkdf2_sha256$36000$BnN7iij1xC3A$1MmJ7lSXxMDFs4VBy0KRw6yCCryT8FPF1UTdErkczOs=	\N	f	del_1-6.128				f	t	2017-10-25 20:10:26.575507+00
2913	pbkdf2_sha256$36000$KLOm5tQzg9jL$AH7RugsjcaFRwnS7vE8r11bq0a4tjn7tJKYFNKBW6+Q=	\N	f	del_1-6.129				f	t	2017-10-25 20:10:26.631226+00
2914	pbkdf2_sha256$36000$oOqyMwaywbe6$dVVpT3gvWhP3qstq1bZzgT6FXmQ7E3ZmA4iwL6uZTEI=	\N	f	del_1-6.130				f	t	2017-10-25 20:10:26.687913+00
2915	pbkdf2_sha256$36000$Tvfxlq7nIw5u$Hmq7RkKr73Ky0SB+7jbpUWYp5KB/YU+gJqTpczmVITc=	\N	f	del_1-6.131				f	t	2017-10-25 20:10:26.744509+00
2916	pbkdf2_sha256$36000$UsO7fjIOf851$JbpY2ZZyVw7/Q8LiPjPuCG12NBQMhhLF5M31VJXG6kw=	\N	f	del_1-6.132				f	t	2017-10-25 20:10:26.799899+00
2917	pbkdf2_sha256$36000$5PG04NLcYdHb$Z/VLUr5fcv/DEBnJpQAiYbSGoX3muUAqbvEUw10JCXI=	\N	f	del_1-6.133				f	t	2017-10-25 20:10:26.856088+00
2918	pbkdf2_sha256$36000$eIQJUhkRbeM5$CWMxdToUVnDCNjF/KGLiNj4z9YWmN24PzOscN0tg2gs=	\N	f	del_1-6.134				f	t	2017-10-25 20:10:26.942391+00
2919	pbkdf2_sha256$36000$gd1uCFt7WLAf$zwfgIqD65b5JoaOcw1RQWppLqJvbKz9ClEVg/oUOmUI=	\N	f	del_1-6.135				f	t	2017-10-25 20:10:26.998275+00
2920	pbkdf2_sha256$36000$pyEhs3xq2baJ$OfmqPwTsVbBPO/loYbcz+fp0jUcO5LgY5ZhBWKt4I6k=	\N	f	del_1-6.136				f	t	2017-10-25 20:10:27.054389+00
2921	pbkdf2_sha256$36000$MdienurTHs9g$XSZMEVthFdhpe0uu+tlEurc/s5Vs0Ve9ca+0x6qn59g=	\N	f	del_1-6.137				f	t	2017-10-25 20:10:27.110352+00
2922	pbkdf2_sha256$36000$uSaADB8OtRzf$PfN+hKTjgDeAfwZ2tgav+SSiXSx0r+e95E2sKhA3r3U=	\N	f	del_1-6.138				f	t	2017-10-25 20:10:27.166133+00
2923	pbkdf2_sha256$36000$Fa4vJAIF3WFn$DMwh9YR/SJcx5tKNtNHiEcntZnbXHkm6263VV3c9Z74=	\N	f	del_1-6.139				f	t	2017-10-25 20:10:27.222218+00
2924	pbkdf2_sha256$36000$OTckUR7NpjAY$7GWbvkEsGMLpMjsKszaYkR3pjt4geyAgN92qHU0rszI=	\N	f	del_1-6.140				f	t	2017-10-25 20:10:27.27855+00
2925	pbkdf2_sha256$36000$KtzRwmElznM7$tbGYkDNNWz+d4CbssUeVtSh67r3nH21mmsROerBqN5U=	\N	f	del_1-6.141				f	t	2017-10-25 20:10:27.334047+00
2926	pbkdf2_sha256$36000$Cc2qSeHxqWVX$K9dBaaoxVK+aLe4gHiypa2wWVGOrOieI740EZk7MhGM=	\N	f	del_1-6.142				f	t	2017-10-25 20:10:27.389891+00
2927	pbkdf2_sha256$36000$GHKYFOVJfCH8$6h57sjKAI/rtEIEA7a6yYbn3hjjG8HIt3oXHmiCJV/M=	\N	f	del_1-6.143				f	t	2017-10-25 20:10:27.445773+00
2928	pbkdf2_sha256$36000$whlRONJzL6lP$lYOBognqwirV/YrNcD9lgn2Mm+bK5q4iaaB2s/ri6ck=	\N	f	del_1-6.144				f	t	2017-10-25 20:10:27.501061+00
2929	pbkdf2_sha256$36000$zWjRzeaE0YB1$czradx+8pT3SgxqFhEQ4YQ6oRJdj4QUgGIkFyhy19YA=	\N	f	del_1-6.145				f	t	2017-10-25 20:10:27.556755+00
2930	pbkdf2_sha256$36000$2J5rrsGIQono$TiCK8d4mpC9tCxDAKDon8gHGsNjWTNt4+8L8KVgbG3Y=	\N	f	del_1-6.146				f	t	2017-10-25 20:10:27.611442+00
2931	pbkdf2_sha256$36000$9kdImjdWQRVb$MlItxqBUGX4TDZvwbGDBS0hA0g5ckY9qE8+FYe6cj7k=	\N	f	del_1-6.147				f	t	2017-10-25 20:10:27.681963+00
2932	pbkdf2_sha256$36000$2sWc5IYk6bfu$lVhijxLtE9D2DqbPvmQaiOy5DZwCqDA/+Q/GyknDDPg=	\N	f	del_1-6.148				f	t	2017-10-25 20:10:27.736867+00
2933	pbkdf2_sha256$36000$shkDu6BvKuQ0$yesu9EpEgd1fR8NjGmftYfmyUuU5PZfO4tgaBnYzG3g=	\N	f	del_1-6.149				f	t	2017-10-25 20:10:27.791794+00
2934	pbkdf2_sha256$36000$JJdGAsSFuvvN$LhNFYtz7b8BlhRGMfGVAGlJakKGak4rKu3NbKTtkKiE=	\N	f	del_1-6.150				f	t	2017-10-25 20:10:27.846523+00
2935	pbkdf2_sha256$36000$QFjCa6PI9iBP$j1rCsRs84R7SX3htqTz6S1JkWynJ8o+9UWki7rs72YA=	\N	f	del_1-6.151				f	t	2017-10-25 20:10:27.903279+00
2936	pbkdf2_sha256$36000$WPZcfpzUFVcF$RSUWwuhvLKPThz7MtBFld5AdimLbSvpSLVOwx2KOHwg=	\N	f	del_1-6.152				f	t	2017-10-25 20:10:27.986407+00
2937	pbkdf2_sha256$36000$ZhWouWHAfOhr$+EjjUONm9ThEKODBn/4NPjNkKDbAIbfvQoE6LBgIuPM=	\N	f	del_1-6.153				f	t	2017-10-25 20:10:28.041917+00
2938	pbkdf2_sha256$36000$DzjEYc4Z86aa$VDXLM43wwAvp36TfgkcrvXSqsvA81Qx2zy8sEbnft9g=	\N	f	del_1-6.154				f	t	2017-10-25 20:10:28.09713+00
2941	pbkdf2_sha256$36000$vxJ3h7HAozuW$MI12s8whbv746G2gCL+4cF5xtlyZlxXyQk6OkkncUtw=	2017-11-10 18:53:56.978557+00	f	del_1-6.157				f	t	2017-10-25 20:10:28.264049+00
2940	pbkdf2_sha256$36000$gPpFWpGuk45R$z/4W78ZKZx3R/CPhWyPkrHI6Me+ZJ65L2xCTfOkbU5s=	\N	f	del_1-6.156				f	t	2017-10-25 20:10:28.208689+00
2961	pbkdf2_sha256$36000$Wseo3cKfDVs9$PbLt3wQdfGWE2IbVnmPp8KH8K16iQvDuFTsXjpeI6xY=	2017-11-14 04:09:07.360578+00	f	del_1-6.177				f	t	2017-10-25 20:10:29.413846+00
2942	pbkdf2_sha256$36000$1ZkKme6mmhwh$yzKyBNfGkOXCbJwEpMgqGGqJlrash2ly5FCgb8sGAN8=	\N	f	del_1-6.158				f	t	2017-10-25 20:10:28.319908+00
2943	pbkdf2_sha256$36000$cABZQtj4scoe$Jky2v9MqF6lYkUhBPiKPfFgo+2M9/9aWLMI4DSy1B8I=	\N	f	del_1-6.159				f	t	2017-10-25 20:10:28.375712+00
2944	pbkdf2_sha256$36000$jN3HnK9cwChG$9HvOX1DEKEz1BCzU5dwioTH13lWWId0yJ5MXiuBhUVU=	\N	f	del_1-6.160				f	t	2017-10-25 20:10:28.43297+00
2945	pbkdf2_sha256$36000$zcOfKyIprjmK$6v9EVwDs8texeScWU/X3De6ncqiIyphl8R69T0XUSJE=	\N	f	del_1-6.161				f	t	2017-10-25 20:10:28.492391+00
2946	pbkdf2_sha256$36000$e6QEPZ9B9mk2$Kke9o+klbMhAFzk5m1jGcZ08zz6SQtY77qIi5IUL2NA=	\N	f	del_1-6.162				f	t	2017-10-25 20:10:28.550777+00
2947	pbkdf2_sha256$36000$njPBMm0zRJXW$xhl6Vl+lfcEicm7miXVnqIUr5WWq06rriYrRGHLxwv4=	\N	f	del_1-6.163				f	t	2017-10-25 20:10:28.610068+00
2948	pbkdf2_sha256$36000$iffXEdRceIb4$DzP2cPt6XYtDnT7rmWn4RZ94sp0FnG00UYnYYI7iFEM=	\N	f	del_1-6.164				f	t	2017-10-25 20:10:28.667305+00
2949	pbkdf2_sha256$36000$OHcMQ6PTl4Gv$0NSbkQVHaxf5+0IHwvvjD6cw7020VhGcKhA1FjchLA8=	\N	f	del_1-6.165				f	t	2017-10-25 20:10:28.726526+00
2950	pbkdf2_sha256$36000$LFe613tT2UNf$pW5/JAJT3N4xang+Gr9HQLzRf0g5OMv60QlHQVUZso0=	\N	f	del_1-6.166				f	t	2017-10-25 20:10:28.781212+00
2951	pbkdf2_sha256$36000$CIoN4QbRHeat$sn7I/E9k8ZqYvM62KDEkPqbWqP+Q+uwvMMb8gpcjPU0=	\N	f	del_1-6.167				f	t	2017-10-25 20:10:28.8355+00
2952	pbkdf2_sha256$36000$b90awZyfuBXe$KyRKjrFJxDMtalpshKggFzLHzNfDxL1q9ZKV+ifRCKE=	\N	f	del_1-6.168				f	t	2017-10-25 20:10:28.889897+00
2953	pbkdf2_sha256$36000$91KQPrK0mRa1$chhqQmerka1ynD246RVpV6JIe/hC69SdB5SBNOXjdlc=	\N	f	del_1-6.169				f	t	2017-10-25 20:10:28.944047+00
2954	pbkdf2_sha256$36000$mSOa1mEP1eQp$BMh5Yyyd6NxqujXoI4D9BTjgljvm/kALSlXchD6tl/I=	\N	f	del_1-6.170				f	t	2017-10-25 20:10:29.026149+00
2955	pbkdf2_sha256$36000$TiRwsrHJu0MZ$Xa9px70mzjGqE1NWs6E0FN8n/VWDXEKxCJiVxMuMa7Q=	\N	f	del_1-6.171				f	t	2017-10-25 20:10:29.081548+00
2956	pbkdf2_sha256$36000$8E1hy4UTozF4$/mVGSG3BjWUZ6VgyKLe2vaHo+lwgSjE7Sj2xHJ6CwaQ=	\N	f	del_1-6.172				f	t	2017-10-25 20:10:29.137072+00
2957	pbkdf2_sha256$36000$KMYupZPIkJNv$cppkgNU81IzTM04OxcMqT+jWRkXGDwR9gNxQWL8oxGA=	\N	f	del_1-6.173				f	t	2017-10-25 20:10:29.192409+00
2958	pbkdf2_sha256$36000$uuWZ8gcNR5P4$8rKPed5u8bpKncR/McYo6D2vuYf0n9PxQHnf1NDybQA=	\N	f	del_1-6.174				f	t	2017-10-25 20:10:29.247153+00
2959	pbkdf2_sha256$36000$BbgCGPopTRgW$1H67IXmvJHhYm7FqY9ZYs4TUx3YlVs7hvbPPx7zaoZM=	\N	f	del_1-6.175				f	t	2017-10-25 20:10:29.302271+00
2960	pbkdf2_sha256$36000$ts5lfW073JXl$wqsuXuLIdgCp7UREc3l/Qy9ZxITlGrBhiriExgk04pM=	\N	f	del_1-6.176				f	t	2017-10-25 20:10:29.358272+00
2962	pbkdf2_sha256$36000$BZZQuSszHGla$b4+eRaPzG9SLO5CRLQ4gg4gGaUacMVyUbuD3wE4Y298=	\N	f	del_1-6.178				f	t	2017-10-25 20:10:29.468877+00
2963	pbkdf2_sha256$36000$A0IMJKInAtL3$Q7SagqL3x6rDu+D4ZQAr2wnjEDrVO0jKDwFTG/OY3/c=	\N	f	del_1-6.179				f	t	2017-10-25 20:10:29.524249+00
2964	pbkdf2_sha256$36000$d4uER3V96K9B$LR6dddPPYnSNOVWqYOkw7nOrycONer+F9c5TzMcmlGM=	\N	f	del_1-6.180				f	t	2017-10-25 20:10:29.580376+00
2965	pbkdf2_sha256$36000$tcSASMhGIeqh$+OHl11Awt5nj3mlU6qsXS0hjh26Q93oQq3iGXQCpios=	\N	f	del_1-6.181				f	t	2017-10-25 20:10:29.634688+00
2966	pbkdf2_sha256$36000$XGpu7vLoeaWL$NaBU/KwYrAGYBqYkkjXRcswMUumUAsyRdtHTZhy5LVc=	\N	f	del_1-6.182				f	t	2017-10-25 20:10:29.689789+00
2967	pbkdf2_sha256$36000$pTxKhiP0jQiX$3ja+zRrLeJ8m3YnGagtVqejFOSQ7Uz5ekXPgMBO7QtY=	\N	f	del_1-6.183				f	t	2017-10-25 20:10:29.745024+00
2968	pbkdf2_sha256$36000$Etobp07Spx4N$ZWmZOiCo+oFX9JJ4B3waL/L05LDGTJLfR+o09lAvhpg=	\N	f	del_1-6.184				f	t	2017-10-25 20:10:29.800572+00
2969	pbkdf2_sha256$36000$8QvAtxjlStYH$8/H591ye62nvP0nqybqNvL5x/8fqrb3OJM4JYXjb1p8=	\N	f	del_1-6.185				f	t	2017-10-25 20:10:29.856043+00
2970	pbkdf2_sha256$36000$oULNMICX6iK0$sxFTcgQ2uvo5qqSTvFxtsGVsNGtiI4Nt+qNr1dBShtc=	\N	f	del_1-6.186				f	t	2017-10-25 20:10:29.911628+00
2971	pbkdf2_sha256$36000$LeMF5u2uEF4n$VCY0FpoYAR6UxdA+zEifM8bUa29WVFZJg7CRBIGzXQA=	\N	f	del_1-6.187				f	t	2017-10-25 20:10:29.965977+00
2972	pbkdf2_sha256$36000$HxqtdLkCfwDt$XolGcB2rPoij84Thr8olFewjnTbB1xpgNBbCl1aOR+c=	\N	f	del_1-6.188				f	t	2017-10-25 20:10:30.020831+00
2973	pbkdf2_sha256$36000$qzGDgsK4J5DX$+7jinj5yFkjUxzvCRY3cqUBZuPOBEiXcLmd3M5H5eXg=	\N	f	del_1-6.189				f	t	2017-10-25 20:10:30.102741+00
2974	pbkdf2_sha256$36000$1mGNc8qqc8GB$WbVNH1dLv3rddfhGflj8BNgxLl4mUgwZrLyV0XZ8oho=	\N	f	del_1-6.190				f	t	2017-10-25 20:10:30.159267+00
2975	pbkdf2_sha256$36000$V9it5zfMUGTB$olvTt+EcpywVhVUHRvpBkJF8RymzWJsqn1GgnZzjUzM=	\N	f	del_1-6.191				f	t	2017-10-25 20:10:30.216114+00
2989	pbkdf2_sha256$36000$a3m8Gfxs353u$QjLBQapaLqjlOm3Ena+PZBG1daHdkehaHAe31uN5PIg=	2017-11-10 07:10:03.282095+00	f	del_1-6.205				f	t	2017-10-25 20:10:31.003979+00
2977	pbkdf2_sha256$36000$YmzPSM37HUUw$ksACIKhi/j18P0ntmnGUBX/WJ9CUCD8D5yZeMETjDY8=	\N	f	del_1-6.193				f	t	2017-10-25 20:10:30.330022+00
2978	pbkdf2_sha256$36000$QwmhUSNcpvc7$9d3+bHhcr82g9l1sxJOKRw0bGnXdmAN9uc1ojlAp858=	\N	f	del_1-6.194				f	t	2017-10-25 20:10:30.386774+00
2979	pbkdf2_sha256$36000$QSm6sXdD2PYt$cBVusSXP56Tcgqscg1XBCPvTWXByGUcUP3Ue/pdSy44=	\N	f	del_1-6.195				f	t	2017-10-25 20:10:30.443281+00
2980	pbkdf2_sha256$36000$9bTYMNjkEmSB$jrAwrqDdjOXZ4tApWjH0hFMS0PQ4Krv1CEtjrsHDrv8=	\N	f	del_1-6.196				f	t	2017-10-25 20:10:30.502209+00
2981	pbkdf2_sha256$36000$DxIyeyQl2fKM$b+v+xDd+ePg83TJPRzToI3edq9LbngmqA3j0HUffSSQ=	\N	f	del_1-6.197				f	t	2017-10-25 20:10:30.558444+00
2982	pbkdf2_sha256$36000$sMzpO0rWhjvv$M5EsGkX19WgYj7QNSpZs+8rg+kXg1XZexJFsMj8nw9g=	\N	f	del_1-6.198				f	t	2017-10-25 20:10:30.614222+00
2983	pbkdf2_sha256$36000$eNtS0F8MrS9E$lMekC7FqFjmvzHqR5Tu9nJaiJJBi3yYptU5+QbYovVk=	\N	f	del_1-6.199				f	t	2017-10-25 20:10:30.669805+00
2984	pbkdf2_sha256$36000$WGKMGyg51xYv$GCXfovceSFY91+qDaRB7sudC7mRszpxJqGhKmCuanXQ=	\N	f	del_1-6.200				f	t	2017-10-25 20:10:30.726058+00
2985	pbkdf2_sha256$36000$yxQdnApea657$1k4WHYADX/p8kiorwx1UFYgH4AA38wOgWvxVE8y8Pho=	\N	f	del_1-6.201				f	t	2017-10-25 20:10:30.781924+00
2986	pbkdf2_sha256$36000$KrllloL62iTf$tbwIh/ETjQYEFtsUvmIvqUYqrIeML0HlJIjRH5fW7yg=	\N	f	del_1-6.202				f	t	2017-10-25 20:10:30.837286+00
2987	pbkdf2_sha256$36000$86ClEeNcQWM6$xgW8LlyZBXFlQNqz07GHxZB00TEFl9QGQYQflshXjz4=	\N	f	del_1-6.203				f	t	2017-10-25 20:10:30.893265+00
2988	pbkdf2_sha256$36000$KaMH4ZXZocvD$xiuRB/9ZjX7QUsP2eupHd8HBL5aABsQhN2Pjop+ieuw=	\N	f	del_1-6.204				f	t	2017-10-25 20:10:30.948814+00
2990	pbkdf2_sha256$36000$JlDaew6NKeYW$mMYbUh379LnWvEaQGGqFw4dtFo3pYBVILINHI98aOk0=	\N	f	del_1-6.206				f	t	2017-10-25 20:10:31.060195+00
2991	pbkdf2_sha256$36000$uosIWjDPeR0J$FdMsjKFZABAaaqIJUrZPDaC5p4mEIVeEfX5xzOnsy98=	\N	f	del_1-6.207				f	t	2017-10-25 20:10:31.143117+00
2992	pbkdf2_sha256$36000$6EDcWHhSqvrj$h6eVJ1KXOPjc4oZuZsf7dVm5PKSSts+Udo8HBBlilqg=	\N	f	del_1-6.208				f	t	2017-10-25 20:10:31.198616+00
2993	pbkdf2_sha256$36000$clv0xO5TP8a6$gUY1e1HsLGKLO6AaD7Xfg94dzA5hGaKyWRx6QF/WhZA=	\N	f	del_1-6.209				f	t	2017-10-25 20:10:31.255072+00
2994	pbkdf2_sha256$36000$cOmbLqOZNMua$o+eKftPyXqBY9uew39eTVqEe3fRK0iFmvYKg17YjtM8=	\N	f	del_1-6.210				f	t	2017-10-25 20:10:31.311394+00
2995	pbkdf2_sha256$36000$td8PMysrmurN$xCimKEbFbTyXcq+dcblAzlw9br8i3A5w6MRqB9yAjxA=	\N	f	del_1-6.211				f	t	2017-10-25 20:10:31.366899+00
2996	pbkdf2_sha256$36000$U67nrScLQxDU$VNCif5m09oQbmf1gIt02Oqfhx4ymlfP0BQbMr7cmvX8=	\N	f	del_1-6.212				f	t	2017-10-25 20:10:31.422115+00
2997	pbkdf2_sha256$36000$XtkC6iLPC4hv$Z02z5Qr9vPuFfAUI1+uVY0l8L7zNBIZL8P6fgQLQ2po=	\N	f	del_1-6.213				f	t	2017-10-25 20:10:31.477603+00
2998	pbkdf2_sha256$36000$rTOD8y99GO1d$6TfpBaBGUQjUiqs1El6MHu3PHj0yZVXK5FExPalGdx8=	\N	f	del_1-6.214				f	t	2017-10-25 20:10:31.533075+00
2999	pbkdf2_sha256$36000$HJqVbxi5BJkR$xrSx0a5Uy9Zss/xSS32q097+uPc2LIty0frr61ANM2w=	\N	f	del_1-6.215				f	t	2017-10-25 20:10:31.588443+00
3000	pbkdf2_sha256$36000$HmSjOqAWV8wt$ddgQddYp3mCaXhsn7jhexdLd/NP6TtPUWEO4/4j/lwg=	\N	f	del_1-6.216				f	t	2017-10-25 20:10:31.643661+00
3001	pbkdf2_sha256$36000$a9qQquNoEdiI$3Eu2k9EYcdkpJG7lJqjfaw7JlGlQ8EmC97vq/J3DLmk=	\N	f	del_1-6.217				f	t	2017-10-25 20:10:31.699175+00
3002	pbkdf2_sha256$36000$SnLxZyfUqFp9$1RahkVZAHGZuzz1gg5n/v0ZYdNpMoSbpk45oIwL1YpI=	\N	f	del_1-6.218				f	t	2017-10-25 20:10:31.75492+00
3003	pbkdf2_sha256$36000$KZg1zLCzNImm$HE7EIAPD4GTxVO7mQlKRI7eBnYt4CPiBIHPclNqeK58=	\N	f	del_1-6.219				f	t	2017-10-25 20:10:31.810408+00
3004	pbkdf2_sha256$36000$0z5e3C44dDcW$XiOmws23RQ+fYGcTsUOJP0A4kynwRPH3C/M0ollYAlE=	\N	f	del_1-6.220				f	t	2017-10-25 20:10:31.865288+00
3005	pbkdf2_sha256$36000$ramqL5aiBxr7$chQUtus8mxp161HvirndMaOs5h1ZFEFAocia5iPBoAA=	\N	f	del_1-6.221				f	t	2017-10-25 20:10:31.921114+00
3006	pbkdf2_sha256$36000$q9q2JLP0e4mx$a44UTnqBnAAWYyCY4kYlaTuKR3G0Eok7KmysPX+zvaA=	\N	f	del_1-6.222				f	t	2017-10-25 20:10:31.976742+00
3007	pbkdf2_sha256$36000$X3zz2GcxDmYX$rpL4fSOMFBK2BEi4tP4IQd4JZ3ffbPP5amW0JDn0Xc8=	\N	f	del_1-6.223				f	t	2017-10-25 20:10:32.032622+00
3008	pbkdf2_sha256$36000$sLAlOYenAWwJ$atZ6KeItRvdUu8f7eHkm6MjoSITPclgm4zDvywRoBdo=	\N	f	del_1-6.224				f	t	2017-10-25 20:10:32.088338+00
3009	pbkdf2_sha256$36000$RF6xMYRgXvJU$qcyEuptgRymtoJmrLyx4X7uCOLpXO+86an0I6K6t1O0=	\N	f	del_1-6.225				f	t	2017-10-25 20:10:32.162332+00
3010	pbkdf2_sha256$36000$dGe2EzfImIcS$o9FNVIYqYrH72vCpfTSVmAxcGZpva5K1Q8kirS5tjQ8=	\N	f	del_1-6.226				f	t	2017-10-25 20:10:32.223442+00
3011	pbkdf2_sha256$36000$xUoFwDl628ZA$rUY6tH0KEZQV1uA0Net0NuEazaxJLxd9BWR2BHEgmOY=	\N	f	del_1-6.227				f	t	2017-10-25 20:10:32.278813+00
3012	pbkdf2_sha256$36000$3agLTIJIAIqX$89r3MuY/I0M7ru730Iie9tAip+zoU6RZBv5G5et+AC0=	\N	f	del_1-6.228				f	t	2017-10-25 20:10:32.334412+00
3013	pbkdf2_sha256$36000$5JEY56GMn5wF$xeNi23mq+Nxs57AtR+PEXg7Dyx+wUjPXYnO27BWdsK0=	\N	f	del_1-6.229				f	t	2017-10-25 20:10:32.389515+00
3014	pbkdf2_sha256$36000$RtnG5vp6pIAc$tG4SLzBJesbQsaOGf3lPLHsccY4wQGdxGce1jXZ1gFg=	\N	f	del_1-6.230				f	t	2017-10-25 20:10:32.444993+00
3015	pbkdf2_sha256$36000$VSlsr2RSx7Rc$Is172Z+yeygl9tbscNCe0nkakFVGdbX+IodA/fQilaI=	\N	f	del_1-6.231				f	t	2017-10-25 20:10:32.500593+00
3016	pbkdf2_sha256$36000$fn97fejVg5NR$9hyFaTgNULJDA+kjW1wtalymDb3zphMg2v63cWiCBy8=	\N	f	del_1-6.232				f	t	2017-10-25 20:10:32.555128+00
3017	pbkdf2_sha256$36000$RhkgQWat4hcu$pShQhrCuHembSMm23fZUkHSP2fM8HZ+YDaL/ygWjJu4=	\N	f	del_1-6.233				f	t	2017-10-25 20:10:32.610352+00
3018	pbkdf2_sha256$36000$VrpaWAs4H3sV$ZkGY3dJAS1vxFyocCPf67xY1FK+VtQlM2qe6b3pK1CE=	\N	f	del_1-6.234				f	t	2017-10-25 20:10:32.665638+00
3019	pbkdf2_sha256$36000$xI0FG6nSikSK$mTYf8aBTeSMkHlIH4ZqS6fMR76tS7oEkXUzMXwvsUA0=	\N	f	del_1-6.235				f	t	2017-10-25 20:10:32.722154+00
3020	pbkdf2_sha256$36000$Fk3oTMsBnILH$m3F/fWge467rlK6JPkderMWngb+/sPB6nYot3aVtBWU=	\N	f	del_1-6.236				f	t	2017-10-25 20:10:32.781719+00
3021	pbkdf2_sha256$36000$IpMjMaMOCW8a$Kb+vCRgw1VZ7t4zos7tTlbyTje7/nIRfl3c8oOCz+qk=	\N	f	del_1-6.237				f	t	2017-10-25 20:10:32.838211+00
3022	pbkdf2_sha256$36000$WDEPhDt9cIl5$54h7qtIplvq3YlEA5V21A6X+z+eBuPdUSKy0894kK6I=	\N	f	del_1-6.238				f	t	2017-10-25 20:10:32.894035+00
3023	pbkdf2_sha256$36000$K42v0hVKIi5o$aLD/ZSX21d54TJnc6KmZIlPZnoNLSzv3AOeENxJwfsc=	\N	f	del_1-6.239				f	t	2017-10-25 20:10:32.950625+00
3024	pbkdf2_sha256$36000$tdePCRUPPgnu$urtM1JvoslpKDZpWj5k/41IvyRGz5/4aWF9CALpAwM8=	\N	f	del_1-6.240				f	t	2017-10-25 20:10:33.007125+00
3025	pbkdf2_sha256$36000$yDXvkshFlq4B$o2oomNWnGvvmMOjhKt0LxovA56kIyQOget3VTVX5Z+g=	\N	f	del_1-6.241				f	t	2017-10-25 20:10:33.063363+00
3026	pbkdf2_sha256$36000$qHRdPDQBsBFp$Gu+VO2sNqmdmZfLjot8D/6H8w3Aa9RWECpAYoxwY/FY=	\N	f	del_1-6.242				f	t	2017-10-25 20:10:33.119251+00
3027	pbkdf2_sha256$36000$ef6F2Em8QOPK$yLAANl4B9b6wsWa8wNn0sIuPVWownG2HQ6fDK1INn2E=	\N	f	del_1-6.243				f	t	2017-10-25 20:10:33.174643+00
3028	pbkdf2_sha256$36000$opHDW7LylvnU$wMnSBaSPYIpTd2lg++UNezSmIc+teHjBqJYNpCJtD7I=	\N	f	del_1-6.244				f	t	2017-10-25 20:10:33.282964+00
3029	pbkdf2_sha256$36000$s0iRTkTQ13ix$0I8imTG/C5Hd+P+aX0xCmR01x0lmiZfIFxkvM5glbCs=	\N	f	del_1-6.245				f	t	2017-10-25 20:10:33.337568+00
3030	pbkdf2_sha256$36000$HLbLF3g0oiKv$ycviz/auREJBehBX3Df7+gM6tZaZcgzba4yMXZ+TCoY=	\N	f	del_1-6.246				f	t	2017-10-25 20:10:33.39232+00
3031	pbkdf2_sha256$36000$baGzJ6krDfgr$IHUuPlc3qANmHnPWz06TJwU9/xn2LtYkQpj52yQTsFg=	\N	f	del_1-6.247				f	t	2017-10-25 20:10:33.448+00
3032	pbkdf2_sha256$36000$si4NUXBvcuAZ$wysvps3uPGQG9+wuIz3n+ca4Ur1M734p7AK/0Uv02l8=	\N	f	del_1-6.248				f	t	2017-10-25 20:10:33.508335+00
3033	pbkdf2_sha256$36000$LBce53xPCdPa$llFXzwSsSOQ4Ir1lQhBxLiykYSoA1vaFigZZtTB73fM=	\N	f	del_1-6.249				f	t	2017-10-25 20:10:33.565148+00
3034	pbkdf2_sha256$36000$msWYbFIbbpwn$Zk34bR/cYoIjnNd9BnW8UdlkULegt22olQtcWoK5tj8=	\N	f	del_1-6.250				f	t	2017-10-25 20:10:33.622282+00
3035	pbkdf2_sha256$36000$o0yBm8HNGajp$vC6jWqhnWfSig2tOposEIOxOl8piD9/mCl3CR1/AvZM=	\N	f	del_1-6.251				f	t	2017-10-25 20:10:33.678867+00
3036	pbkdf2_sha256$36000$LauoeLE6VUs1$wve6JGsU+wzzdY+p13BnBbzrgvYvFHEkXGzOTlkN7F8=	\N	f	del_1-6.252				f	t	2017-10-25 20:10:33.736427+00
3037	pbkdf2_sha256$36000$v22DpJZUtX5X$QKDTsxgt+MXrlhdyPmNVuiwczq99H4h5PcpKQzDlqOU=	\N	f	del_1-6.253				f	t	2017-10-25 20:10:33.792023+00
3038	pbkdf2_sha256$36000$ZkXDGM7AQEJU$YbHNiLGUs706j7zxMASQ4lpCD29F+n7CRq/UbzQvqA8=	\N	f	del_1-6.254				f	t	2017-10-25 20:10:33.856045+00
3039	pbkdf2_sha256$36000$rh29KM3yemTy$g6tSlffDSFt2Udp4CH8MR1PvMwSTHO1zAaWE/6EJNH8=	\N	f	del_1-6.255				f	t	2017-10-25 20:10:33.911537+00
3040	pbkdf2_sha256$36000$QRikaAlzIciQ$vBAgbNUfHYyPiFQst3bMRIJ1yFrH1kogaCluimt0OtA=	\N	f	del_1-6.256				f	t	2017-10-25 20:10:33.967313+00
3041	pbkdf2_sha256$36000$0z4JeGR2waNI$supTzSL6ifW+1MQfMrtTejv/XZZOdRGrnYH9aLNrT9Y=	\N	f	del_1-6.257				f	t	2017-10-25 20:10:34.024619+00
3042	pbkdf2_sha256$36000$cM9fh8vLJ2NC$GMZ9M5KXOTL3TUmGrjIz1I+MfYZt/mOCA+C4bJAVAbQ=	\N	f	del_1-6.258				f	t	2017-10-25 20:10:34.080866+00
3043	pbkdf2_sha256$36000$ZqiluFl6qGzr$XA7R0H0rD7IHXPq9fCc2yyoBWphHPuUdRyqjNbbPsd0=	\N	f	del_1-6.259				f	t	2017-10-25 20:10:34.137204+00
3044	pbkdf2_sha256$36000$PQkxBHMR8etr$0/VkUfuTYUgUgkOCF9mopckzC5I5/5nmjoKMSBOAGNY=	\N	f	del_1-6.260				f	t	2017-10-25 20:10:34.192594+00
3045	pbkdf2_sha256$36000$HtDTKueWKFtW$i46KPE48INMV+EFVL3z52RXXLVJj+88qgEY6S79Yue8=	\N	f	del_1-6.261				f	t	2017-10-25 20:10:34.249314+00
3046	pbkdf2_sha256$36000$JUNjM1YLLm5L$sWVBoIahAOoGKABPhgJYbwuHLg2tKo7enC7LI9bXJY8=	\N	f	del_1-6.262				f	t	2017-10-25 20:10:34.333905+00
3047	pbkdf2_sha256$36000$euv9bUQ9TVDi$8QiqQLdwTcPtJv8RTL+J4tEcRFitEfTY80MBl/3rBHI=	\N	f	del_1-6.263				f	t	2017-10-25 20:10:34.390466+00
3048	pbkdf2_sha256$36000$zLOSVI3Mu0SY$dxbAt2tfTkdmA9keNl5qeayGR2oh6w7P4hmq/tvu6LQ=	\N	f	del_1-6.264				f	t	2017-10-25 20:10:34.446946+00
3049	pbkdf2_sha256$36000$RmwUvLVZauaw$bJlLdPh21HlEIqHJeMvdOLgORljV6CFdZvk7JTdLBHo=	\N	f	del_1-6.265				f	t	2017-10-25 20:10:34.502612+00
3050	pbkdf2_sha256$36000$Cq6Wplt36qm2$NuAhoCqlcKYmXCbikJgCh0yKhBP3z/n3JRi6CRDlgaQ=	\N	f	del_1-6.266				f	t	2017-10-25 20:10:34.558919+00
3051	pbkdf2_sha256$36000$9Q0bFqwpvOHM$Pn0sqQGBuJqV1wzCbIQMTU+IbmxY9I1iKUPPnjon1lg=	\N	f	del_1-6.267				f	t	2017-10-25 20:10:34.614451+00
3052	pbkdf2_sha256$36000$ucZgND1SWRlH$F7Pim0TAbECBWqQSRN3pFNCIyEXMaOKsyOTFkEE5Qrc=	\N	f	del_1-6.268				f	t	2017-10-25 20:10:34.669548+00
3054	pbkdf2_sha256$36000$EChxpICl0DnR$+BXxiVydwhrdHsQbBMl892ZBntb889CQT92osz43KUU=	\N	f	del_1-6.270				f	t	2017-10-25 20:10:34.778461+00
3055	pbkdf2_sha256$36000$s6FISWsKJxJG$FxRa9M7JsC0XYE2uCIBBMgEBs+9ZmY70mHX1wZBcnEI=	\N	f	del_1-6.271				f	t	2017-10-25 20:10:34.834314+00
3056	pbkdf2_sha256$36000$qjQfcMKi6i9e$U0yaQ/eU8+aPAcbSMDXBXbeo/UxiXnrrGZg5yFA9nYU=	\N	f	del_1-6.272				f	t	2017-10-25 20:10:34.889823+00
3057	pbkdf2_sha256$36000$D6uXILZNy5Xb$NDdIrcwYudNulzsWHozpiXin1Z9j0RDxiWkNaO8iZEg=	\N	f	del_1-6.273				f	t	2017-10-25 20:10:34.94455+00
3058	pbkdf2_sha256$36000$9BmaE0HIrWAJ$ecHAvG6xnxBAMCU7RMPHPsXWxrZuzkTAZALz0CtfZwo=	\N	f	del_1-6.274				f	t	2017-10-25 20:10:35.000394+00
3059	pbkdf2_sha256$36000$4nzXlsaN3AEO$dRtZ/QYnw5/UI45wKjGS0SnEa82FqVa6Ais7cUdz40M=	\N	f	del_1-6.275				f	t	2017-10-25 20:10:35.056919+00
3060	pbkdf2_sha256$36000$XknIuYXtCJoJ$lY1PPui1k8YSChKBKXQlVEwiMWPzLSov33KVti1iKXA=	\N	f	del_1-6.276				f	t	2017-10-25 20:10:35.112972+00
3061	pbkdf2_sha256$36000$SnAk6yXnwcop$nSH9DkoUh9K3BCQ6mc/4n0IPLmNxImURGHbWK2JSvxA=	\N	f	del_1-6.277				f	t	2017-10-25 20:10:35.169217+00
3062	pbkdf2_sha256$36000$m5onvhxvx3TM$ardzugWMrczshaylCLVRfmpCVRQ21AMaCZo9mHweQ7k=	\N	f	del_1-6.278				f	t	2017-10-25 20:10:35.225577+00
3063	pbkdf2_sha256$36000$F2TeV9vAqlEp$VaG2UvIWykTY1CnCl7uCnbrDratElzmt33tj74Zogr4=	\N	f	del_1-6.279				f	t	2017-10-25 20:10:35.280977+00
3064	pbkdf2_sha256$36000$Cd57F7T16YMA$o1mr/QmVaHlklBhZIntXaQUNCV6tAbBu34f8UZ9rL1I=	\N	f	del_1-6.280				f	t	2017-10-25 20:10:35.362682+00
3065	pbkdf2_sha256$36000$doR3N1k5Bvf6$3gg6QnuIKCG0Ce1rN6t5viULzT0hXvjy+jFXWDvkvvg=	\N	f	del_1-6.281				f	t	2017-10-25 20:10:35.419999+00
3066	pbkdf2_sha256$36000$zCrpSKD8si8F$XZ+uMT3Ukdlit2Dgx1D27fPuzrTPRb/kQwm3zoH3Ik8=	\N	f	del_1-6.282				f	t	2017-10-25 20:10:35.477585+00
3067	pbkdf2_sha256$36000$q1uQyACY7JVy$Zqu2v6grQAUxmzAoT4YQJjN3n0b/Z/HCriawlkQpvnc=	\N	f	del_1-6.283				f	t	2017-10-25 20:10:35.53233+00
3068	pbkdf2_sha256$36000$tnFW3EwVgV4i$ITcLiGHUL8BGsmLfOgKu9Hf2GqVNYoJa1duWKd74bW4=	\N	f	del_1-6.284				f	t	2017-10-25 20:10:35.587474+00
3069	pbkdf2_sha256$36000$nAJAmxK6m3pd$YRmurdUfuT6lWrM50/4aNBeVAagObZKL0xvTXZqbFh8=	\N	f	del_1-6.285				f	t	2017-10-25 20:10:35.64252+00
3070	pbkdf2_sha256$36000$iefZjSsDem60$lHYJrhVHWuB7Mcq59c/K1xoeUSMWtMZffOOYSBI1x1I=	\N	f	del_1-6.286				f	t	2017-10-25 20:10:35.696805+00
3071	pbkdf2_sha256$36000$bk987P9r1cBN$eneWdxYRn35ioXpUaiXoXnupCUNzaslf2dYzv09xNb0=	\N	f	del_1-6.287				f	t	2017-10-25 20:10:35.752252+00
3072	pbkdf2_sha256$36000$joUrBV8HuejY$dj9tUq/FA67f96ewXUdxiA7+1NRd83cdIjBa7R09uLQ=	\N	f	del_1-6.288				f	t	2017-10-25 20:10:35.807836+00
3073	pbkdf2_sha256$36000$2CcldFQ9YyTm$V8TD21fbNQ5JEVqfdm8GKwZesw5YSk60HZ64PiQuqGo=	\N	f	del_1-6.289				f	t	2017-10-25 20:10:35.863495+00
3074	pbkdf2_sha256$36000$jK2biqVkc1Uu$BZPhmTs5Tr8Yniwc6khxaYqjJ6f+0DSlv1gs6tH+G5I=	\N	f	del_1-6.290				f	t	2017-10-25 20:10:35.919283+00
3075	pbkdf2_sha256$36000$bbt5w0Ivvk3Z$8oLDLMVGF34zKi4kGwa/N8WG0dh99JaWBnvu7xpy7gI=	\N	f	del_1-6.291				f	t	2017-10-25 20:10:35.974723+00
3076	pbkdf2_sha256$36000$tljOaYUtx4yN$BXkq2Vpz2NaNH6lqeuo2o65AmMXJbvsu9Of1JHB0u4w=	\N	f	del_1-6.292				f	t	2017-10-25 20:10:36.030081+00
3077	pbkdf2_sha256$36000$juwftSkLTKqK$3/pdWVfxk5WScuV6v6h8P0nz10JTC7fx9kbgJ9Lyhz4=	\N	f	del_1-6.293				f	t	2017-10-25 20:10:36.085306+00
3078	pbkdf2_sha256$36000$unMSBVnCx57v$gZtp+ZUlUqNhmiijljqohU4y9tKI9CjZ75tkn0kaE5Q=	\N	f	del_1-6.294				f	t	2017-10-25 20:10:36.141363+00
3079	pbkdf2_sha256$36000$KZbUBOfyupJL$lur9xgTj5JvT4ZqCo0DTaaWlHZE/sxyX+0uOvUQNPEA=	\N	f	del_1-6.295				f	t	2017-10-25 20:10:36.196521+00
3080	pbkdf2_sha256$36000$I2aF3C7Pg0o8$baOIaFNBTR0eYStGlXybUmR2juybg++rI5tGIv0VMJU=	\N	f	del_1-6.296				f	t	2017-10-25 20:10:36.251796+00
3081	pbkdf2_sha256$36000$io2aaOyzdK8B$pAL5GueHAA8o3HyuxZkugbMKLJLfZfeNuDdsVTbxI68=	\N	f	del_1-6.297				f	t	2017-10-25 20:10:36.307396+00
3082	pbkdf2_sha256$36000$Dt9OFUFdM1oW$C7kvCfGoqONp2001g+wkuG+wQpm5ccwLaT4MQK/raG4=	\N	f	del_1-6.298				f	t	2017-10-25 20:10:36.373266+00
3083	pbkdf2_sha256$36000$E2RzWltKQR8E$qrWjMq4Wf5LR9HSMS/Prb5otWefQBGYpwBhlQX5WR+c=	\N	f	del_1-6.299				f	t	2017-10-25 20:10:36.44572+00
3084	pbkdf2_sha256$36000$7BnFP3ZOIVoT$CAPzjBV0F8GVdlJCehFp41omt92T3EESw8byVUB9HOk=	\N	f	del_1-6.300				f	t	2017-10-25 20:10:36.506126+00
3085	pbkdf2_sha256$36000$pSU79e5phqxi$F5D0PA2R9IBpyVT3ZIlsfl8MlxNIi6XEHpIaI2Bnd8Y=	\N	f	del_1-7.1				f	t	2017-10-25 20:10:36.562166+00
3086	pbkdf2_sha256$36000$S0etTxaqSpx4$CikWz3VnO5wvZhkeM/WPL2PzwjxUcYmR/mgyYzZGji4=	\N	f	del_1-7.2				f	t	2017-10-25 20:10:36.617502+00
3087	pbkdf2_sha256$36000$1URkyBNuZvTF$NFq327+VKbnkIb3YHPSJsVT93t8oa5C5QMbWvdIKuGU=	\N	f	del_1-7.3				f	t	2017-10-25 20:10:36.673192+00
3088	pbkdf2_sha256$36000$Jtnl6tCSGnlS$8yLnlq2zcl7Xo8aI4/dH84nXG++WuPnlBTzuFiWApGg=	\N	f	del_1-7.4				f	t	2017-10-25 20:10:36.729573+00
3089	pbkdf2_sha256$36000$CSIMdGkBEsBg$5gVvmjnDzv5ZFfRFMe5zbGAIaBd++ho9Omklqe0INOU=	\N	f	del_1-7.5				f	t	2017-10-25 20:10:36.784742+00
3090	pbkdf2_sha256$36000$gAqSNsXLnZwB$tLcdwtsgn6fC4DjtUBqxfhUTOnEzhLQqYBdrrD/U2UQ=	\N	f	del_1-7.6				f	t	2017-10-25 20:10:36.839275+00
3091	pbkdf2_sha256$36000$i89RipoCYk6d$3N51WSE+06m67oAY1aeL1QqHsCzu89ZvVtWMsKSCfRk=	\N	f	del_1-7.7				f	t	2017-10-25 20:10:36.893924+00
3092	pbkdf2_sha256$36000$JmmuWsGzkFP9$dOZQrc+kub0zaTBnPSMVOTiUP5LvTNw1y0ORlKQVO8A=	\N	f	del_1-7.8				f	t	2017-10-25 20:10:36.94803+00
3093	pbkdf2_sha256$36000$16b1JFCPRjub$TSoGfNexqalxTTyRgjP5pputW7RUvHwtY6tzz14oppQ=	\N	f	del_1-7.9				f	t	2017-10-25 20:10:37.003601+00
3094	pbkdf2_sha256$36000$ol7iePeCEgpP$y+csfb21msFoeEH8XWApNgeEWeQybf08T41XnkXL8HA=	\N	f	del_1-7.10				f	t	2017-10-25 20:10:37.057862+00
3095	pbkdf2_sha256$36000$395CKfibqMHk$zABrqVgTLmJ0XfV2usUdQ680p03u2k1kTff5amTqjvY=	\N	f	del_1-7.11				f	t	2017-10-25 20:10:37.112557+00
3096	pbkdf2_sha256$36000$qJAeyn1z8NbV$mjvWLbBObhTUXmA31vzI6jR8PmRBd31M2RsvepxNGZo=	\N	f	del_1-7.12				f	t	2017-10-25 20:10:37.167502+00
3097	pbkdf2_sha256$36000$q0q8iCYNyyc9$aFR8o1fmOwIbf4bU3uyiubnBCLF7IaL5GllvD6BNt7U=	\N	f	del_1-7.13				f	t	2017-10-25 20:10:37.222157+00
3098	pbkdf2_sha256$36000$UJ7teOSp9Pzq$yUyKzEIl9wxPF7q0HyivaHv/7095pEq/gW7qzz7ZRrw=	\N	f	del_1-7.14				f	t	2017-10-25 20:10:37.277479+00
3099	pbkdf2_sha256$36000$tMwsdFFP5MwJ$779EEhX5dQUvDDlDVVmNYvbCUrRSHQreKATE32CCgYw=	\N	f	del_1-7.15				f	t	2017-10-25 20:10:37.332129+00
3100	pbkdf2_sha256$36000$FrLcZqJzHkUf$WnyZB4z2i5ikm/MLWaHuwV78yt1MCX2b/kZfiJnKZMo=	\N	f	del_1-7.16				f	t	2017-10-25 20:10:37.386934+00
3101	pbkdf2_sha256$36000$A3mJL4CFKyCR$C70EXDwK1bIJsdnhjgXQQ4xKSKaujBMxLNkD9JaXDb4=	\N	f	del_1-7.17				f	t	2017-10-25 20:10:37.473201+00
3102	pbkdf2_sha256$36000$TBzymuV85ZuY$tCWJvQcksk6lE7bSq6/DVvuubNHlJKDPRmRQUa3vmfA=	\N	f	del_1-7.18				f	t	2017-10-25 20:10:37.528932+00
3103	pbkdf2_sha256$36000$3H80awySmVXe$us+nUyIcmSbhuW4FBCVUemJ3vRKML+fcRM8U7c0Ix8E=	\N	f	del_1-7.19				f	t	2017-10-25 20:10:37.584104+00
3104	pbkdf2_sha256$36000$t751CUxgmrC2$4PbbniDkypl9SpX6mo3xAz+kknuRSTaa5GCFLTTBClQ=	\N	f	del_1-7.20				f	t	2017-10-25 20:10:37.63935+00
3105	pbkdf2_sha256$36000$9GQvOPV0EhyO$7tZ+rAliZldoIWRmMtdqt9rztctE9pooxzcD8LDED94=	\N	f	del_1-7.21				f	t	2017-10-25 20:10:37.69466+00
3106	pbkdf2_sha256$36000$tNx6ginsz5kO$asKmOyaLRP828115BMwP8ECn4Om6e/N8oIkDZDR4zKY=	\N	f	del_1-7.22				f	t	2017-10-25 20:10:37.750455+00
3107	pbkdf2_sha256$36000$AWccEETQu7GY$OCnZcMo2i3lir2FFYfBMKubpQ1wMfMqcD3AvENzHEgs=	\N	f	del_1-7.23				f	t	2017-10-25 20:10:37.804518+00
3108	pbkdf2_sha256$36000$BpFmP8LwPQ2y$5KVyXJG17KqyIhBwrBtnXO7YENX0F69I1Qa/qP8lR88=	\N	f	del_1-7.24				f	t	2017-10-25 20:10:37.858738+00
3109	pbkdf2_sha256$36000$XzIulJ1UZEeb$ZWq05hNbiaei/vpswlRLexN7fpL2gtWiJC2vdcQyvvI=	\N	f	del_1-7.25				f	t	2017-10-25 20:10:37.91306+00
3110	pbkdf2_sha256$36000$a4Vhiqsg0gWL$X5Gk5zZ5OmY0LFi+Qo5JTYh25Yv1Ma0F1OZMUTrFw/g=	\N	f	del_1-7.26				f	t	2017-10-25 20:10:37.967853+00
3111	pbkdf2_sha256$36000$fv72HRjedeOQ$syLYHGN/GbWpP5QEI3+gLwzCoIJXiDsydzRCftCC9Hg=	\N	f	del_1-7.27				f	t	2017-10-25 20:10:38.023367+00
3112	pbkdf2_sha256$36000$zzme4D6209w8$e5AuoP8krz+KJz/bhx+NN0X770EHfwtXdcIyEpn2b8o=	\N	f	del_1-7.28				f	t	2017-10-25 20:10:38.078037+00
3113	pbkdf2_sha256$36000$lpX4ple0P1rm$60fkdLx2LLKUFlWxwJT5PkJ7BNYzdaZhZ9goall745E=	\N	f	del_1-7.29				f	t	2017-10-25 20:10:38.133195+00
3114	pbkdf2_sha256$36000$EIeOEC8WMXAO$pP5cdnZGJGE2rZYO8HtWQCZb/dGs6A9iHkJc0Hq+xmU=	\N	f	del_1-7.30				f	t	2017-10-25 20:10:38.188401+00
3115	pbkdf2_sha256$36000$LVhBFJSE0yzR$7L2BGgHmfAAFyAcy5ueCD/KC/rBb8B9D7nkzLLIN9GA=	\N	f	del_1-7.31				f	t	2017-10-25 20:10:38.24326+00
3116	pbkdf2_sha256$36000$HVGSTocCFCv5$jd2/3UzGmzKqeW5KO4uUNTt2nYQtXl9vrNt9AluNneI=	\N	f	del_1-7.32				f	t	2017-10-25 20:10:38.297839+00
3117	pbkdf2_sha256$36000$cVnk72i1yYtD$GS3xGEvv16B1ePyt0AFNbA/HEN0oXXz8MDIM9hrbYRw=	\N	f	del_1-7.33				f	t	2017-10-25 20:10:38.352698+00
3119	pbkdf2_sha256$36000$ZxUqaz2zEjEN$V56kaVJ6VJ//1/el31imXm19NhgKCM4K/+pr07E+J8s=	\N	f	del_1-7.35				f	t	2017-10-25 20:10:38.469034+00
3120	pbkdf2_sha256$36000$0kyZUUsLxOXV$FqT06oXSxG20Lr2f4EnYMusvsPTNgzpK09P4RqIeMHs=	\N	f	del_1-7.36				f	t	2017-10-25 20:10:38.543433+00
3121	pbkdf2_sha256$36000$Jr51o73tyjFe$mDt8Zt7TXykE4SlguwKMiLD6iFdFzjuXqeG2vJhWUHc=	\N	f	del_1-7.37				f	t	2017-10-25 20:10:38.598159+00
3122	pbkdf2_sha256$36000$TBGhwKG9GrjI$tx51yeQ3QffEIPjDUNSEpqm21RrJQxypVvyya8f5HKg=	\N	f	del_1-7.38				f	t	2017-10-25 20:10:38.652579+00
3123	pbkdf2_sha256$36000$JX6uAn8HH10S$O+Qf9+cn7KRixq0CEqILn64ejs6Toku269RWoCdRZNY=	\N	f	del_1-7.39				f	t	2017-10-25 20:10:38.70683+00
3124	pbkdf2_sha256$36000$rQZEAnU2ISrt$XK1EzqWTJkwBysphZVHrauQhili97SGQUIrXU8rDmbk=	\N	f	del_1-7.40				f	t	2017-10-25 20:10:38.769998+00
3125	pbkdf2_sha256$36000$0zws4VLoKyUR$yWMi70/sT5FCexZ28ef0oisHBPRF0NHi8FLihiowmUU=	\N	f	del_1-7.41				f	t	2017-10-25 20:10:38.917552+00
3126	pbkdf2_sha256$36000$sihmPPAoVKMW$8zOe5EcYTL+9nHZhS93frquzuHkWKFUC18tv+9r9h+0=	\N	f	del_1-7.42				f	t	2017-10-25 20:10:39.058878+00
3127	pbkdf2_sha256$36000$bdv7Qvsa238I$iX/82z2CagL2fgQTsF9Oq1qjMtF8wth4Y3yi4f9/AhQ=	\N	f	del_1-7.43				f	t	2017-10-25 20:10:39.200792+00
3128	pbkdf2_sha256$36000$knGUs9yqoc3U$Ui//QDeHj5u4fnkoStzWwJfPiQtSrL1AZMslfNdoHdE=	\N	f	del_1-7.44				f	t	2017-10-25 20:10:39.345054+00
3129	pbkdf2_sha256$36000$xfATzrxjYgVO$1KHAMtqSEfWb2Y0EMtA6COUrXGgEsxjAhHOIOxEqtSU=	\N	f	del_1-7.45				f	t	2017-10-25 20:10:39.489445+00
3130	pbkdf2_sha256$36000$kBSmDywC9Xft$srhUCZSWD5YuLRYYS/ySF6R+PK/Mm+Ozc2fR/PcOSco=	\N	f	del_1-7.46				f	t	2017-10-25 20:10:39.71947+00
3131	pbkdf2_sha256$36000$WsLhpkE38Nxm$5FhLfUMe/x5GS0/YvsIxadKRT7P2CkSFg+ChqJwjYXM=	\N	f	del_1-7.47				f	t	2017-10-25 20:10:39.860588+00
3132	pbkdf2_sha256$36000$SOXnwzvOavPB$AqMoY3euaOPCc+lh6bCwTnAaZ9shVkf0GLh5VelCAd4=	\N	f	del_1-7.48				f	t	2017-10-25 20:10:40.004256+00
3133	pbkdf2_sha256$36000$r7WCtPpjZ5CS$FmNER+LYOk4orXVskH080pjO5p5A9b+KL5bcZdNm7Tc=	\N	f	del_1-7.49				f	t	2017-10-25 20:10:40.146424+00
3134	pbkdf2_sha256$36000$ah4taCYMhqhJ$Gfe9uuT1jmQVgfpqOjq/pa85rlocF4CqeP1O1Iq4kLU=	\N	f	del_1-7.50				f	t	2017-10-25 20:10:40.289443+00
3135	pbkdf2_sha256$36000$0jZgPky2QJi7$gI2xK62tUapRIcMPXRMiv+v2UoCIXUvTvyBmRYI6zO0=	\N	f	del_1-7.51				f	t	2017-10-25 20:10:40.432345+00
3136	pbkdf2_sha256$36000$B1CpLMYKwbJy$gKTM1he30o96c14Lxz46bM/cyuYex21ct56Rsc3Xo3o=	\N	f	del_1-7.52				f	t	2017-10-25 20:10:40.565562+00
3137	pbkdf2_sha256$36000$L9fsI1jtHVj1$Mcw/VHRGLSQAjIX7E2WoOwF2s5JWl1TjYx5bviIHtWk=	\N	f	del_1-7.53				f	t	2017-10-25 20:10:40.689074+00
3138	pbkdf2_sha256$36000$35Vibg2u1SJW$JlBXJJH/vrfRTBFFmX43N8jVA9btp5p/pWBNVnOHQDA=	\N	f	del_1-7.54				f	t	2017-10-25 20:10:40.842576+00
3139	pbkdf2_sha256$36000$IgLC1nfL27T0$uQ3AOnyMWeAS/dYSpH0461ejEjMvvyFR31v1o0CVHZ4=	\N	f	del_1-7.55				f	t	2017-10-25 20:10:40.955918+00
3140	pbkdf2_sha256$36000$KXBmuZGhhXaU$W1kXhV9+1baoK7ms7zw5pkCBHd5VkTFcZcVewvQ/3t8=	\N	f	del_1-7.56				f	t	2017-10-25 20:10:41.101927+00
3141	pbkdf2_sha256$36000$oRNeVHIjbJ98$Ry4pK5qExdQVl9ygIjRREEjBTMajXtoMp5WbL3uCYcc=	\N	f	del_1-7.57				f	t	2017-10-25 20:10:41.244826+00
3142	pbkdf2_sha256$36000$ENw0YXQc5kpF$zLjjPEA11dGObgcNQoFFX5UV7kfthlpkgxpIaavJSZo=	\N	f	del_1-7.58				f	t	2017-10-25 20:10:41.385454+00
3143	pbkdf2_sha256$36000$ejA3GhyjXUrY$VIG9/X9sAnlrVMZ0rlyOS9+EcMAw+69jqMExRKFo7VI=	\N	f	del_1-7.59				f	t	2017-10-25 20:10:41.527413+00
3144	pbkdf2_sha256$36000$ccFay0Juc7uJ$vwO3Pi/rvR7KaL3BoFb3Lgbg8MCr20YtrbWsD9yHDQU=	\N	f	del_1-7.60				f	t	2017-10-25 20:10:41.6689+00
3145	pbkdf2_sha256$36000$yQ1VT5r7noVU$6m6knZk3xRdtlwTGGkF1O3LMWB4iWV+CCIgmE8iQVcI=	\N	f	del_1-7.61				f	t	2017-10-25 20:10:41.852088+00
3146	pbkdf2_sha256$36000$n4GziXZYqqTh$sZtdByZ1gSySJ4PHNSfwsIxd/jHy36rxylSj9yyeeBQ=	\N	f	del_1-7.62				f	t	2017-10-25 20:10:42.019565+00
3147	pbkdf2_sha256$36000$Rkn67q4VSvox$EHISWpflUV83aXcpvmJyCc4Jfp9e7u8x0a6oibYZKUQ=	\N	f	del_1-7.63				f	t	2017-10-25 20:10:42.161935+00
3148	pbkdf2_sha256$36000$F1v2qTpU7YSb$byzc+gbaEAUrn7TB0IXb5tcNNoZDi4vJ3lZtg3mGGhQ=	\N	f	del_1-7.64				f	t	2017-10-25 20:10:42.305505+00
3149	pbkdf2_sha256$36000$0FW8S8oOzEbQ$y/SInkzNeJccUWEm6caEGtWi3NMzLK1L/0CgIej7XU8=	\N	f	del_1-7.65				f	t	2017-10-25 20:10:42.468741+00
3150	pbkdf2_sha256$36000$mcUUNT61CWbA$QZFsq9T040bDCkvrgyMjlDjaAtuRMHDfmhQQ3HhRa7k=	\N	f	del_1-7.66				f	t	2017-10-25 20:10:42.594127+00
3151	pbkdf2_sha256$36000$VfwJQX9TQg9n$2fJ0MtXzRO811zoO0pAz9fMoJ+Rz2+o+MA38gONFAEY=	\N	f	del_1-7.67				f	t	2017-10-25 20:10:42.710801+00
3152	pbkdf2_sha256$36000$GkrSj4Lfv2j3$LkZay2TFz/piLRH4YTOT5j+UTy/qIo/oSWdjfdwlK8g=	\N	f	del_1-7.68				f	t	2017-10-25 20:10:42.823502+00
3153	pbkdf2_sha256$36000$8DTWaWfYIhQh$gBRye9WSuUTigh3fLcF25LCu/Xp0FkYC7+pRz8AerFM=	\N	f	del_1-7.69				f	t	2017-10-25 20:10:42.979512+00
3154	pbkdf2_sha256$36000$zPUkSLRGTzYX$uHLJXsBnRVmD3HOqckPdy667PgRb/28UtmV+9dNO6lw=	\N	f	del_1-7.70				f	t	2017-10-25 20:10:43.066542+00
3155	pbkdf2_sha256$36000$TXt043xMoBgL$c4T+h3oVJeU/zeVZt5HvXN5H/GM1tJH4xHgDCmTPLyY=	\N	f	del_1-7.71				f	t	2017-10-25 20:10:43.123024+00
3156	pbkdf2_sha256$36000$J9vK5tji5qP0$f6vb9pU0gr0Z7QCAY0kAV5ZRNGuNbd55AEklwlPW4E8=	\N	f	del_1-7.72				f	t	2017-10-25 20:10:43.177875+00
3157	pbkdf2_sha256$36000$oZdlqfYixoqF$wSxbhP4j+Th9Tm0YOW76UnEalJdJ/vo/ny1dB6VDlL0=	\N	f	del_1-7.73				f	t	2017-10-25 20:10:43.23287+00
3158	pbkdf2_sha256$36000$o75Q5KFeRAUb$atR8U87+1QjRE2dbzqngbtjAXY/GT2UNTZfyMe0D5QU=	\N	f	del_1-7.74				f	t	2017-10-25 20:10:43.286977+00
3159	pbkdf2_sha256$36000$pj6o5i1jRJ4t$F8QIzUq7sCV+OJYOZs+JRb7G80E5aEB2/dWBhktM4Ag=	\N	f	del_1-7.75				f	t	2017-10-25 20:10:43.340946+00
3160	pbkdf2_sha256$36000$8YpNIojdkHMV$Z8h7/8dCTwgViVThhaVwOCRZ0jTEmG7cSmqD4LR+JsY=	\N	f	del_1-7.76				f	t	2017-10-25 20:10:43.395273+00
3161	pbkdf2_sha256$36000$OQw9sGOSyexB$viuMgg5K8+d7c6tIQtSgxdu1LKNCoL988e6VD5KzhqM=	\N	f	del_1-7.77				f	t	2017-10-25 20:10:43.450848+00
3162	pbkdf2_sha256$36000$4WXUVjVjkTDg$Sr091XhN0XKz26QKsMxtjAULt+mHW4KkgGt3lozw5iI=	\N	f	del_1-7.78				f	t	2017-10-25 20:10:43.505801+00
3163	pbkdf2_sha256$36000$FPKbB3AYVXg5$v0aHUJVaJuIML1A114FPWMlCT/tVgmbb0oTOveYiy0A=	\N	f	del_1-7.79				f	t	2017-10-25 20:10:43.561174+00
3164	pbkdf2_sha256$36000$bXBzB8UTTL3m$5s5Y50haBzPpsLLL5+qcup2PKqH4mpHh4PxqFt5eZyo=	\N	f	del_1-7.80				f	t	2017-10-25 20:10:43.619372+00
3165	pbkdf2_sha256$36000$BqTTkZmBKreK$q5rfKh+5R3CDRkD/4xBHG5Q8jJsp7KtlpZguqFLPnyA=	\N	f	del_1-7.81				f	t	2017-10-25 20:10:43.674665+00
3166	pbkdf2_sha256$36000$hmGP67Pj8RAc$dhwGDsuhN7/gtze39T7q/O/vLknAf2DyFRY/kSDhrIE=	\N	f	del_1-7.82				f	t	2017-10-25 20:10:43.731434+00
3167	pbkdf2_sha256$36000$wuVqwRQMjNwg$vlO/pneb8lXMuZFB/7MJm4Z1uo+xcvLc0YhYMVlkA/g=	\N	f	del_1-7.83				f	t	2017-10-25 20:10:43.788812+00
3168	pbkdf2_sha256$36000$2zWNBiPOcqMu$zdVv6FmeerZfNWI5RCSHbmCx8nx/O/6doV/9ZTn6NsA=	\N	f	del_1-7.84				f	t	2017-10-25 20:10:43.843614+00
3169	pbkdf2_sha256$36000$UN9hpbUumWDT$Emzv9XCQeEEmWavAVq+ibQBPn1v3SXWOUG+8XvFqnk0=	\N	f	del_1-7.85				f	t	2017-10-25 20:10:43.898423+00
3170	pbkdf2_sha256$36000$WffdeFvPsaJQ$PNZsBUu8rzthMe/HD9mpFW1FAQ9Rpo02D+khQwrW+x0=	\N	f	del_1-7.86				f	t	2017-10-25 20:10:43.952988+00
3171	pbkdf2_sha256$36000$JiIgYpNLTRVK$D9hdBLEDpfYQgZE4dWxKBTi/F3HYa1st04GoJc2D7N8=	\N	f	del_1-7.87				f	t	2017-10-25 20:10:44.007681+00
3172	pbkdf2_sha256$36000$6ueANW1w2LQ1$GawkvHUx1PQw4n9FzxU4ceXs7evqTEwRz55ESCjEqVM=	\N	f	del_1-7.88				f	t	2017-10-25 20:10:44.088323+00
3173	pbkdf2_sha256$36000$nXEGd4VkdQjV$TULFid7ic5nueoy72VWpSPyvk9VkcdK6BhONztDxNVk=	\N	f	del_1-7.89				f	t	2017-10-25 20:10:44.142639+00
3174	pbkdf2_sha256$36000$EFZ0aKSz13Zc$IMW8hJpPInPNGT09eQzd4rM3loNHodV/S91YdFzIkJw=	\N	f	del_1-7.90				f	t	2017-10-25 20:10:44.19717+00
3175	pbkdf2_sha256$36000$j2COxWyiYqWd$jrYk4udWf5ozo6WzJWR3ZFX9HRMslaaejs1cWdCJXLM=	\N	f	del_1-7.91				f	t	2017-10-25 20:10:44.252402+00
3176	pbkdf2_sha256$36000$Y2phPsGuMg8y$ae5Mg2AyR12w2F3M+1Ud8f5ewmjsjhY6nYSF4bl+iE0=	\N	f	del_1-7.92				f	t	2017-10-25 20:10:44.307294+00
3177	pbkdf2_sha256$36000$4OQC3EZo9qnX$e5zbI+tDVLJ0J9Tcu5QR0Gxyk4F9Cyv2J1g60h+6PJQ=	\N	f	del_1-7.93				f	t	2017-10-25 20:10:44.363394+00
3178	pbkdf2_sha256$36000$f9Mgi5mSei14$QDLzpZXy4Ing/m/Q/TT+p8piHGe9eWKtTak9rEaeCoQ=	\N	f	del_1-7.94				f	t	2017-10-25 20:10:44.418543+00
3179	pbkdf2_sha256$36000$D1m6daJUUxrC$YdUtbOOMgWPIWaHY/9BSI2Op5SDXIm8Dx8IWUCohg2Y=	\N	f	del_1-7.95				f	t	2017-10-25 20:10:44.474348+00
3180	pbkdf2_sha256$36000$dNY2KSh8BCdv$XibtQKexn6uUN+2OeBQPu2+MoGhP14UOupJJETZgufU=	\N	f	del_1-7.96				f	t	2017-10-25 20:10:44.538045+00
3181	pbkdf2_sha256$36000$frGeV91wYCip$LT5CvO6ZxWn0NxdOITCkhd6VVPaNcM0YtpFjn06r5ds=	\N	f	del_1-7.97				f	t	2017-10-25 20:10:44.678774+00
3182	pbkdf2_sha256$36000$lxE10luIrb0A$MvnNIBsy70uJPZTIbOOClajwvYWdhaxiEdHAeuVSE6s=	\N	f	del_1-7.98				f	t	2017-10-25 20:10:44.837919+00
3183	pbkdf2_sha256$36000$1rNhwdRm4C6n$dsRGFTBpQpjc7Toq/W28J8rAsyPgijPcJiPq3FL/cSo=	\N	f	del_1-7.99				f	t	2017-10-25 20:10:44.988003+00
3184	pbkdf2_sha256$36000$LI7Np6cMUOOz$dBraj308JCYB7ISieKXtsEJGMfnRqSGC+75ydOPTtg0=	\N	f	del_1-7.100				f	t	2017-10-25 20:10:45.168279+00
3185	pbkdf2_sha256$36000$cmzGOzyVSpYJ$eFWJ/tbnHdpxeVKcAnKEWZBxpIlr16j9ubes5Hd4uSo=	\N	f	del_1-7.101				f	t	2017-10-25 20:10:45.290276+00
3186	pbkdf2_sha256$36000$I3910PrF6ZOu$R8oHDuRZVV4C0vdx1SgBwIqLhnftc9MybCPKpV9lBjY=	\N	f	del_1-7.102				f	t	2017-10-25 20:10:45.410474+00
3187	pbkdf2_sha256$36000$fj0Ol7E62ggf$l2XR2rbRtdvSE9BiEVmBDLfwdzlP2XciFqy1vcIv2t4=	\N	f	del_1-7.103				f	t	2017-10-25 20:10:45.531019+00
3188	pbkdf2_sha256$36000$QoMcldquGyKw$jFd4MvSwcECZTWSGLm9MsFghMi7PhepXXRf6aNyl7m4=	\N	f	del_1-7.104				f	t	2017-10-25 20:10:45.589198+00
3189	pbkdf2_sha256$36000$eldN7DQ8IqhI$rkx65R4pHi+9Y5QXEQNRVB6Vp/24RlnArob8FlDas4I=	\N	f	del_1-7.105				f	t	2017-10-25 20:10:45.64789+00
3190	pbkdf2_sha256$36000$V3LvfenH7kw8$Q8sr0TH8HC3bqnPRxE9KG2CrCs2CGr8ayHanN7S6TcM=	\N	f	del_1-7.106				f	t	2017-10-25 20:10:45.702959+00
3191	pbkdf2_sha256$36000$SnbOZBQhBoWB$c8AGy/RRdDJa811UBgUG8xBgX750ZmE+mETeE5GzUAI=	\N	f	del_1-7.107				f	t	2017-10-25 20:10:45.759213+00
3192	pbkdf2_sha256$36000$BLhPL7ACtirv$ju1hOCdn/fkvaYxT1OEwsfIhPQUtpBx8WffxySEkdiU=	\N	f	del_1-7.108				f	t	2017-10-25 20:10:45.815362+00
3193	pbkdf2_sha256$36000$qCeMHo4DGwVv$tFlyHeJiS4uPDjln36So9PLxY35NUJLpOZAV4gvWbN4=	\N	f	del_1-7.109				f	t	2017-10-25 20:10:45.882589+00
3194	pbkdf2_sha256$36000$Zg9bH8QGNeJH$kLawz2l6FASpz0f8q/JD4BXKZW9DocWEty4TN4NYeT8=	\N	f	del_1-7.110				f	t	2017-10-25 20:10:45.937199+00
3195	pbkdf2_sha256$36000$i3xoc3sLYCOb$5qwrpStjd/83X74K3hxl1Wh4FGIs/UJ0gnRJ1/k7n60=	\N	f	del_1-7.111				f	t	2017-10-25 20:10:45.992106+00
3196	pbkdf2_sha256$36000$def2TDTkNQhq$0pHpLpmyF/p1MVh9MxY4wJ1MBhZMw16ZXHPKB5E2F9E=	\N	f	del_1-7.112				f	t	2017-10-25 20:10:46.046605+00
3197	pbkdf2_sha256$36000$lMB4Etsao2Cg$XPbS9Qix5MGhCAcrs/HqmoWM0ZlffcQ87zoW7pEI8jY=	\N	f	del_1-7.113				f	t	2017-10-25 20:10:46.101783+00
3198	pbkdf2_sha256$36000$f7kMeyV56wfl$9+RHMt0NQfQkwCS/314seIosn24wcyjenVHST8+J34A=	\N	f	del_1-7.114				f	t	2017-10-25 20:10:46.156201+00
3199	pbkdf2_sha256$36000$AcLXx6pQMQi5$nvV0qnBNcSDzfVpNqB4SVKF9FAuqtu0MqIRBeE39kkM=	\N	f	del_1-7.115				f	t	2017-10-25 20:10:46.240566+00
3200	pbkdf2_sha256$36000$mtDQQ6YSgXqJ$lRVSmdNIhWqTozu/YA8WlukWX2R8etajbG0+sGAPVbc=	\N	f	del_1-7.116				f	t	2017-10-25 20:10:46.295455+00
3201	pbkdf2_sha256$36000$0zw30s1pJ671$KczL7VFoXc+9/gUmfQewaSDcaT4LocVXFTZess1L8WM=	\N	f	del_1-7.117				f	t	2017-10-25 20:10:46.351097+00
3202	pbkdf2_sha256$36000$y9B1PBi6b7Pc$C47Bww2rNpJ0wyhsWF+DPa3C3O9aASDt7dcEky0jL64=	\N	f	del_1-7.118				f	t	2017-10-25 20:10:46.406455+00
3203	pbkdf2_sha256$36000$H6y0dCT4K8bD$ffV3C9xMucwY2gvz+qwl2odORkVeSJCQNK7cm8AB7ek=	\N	f	del_1-7.119				f	t	2017-10-25 20:10:46.462101+00
3204	pbkdf2_sha256$36000$B3Tmrbv0vHJ3$6HrnDp08jX25ubNy4vyCvXk2HCqjnz97GTlunNfbXj8=	\N	f	del_1-7.120				f	t	2017-10-25 20:10:46.518066+00
3205	pbkdf2_sha256$36000$yJedjgBzhwK1$ivxGUqJwL+TydJim1mwQSmXOT9doliP4WCguFo6/TBE=	\N	f	del_1-7.121				f	t	2017-10-25 20:10:46.574185+00
3206	pbkdf2_sha256$36000$gwfcG4ckmgAH$ZrE99RzzY24o697bcvX3zTmwyfXl8f0HwgElKyUAJIc=	\N	f	del_1-7.122				f	t	2017-10-25 20:10:46.630818+00
3207	pbkdf2_sha256$36000$jfu3eSIQDyHH$wpvHnqcevqHQb5q6FsP8vx3l7uahTNeGvnCYNXL5pEc=	\N	f	del_1-7.123				f	t	2017-10-25 20:10:46.687451+00
3208	pbkdf2_sha256$36000$NaRL4GRlDOtz$6GxEoxkch9xkCwdrpxMqeboUVxYiIrHpK4YetB5dTSo=	\N	f	del_1-7.124				f	t	2017-10-25 20:10:46.744573+00
3209	pbkdf2_sha256$36000$5mA7DxmvOtoX$LIzYdCsvFxM4jq8GPYukWfuSbNK+qSG9uC39X76lIVo=	\N	f	del_1-7.125				f	t	2017-10-25 20:10:46.800336+00
3210	pbkdf2_sha256$36000$CKnoqmntA9fb$bTXvAJ0KKGVMX1uxgyI+Z1dJ93EEjLSLL6bDrrBJSlc=	\N	f	del_1-7.126				f	t	2017-10-25 20:10:46.855674+00
3211	pbkdf2_sha256$36000$6p0n1xJyJe4G$tEAKlKYIQCcARafudSQmaxAfApYr1VGN06gTt2nyGp0=	\N	f	del_1-7.127				f	t	2017-10-25 20:10:46.911559+00
3212	pbkdf2_sha256$36000$5ZWsYpInydLQ$e7rtyOxAUiXJ5JJHgOykWnqOJ2wphxoYrrZLBN7MNpc=	\N	f	del_1-7.128				f	t	2017-10-25 20:10:46.965925+00
3213	pbkdf2_sha256$36000$cfCNvCxyc7TH$k8n3ZGvA9bD+gOkkoeHEAkIpNaSbM+Rp9IDP2OCPTAc=	\N	f	del_1-7.129				f	t	2017-10-25 20:10:47.021402+00
3214	pbkdf2_sha256$36000$uoPFrJDR3V0b$U8HviWzWuIqmh4P7qySu8mTY42ttZlixgzSsZIGor7I=	\N	f	del_1-7.130				f	t	2017-10-25 20:10:47.075808+00
3215	pbkdf2_sha256$36000$x3TAxQANoQMq$UB6RNnkEwCwrUF5285P64guyjIuVMYVD4EJ5cs1jtSM=	\N	f	del_1-7.131				f	t	2017-10-25 20:10:47.130086+00
3216	pbkdf2_sha256$36000$xxJCAUMteANa$WDgc0HoP5UcPOZoRevxQO3RjoX7l+HBBVdu8jnwsAuM=	\N	f	del_1-7.132				f	t	2017-10-25 20:10:47.184476+00
3217	pbkdf2_sha256$36000$JOrCLETGwXdq$rgSSnEUUswUvjbu6DKpSxXbCYBtsGSTUQrhgfj8NRfQ=	\N	f	del_1-7.133				f	t	2017-10-25 20:10:47.267385+00
3218	pbkdf2_sha256$36000$Vfxe8ExEUJ6G$1c9d1kDknVnLe1snyv6IzLNNGYZNk/3jPM9QhM/u/F4=	\N	f	del_1-7.134				f	t	2017-10-25 20:10:47.32274+00
3219	pbkdf2_sha256$36000$6SnjzJlafYc2$ynCW71k/76xmqY6Zn5PAC3UzCBoP8FUHQ5Q3GhSbhVI=	\N	f	del_1-7.135				f	t	2017-10-25 20:10:47.37673+00
3220	pbkdf2_sha256$36000$cCLbXiSi4s44$5hvj9K47RvHI0z5zOlmLqac35ztuGgkyO1XdwZe1u6Q=	\N	f	del_1-7.136				f	t	2017-10-25 20:10:47.431513+00
3221	pbkdf2_sha256$36000$faAnVJhoLrQw$Sf4qy1j5scCn2E/aOfaS9FsFOiC8JbiQpM1Cm9rZwVQ=	\N	f	del_1-7.137				f	t	2017-10-25 20:10:47.487469+00
3222	pbkdf2_sha256$36000$WmRCiqgrWkXC$5pgRX/uKIsv71TZ8BSJNs3JX/Rzz8GjeOuXEvRyIb48=	\N	f	del_1-7.138				f	t	2017-10-25 20:10:47.541954+00
3223	pbkdf2_sha256$36000$H0WOCsC1Jq1d$kIlHpjJNaNR56ZDP5yP+6wx3VceXLg86zB3w44kjEdI=	\N	f	del_1-7.139				f	t	2017-10-25 20:10:47.597795+00
3224	pbkdf2_sha256$36000$N9nRe53jfJSV$IM+3eLF9y1O7T/S9gb96/3wuTGOKEh5f69ROVhnjxac=	\N	f	del_1-7.140				f	t	2017-10-25 20:10:47.654184+00
3225	pbkdf2_sha256$36000$nHi4fUGA0wIC$ZQ81U9HUzdp+U4+oRFiin6D1fT/Dyygcto+3X4eT9nk=	\N	f	del_1-7.141				f	t	2017-10-25 20:10:47.709906+00
3226	pbkdf2_sha256$36000$RLJ6uloqMy9U$vapSML9YNcXKiV2bYVKZcTKDkjV4D0FMHGMybwD3ExQ=	\N	f	del_1-7.142				f	t	2017-10-25 20:10:47.764769+00
3227	pbkdf2_sha256$36000$5qqTCbsaNrVR$ZUEOTHQM/Q9Su0Fr251i7CvVYzSgNiwN19OvcZQFTG4=	\N	f	del_1-7.143				f	t	2017-10-25 20:10:47.819882+00
3228	pbkdf2_sha256$36000$a9iFFd1QlIrh$bzV6hqmNiIPXS0+nbUayVzb6mMd6eVOUwEehknQTr+Q=	\N	f	del_1-7.144				f	t	2017-10-25 20:10:47.875356+00
3229	pbkdf2_sha256$36000$tnVlzIABaCH7$Xz8TNiWCRvEBcQgehURW1JsfT2XbAwSWOSIPlpob76A=	\N	f	del_1-7.145				f	t	2017-10-25 20:10:47.931634+00
3230	pbkdf2_sha256$36000$RfAKUZ9uNnxY$qfzcfN/jvI3xfxBlYrqIpfdHziXa8TBgE9PwACG0zTI=	\N	f	del_1-7.146				f	t	2017-10-25 20:10:47.987887+00
3231	pbkdf2_sha256$36000$8iXX2EP396OA$D8j1/l2I0mJFvub+fN0DWOpx8syQ7cnZqhsJow0mgvk=	\N	f	del_1-7.147				f	t	2017-10-25 20:10:48.043626+00
3232	pbkdf2_sha256$36000$V1aA3gRA1zDr$AzogRBti3xBcSc5cT4Rh3/PVs0jzwdA2EH3LrvVDrWY=	\N	f	del_1-7.148				f	t	2017-10-25 20:10:48.099841+00
3233	pbkdf2_sha256$36000$HMSil3KPHRkz$AYFYldKNH/2Mn7KgW9+/l5Luuhgo2ZczijhYKmjcqcE=	\N	f	del_1-7.149				f	t	2017-10-25 20:10:48.155479+00
3234	pbkdf2_sha256$36000$Pxgq234SkUeF$f1jNQtlGJTvcrvXVbDICcDAHmpDen2wpvzQN2nwMwI8=	\N	f	del_1-7.150				f	t	2017-10-25 20:10:48.21095+00
3235	pbkdf2_sha256$36000$fXtgfacwOk0d$Yux2UqhGylBgA2q+y5RH3SJmcSE4CI9EcmeuQMWp2w4=	\N	f	del_1-7.151				f	t	2017-10-25 20:10:48.265495+00
3236	pbkdf2_sha256$36000$OZope51p63Ip$cJHLaUew6okdho0/Dh24vzH6/U413VKuTnzB+i+EjMQ=	\N	f	del_1-7.152				f	t	2017-10-25 20:10:48.347117+00
3237	pbkdf2_sha256$36000$sV7LCg6LWs7P$V1C5Bf6HkAexbaoK0OYMk7VPPpnsxZ2NWH/wOImovGI=	\N	f	del_1-7.153				f	t	2017-10-25 20:10:48.401744+00
3238	pbkdf2_sha256$36000$gc6QTAu77i5I$8fBP1SNyLx42x+OmUsLc/DFrG7u+pT3o4ZfPZSgsSsY=	\N	f	del_1-7.154				f	t	2017-10-25 20:10:48.456046+00
3239	pbkdf2_sha256$36000$1m4wR1L62fSR$vx3bZkhV4xA57iWkKRV8U7glQENVgmz52qDgVN0fHS4=	\N	f	del_1-7.155				f	t	2017-10-25 20:10:48.510207+00
3240	pbkdf2_sha256$36000$fs26yituPKAr$9kkHGpWwAbqyzT2oQeh46nhBRygSlG0gFRPmU/G9UXo=	\N	f	del_1-7.156				f	t	2017-10-25 20:10:48.585245+00
3241	pbkdf2_sha256$36000$ULhXHsAfUuQD$UzM719LQ7ntZoCTg5r/g1Cw3gn6dRbNBAhqH27WPaqs=	\N	f	del_1-7.157				f	t	2017-10-25 20:10:48.648657+00
3242	pbkdf2_sha256$36000$X8HDHaGQfxVA$FaOn2UPO8qaILH0Gh0EZv1hnmlVrRaef10eV3KPhxAU=	\N	f	del_1-7.158				f	t	2017-10-25 20:10:48.704032+00
3243	pbkdf2_sha256$36000$nRDRJjHkO2bN$6l/5HaV8Go4pfPSRuSJjAK4lU6dNwNqqqV6vjsBZkD4=	\N	f	del_1-7.159				f	t	2017-10-25 20:10:48.760403+00
3244	pbkdf2_sha256$36000$kl0XyqDQwbt7$IM+hZYx9flCeiGcQTTk3gYWf0iFAP5LZu33552yOZ/M=	\N	f	del_1-7.160				f	t	2017-10-25 20:10:48.815982+00
3245	pbkdf2_sha256$36000$9QFGen3vRoci$rVvs37fw6YXrR9t8HUezv9BRxG75OOA8Ofljvu1g//U=	\N	f	del_1-7.161				f	t	2017-10-25 20:10:48.873409+00
3246	pbkdf2_sha256$36000$8qmXLR7cAQwa$7Ar2ZScGL+e3y1e3I67ZEwdPk92ge6FIsgGu3026us0=	\N	f	del_1-7.162				f	t	2017-10-25 20:10:48.928445+00
3247	pbkdf2_sha256$36000$UVxtxxoMpPaO$f0pfanOPfAK6YRxb1ZnpyQ5gRywKcTUEIKxoNFCLZeI=	\N	f	del_1-7.163				f	t	2017-10-25 20:10:48.983792+00
3248	pbkdf2_sha256$36000$tPJFZx0wfBiq$y1+x6h2esi+IrzopIqQfsDSASqD5gGYsVDaHQVPE2lc=	\N	f	del_1-7.164				f	t	2017-10-25 20:10:49.039565+00
3249	pbkdf2_sha256$36000$7qiVcL7cqMs9$5CHmTUoDrlUgLbgX9BpyOHopWUzP6TlxaeLNVw4ArHg=	\N	f	del_1-7.165				f	t	2017-10-25 20:10:49.095316+00
3250	pbkdf2_sha256$36000$R6sp45WpjV7u$us/fkhm47+NfR0fm7OvlF7YCaADLTYbb1Kf7l7rRbRY=	\N	f	del_1-7.166				f	t	2017-10-25 20:10:49.150432+00
3251	pbkdf2_sha256$36000$gObe9kEeWiIO$5J41ClwuEG6UpkGo167205TzSk/BwniY4ZorOueQfrU=	\N	f	del_1-7.167				f	t	2017-10-25 20:10:49.205595+00
3252	pbkdf2_sha256$36000$mMAwCYUeFV0v$tNJ1qdkEeLFza+DeNmT7dNJcuZmqNrqtexDqHi4rwMk=	\N	f	del_1-7.168				f	t	2017-10-25 20:10:49.262372+00
3253	pbkdf2_sha256$36000$GsA7acX4ZQg5$DRGO46rkxOfAIENlTr3hZlJaJX20iAckhbxsE1VySJI=	\N	f	del_1-7.169				f	t	2017-10-25 20:10:49.323853+00
3254	pbkdf2_sha256$36000$eYx4wQtKBpCS$HSn3rm+ldP13TDwA/IBAGmRyihIEDRmaQnKudR78dzI=	\N	f	del_1-7.170				f	t	2017-10-25 20:10:49.400011+00
3255	pbkdf2_sha256$36000$ECWJhctme1cJ$VH2q+1Sx52xExVRkQu4HtSLN06g4hTqBGAkg0zIH6k0=	\N	f	del_1-7.171				f	t	2017-10-25 20:10:49.454678+00
3256	pbkdf2_sha256$36000$INoGvwIWDUDA$Ed7lo5uD5aOozlHoI5lHncNSc9Be1pg4gjPqIzrQgpQ=	\N	f	del_1-7.172				f	t	2017-10-25 20:10:49.510326+00
3257	pbkdf2_sha256$36000$klhHMHjdd1Gh$rwtWIDxAbQGmL3GnsPC+xeIcSRTRBf++mn0qqsJ7wLc=	\N	f	del_1-7.173				f	t	2017-10-25 20:10:49.568036+00
3258	pbkdf2_sha256$36000$yKVUld4alF5g$CgNRu6kI9ORYj63WsJtzrHd8VSEFt7lVdU5KEn9qnUg=	\N	f	del_1-7.174				f	t	2017-10-25 20:10:49.624247+00
3259	pbkdf2_sha256$36000$pbvOZELlc9Yr$ZBedfJT2GctBTGDAgPw9JzD74wR8Pmfk0eRCQPqtskw=	\N	f	del_1-7.175				f	t	2017-10-25 20:10:49.681025+00
3260	pbkdf2_sha256$36000$ACIP652EiQIf$Ss3/6OBlVTSUBT99QZDhTBJsXO81uQONL7t1g9JMWxA=	\N	f	del_1-7.176				f	t	2017-10-25 20:10:49.736367+00
3261	pbkdf2_sha256$36000$qr1mgA7EvNvG$VAedIuevtaq399EbX5mYHcQcN7qRl3t6K/J4PMtGeQg=	\N	f	del_1-7.177				f	t	2017-10-25 20:10:49.79628+00
3262	pbkdf2_sha256$36000$3C3XFPmpAyeR$PksSKpcD9nzU0C1UMpO5X07gJ5MGpmvmIypUuDwXjL0=	\N	f	del_1-7.178				f	t	2017-10-25 20:10:49.852883+00
3263	pbkdf2_sha256$36000$bAOTEWNClurc$74ky42Odk6TgRW2aL2GUZeknvN/mLREEU+7u0TAjNdg=	\N	f	del_1-7.179				f	t	2017-10-25 20:10:49.908367+00
3264	pbkdf2_sha256$36000$bMCR7rX4rdtX$zUT5KwWE7k/hrla0bcNwxpXvB19/43ZtNI6rsbK+mis=	\N	f	del_1-7.180				f	t	2017-10-25 20:10:49.964417+00
3265	pbkdf2_sha256$36000$tP9Dfe3fs51f$eyrH7P2+kDKxy8Da/xjPmrd1r5VVjTA2nLRExqmwipQ=	\N	f	del_1-7.181				f	t	2017-10-25 20:10:50.023183+00
3266	pbkdf2_sha256$36000$R6NiyY5hw3uz$sqq6cedp9HYjpBwSG47grgQ/CjaMsKbfEHFI/f33+8o=	\N	f	del_1-7.182				f	t	2017-10-25 20:10:50.170675+00
3267	pbkdf2_sha256$36000$PAFHxkniQRr5$q1tELTTbncTwtOuRTAgoOqaJNXCjVHHsRpANxjrffB0=	\N	f	del_1-7.183				f	t	2017-10-25 20:10:50.324097+00
3268	pbkdf2_sha256$36000$wUsbhHsfEaPY$ErU8dp1KM/wOpQ/8SgX8F+QFZB5GnFSREiBZKI/Ol3I=	\N	f	del_1-7.184				f	t	2017-10-25 20:10:50.534911+00
3269	pbkdf2_sha256$36000$Budu20H3AYgv$xDa/gYIldlU1tLIVh9cUXxsn6hWCD85iRDuRIRbxi8M=	\N	f	del_1-7.185				f	t	2017-10-25 20:10:50.590338+00
3270	pbkdf2_sha256$36000$d9p78fs8pVz8$zUxTRQSIELcwdh4YM1gto5GpyvufRcMCzbFASqBs3Js=	\N	f	del_1-7.186				f	t	2017-10-25 20:10:50.645553+00
3271	pbkdf2_sha256$36000$rSqX28d9KqNZ$6LFo5puhPNx4QWnY+vcEdZ3zxQKgEnk5EOT33JXHTH0=	\N	f	del_1-7.187				f	t	2017-10-25 20:10:50.70139+00
3272	pbkdf2_sha256$36000$V7iDhDelH3nG$IUg32YJgu4h4c8fcowuJtDD4Q4L6knub5UMm3mhNTkQ=	\N	f	del_1-7.188				f	t	2017-10-25 20:10:50.757801+00
3273	pbkdf2_sha256$36000$fa640j0M8XnN$Cg+vqbtj2TPcYuPiEBsiKcBjhaqs2q0BmEUeK+PjHU0=	\N	f	del_1-7.189				f	t	2017-10-25 20:10:50.813234+00
3274	pbkdf2_sha256$36000$HZsCoadLuN1x$xsv0DZ9OTcOExGPJFJRe9VkaCrbipCZhPHDcKVuE0K8=	\N	f	del_1-7.190				f	t	2017-10-25 20:10:50.868476+00
3275	pbkdf2_sha256$36000$YPwxxcwAA6mW$w5b6GXdBMP2HWPIIclc4xZ9md9mISDZXdI4xmqTTmBY=	\N	f	del_1-7.191				f	t	2017-10-25 20:10:50.924907+00
3276	pbkdf2_sha256$36000$YyLntQ8J9B7k$sAiW44LaJWUFRDmvPTJLK11n9rTMwD6G7I/1jXKgglU=	\N	f	del_1-7.192				f	t	2017-10-25 20:10:50.981+00
3277	pbkdf2_sha256$36000$S8cvWYIUiePm$Rs9aGTHgW9LD8Y1k9gigVHQ/ANq5E7FQi835ryIwzQY=	\N	f	del_1-7.193				f	t	2017-10-25 20:10:51.036525+00
3278	pbkdf2_sha256$36000$lruUZG0R4tTB$HSr/O8y2ejuZAg3m1S9n2HeXotSu242kCueDwWw0zMo=	\N	f	del_1-7.194				f	t	2017-10-25 20:10:51.092554+00
3279	pbkdf2_sha256$36000$2qOWdesWb1lF$ldkWqCpRJ00Cb/wBnZ3emyIuT1c+GuLyP3aig+rM4HM=	\N	f	del_1-7.195				f	t	2017-10-25 20:10:51.148285+00
3280	pbkdf2_sha256$36000$kYhohHrWLuPd$720V4dRU/Q3NfYbFQQ9G920XFlWZsN81Y++LQ0WXI24=	\N	f	del_1-7.196				f	t	2017-10-25 20:10:51.203843+00
3281	pbkdf2_sha256$36000$R1wGIVfMKY9d$D7+u0+wD/lFEQSUwWLfnUIEPYTgjW6hLcEZHJasTJTo=	\N	f	del_1-7.197				f	t	2017-10-25 20:10:51.260293+00
3282	pbkdf2_sha256$36000$pxNoeL3VMb6i$4bp/EoaYFrWhY77D8A3JTtGfPNG1OAfOONqv+WZGzSA=	\N	f	del_1-7.198				f	t	2017-10-25 20:10:51.31561+00
3283	pbkdf2_sha256$36000$LHgr3dpAR5IR$EXpcPe+GSF+oxvaGHT1pZccAQX8KIMHHdOOEnyCeaqs=	\N	f	del_1-7.199				f	t	2017-10-25 20:10:51.371925+00
3284	pbkdf2_sha256$36000$Qbitd8PiUTPO$TiR6ioHwAmgIUTkroKu6prQ9KMYLHvZAXHOZtFhrWNI=	\N	f	del_1-7.200				f	t	2017-10-25 20:10:51.428543+00
3285	pbkdf2_sha256$36000$SmfWPQWHgthz$bP/n51U8gZOkXxZq4IrqC/Sx7Zj9XgNUeTUnV1T1+fg=	\N	f	del_1-7.201				f	t	2017-10-25 20:10:51.485686+00
3286	pbkdf2_sha256$36000$yTaMddL7mPwA$UzQxsSj7xlI552EJx3eUwH8w5HRPbaqqGNU8+g9J+mc=	\N	f	del_1-7.202				f	t	2017-10-25 20:10:51.568593+00
3287	pbkdf2_sha256$36000$GUqAslJNOK4k$PMSgbMzZM9lWWOKnNIxNDcgZZu2A7jnIzgPxdeYP/bc=	\N	f	del_1-7.203				f	t	2017-10-25 20:10:51.624474+00
3308	pbkdf2_sha256$36000$54p4a4VT7raX$P9zQa9xiLHdSb4qsIcH9P6n+H27pNcVHdBwZoKyTnxY=	2017-11-10 11:40:45.39928+00	f	del_1-7.224				f	t	2017-10-25 20:10:52.831654+00
3289	pbkdf2_sha256$36000$lFQdIviOjwi4$AZPiYk7rjO7o+p215LI2Rv1wMk4zq4Pwel+gVN/lrmo=	\N	f	del_1-7.205				f	t	2017-10-25 20:10:51.73752+00
3290	pbkdf2_sha256$36000$eFHiE9YT5skB$JJ1OiPBeHgrHASV5bhKtd1s/AsyPtVwsa8Ihk9eFbs8=	\N	f	del_1-7.206				f	t	2017-10-25 20:10:51.793432+00
3291	pbkdf2_sha256$36000$K8YnHdCzWgZM$bB4rWt1cTawaXUaj0iTxG6jx8SHV9y2pWbDlB1XJBy8=	\N	f	del_1-7.207				f	t	2017-10-25 20:10:51.848646+00
3292	pbkdf2_sha256$36000$B7GQUHgDtreO$CE8z9Nsn9yND4mPC+JF3xcMgJQM8LdYDTqrb9OHPdvo=	\N	f	del_1-7.208				f	t	2017-10-25 20:10:51.904439+00
3293	pbkdf2_sha256$36000$dZBi3pKHOmUe$X46wgeJaMRfUXDMFyRIWSIn28yS6+TriyJzOQShKeUw=	\N	f	del_1-7.209				f	t	2017-10-25 20:10:51.959793+00
3294	pbkdf2_sha256$36000$HCG7g7BVkTxH$fhZyyOB7NPnBZHkB2fodheSl0z0euaGHhBKtyFViEr8=	\N	f	del_1-7.210				f	t	2017-10-25 20:10:52.015475+00
3295	pbkdf2_sha256$36000$WRA4V6iq4AY9$WDrkmKoSky0PC3HxfDj8PPpzqdbKy9mLo8fHEr/yn0o=	\N	f	del_1-7.211				f	t	2017-10-25 20:10:52.071926+00
3296	pbkdf2_sha256$36000$frZzdyxwTyXE$yFyoRcH9aJHs9YtsD7liqZufVTrN2EpQ0bimgEi+GHo=	\N	f	del_1-7.212				f	t	2017-10-25 20:10:52.128079+00
3297	pbkdf2_sha256$36000$ZmYgB3vNcEab$IFAlgSe5d+4SiW0sN7vPgPGd53hoE2wQ1i0ZcvgyCuI=	\N	f	del_1-7.213				f	t	2017-10-25 20:10:52.18451+00
3298	pbkdf2_sha256$36000$cqsrkO8Arx23$TMtA2BBhkjGPGJEbERucjGZZeSwBPkEb/6gK1t7P24I=	\N	f	del_1-7.214				f	t	2017-10-25 20:10:52.242047+00
3299	pbkdf2_sha256$36000$1fUB6otzyD18$8LNOJVLMUmWOM9oDHWkJsyT+gZ7jwyOXt3ejPlK2ZIk=	\N	f	del_1-7.215				f	t	2017-10-25 20:10:52.298016+00
3300	pbkdf2_sha256$36000$bfBlkIjc1254$laFnkPCoCT/ngoxQ3VkawiHXKtAsl9DT8ScXlLmXHtw=	\N	f	del_1-7.216				f	t	2017-10-25 20:10:52.353615+00
3301	pbkdf2_sha256$36000$mAicM5oPyyo3$JMaQMmjZcQ23IKMZJD+EaA4Zylx7UTHkFJYHr9/vEYk=	\N	f	del_1-7.217				f	t	2017-10-25 20:10:52.409845+00
3302	pbkdf2_sha256$36000$WV1jj9HRUATm$Ciz7FVCMXWhMc52kztBcEiAUldl4H1Vb6ci86Ha/4uU=	\N	f	del_1-7.218				f	t	2017-10-25 20:10:52.46594+00
3303	pbkdf2_sha256$36000$7PNEAhFVA3JA$275fm3TUFUwrdsPymgQpKuA1jeWsSnK83uuktgPNa1w=	\N	f	del_1-7.219				f	t	2017-10-25 20:10:52.5226+00
3304	pbkdf2_sha256$36000$hRZuhVWHam9o$J0LDFJOxhbNJ8XmcIBk8BgfnDKswz3iCaUFDiQaKM5o=	\N	f	del_1-7.220				f	t	2017-10-25 20:10:52.59953+00
3305	pbkdf2_sha256$36000$mfowRxYfa1ZM$AOE57EDup3YqRi52acwuQq7cFKesZLJHazE/ikU39kI=	\N	f	del_1-7.221				f	t	2017-10-25 20:10:52.659948+00
3306	pbkdf2_sha256$36000$HLAioDh5Lj5i$FlRFlHQHVjeuJ9AIzVEQzGE4yiMsCeT7AKuzBTYeios=	\N	f	del_1-7.222				f	t	2017-10-25 20:10:52.716682+00
3307	pbkdf2_sha256$36000$4ZWrs6EN54SG$3xapLalrjLBuNnkhD4zwpB/eHgaj/q0opM8rYfhFIXs=	\N	f	del_1-7.223				f	t	2017-10-25 20:10:52.775685+00
3309	pbkdf2_sha256$36000$kmqFGMCqjGke$NJiQh+baJRgogProbdq5xSjEsnf34esdp0R+edx40rk=	\N	f	del_1-7.225				f	t	2017-10-25 20:10:52.887481+00
3310	pbkdf2_sha256$36000$ayyeCqebwSZJ$dRZFZUJxORHHJ9HSzC31VjX/6seAI2ykdMzcruywJ/U=	\N	f	del_1-7.226				f	t	2017-10-25 20:10:52.94305+00
3311	pbkdf2_sha256$36000$oMPL1WsMJkAz$vYD+taC4VPnP/A0R03hea2bo5nRx86Jp36c3yr6ZE4s=	\N	f	del_1-7.227				f	t	2017-10-25 20:10:52.999054+00
3312	pbkdf2_sha256$36000$W4xqs96M4Pu2$aXWJ5PtCQLm+AeK4NMZNGBiraD36fc4ZRmsTGqhExBU=	\N	f	del_1-7.228				f	t	2017-10-25 20:10:53.100187+00
3313	pbkdf2_sha256$36000$fUeuH3qQK9mT$HmhrFt7dG1tgbpGRiyGWJa++KtmP3y5xUsqoYV/Oljg=	\N	f	del_1-7.229				f	t	2017-10-25 20:10:53.241808+00
3314	pbkdf2_sha256$36000$CwCepIQYk2mp$VeGCNNyOazhxKtrB0VlV5dNeqyiyJo9q5mkQ4b2yrgc=	\N	f	del_1-7.230				f	t	2017-10-25 20:10:53.384187+00
3315	pbkdf2_sha256$36000$d3qBD8ahsiH8$0TUJkTxLwK4b92r9gofhn2wyLNXcqmD2UVvjLh4lKS4=	\N	f	del_1-7.231				f	t	2017-10-25 20:10:53.525488+00
3316	pbkdf2_sha256$36000$NGknz3qAG4h3$1QhRzeHIJi1cbR2+CRBWEE959APHXDZBJFUMdFKLpKY=	\N	f	del_1-7.232				f	t	2017-10-25 20:10:53.714628+00
3317	pbkdf2_sha256$36000$mlta3n7Oy7fm$K6fAdlXhd0wx03e5UGiTVhYYOUMJONGUNUWPfd2I8Iw=	\N	f	del_1-7.233				f	t	2017-10-25 20:10:53.87108+00
3318	pbkdf2_sha256$36000$9EWNoPHoSoSl$PCiYztVRTr24/A0WrMSVzRk5rnMYA+Eo4k6jlzfmQvU=	\N	f	del_1-7.234				f	t	2017-10-25 20:10:54.011447+00
3319	pbkdf2_sha256$36000$geodqPov7weX$lnvIuCzaocrRDosAEMEneaMZCl3XmMLhlIyk0HUxJ0E=	\N	f	del_1-7.235				f	t	2017-10-25 20:10:54.078497+00
3320	pbkdf2_sha256$36000$JpgWwlJ9tN1Z$LYq//tKQfUgTaEt1bZcJElms3jlASi925Z2gKtXQDGk=	\N	f	del_1-7.236				f	t	2017-10-25 20:10:54.132396+00
3321	pbkdf2_sha256$36000$bKAisjt0FXun$B9dErA0TSqI37ZWc8RQko9bPzJwp+rOgX+Ps9U+ia/I=	\N	f	del_1-7.237				f	t	2017-10-25 20:10:54.187427+00
3322	pbkdf2_sha256$36000$fouQUL8azghO$uWDrxqvYNAY5UH6uQEUxHW112k1eq6/ypYd3YsaVD+8=	\N	f	del_1-7.238				f	t	2017-10-25 20:10:54.244214+00
3323	pbkdf2_sha256$36000$aA4rgkSNjjCR$l97rAygM6k7y2Bg7r7j35dw8JaqlJqFWQ03PdHJC/iI=	\N	f	del_1-7.239				f	t	2017-10-25 20:10:54.299486+00
3324	pbkdf2_sha256$36000$Z49k4Aqaq7cI$ZJSzjK0lZLLi6YL5pqCSaWpYrQ659CEfa/D02QbDO5U=	\N	f	del_1-7.240				f	t	2017-10-25 20:10:54.354097+00
3325	pbkdf2_sha256$36000$9ucT2xDnJRDL$cQN3M8ZCH+818ZMz3Dt6iYkANIv2qYZ3BhKFKssw9hI=	\N	f	del_1-7.241				f	t	2017-10-25 20:10:54.409797+00
3326	pbkdf2_sha256$36000$QjltJTYaSYA7$RJG0+DNlxoOz7zA/jr+ewkUQvH5Hgqvs0dOzTqH/idM=	\N	f	del_1-7.242				f	t	2017-10-25 20:10:54.466356+00
3327	pbkdf2_sha256$36000$gz6Oin5buPRu$Lhv9LW8ICDDfvqsR2KupaIDfvUDwkdI2K3sucv5Nd4E=	\N	f	del_1-7.243				f	t	2017-10-25 20:10:54.523835+00
3328	pbkdf2_sha256$36000$IB9zkTXwHipj$FSmlv4Eethqc2rwRd8SR1ww+2A63EqALxp+OAxdOYyg=	\N	f	del_1-7.244				f	t	2017-10-25 20:10:54.581138+00
3329	pbkdf2_sha256$36000$nMtPUkrfhiRN$g31b4jUBogCPhIM96y9NqLKqnZfRp60AFjR7l9YkAOU=	\N	f	del_1-7.245				f	t	2017-10-25 20:10:54.639221+00
3330	pbkdf2_sha256$36000$9wuDFgd9J7EU$fYxquzO8lulfhI7SH9zr/KkI61pYkpe5vMhnAkSHIjY=	\N	f	del_1-7.246				f	t	2017-10-25 20:10:54.696557+00
3331	pbkdf2_sha256$36000$YFN75znz80M1$r0+bhtgQVuQoV0bip8iO+mlB5G84wREKTWmSfSSjWwE=	\N	f	del_1-7.247				f	t	2017-10-25 20:10:54.765091+00
3332	pbkdf2_sha256$36000$nS7218YMVMoj$Ldj0lmHfdpIaLO4Eud+Rxo9zraRSvJhZXB678INaD+M=	\N	f	del_1-7.248				f	t	2017-10-25 20:10:54.842204+00
3333	pbkdf2_sha256$36000$zOQcijcqjm6W$eRpKUnIoRxB355M/JuGEcDc+IVydJAArChP18n8eeIg=	\N	f	del_1-7.249				f	t	2017-10-25 20:10:54.90009+00
3334	pbkdf2_sha256$36000$RmiEw4s05O91$F365lirIbeVhB4oOlq0CZrw3F3F20lSOmXCTHjihPxE=	\N	f	del_1-7.250				f	t	2017-10-25 20:10:54.95737+00
3335	pbkdf2_sha256$36000$c3Me0ZJaXozO$BZF3R6Jt7lfxdx7yj10Q/2j8S8BDqDsR6u8LFg7AeBc=	\N	f	del_1-7.251				f	t	2017-10-25 20:10:55.015604+00
3336	pbkdf2_sha256$36000$TKkepnJ3igJr$X/jCivVcep3BxpC4bNxjI9ROMPyfnQ8kBEQe3TppI50=	\N	f	del_1-7.252				f	t	2017-10-25 20:10:55.070864+00
3337	pbkdf2_sha256$36000$JwfcrTn1qfsV$QVyxdKcs+Tm4gidYiKdztZyHj/2sRq5fucfjLlpB3R4=	\N	f	del_1-7.253				f	t	2017-10-25 20:10:55.126285+00
3338	pbkdf2_sha256$36000$UO60DoOteYGQ$2k64nEVqv1FtwwYSN0hFJnF3igxdizyMh0G0fLPZhbk=	\N	f	del_1-7.254				f	t	2017-10-25 20:10:55.18199+00
3339	pbkdf2_sha256$36000$VnVim0A0qLbJ$HowWJyprfBfpqqn9t29Y6muwbwB+Tty3EwSHQKwgo0Y=	\N	f	del_1-7.255				f	t	2017-10-25 20:10:55.238504+00
3340	pbkdf2_sha256$36000$L65qI7MrNUaW$/Ws+bTC/qXZ7/KRDAq+FYvX0/LbeRHzYB5bgqUWkrzs=	\N	f	del_1-7.256				f	t	2017-10-25 20:10:55.294077+00
3341	pbkdf2_sha256$36000$zL5h6nV7EgAQ$o/jzJGuHe3oBKJcp7yMsX+6EBKwT1FizEQvCetrnmNU=	\N	f	del_1-7.257				f	t	2017-10-25 20:10:55.350004+00
3342	pbkdf2_sha256$36000$rYMdpGgmNk7J$GHEtRPTFb1BLVm6NNYiWRU+7WZ41/oc/juGYrg47eyY=	\N	f	del_1-7.258				f	t	2017-10-25 20:10:55.404305+00
3343	pbkdf2_sha256$36000$ZTdFypZwqKiy$3h7cpkE15jwhVWsp0+IeACtPEu9iA9BHZymY3+GdOMk=	\N	f	del_1-7.259				f	t	2017-10-25 20:10:55.459428+00
3344	pbkdf2_sha256$36000$tO3OtacwN04n$Fj7qdrRuArTuwsnHnNO6Sxk0rPzfgGM5JRbLDDstuhY=	\N	f	del_1-7.260				f	t	2017-10-25 20:10:55.515433+00
3345	pbkdf2_sha256$36000$SRSU6MAxxme7$BSnfQXIJDoC3jX6vfOjf//Q6A1cVglTvnPC02xxRvYs=	\N	f	del_1-7.261				f	t	2017-10-25 20:10:55.570817+00
3346	pbkdf2_sha256$36000$8wkPewPvka9u$Vk0bcsFMdx9fnyRQSCz5XC4rU//CH3WySzNqrLbT1yM=	\N	f	del_1-7.262				f	t	2017-10-25 20:10:55.626323+00
3347	pbkdf2_sha256$36000$ZQYgPGiKomRp$WOWn9h9wkJ49dLXHxelEymxTq22iXJmxr2GHcucwl0Y=	\N	f	del_1-7.263				f	t	2017-10-25 20:10:55.681419+00
3348	pbkdf2_sha256$36000$XQP6bIdlVNIo$S+iYoFKFcWCxT22+NK9/mmn8Z2izei01uqMpXinlDNY=	\N	f	del_1-7.264				f	t	2017-10-25 20:10:55.737465+00
3349	pbkdf2_sha256$36000$d6UwfpBPgRAT$RTZEk+LX6lptXTYwdGVng+VFkg5zkKU53IohMnIIPps=	\N	f	del_1-7.265				f	t	2017-10-25 20:10:55.793428+00
3350	pbkdf2_sha256$36000$3wObd5sOFV2p$UmypqcOHEx3zhjUf+etzzSiI9sTY9VXjbY+pn7ZWuf4=	\N	f	del_1-7.266				f	t	2017-10-25 20:10:55.875265+00
3351	pbkdf2_sha256$36000$0gwCE4jMtDcA$OZrOwF2nzRAV2xZd1FVQ4m1h/SOm9Al3CveOAvFRCAI=	\N	f	del_1-7.267				f	t	2017-10-25 20:10:55.930643+00
3352	pbkdf2_sha256$36000$WmJJGDi1COxa$u0fK/AAPy5nVJCURHQJXphgbAaUv4K2b+4kRo0F+uqw=	\N	f	del_1-7.268				f	t	2017-10-25 20:10:55.986063+00
3353	pbkdf2_sha256$36000$G7kFoEn723ma$7+BvFifVmnTM6r6p34Qsv0WOwRLktgFxy5EZJcI8VBI=	\N	f	del_1-7.269				f	t	2017-10-25 20:10:56.0427+00
3354	pbkdf2_sha256$36000$UnpqpOHlpSSP$lww0YC827iI2kTFm4pLV1jeKEnhjK+xYjoQXF4ePGGU=	\N	f	del_1-7.270				f	t	2017-10-25 20:10:56.100017+00
3355	pbkdf2_sha256$36000$eQ0DSS6xwbHv$MFMU7mbiXruha8XcveAcb7wGYCoOfd57QV9Km3ZNG7g=	\N	f	del_1-7.271				f	t	2017-10-25 20:10:56.157208+00
3356	pbkdf2_sha256$36000$OgKanbfufn63$lA5TdFaExp0cQbH+fzQU21Zg9LIdKxfhGSAk0Q5un7w=	\N	f	del_1-7.272				f	t	2017-10-25 20:10:56.215146+00
3357	pbkdf2_sha256$36000$xM33iIzGC1Of$HhLL0CUDcqTq1XpFhsnJ0rRLNyGJ61pwhgwhCynPUes=	\N	f	del_1-7.273				f	t	2017-10-25 20:10:56.272109+00
3358	pbkdf2_sha256$36000$W3NZzNTZRwqF$2RwQ372h16HLSgnQPugZkxpY59OaRNpYyZBz6d9qGx4=	\N	f	del_1-7.274				f	t	2017-10-25 20:10:56.329433+00
3359	pbkdf2_sha256$36000$k3Nc3EbhGYxM$ML+eCqo34tahgZwu0480N7M7zfCIfApHtnQBZ1a80mQ=	\N	f	del_1-7.275				f	t	2017-10-25 20:10:56.387308+00
3360	pbkdf2_sha256$36000$7Hn0RdgBaNRI$667XqQCSC/jd/Q7pcf+RWkUqv1f+qSqg1BDIovTChsI=	\N	f	del_1-7.276				f	t	2017-10-25 20:10:56.444881+00
3361	pbkdf2_sha256$36000$x0h8VOPDoNe0$e8ao1CDDA6Ec8gK9AEfa3oiYlbLVX4YSZvTRUN8EURY=	\N	f	del_1-7.277				f	t	2017-10-25 20:10:56.503255+00
3362	pbkdf2_sha256$36000$PT1hF31KvuUi$whVQv4QY+kbFJ1e49Usu5JPKQmrnblO0AJBeIPR8n0I=	\N	f	del_1-7.278				f	t	2017-10-25 20:10:56.562772+00
3363	pbkdf2_sha256$36000$i6U9JZEVwAJg$0pKGlAW3KhVDvbz1wuu8yLdNAvqqrw01sqvGVRiY2Xw=	\N	f	del_1-7.279				f	t	2017-10-25 20:10:56.624441+00
3364	pbkdf2_sha256$36000$VE5QGrHTApss$X6MgP19SFXEO6rKfeE/PjIsWFqpu3svtEoVrIrfZ0g4=	\N	f	del_1-7.280				f	t	2017-10-25 20:10:56.685239+00
3365	pbkdf2_sha256$36000$z2oTp1RU3OaS$3v+qIY7ydfabCFnf4YxzTBgBH1xmIrWIihD6dkzug/U=	\N	f	del_1-7.281				f	t	2017-10-25 20:10:56.747472+00
3366	pbkdf2_sha256$36000$J1hKbW5bNeTI$c9IY00dg6Lr/LLlFfmEaZlaKH0n7mNNuBP5lBb1rWDM=	\N	f	del_1-7.282				f	t	2017-10-25 20:10:56.808453+00
3367	pbkdf2_sha256$36000$fzwGV5DLHmv2$1/nZ78xwvK12v3bIc+aSFts/CFB4ZyCNQeey85RqVTE=	\N	f	del_1-7.283				f	t	2017-10-25 20:10:56.890585+00
3368	pbkdf2_sha256$36000$tjBC134wbefi$YzYOxfE2HWz2mUa43frG3m7eMFQ4dItOwEWI9TYHwK8=	\N	f	del_1-7.284				f	t	2017-10-25 20:10:56.95993+00
3369	pbkdf2_sha256$36000$G5BbUySQwQqB$HeE90JoWo0JmT7wMCG4AQOnnlBOIiYtBKwGjvtril/s=	\N	f	del_1-7.285				f	t	2017-10-25 20:10:57.021063+00
3370	pbkdf2_sha256$36000$pkSJKIxleUfz$HOIO0croa/fNHPfaAYbR28y0S1uSSm0FdaTC+O/KOTE=	\N	f	del_1-7.286				f	t	2017-10-25 20:10:57.078057+00
3371	pbkdf2_sha256$36000$X9Y4tpkzkisI$pNc5Mgux1f8komBYY8QkQcYNgRJQaKsgkrZJZnCcVME=	\N	f	del_1-7.287				f	t	2017-10-25 20:10:57.134361+00
3372	pbkdf2_sha256$36000$LlDYjhddEWms$lu1k+ZJ6ywr4BGS9k36g5q9MWVlju3aQ6ukmpbQd9gA=	\N	f	del_1-7.288				f	t	2017-10-25 20:10:57.190361+00
3373	pbkdf2_sha256$36000$GpVI0JpQ11UT$3XS4KBtEyFgvfwhJAlBZASWoy0ColO5dLC9pQum62Ws=	\N	f	del_1-7.289				f	t	2017-10-25 20:10:57.247245+00
3375	pbkdf2_sha256$36000$Oi9SwIXkFkGE$HrhJOXaxUXjaNQBp/4TQQBbArSAlGXB1nkgXdqqwnYE=	\N	f	del_1-7.291				f	t	2017-10-25 20:10:57.360458+00
3376	pbkdf2_sha256$36000$UqfOSwRpbIWn$rri9T9p2JX+2aZDqjtVNXDQhIL0BG7elaAwk2YyWLPQ=	\N	f	del_1-7.292				f	t	2017-10-25 20:10:57.415765+00
3377	pbkdf2_sha256$36000$lEDDApTcuTzx$fw75w0oQrte4tR9BeRqQduNxnIG21x5Wy6P9DsK5JlY=	\N	f	del_1-7.293				f	t	2017-10-25 20:10:57.470936+00
3378	pbkdf2_sha256$36000$Jvtbxyd191LG$/4iZR9RpOxK9CafM/ZBZGl+rgmdGlcdSpy63VDq9zqM=	\N	f	del_1-7.294				f	t	2017-10-25 20:10:57.526255+00
3379	pbkdf2_sha256$36000$OFuvxLF7tDRP$1FCMVGdBZR1JT2RN1r/0XHZHtSvmXrtKpQNWyL4XOik=	\N	f	del_1-7.295				f	t	2017-10-25 20:10:57.580735+00
3380	pbkdf2_sha256$36000$ZtY4VCQE3233$NpC9S+UiXz6lsZclURG7ubpSB/hxRiLS/ppxqntkzwA=	\N	f	del_1-7.296				f	t	2017-10-25 20:10:57.636137+00
3381	pbkdf2_sha256$36000$h9jqfIdeTfJB$LJVrffe92WhqptmgbmgOgXj2qb0rd1VVchfToapY5gQ=	\N	f	del_1-7.297				f	t	2017-10-25 20:10:57.691722+00
3382	pbkdf2_sha256$36000$GdjPagZX86UM$mnh/exJQFdPCCeZObdD0DopxqBDUsuyEz3cXpgRNwS8=	\N	f	del_1-7.298				f	t	2017-10-25 20:10:57.746815+00
3383	pbkdf2_sha256$36000$XFFWY0nYnrsx$xew0VQFSxTEyJ/QnBZhVaYaYT23ABw6KBpG61m2to8I=	\N	f	del_1-7.299				f	t	2017-10-25 20:10:57.802245+00
3384	pbkdf2_sha256$36000$aSFQ2Jk1eS0H$RAuEmfcpfgQAIuaoBhogn/1VGqGGbxQC+0W6WUC1C8w=	\N	f	del_1-7.300				f	t	2017-10-25 20:10:57.857538+00
3385	pbkdf2_sha256$36000$XiE2oRsbtfAp$RpdY9bCkcGtCGWWKruw5+gtLt7BitpL2iWYEhi5zYDA=	\N	f	del_1-8.1				f	t	2017-10-25 20:10:57.922267+00
3386	pbkdf2_sha256$36000$M6rGDHMMeT4y$bxhOy4rU4d9zTLEKQDkSTjlZd94jYa+F4/a0RO1sNv0=	\N	f	del_1-8.2				f	t	2017-10-25 20:10:57.991808+00
3387	pbkdf2_sha256$36000$nxuo56NEXu5E$M1i1HBmnAIJ5HODcpVATRZsJcqCkp0nuDgCi5bAZYks=	\N	f	del_1-8.3				f	t	2017-10-25 20:10:58.047237+00
3388	pbkdf2_sha256$36000$Uql96MXpUXpm$4Iqz6i0xJmj8oKB8Y+NscC7PPj8/+tRb1mR0RgqiFlg=	\N	f	del_1-8.4				f	t	2017-10-25 20:10:58.10264+00
3389	pbkdf2_sha256$36000$8qS8ARbixq5u$etT+A3loxC/hKMV9J28Oc1WGaenV5bdjogYncZy1Wtk=	\N	f	del_1-8.5				f	t	2017-10-25 20:10:58.158253+00
3390	pbkdf2_sha256$36000$uRatWn9fbm5Q$e/TcsaVhmiYRCFJqK6S9RFMjRcEmOs+bLKIiLCjkfCE=	\N	f	del_1-8.6				f	t	2017-10-25 20:10:58.214473+00
3391	pbkdf2_sha256$36000$2L3kpCDTdFA6$HLz9A1vQzCjCfw6U+TwZJXViILRuBLfn+SApU98fWEY=	\N	f	del_1-8.7				f	t	2017-10-25 20:10:58.274137+00
3392	pbkdf2_sha256$36000$14QFQjbSt11T$4N9fT8Zg/ZrfpDi95IwTpBl3U1p0HL2LyOrFXkIgwUE=	\N	f	del_1-8.8				f	t	2017-10-25 20:10:58.33051+00
3393	pbkdf2_sha256$36000$K6Vlsq94w3ZO$SBKgqpUM3eB09eZQFXFtrhrg1VenqtT1C/EmzEEz5f4=	\N	f	del_1-8.9				f	t	2017-10-25 20:10:58.38607+00
3394	pbkdf2_sha256$36000$wfo8PueNAeBs$9nv9t4W8IIzM9H068yk1GhAZ+5WO5IvdQVSvx/u6a0c=	\N	f	del_1-8.10				f	t	2017-10-25 20:10:58.442094+00
3395	pbkdf2_sha256$36000$QDOFYfylIoYa$lPayInMjKQOp5X2YK77udGBB3b6Z3LGj+E0AgMObcTY=	\N	f	del_1-8.11				f	t	2017-10-25 20:10:58.497859+00
3396	pbkdf2_sha256$36000$OHPpQeFInLbu$+yUFsij8kInK3YEFz6HY4yS5olF7fnRBjWkJP15Ifys=	\N	f	del_1-8.12				f	t	2017-10-25 20:10:58.553883+00
3397	pbkdf2_sha256$36000$FyusZOsExF3Q$CNfpQUFsQDD5NxMxnFhwwVY4uUbXhCyBTGPjgy4v2Hs=	\N	f	del_1-8.13				f	t	2017-10-25 20:10:58.609581+00
3398	pbkdf2_sha256$36000$6CB6MvsxLBo5$SBSKt/dz6+OQdRo8yc8gYdPr2PHZrVZR2UArPFXYFcA=	\N	f	del_1-8.14				f	t	2017-10-25 20:10:58.665321+00
3399	pbkdf2_sha256$36000$BArlhdeS0YG9$wTwBIEPf8QWrQq47nEtlteq4cL5ID3SenI7D4cqaY0o=	\N	f	del_1-8.15				f	t	2017-10-25 20:10:58.720896+00
3400	pbkdf2_sha256$36000$YjwfYDZvREg2$AfV3CWAoJ2FjhlqakoDOfxPTenPNBGJ/M+RgjTAfSaI=	\N	f	del_1-8.16				f	t	2017-10-25 20:10:58.776411+00
3401	pbkdf2_sha256$36000$hx4qpxojG8Yn$vZCf2Kf+9gObe6gviX8rDaVUkDcL4p3YK+S/YTVt3KY=	\N	f	del_1-8.17				f	t	2017-10-25 20:10:58.831425+00
3402	pbkdf2_sha256$36000$gGDG5keHeuVA$cMUPhoP85PGt5wThiBw/syNLwMOeGS8HZ33xgrLByxs=	\N	f	del_1-8.18				f	t	2017-10-25 20:10:58.888157+00
3403	pbkdf2_sha256$36000$kbKcGZogCCqu$LWQ6s9FlZggQiqHopyG2Hj6fw8iNbOdYHYpFXbajY60=	\N	f	del_1-8.19				f	t	2017-10-25 20:10:58.943663+00
3404	pbkdf2_sha256$36000$9KtSg1b6vRqf$WtObdhQEUUVf2sOrEXh3CRp7LrNbkaHVJml2gXBzlLY=	\N	f	del_1-8.20				f	t	2017-10-25 20:10:59.13566+00
3405	pbkdf2_sha256$36000$nkwH587W5YmO$9Rx5WyiRlW5FZ7h7R9y4cJlj3lJtupIZWcU+aYVAgYc=	\N	f	del_1-8.21				f	t	2017-10-25 20:10:59.281948+00
3406	pbkdf2_sha256$36000$njbOKoviDp8G$bNGViWdav8N02F9t2Cl1XcWnLCNS5mNL25AIFzzpDFk=	\N	f	del_1-8.22				f	t	2017-10-25 20:10:59.426222+00
3407	pbkdf2_sha256$36000$9owihat72HhS$LLtYu4VfP4OKDRUVbxPYF7Gxd6R2RJ42yxAKNuNWhNc=	\N	f	del_1-8.23				f	t	2017-10-25 20:10:59.56017+00
3408	pbkdf2_sha256$36000$C7QPYQj2Qkzv$pitZaSiAbfJ7kE0ePxizrKmDHSdLMQOPZ20/1jHFE+k=	\N	f	del_1-8.24				f	t	2017-10-25 20:10:59.703518+00
3409	pbkdf2_sha256$36000$kZ0oegOjpcby$vfW6/73oy+kdxlY7q1fNYwY0KeD5nWSZg9PPZvtqKt4=	\N	f	del_1-8.25				f	t	2017-10-25 20:10:59.849567+00
3410	pbkdf2_sha256$36000$VEYutU24sL8w$DmZHcwDbIm6bdmJV1VVntHvoHGIHVNadv98s66xpkAw=	\N	f	del_1-8.26				f	t	2017-10-25 20:10:59.991797+00
3411	pbkdf2_sha256$36000$oIDCRhyVxH5C$RqnLaksR8zJXgJGvZgrHWwd1/tYx+yUBaccLfpViFFM=	\N	f	del_1-8.27				f	t	2017-10-25 20:11:00.134709+00
3412	pbkdf2_sha256$36000$zS6oQpruuPmR$ZaGoR4nFPdPKvDgEhjGkum1ZLpDFSmpAGlYTX/laJxQ=	\N	f	del_1-8.28				f	t	2017-10-25 20:11:00.276354+00
3413	pbkdf2_sha256$36000$mJ8oKieJ1DY8$XBdoMl73n2x0QqvEFeLljRQw0ndYPA4cn1Su5csHqYo=	\N	f	del_1-8.29				f	t	2017-10-25 20:11:00.390266+00
3414	pbkdf2_sha256$36000$d7MwSHAT1dP2$QjIFFWLOWW+GKtLXJLXgFyqS9w1TM03XB3qLcoPQBlA=	\N	f	del_1-8.30				f	t	2017-10-25 20:11:00.504022+00
3415	pbkdf2_sha256$36000$IWZl84FlVG5X$0/ofKwp9+taeru5dRdUzveMy/esGyVgNOiHaJybW3E0=	\N	f	del_1-8.31				f	t	2017-10-25 20:11:00.608135+00
3416	pbkdf2_sha256$36000$tq1Znvv2CFSe$ILfgsEJmXH6AUSu7PDunkbCSHx0NDqhAr9Ny5Rje8qg=	\N	f	del_1-8.32				f	t	2017-10-25 20:11:00.751668+00
3417	pbkdf2_sha256$36000$gtXTxlLDJ2cf$JzKY4RPqEYBEYoRp90Dmhx4i45SLud/xnWvarak5K0s=	\N	f	del_1-8.33				f	t	2017-10-25 20:11:00.893441+00
3418	pbkdf2_sha256$36000$OUZ02kXb51PC$fr8hEFEfN+KtNLgoD0kBJoQ7cM6oyXTIbu586awKUGY=	\N	f	del_1-8.34				f	t	2017-10-25 20:11:01.034233+00
3419	pbkdf2_sha256$36000$gK1Dhf2xgrYv$WT4oO5y0aSCVNOiG2MIYvH9+ZuvLb/aFOl+Ilg4LUNY=	\N	f	del_1-8.35				f	t	2017-10-25 20:11:01.173738+00
3420	pbkdf2_sha256$36000$eTL1A7P37JmR$J9GZcK1Ka836+yn357W4Pw75R2rPuabIo9WPlUSzqHg=	\N	f	del_1-8.36				f	t	2017-10-25 20:11:01.387024+00
3421	pbkdf2_sha256$36000$vUXFnf67qByd$vB90JW+DRaa8m9T2KkTXWIfV6wLAD1ydfhWgiRgR8xw=	\N	f	del_1-8.37				f	t	2017-10-25 20:11:01.531457+00
3422	pbkdf2_sha256$36000$OPutTTQcQjjN$jwxTuWTtDeYmsW6QCf/237z4vnRcfoNgJq3un1NB5io=	\N	f	del_1-8.38				f	t	2017-10-25 20:11:01.673103+00
3423	pbkdf2_sha256$36000$6u4JOEoehKC2$nMdNtIpcaCdRlAxM2OCCw1dCtpDAPrqClSSYppsp9Dk=	\N	f	del_1-8.39				f	t	2017-10-25 20:11:01.815627+00
3424	pbkdf2_sha256$36000$ZERH6UIb04kK$G4+Wk5goMXYAPxZsaak3748gbUEklXwdGtEqAV06dRw=	\N	f	del_1-8.40				f	t	2017-10-25 20:11:01.958199+00
3425	pbkdf2_sha256$36000$9EAw9kY3gYzC$AteQC+Pq94TEQK79FcNRZMG76Q+fRoDNmNbF3tggmew=	\N	f	del_1-8.41				f	t	2017-10-25 20:11:02.085419+00
3426	pbkdf2_sha256$36000$c65TpTqJu0Vq$QICfEXf+62ejtES98Nun/Za4HOBDYOXJr80Hsi1ycLU=	\N	f	del_1-8.42				f	t	2017-10-25 20:11:02.207496+00
3427	pbkdf2_sha256$36000$tkPJg4GZ49fg$6KrZgUIqfYAW/4Ch6+D+7mWbk4Y3ycfDMrs9qRhVBjI=	\N	f	del_1-8.43				f	t	2017-10-25 20:11:02.345204+00
3428	pbkdf2_sha256$36000$sOnIwl3q8EHw$Y4+dc7/aIk9WJS7G2VqpzCW2r9OR/rvXdBCsY2XU6DI=	\N	f	del_1-8.44				f	t	2017-10-25 20:11:02.500101+00
3429	pbkdf2_sha256$36000$W5c1zSRNBjLa$kX7H0B2dNqPm7Zjzug3LkHCozXTOAhphR4+clCumKyk=	\N	f	del_1-8.45				f	t	2017-10-25 20:11:02.636427+00
3430	pbkdf2_sha256$36000$nuUB1R36TP0B$B9EEo1QYLjbr4UKHALePhw+Dt95Rh8YY1oisR+YskEY=	\N	f	del_1-8.46				f	t	2017-10-25 20:11:02.778872+00
3431	pbkdf2_sha256$36000$bWPUrjDm1SiV$ka4qv2gubPCou4/FK3IvEj8iMDpRwTvnN4LKkfJF1TE=	\N	f	del_1-8.47				f	t	2017-10-25 20:11:02.921521+00
3432	pbkdf2_sha256$36000$p10NX6ULvESI$HsxVjvknatug2kfAav7A/or7+7ju55EDbScXxz16qM4=	\N	f	del_1-8.48				f	t	2017-10-25 20:11:03.05634+00
3433	pbkdf2_sha256$36000$3u0cd4akzDOm$RYFYNTQTdb+3pQmNuekcASiWrmd235QqZjO+tIBi4bs=	\N	f	del_1-8.49				f	t	2017-10-25 20:11:03.169071+00
3434	pbkdf2_sha256$36000$Pq7ucL3wdwTh$V+BddgwO8F2zCDlFwrPG3+32Cfa/CeaniWeJYbGTjcI=	\N	f	del_1-8.50				f	t	2017-10-25 20:11:03.282481+00
3435	pbkdf2_sha256$36000$4FUK3r5hnTxH$e8Y5gVBeLB+JvVHLGeb1lSHHd/XtLNuL3KE2Cy7CVDc=	\N	f	del_1-8.51				f	t	2017-10-25 20:11:03.394695+00
3436	pbkdf2_sha256$36000$eMBKNCu7Bk3k$4t+2x5C4p5tIfnYWaLNhHxtioAK8Z6fZhXGyg3ii2Mo=	\N	f	del_1-8.52				f	t	2017-10-25 20:11:03.555741+00
3437	pbkdf2_sha256$36000$M4BosXllYyLo$0X3aSB10OgPTzD39hq5N7BSvcFy/nW/qbqfCPI5aamI=	\N	f	del_1-8.53				f	t	2017-10-25 20:11:03.644606+00
3438	pbkdf2_sha256$36000$HG6LTiU6pPzA$Wrn/jZ3HYsotP9fh7olYf10Nb7Rgw2+Ks0O5ssoX6cs=	\N	f	del_1-8.54				f	t	2017-10-25 20:11:03.746994+00
3439	pbkdf2_sha256$36000$wIHVSn9fIvkF$TmnI3NJtJgLEgUXRDbJHNmRY+ttaww6iyP7XjtWX8Tk=	\N	f	del_1-8.55				f	t	2017-10-25 20:11:03.900037+00
3440	pbkdf2_sha256$36000$Iwe0QnfJ0csB$Hk48MU69Hc5NUSyHHJP77pBAtMG0QuJXm9FzjBTibcw=	\N	f	del_1-8.56				f	t	2017-10-25 20:11:04.00536+00
3441	pbkdf2_sha256$36000$gl8oaDRDr2Ch$/+NN58MVBHjwPP1TXUo+F7G8Y3TBCs2lHLdr9Q3X05Y=	\N	f	del_1-8.57				f	t	2017-10-25 20:11:04.081495+00
3442	pbkdf2_sha256$36000$HgvH4n9GT8ZN$XUNWzg6sZn0y10CmKoBFaKyyj4pcb/ZfI/+tpidqOeY=	\N	f	del_1-8.58				f	t	2017-10-25 20:11:04.152846+00
3443	pbkdf2_sha256$36000$LGDV05C6MXbP$XPem9CEvz5RLqtXz7nyR9jwMTlN5ht9QB8mlOISq96U=	\N	f	del_1-8.59				f	t	2017-10-25 20:11:04.224277+00
3444	pbkdf2_sha256$36000$WRfxLYwH4tKV$99T4OL382FV67UISdRCf534J7okPYRYn2dbe+Tk1n3o=	\N	f	del_1-8.60				f	t	2017-10-25 20:11:04.296096+00
3445	pbkdf2_sha256$36000$L21uRTo75enZ$1tYgUIw91Iqfsapkp1MWy6MhME0OweUZBQdLpqzrWlU=	\N	f	del_1-8.61				f	t	2017-10-25 20:11:04.367379+00
3446	pbkdf2_sha256$36000$t2OLYKrVLs9i$VDGJaAciOjsT9oH0NRHOyoSjUnLfDfCPzoL97vCZg6g=	\N	f	del_1-8.62				f	t	2017-10-25 20:11:04.43775+00
3447	pbkdf2_sha256$36000$na5NeNdccVa7$Eqyi/QjFvCnzekhScZVH0KtNMqM9kwafvE35eq4qHPg=	\N	f	del_1-8.63				f	t	2017-10-25 20:11:04.5085+00
3448	pbkdf2_sha256$36000$qFVLzlp9IbE8$sLuLXf1NsXL2rKQ5I5L0tHgom/M5LyA28Yc276wA9OM=	\N	f	del_1-8.64				f	t	2017-10-25 20:11:04.597564+00
3449	pbkdf2_sha256$36000$kprsv3AHDaqy$v2ZFZ45VqYDoMPkkorN+yP62k82um7s9c2ohvPWEdbE=	\N	f	del_1-8.65				f	t	2017-10-25 20:11:04.656528+00
3450	pbkdf2_sha256$36000$OZ6uzNmSiKC7$pN2oftkrsBvfHLYSIWLUGp69WQMgwOhH8t3MOwkrgx0=	\N	f	del_1-8.66				f	t	2017-10-25 20:11:04.716385+00
3451	pbkdf2_sha256$36000$YK4ZsOFXI4Su$r9JXllFEn0yWXDTgxa+G7bhDRX12LvBqgQAkXjEWUK4=	\N	f	del_1-8.67				f	t	2017-10-25 20:11:04.775277+00
3452	pbkdf2_sha256$36000$rFORLOtc4XRL$AgtXKuAXF/9qPs8s2F1QgRWwulQoBaPigxaMG3ZyDTM=	\N	f	del_1-8.68				f	t	2017-10-25 20:11:04.834284+00
3453	pbkdf2_sha256$36000$uI96rTYDywPn$XohF6BuTJ3DSpJMgXT7ddoUlOwxwEmBA4LpukA1txsA=	\N	f	del_1-8.69				f	t	2017-10-25 20:11:04.893233+00
3454	pbkdf2_sha256$36000$q2W3kuFRFxDk$HU4W4P5G6tg2HJcmcDdVFyDCLnWwfVlSEu72KKEfXIg=	\N	f	del_1-8.70				f	t	2017-10-25 20:11:04.951893+00
3455	pbkdf2_sha256$36000$yem8jNDK1j0E$6zM8HNDck0DEGieVzJ2mom2DuxShnqts2KBpzFpm/hU=	\N	f	del_1-8.71				f	t	2017-10-25 20:11:05.01117+00
3456	pbkdf2_sha256$36000$7lZsPcgF9ode$tJJGoGiw2HNuiLevxHD6bMbJ7NqKQE2Z8zEmk1Luy0A=	\N	f	del_1-8.72				f	t	2017-10-25 20:11:05.068374+00
3457	pbkdf2_sha256$36000$YP9Jxan6zF0L$blq1PSeItg0HHZDuPiP8veHiZ3S1QekjLgTUahI4upM=	\N	f	del_1-8.73				f	t	2017-10-25 20:11:05.123954+00
3458	pbkdf2_sha256$36000$RRBLATQOZcR7$p7dUWIAufYeiMCrCKBBhAqnVJnFgKrBLGZBOUdHrmrE=	\N	f	del_1-8.74				f	t	2017-10-25 20:11:05.180136+00
3459	pbkdf2_sha256$36000$WLOVsPA2iuZl$YPGByRftyAqNNKWeA+yCPz53f1MovMYXWE6OlSNOYXM=	\N	f	del_1-8.75				f	t	2017-10-25 20:11:05.236694+00
3460	pbkdf2_sha256$36000$W18WYgDOTsA6$W4jJyqyTvsKMMrLSH11TqScFeZUzJQv1CvP16MC4kwI=	\N	f	del_1-8.76				f	t	2017-10-25 20:11:05.292537+00
3461	pbkdf2_sha256$36000$XkgjpLPMWpkS$d+3NbnGn5XsvooGIB2Kr5nNZAibzvygQC/7mam8uYLs=	\N	f	del_1-8.77				f	t	2017-10-25 20:11:05.347857+00
3462	pbkdf2_sha256$36000$PRdyAyJoQvIw$62vKtVEoALi0pjGBOXXM0o5Twb5RWH5ThUObcwQ23/w=	\N	f	del_1-8.78				f	t	2017-10-25 20:11:05.403425+00
3463	pbkdf2_sha256$36000$lO0jT5zQ05IU$DaZq/O12GH+p+T7A0r1qPqaMrJaGDIjSTed10Naoo5o=	\N	f	del_1-8.79				f	t	2017-10-25 20:11:05.459083+00
3464	pbkdf2_sha256$36000$ivhOQbrcTPCk$ibz8XPtjT4wfXN+dODostyCEXnkDntJF1Efw8Xr8wZo=	\N	f	del_1-8.80				f	t	2017-10-25 20:11:05.513561+00
3465	pbkdf2_sha256$36000$AVEMK20arrzL$WMBrZEeWvJyfhEccsFftp3JB+3Qj611opu1wf5ZH3rY=	\N	f	del_1-8.81				f	t	2017-10-25 20:11:05.568028+00
3466	pbkdf2_sha256$36000$w2UeO42y14fJ$NmFZeJJaKNXjV21vqn+g6wFaII8JFtihmTIaFwtAex4=	\N	f	del_1-8.82				f	t	2017-10-25 20:11:05.648529+00
3467	pbkdf2_sha256$36000$tx6btLJNqMD6$KHWFvNqTwyN82SbqzUf8MJqwLKL+3QS3SlVXBql78is=	\N	f	del_1-8.83				f	t	2017-10-25 20:11:05.703257+00
3468	pbkdf2_sha256$36000$zW1ZXvG09FZa$LrAbrAui/wqwOaQgo9pN36q2lIQ1eg9lBeAP+5Hh5SM=	\N	f	del_1-8.84				f	t	2017-10-25 20:11:05.758716+00
3469	pbkdf2_sha256$36000$Cpc1qxELa7I4$2wDhcmp919/ohm30SRwid9B+7IFasFhjP5307AoKriI=	\N	f	del_1-8.85				f	t	2017-10-25 20:11:05.814478+00
3470	pbkdf2_sha256$36000$cp21Cpr4yTNQ$PLihFfWGWhgvUqPL9+VGvGY1bQgvhjVar1Z249Wv81s=	\N	f	del_1-8.86				f	t	2017-10-25 20:11:05.87044+00
3471	pbkdf2_sha256$36000$LC6RLO5rNTZd$qbV/Xl9kDH/9OBibJzHnqOJGwHWiv5cclvOVY1etLxE=	\N	f	del_1-8.87				f	t	2017-10-25 20:11:05.924916+00
3472	pbkdf2_sha256$36000$TdEoJoIab5eZ$CdaNHsdw6Bugy8nT9hm/5zevVRRqACTG3m9V6XoHUNk=	\N	f	del_1-8.88				f	t	2017-10-25 20:11:05.991742+00
3473	pbkdf2_sha256$36000$B2wAQT0FnTuC$jZApzpqofJgz9jrW6zxr9EkxyMHxouAV4c2HM6uS/FE=	\N	f	del_1-8.89				f	t	2017-10-25 20:11:06.080452+00
3474	pbkdf2_sha256$36000$LnCcFbe8558j$Ydodlmv+evMw2x0XtSKlQvWSnPVl53z2rLQu19CDwUk=	\N	f	del_1-8.90				f	t	2017-10-25 20:11:06.224291+00
3475	pbkdf2_sha256$36000$qgIVzNx8C9IP$qDoVGxCP+Asjnc6hbUYaPuab2eTbPktp2CTtO+Q2NaM=	\N	f	del_1-8.91				f	t	2017-10-25 20:11:06.365462+00
3476	pbkdf2_sha256$36000$CJIHk803YTIK$a7frKmwL0kI7wliguN0PV4C6oQs98bQ8mMDyESVuLU0=	\N	f	del_1-8.92				f	t	2017-10-25 20:11:06.505836+00
3477	pbkdf2_sha256$36000$sWHKg4LwR41I$PYhMFe7vD0u+THY7YP148Hp6rLuvl6uZ4qnFdV9Kj9g=	\N	f	del_1-8.93				f	t	2017-10-25 20:11:06.663478+00
3478	pbkdf2_sha256$36000$DNwccGD93rUS$vj/W02ap2mdDK2PCCHGNe56ye8YxnXg+VUfk+Ob2eB0=	\N	f	del_1-8.94				f	t	2017-10-25 20:11:06.861971+00
3479	pbkdf2_sha256$36000$80FWeeg1J5AQ$9VZ1DbmLTZ1uf7tO3M3AGgUvSwOp+33rUbbJFAMRU6c=	\N	f	del_1-8.95				f	t	2017-10-25 20:11:07.001677+00
3480	pbkdf2_sha256$36000$ZM5pWyBcfgL0$91SBZGSGLu2olIDD2PuUmmVQRHyKlemJHik5wvQTO6g=	\N	f	del_1-8.96				f	t	2017-10-25 20:11:07.070393+00
3481	pbkdf2_sha256$36000$bby9GEHqmrPs$2K10RUtHqJo/Wb9oVfkx8w/COxIePkqMhSiQ8VWM0po=	\N	f	del_1-8.97				f	t	2017-10-25 20:11:07.124829+00
3482	pbkdf2_sha256$36000$3PTtyPwnRgnK$7bH/4iy3Yx3lmgBWDaqtr4t9snJB9f0b8ivnVl274mg=	\N	f	del_1-8.98				f	t	2017-10-25 20:11:07.180232+00
3483	pbkdf2_sha256$36000$H4YHzgYbEIiL$pWAxngYsTGhocBLhZaKX4CaabHBIDnwQLj8QZobR0Y0=	\N	f	del_1-8.99				f	t	2017-10-25 20:11:07.236321+00
3484	pbkdf2_sha256$36000$usJcDTj02Hta$lwk3yQNh+KJHhijdrb/hMLbe6k6z4ootqdxWwtGOi0A=	\N	f	del_1-8.100				f	t	2017-10-25 20:11:07.291531+00
3485	pbkdf2_sha256$36000$zRfumj89iSZT$VTrKcxcG1xeBZ9jFJFmE4jv+sgzEO6bj9B2sCsOCv7A=	\N	f	del_1-8.101				f	t	2017-10-25 20:11:07.347006+00
3486	pbkdf2_sha256$36000$5U1sO4zZ7W1n$BIEAqDGkPm/znpD0HuIi8gRlDaSYmEc2sjsWrX9YuvU=	\N	f	del_1-8.102				f	t	2017-10-25 20:11:07.401896+00
3487	pbkdf2_sha256$36000$AhHqEHMZ31Xp$FI/KTtNpf90bM9xQvKLe0tT9gDH1ZBEqHi8X70WKzY8=	\N	f	del_1-8.103				f	t	2017-10-25 20:11:07.455526+00
3488	pbkdf2_sha256$36000$YichxRuKebj8$lX2cuGZXFHxqlUBzr7q5S8cy0UVrG5pJX6ld/BatGtQ=	\N	f	del_1-8.104				f	t	2017-10-25 20:11:07.511111+00
3489	pbkdf2_sha256$36000$NiPCsqvYbRkl$LXaeT1CAmkIFYO1/0yrTnjfiXOZeyObeA3Q7QplxqVU=	\N	f	del_1-8.105				f	t	2017-10-25 20:11:07.566633+00
3490	pbkdf2_sha256$36000$YFgIq4daeddk$hR6tH1GWhz76HL33S0avIgWGzA53yp27sXvxxB6qWTE=	\N	f	del_1-8.106				f	t	2017-10-25 20:11:07.622191+00
3491	pbkdf2_sha256$36000$8GBtUP43VUkQ$f6KHjUUlajo5B47Wz531q8GWvZLJqaGqBkeI0mkZVFk=	\N	f	del_1-8.107				f	t	2017-10-25 20:11:07.677475+00
3492	pbkdf2_sha256$36000$JhIbc9NbKWxM$nHbn7kZdEvmFukRGrg4pG72AMFGL22unMYnf7jd+xOg=	\N	f	del_1-8.108				f	t	2017-10-25 20:11:07.733542+00
3493	pbkdf2_sha256$36000$dCOqo0vP4328$x3P4Tl3YYNpi/YZDTXjMAnnc6OeltZZ1ml3E7kmp5B4=	\N	f	del_1-8.109				f	t	2017-10-25 20:11:07.799413+00
3494	pbkdf2_sha256$36000$sescYzRBdz7s$WXuZh+5Kh4OljVzbIZZYf4j9Mi1GlwzXUzVJrPzKPxA=	\N	f	del_1-8.110				f	t	2017-10-25 20:11:07.867992+00
3495	pbkdf2_sha256$36000$TD6m48CE8tLf$T3VTHv9OOwnKzTWrw/FnFRmGRXfxDXC4Zm0TPZ5B5tg=	\N	f	del_1-8.111				f	t	2017-10-25 20:11:07.924225+00
3496	pbkdf2_sha256$36000$rPbqbbz0ynDO$nGGhecPBbA1Iya6FUMmqmmm2i6FvDzaAOZNKxkSTrlU=	\N	f	del_1-8.112				f	t	2017-10-25 20:11:07.980033+00
3497	pbkdf2_sha256$36000$OlEA5aeuUCHX$YIM+clb7rcnkee34PIWeXYRRYDt9dMbIZLmXu2rx52E=	\N	f	del_1-8.113				f	t	2017-10-25 20:11:08.054275+00
3498	pbkdf2_sha256$36000$lnKFsb6RfxmI$OXu8lRvgrn3DruZrQpKqFR3HYhMcW2uGPVWTx0Ze79g=	\N	f	del_1-8.114				f	t	2017-10-25 20:11:08.199905+00
3499	pbkdf2_sha256$36000$Tfa95IJKN63Q$eDceAiwhmVwXEsn+MeWmRIG4SmG6YaUlFh5Dr/sT1YU=	\N	f	del_1-8.115				f	t	2017-10-25 20:11:08.345516+00
3500	pbkdf2_sha256$36000$th9xUbl1Ad4w$4TCNxxLYIrhlDA3RL/W0tQV54kanS/fY8HWW5ueu8mA=	\N	f	del_1-8.116				f	t	2017-10-25 20:11:08.48907+00
3501	pbkdf2_sha256$36000$DClsuAd0snk6$bDFgLB3q8o40QdvRZyKj8Jp5cKe/BfJUw/UM0eBNYmw=	\N	f	del_1-8.117				f	t	2017-10-25 20:11:08.631615+00
3502	pbkdf2_sha256$36000$clDebPMXVj55$nCO6Z+U8lwc0TmeiLXdwyBqQkyJVSly2qffmNoRiS8w=	\N	f	del_1-8.118				f	t	2017-10-25 20:11:08.775843+00
3503	pbkdf2_sha256$36000$oujVaETfrMPd$t9lhjt5JFXV5CMh/YFnHssDeeQlsPXoxL4gsfjFeJE4=	\N	f	del_1-8.119				f	t	2017-10-25 20:11:08.9865+00
3504	pbkdf2_sha256$36000$zL93aKwbYBIz$1p4/LNgw72XsMuGb1rlaBimowAG79PAB3SdSiu8Qi+U=	\N	f	del_1-8.120				f	t	2017-10-25 20:11:09.129027+00
3505	pbkdf2_sha256$36000$cEA6BjkFBTMK$HMpaHuDNwnJ9f959Co3FuwOvBhuDDbG8xY0MzncRqeA=	\N	f	del_1-8.121				f	t	2017-10-25 20:11:09.272436+00
3506	pbkdf2_sha256$36000$CrjGnUivyh5n$jkrR0CjMqFqbcWcsFeTGFiWoGb4QcSfku6xGIjididY=	\N	f	del_1-8.122				f	t	2017-10-25 20:11:09.413829+00
3507	pbkdf2_sha256$36000$ZmEeYS7PJXZ8$Vw0U02T9jLkSlBXK49wdkm86L62ErorJjJ7/JuDXXgI=	\N	f	del_1-8.123				f	t	2017-10-25 20:11:09.549331+00
3508	pbkdf2_sha256$36000$6gZBki3r2M9F$gqPvSZPazYhEkQ9aXWpvp09wX8TbjnmYPZ91LldGxCE=	\N	f	del_1-8.124				f	t	2017-10-25 20:11:09.661253+00
3509	pbkdf2_sha256$36000$luE0O2KsAVeo$vUR4j/sjgTBgEQ3fgApdoFS9xQCVzFqIT4rK52maJXk=	\N	f	del_1-8.125				f	t	2017-10-25 20:11:09.774468+00
3510	pbkdf2_sha256$36000$ufWuNuPLUbOM$m7I0IrqQ+Yv4SFqIyhX66M34B8sDvcL+/LZbdmCN8Bk=	\N	f	del_1-8.126				f	t	2017-10-25 20:11:09.886233+00
3511	pbkdf2_sha256$36000$nhEcacGzVA4I$KG3lwfyBQwP41Iich1qTgR0PhQlWkzmx8MqVf9egkoo=	\N	f	del_1-8.127				f	t	2017-10-25 20:11:10.039994+00
3512	pbkdf2_sha256$36000$PUNxSfS9JPbK$R9OuQGGHQDOmbXcW7DyHtjatB+oCwiBq4NH51dKZDgE=	\N	f	del_1-8.128				f	t	2017-10-25 20:11:10.13159+00
3513	pbkdf2_sha256$36000$7ZSK5paHyZFl$1KtZ+92kKXuxDXs0kuZ1xQP7Vz5DkMq5s4+DTXgaeTk=	\N	f	del_1-8.129				f	t	2017-10-25 20:11:10.234201+00
3514	pbkdf2_sha256$36000$RT4KmETRh624$7IFRFeC09cMz1EjKVGpcGg+eNOqH0ov/fr5P1sJbBoA=	\N	f	del_1-8.130				f	t	2017-10-25 20:11:10.323482+00
3515	pbkdf2_sha256$36000$LeyzwL4bvSIQ$ZT5wyO0rNNOXLQXEW9erSbxe6mBzcXmglLCPYDQQxgE=	\N	f	del_1-8.131				f	t	2017-10-25 20:11:10.413323+00
3516	pbkdf2_sha256$36000$XbeZYG0YExeI$PDqsf/WS4ok91pFcUBF3URbvbDUuXyCfrYbOuHmn2qU=	\N	f	del_1-8.132				f	t	2017-10-25 20:11:10.501675+00
3517	pbkdf2_sha256$36000$Cq4tVA95iEVV$D7YiW9yy98B7ehTjwrhcmHYA8pYxpOukKdZZbIsae7o=	\N	f	del_1-8.133				f	t	2017-10-25 20:11:10.578566+00
3518	pbkdf2_sha256$36000$T0LhFXhuXA3V$oPyzZ0733OuJoF6kGWlNGPtXcZnAdCuNzevQqFK8Yvg=	\N	f	del_1-8.134				f	t	2017-10-25 20:11:10.654529+00
3519	pbkdf2_sha256$36000$AW9oksTKQLhA$GtO9aW8mzdE5jFE58qj2gmeGIfLGDsDKBIdGHvcydLM=	\N	f	del_1-8.135				f	t	2017-10-25 20:11:10.72761+00
3520	pbkdf2_sha256$36000$XywYl1tePQfz$Jk37qUO1TaxbodAT7jIm2Wpx5RTg1c/dcNPOX4uWXSU=	\N	f	del_1-8.136				f	t	2017-10-25 20:11:10.799989+00
3521	pbkdf2_sha256$36000$sBZmGyy8jMbL$lvHNJ48vuWkM10EarFoE+RvevIXM0w+8Myi15qlA3Gs=	\N	f	del_1-8.137				f	t	2017-10-25 20:11:10.872848+00
3522	pbkdf2_sha256$36000$hPQzzRNFgrXp$2vCruNWmJD8Ii/vNg7DKRKJtwcs74W4HrV/AwqyHVg4=	\N	f	del_1-8.138				f	t	2017-10-25 20:11:10.945745+00
3523	pbkdf2_sha256$36000$gngCWEaheBIx$KXtUK31n8HUu8+LcIQKVANRx+JLBAqseP8iLMxJhbnc=	\N	f	del_1-8.139				f	t	2017-10-25 20:11:11.018449+00
3524	pbkdf2_sha256$36000$ejLWKtTHkiYz$jEY8IuCAtpGrKU96VxNS0/5nJQ5OmyOSmiC1Tc9HC4I=	\N	f	del_1-8.140				f	t	2017-10-25 20:11:11.134721+00
3525	pbkdf2_sha256$36000$8euO70oD231Z$JYImPi1HqMTpUheX6m8Ix4luwnaTHTDyv4qf34Xev1k=	\N	f	del_1-8.141				f	t	2017-10-25 20:11:11.194807+00
3526	pbkdf2_sha256$36000$zG14Urofxu2E$+MuVGC9FLBuujagNk2EnQnkroyYl9VytKJs4Ab3ZyNI=	\N	f	del_1-8.142				f	t	2017-10-25 20:11:11.25617+00
3527	pbkdf2_sha256$36000$hKwLks6JZIEm$qSuNJys+oCpD46UPHXWK05Cee/NssRFpT+IwMzv3lSc=	\N	f	del_1-8.143				f	t	2017-10-25 20:11:11.319098+00
3528	pbkdf2_sha256$36000$aFyP3WyZUQ8h$BQzvrMvqs+cGlmvv/wpmBNDgiZtDR6SlxA0h8A+tr3g=	\N	f	del_1-8.144				f	t	2017-10-25 20:11:11.380658+00
3529	pbkdf2_sha256$36000$DgE5rYKgwpdg$3cmzgjf3Lf35mBWOwu8stja4d0N8Gfae1Ko/LuRiZLU=	\N	f	del_1-8.145				f	t	2017-10-25 20:11:11.44664+00
3530	pbkdf2_sha256$36000$LYMSt1OmQODK$MRCNGcB8ha5LZO1A99Fl8YKGh0ru4rCPNGFLZXuI0PQ=	\N	f	del_1-8.146				f	t	2017-10-25 20:11:11.507806+00
3531	pbkdf2_sha256$36000$YCliTkag6686$x95Kzo/gl/DOIVChV1Oy6xYQDqB1z6k/v5a6YY30QbQ=	\N	f	del_1-8.147				f	t	2017-10-25 20:11:11.635744+00
3532	pbkdf2_sha256$36000$Yt6iTwUft22g$sdJg+zlHd67NlADVmix58ycU0+OCTahc5fISW/pEf6A=	\N	f	del_1-8.148				f	t	2017-10-25 20:11:11.78271+00
3533	pbkdf2_sha256$36000$u8uBbeULGQfg$2E4owIWYidwJYL40FEMwF7gz8TbkCmbC7FP6NLqdx7g=	\N	f	del_1-8.149				f	t	2017-10-25 20:11:11.922819+00
3534	pbkdf2_sha256$36000$zUStU7AzXNlP$LcEpY2xRBtQjun3b8aNZ6MmTEd5aNzUiJn6AFafuLsc=	\N	f	del_1-8.150				f	t	2017-10-25 20:11:12.040124+00
3535	pbkdf2_sha256$36000$kBI1ebIpPzlN$6hpYRfZj76kEqGedVrdUGQIS09r0gOYhTnEHkeeD+UM=	\N	f	del_1-8.151				f	t	2017-10-25 20:11:12.094156+00
3536	pbkdf2_sha256$36000$78E132hjTyVF$qPt+xf55IQO9J4e4XLllFpi3582n84fxNRMYed0yfys=	\N	f	del_1-8.152				f	t	2017-10-25 20:11:12.17141+00
3537	pbkdf2_sha256$36000$q7EWFyOahJFJ$c94Wt8mCdh2GLpGOMlKC7xWAS3CRz+1ECgXD68h4yS8=	\N	f	del_1-8.153				f	t	2017-10-25 20:11:12.228561+00
3538	pbkdf2_sha256$36000$iCTGrxnt82uX$+EqDGr/XEsM972Du6/U4EimWepA5qFpY++I+vcGViRU=	\N	f	del_1-8.154				f	t	2017-10-25 20:11:12.282562+00
3539	pbkdf2_sha256$36000$MPzpsiZghf1r$UqMk6P6YS9jVTwdVlmVspYe+xEnR8uanEKwr1bV0E9o=	\N	f	del_1-8.155				f	t	2017-10-25 20:11:12.337362+00
3540	pbkdf2_sha256$36000$XupAyO3AWbFP$zenE+xtQG/3bpV/57MG8I/jNzs30HtvfRZlmNA405jY=	\N	f	del_1-8.156				f	t	2017-10-25 20:11:12.391759+00
3541	pbkdf2_sha256$36000$iQDRiRsAUqpK$meJlgSBOjdlXHZidDF9x+qJB2Sffm8LMOHG5RAmb3Go=	\N	f	del_1-8.157				f	t	2017-10-25 20:11:12.446686+00
3542	pbkdf2_sha256$36000$sagvoaRYAej7$KHK4jjcuA6Gev15DNfE3kHQG3coyLhvwXOCLTE50UW0=	\N	f	del_1-8.158				f	t	2017-10-25 20:11:12.501959+00
3543	pbkdf2_sha256$36000$BdRUDQ1R1cDS$RMAG8SJ6fmbPXAycMJk97FcI2zLJnc3O1cAoPG8nR/k=	\N	f	del_1-8.159				f	t	2017-10-25 20:11:12.557406+00
3544	pbkdf2_sha256$36000$5guGsZL3Woog$h5wlHB07dtOgS2X9W7gdfWOsRXhiO1JdmB/F8UJAAy0=	\N	f	del_1-8.160				f	t	2017-10-25 20:11:12.61254+00
3545	pbkdf2_sha256$36000$yxEKwPX78dPY$BYAiaUS7KCu4rzD1vg+3Ix4/TxXEDm/i8AcnaZU46KA=	\N	f	del_1-8.161				f	t	2017-10-25 20:11:12.668341+00
3546	pbkdf2_sha256$36000$zITabKxFumlS$qOFKrntewlrFxjkMfIo2JnTo2jKdu8u4NjQZR+leNz4=	\N	f	del_1-8.162				f	t	2017-10-25 20:11:12.724262+00
3547	pbkdf2_sha256$36000$GAbRLyyI3I4N$ADX1RexGxkUgo9z5EA4uPONz8Yit4vA8kk3ZH5ivJto=	\N	f	del_1-8.163				f	t	2017-10-25 20:11:12.781241+00
3548	pbkdf2_sha256$36000$5iJaQ5Ad5hmW$165KfJL2urR0eFolJPiI/l9iyTjkP8NIAX+JCjrNzgo=	\N	f	del_1-8.164				f	t	2017-10-25 20:11:12.836057+00
3549	pbkdf2_sha256$36000$cQBWCAw6SCSS$EDsnkTqMngMW1LvcL66YS1hg4zX7UtyumtQsKNPjDV4=	\N	f	del_1-8.165				f	t	2017-10-25 20:11:12.892015+00
3550	pbkdf2_sha256$36000$iYTh1zQR8A0c$KXtIF8eOfVelgq3Qa21d9vK4bKZLiD97N9A8p5JyMJA=	\N	f	del_1-8.166				f	t	2017-10-25 20:11:12.94719+00
3551	pbkdf2_sha256$36000$CLFjg34sqRqJ$cKS+q8HK/4pmS0H4897an9co4V2Iocg4vwlmzaqVanA=	\N	f	del_1-8.167				f	t	2017-10-25 20:11:13.002814+00
3552	pbkdf2_sha256$36000$ujLnqmqUCXNn$4InvLqARqFzITk4t5D4uG6Y02MfzO/6aqyFujYjaCU4=	\N	f	del_1-8.168				f	t	2017-10-25 20:11:13.057653+00
3553	pbkdf2_sha256$36000$1ipwVHT749or$KpQX9jumFsoFHGkqHkEnvLEsn53Wm2a/eru/vm97i68=	\N	f	del_1-8.169				f	t	2017-10-25 20:11:13.112722+00
3554	pbkdf2_sha256$36000$L11a65Gxdloq$aX11Q0YUm0E3zDfENxMSJHoR+4bV41vnNy5ZeVBmU3w=	\N	f	del_1-8.170				f	t	2017-10-25 20:11:13.167854+00
3555	pbkdf2_sha256$36000$pO3X3YQLmSi0$/mK+1EhtsEgy5bgurIHJIpQbLZUmMACpK5rNV9c5zCs=	\N	f	del_1-8.171				f	t	2017-10-25 20:11:13.248288+00
3556	pbkdf2_sha256$36000$wAMhIK9ja1b7$S5iiHl3F9bVkLhdeilmgmXKIQDb9JjZxkFBAO+CcYK8=	\N	f	del_1-8.172				f	t	2017-10-25 20:11:13.302238+00
3557	pbkdf2_sha256$36000$3suNlZ5CKvGw$0s7hCy9EBlsKCcDAiu1YCBc/obcQvwvba817rqtLq/E=	\N	f	del_1-8.173				f	t	2017-10-25 20:11:13.356239+00
3558	pbkdf2_sha256$36000$N3Xai64ejYcK$s3rqE2V6atq9DoxazOv5XOdEn5/jZ1yqzSmn3Ow91+E=	\N	f	del_1-8.174				f	t	2017-10-25 20:11:13.411665+00
3559	pbkdf2_sha256$36000$YHNg7wa5lHYD$jm2vPxdaZWzNeX1ZUU5EFIU81700Y3Mx1HuDq0O+Gxc=	\N	f	del_1-8.175				f	t	2017-10-25 20:11:13.466969+00
3560	pbkdf2_sha256$36000$TftD6dVfAdpr$GJqGJ/xs8/rrvnY0pAJmxNABOH5ePCf3IiWw6toJ2IA=	\N	f	del_1-8.176				f	t	2017-10-25 20:11:13.52255+00
3561	pbkdf2_sha256$36000$9Fjaj1thybTs$AWasAQVVmBaunhtfTir2A5u/yHGFb/co7SLJWebrWOo=	\N	f	del_1-8.177				f	t	2017-10-25 20:11:13.57794+00
3562	pbkdf2_sha256$36000$HBzcmebssYOu$ZVWLXbbXZvuM5C930z4u1P/EvYIgCeLYTU/6HjFFWqU=	\N	f	del_1-8.178				f	t	2017-10-25 20:11:13.63357+00
3563	pbkdf2_sha256$36000$FDLAHfUfnLIk$3Rl78R4+BOwBQzmbRbDIIOS1TQKCer9oJN7hxBkKD/M=	\N	f	del_1-8.179				f	t	2017-10-25 20:11:13.688897+00
3564	pbkdf2_sha256$36000$2mBaTi7sIqvj$uFkx66Z7c4AXVcPg/0oi57t2ErHxSfjj2a9q0SDkcow=	\N	f	del_1-8.180				f	t	2017-10-25 20:11:13.745349+00
3566	pbkdf2_sha256$36000$mdv1hlBGI7Zf$Erq3ZsyHjKykwbRdq8qRvHYlDOgvhJvsbkdzPoiU8vc=	\N	f	del_1-8.182				f	t	2017-10-25 20:11:13.856771+00
3567	pbkdf2_sha256$36000$8fvbXjnL8a2M$xFxpK6iW0U/Z4z6eQoFnKp9uvvIFpDUAM+UYtsv1tFc=	\N	f	del_1-8.183				f	t	2017-10-25 20:11:13.911504+00
3568	pbkdf2_sha256$36000$RhblCUeU51LD$XHxqucnAWch7BGtDQRFJ5Ucpt79Lq43HsmSGNhnhio4=	\N	f	del_1-8.184				f	t	2017-10-25 20:11:13.968246+00
3569	pbkdf2_sha256$36000$dhepeQNuTaVa$LIJUfhj52Ljkh/Y/Dsea/fyvGIcjhwKiLi0BtM0XED4=	\N	f	del_1-8.185				f	t	2017-10-25 20:11:14.024694+00
3570	pbkdf2_sha256$36000$Nj79WKgEYSdG$7yqmDwN15ZsCZY4UAC+ZWDOwW3bz/48nfWPUK+9iYlw=	\N	f	del_1-8.186				f	t	2017-10-25 20:11:14.165569+00
3571	pbkdf2_sha256$36000$3RY8UZvxOoeD$Nll+UfmGO3nE8pCjp+DHwoPWH//ZGWd4D74uCvdldtw=	\N	f	del_1-8.187				f	t	2017-10-25 20:11:14.373367+00
3572	pbkdf2_sha256$36000$j6piBfnLbPcw$yJ0u1XM5mxFnFTFSZ5CiDVKZ7AgGfD3vsDfsVnaSyA8=	\N	f	del_1-8.188				f	t	2017-10-25 20:11:14.522756+00
3573	pbkdf2_sha256$36000$6MnMwaCpPbOk$DPlCpVIf4cpyKszad+IGAGMdZHlyQ9QJTAeCbP+zVxE=	\N	f	del_1-8.189				f	t	2017-10-25 20:11:14.672341+00
3574	pbkdf2_sha256$36000$He37eeAOugrw$Ux5j1T9dL+fTWGeIgp2TaRF018tCmV5TKx3HhjU5w4I=	\N	f	del_1-8.190				f	t	2017-10-25 20:11:14.825383+00
3575	pbkdf2_sha256$36000$AHACPbOoSy01$0FDpB6zuLLMuxOgkEhFadRjUfcmO/cuIFbxpJWIiAvw=	\N	f	del_1-8.191				f	t	2017-10-25 20:11:14.973619+00
3576	pbkdf2_sha256$36000$5hMD1Nsl0zW6$fyYbIXtEKvjsox9d5tM/GfMk5cHQ8qfNU70mNra4nTU=	\N	f	del_1-8.192				f	t	2017-10-25 20:11:15.097173+00
3577	pbkdf2_sha256$36000$bnV3c6XJLx3r$hpufuKVzMZqISmNTEEm1GOjmmnMqL6+xtjPUJ0TAFgI=	\N	f	del_1-8.193				f	t	2017-10-25 20:11:15.2121+00
3578	pbkdf2_sha256$36000$CQzLpx42V3o6$y9KWraulHF/x6h1BzarB2s2aYFrWOrm6UQlEy1s2U7I=	\N	f	del_1-8.194				f	t	2017-10-25 20:11:15.324899+00
3579	pbkdf2_sha256$36000$kpQ6p1644HxH$sxFZfULhC7z2UKWMVJXPHiT2OM7DJVo3MaHD4Qw/+TE=	\N	f	del_1-8.195				f	t	2017-10-25 20:11:15.487882+00
3580	pbkdf2_sha256$36000$SWmPMug3i3fs$QRDvFqTRF80fMqqAdsItOUYCgl5679l+P/WkYFlASsc=	\N	f	del_1-8.196				f	t	2017-10-25 20:11:15.618955+00
3581	pbkdf2_sha256$36000$CXtEUxgM2VXc$CWBCgNLg/i609gVdlJyrzlAXMv/Yp1F281xTgq5j1Pc=	\N	f	del_1-8.197				f	t	2017-10-25 20:11:15.764185+00
3582	pbkdf2_sha256$36000$1aIHkLf0wPOK$DY1aoRV1z7bXNzFkW5gN0Z+3LDpZp+bEe9C7bzca7Jg=	\N	f	del_1-8.198				f	t	2017-10-25 20:11:15.90507+00
3583	pbkdf2_sha256$36000$iW2rC0pyWZyZ$tc/ZKI7/0HquhnrQS2QRS0p397DVFsrNHjUiaQlaDhQ=	\N	f	del_1-8.199				f	t	2017-10-25 20:11:16.054027+00
3584	pbkdf2_sha256$36000$5NbEONPMK3at$qtSwZejwEe1zl6sFbEtCV/ogpuTB/FRUxL3f0hQn3bo=	\N	f	del_1-8.200				f	t	2017-10-25 20:11:16.167024+00
3585	pbkdf2_sha256$36000$aWuyF0xbhzU6$JWEi7tO6iolE5d8eCr5npcSqkfCtTgOP/DAqxO5WgDE=	\N	f	del_1-8.201				f	t	2017-10-25 20:11:16.281701+00
3586	pbkdf2_sha256$36000$igPO3YEF04YD$vV1qobofyaynD6tdJ73agJPmHKQ3RU+uvK4Tu2gZA1w=	\N	f	del_1-8.202				f	t	2017-10-25 20:11:16.395486+00
3587	pbkdf2_sha256$36000$rteKKuwt5aXv$r/aUvyZlsrLzyOeOnNVrI9ektUUC7ntgCqnLOqRT7bA=	\N	f	del_1-8.203				f	t	2017-10-25 20:11:16.55237+00
3588	pbkdf2_sha256$36000$k14lpl3GAsWO$kcf6UFt8qtpzT2vs8wfHxCq708YN21dmyGezMMJcTOk=	\N	f	del_1-8.204				f	t	2017-10-25 20:11:16.650133+00
3589	pbkdf2_sha256$36000$1KjZBnwxXcXC$DFkwdnNIpO5NVnQel3QOKMSYUF6W2D7JNETjgTw8RbU=	\N	f	del_1-8.205				f	t	2017-10-25 20:11:16.744992+00
3590	pbkdf2_sha256$36000$uKj16tgDvmIE$lfj6pWFuhQ/1G1kjROvRfqsyTjBIqmTulJZ32Mg/CxY=	\N	f	del_1-8.206				f	t	2017-10-25 20:11:16.839032+00
3591	pbkdf2_sha256$36000$loNN2u7Z6gVj$iSrSOsonfcqbXe3ZfQb29haMYdBMukj+pNRf/A956n0=	\N	f	del_1-8.207				f	t	2017-10-25 20:11:16.932658+00
3592	pbkdf2_sha256$36000$PQ3bys6IkqZF$nlMImZruBCrwXR0qyj8B+TRVLySN8pEb54t6QUi/LJ4=	\N	f	del_1-8.208				f	t	2017-10-25 20:11:17.02651+00
3593	pbkdf2_sha256$36000$3D9iYBgINd6s$l51uJQYC4XrFhn6q2tKkfznhbHd5xxWR+odeebjFLzU=	\N	f	del_1-8.209				f	t	2017-10-25 20:11:17.103386+00
3594	pbkdf2_sha256$36000$xePox1wfOS1q$WHLfx1FcGRM9FYrvXlAoMu1PlD0y+kZNDwe4zE6n5jw=	\N	f	del_1-8.210				f	t	2017-10-25 20:11:17.18779+00
3595	pbkdf2_sha256$36000$JkLYviqGWvE8$0tfRrniYyGuCG4Km4PeYoBXu6z258uhBqzFlwddzP9o=	\N	f	del_1-8.211				f	t	2017-10-25 20:11:17.272741+00
3596	pbkdf2_sha256$36000$qA2gbtFaZry9$EcgYHradD6s2SRNg6NzkB//f6xGfG3O6cLcvaI3O7G0=	\N	f	del_1-8.212				f	t	2017-10-25 20:11:17.355762+00
3597	pbkdf2_sha256$36000$leUjjpANxcJB$mkMNilQIBMoEeLrF79SUaurt3Rn4MNIqcqQUO1+Ge0k=	\N	f	del_1-8.213				f	t	2017-10-25 20:11:17.433928+00
3598	pbkdf2_sha256$36000$oRorIq0NoTOv$c2IEoTNROV9iP5bmsaQesw4fZwaYYPV19ffJ2QP11oA=	\N	f	del_1-8.214				f	t	2017-10-25 20:11:17.51307+00
3599	pbkdf2_sha256$36000$HTZMnVLgLU4B$VMtWpPE6mEBiSjog/yU39kvvRCEuETqGzZZp2Ri/0L0=	\N	f	del_1-8.215				f	t	2017-10-25 20:11:17.610388+00
3600	pbkdf2_sha256$36000$sNySknhZojft$6lfbqbxQApM8m7wHdAVefWLS9ohZk2MULEdqE0stbVI=	\N	f	del_1-8.216				f	t	2017-10-25 20:11:17.692426+00
3601	pbkdf2_sha256$36000$yC1A60aVjwXG$pGBxPCNkJpLuxkIkXmKv6NRj6WmcGgFURxQKB/mpqN4=	\N	f	del_1-8.217				f	t	2017-10-25 20:11:17.766431+00
3602	pbkdf2_sha256$36000$11KW4wN8Ahz6$rnm6ga4qclqNwJXTLYhcc6Cmaah91M+ek8A+ZwYep3Y=	\N	f	del_1-8.218				f	t	2017-10-25 20:11:17.841005+00
3603	pbkdf2_sha256$36000$oz2oQYSDVbir$pFCUHJPwuWfJZSA5mlIPrlTKgbys3N4mFrXDXtGwxyY=	\N	f	del_1-8.219				f	t	2017-10-25 20:11:17.915171+00
3604	pbkdf2_sha256$36000$pn2CiQJ9KSYL$hzUABuBKH1pBf/gemSPqTeqhBUuZ63V4WyUoK8VOsI0=	\N	f	del_1-8.220				f	t	2017-10-25 20:11:17.989802+00
3605	pbkdf2_sha256$36000$1K9eYJ6E20Fg$LAmn05ifNRg7B5tJ4T54FUJvOyl/j4x4/WAX9Xg3xQU=	\N	f	del_1-8.221				f	t	2017-10-25 20:11:18.098592+00
3606	pbkdf2_sha256$36000$LQbOcUIsWWnm$g4veRc7JoP5f/TJpLALk5tN2gVn/P6ySWT2C70hxrA8=	\N	f	del_1-8.222				f	t	2017-10-25 20:11:18.246036+00
3607	pbkdf2_sha256$36000$A7vcAncn1mwY$ACiomHNSBvv8lbuNZXRzh9vf8ZmMkvceO796+zvj8AQ=	\N	f	del_1-8.223				f	t	2017-10-25 20:11:18.388992+00
3608	pbkdf2_sha256$36000$uM9O9ukJRbBj$OPEV1+6c9GApKhljpHumfY7053xCjqlsPq8QVdDGfIw=	\N	f	del_1-8.224				f	t	2017-10-25 20:11:18.591341+00
3609	pbkdf2_sha256$36000$dOXe3S60L9zg$n+5g3zO8yL4eunQCNUb4RAMyeqfxfO+hjgxnWbzvpPc=	\N	f	del_1-8.225				f	t	2017-10-25 20:11:18.873979+00
3610	pbkdf2_sha256$36000$d1e495ZHL8bs$IyyfYnxw52B8YUQCTbypa0w6/9zeKnSDl7GSCO7vtSk=	\N	f	del_1-8.226				f	t	2017-10-25 20:11:19.01698+00
3611	pbkdf2_sha256$36000$pp4fJxaSB4hp$5ugQdpaTOAaQbHKpUTgXe9204/s1aRG/UnkiURmKmFI=	\N	f	del_1-8.227				f	t	2017-10-25 20:11:19.158956+00
3612	pbkdf2_sha256$36000$lIzsP2hFBTtG$F+r68wuNUTpp2UkueL4MEIkktMgZK0YB381AxP7xmmE=	\N	f	del_1-8.228				f	t	2017-10-25 20:11:19.301451+00
3613	pbkdf2_sha256$36000$C0lEPbf2UA4k$42El9x6h4hiZwNrmlfCkzMTPQAkPyhhpKJ0Lz0qLaoQ=	\N	f	del_1-8.229				f	t	2017-10-25 20:11:19.445434+00
3614	pbkdf2_sha256$36000$mFDs07R2YH44$GHixR7tiSvBsPA5eyAFjEDxUeH/kChV224HafzK1Rxw=	\N	f	del_1-8.230				f	t	2017-10-25 20:11:19.587941+00
3615	pbkdf2_sha256$36000$WpJq0FWbe0iE$BNn6FqzVhBufETaqCYDYvhRHY6rHfaNQus6hYIWYdv4=	\N	f	del_1-8.231				f	t	2017-10-25 20:11:19.730773+00
3616	pbkdf2_sha256$36000$VtlQMVoQtbqQ$wGiPrb0bX20cs/5oL/IPJ1xTVuyk6eIy/1YnMpk+nAs=	\N	f	del_1-8.232				f	t	2017-10-25 20:11:19.900817+00
3617	pbkdf2_sha256$36000$yAhl0oPKBDUW$eveD9SM8ki0uxJrMLe4kmX5pPJRsTb1Z9pB9No4Rbcw=	\N	f	del_1-8.233				f	t	2017-10-25 20:11:20.046018+00
3618	pbkdf2_sha256$36000$VOEbmdYbpYxd$8iud69I/Ufu6rSP49IGIKJ79U5/O6DVR2oAjbsz1jZk=	\N	f	del_1-8.234				f	t	2017-10-25 20:11:20.101854+00
3619	pbkdf2_sha256$36000$jnN9t9Do1Gaq$QRLKDXJnUyYZ5h5wmT6n5QtGyIuhbgwuOKjDkYh5GXA=	\N	f	del_1-8.235				f	t	2017-10-25 20:11:20.157179+00
3620	pbkdf2_sha256$36000$FN11lD37UMJM$Uku+LRgzai3J4pbyJzYB+3sx/niCOR5Z1qtiUPnXlf4=	\N	f	del_1-8.236				f	t	2017-10-25 20:11:20.213026+00
3621	pbkdf2_sha256$36000$S0P7p8kpRilZ$L4gzezMVZBNjH/Q9b3Tfz7JC6asY8O3Vj1u5y5bARPs=	\N	f	del_1-8.237				f	t	2017-10-25 20:11:20.268247+00
3622	pbkdf2_sha256$36000$Ysq7FlIxsRQa$47RSyGYpZeJyn16HMFpurTBuSv51yASezyKjlyAsCJw=	\N	f	del_1-8.238				f	t	2017-10-25 20:11:20.323883+00
3623	pbkdf2_sha256$36000$K8bqkLzw9wPm$s8NyFClX+dD44Akhzgo+p6pa3nGVTYVczlgoQ3kCH5s=	\N	f	del_1-8.239				f	t	2017-10-25 20:11:20.378981+00
3624	pbkdf2_sha256$36000$2paM9kSi4OfR$V0SMQNE9axyyURorTfmvXFRArkDQGXOt4Ey0xFUOljw=	\N	f	del_1-8.240				f	t	2017-10-25 20:11:20.434342+00
3625	pbkdf2_sha256$36000$RpFuDXF5LrUF$2QKRxO0rVdbVd1x5ZQDjHECTbbPB7ZO2mDR58Tj2qCk=	\N	f	del_1-8.241				f	t	2017-10-25 20:11:20.488707+00
3626	pbkdf2_sha256$36000$K9Eh4G0PjwRn$NjW2B0RN8PkL43GX6QlJsCXbZs8W6VF84hLxKNyrU+s=	\N	f	del_1-8.242				f	t	2017-10-25 20:11:20.543124+00
3627	pbkdf2_sha256$36000$e3GK4pgWc929$Wp+bIxItMhJbUF5Ebwv0oDwg9t+JUtASN2UfR73jBUA=	\N	f	del_1-8.243				f	t	2017-10-25 20:11:20.59769+00
3628	pbkdf2_sha256$36000$dkiSzZkW2OW0$tMwP8OPwvY0xtZUEUU51IxLZ8BswtAxLhoJE/Dk+fo4=	\N	f	del_1-8.244				f	t	2017-10-25 20:11:20.652146+00
3629	pbkdf2_sha256$36000$jDWj8QCLInS2$k6aNe/U1+nDOKhXjDfdQLVKYwheia2TJgIK2z7xK4js=	\N	f	del_1-8.245				f	t	2017-10-25 20:11:20.71146+00
3630	pbkdf2_sha256$36000$jk2Epsqxxly4$km+/TONBWkq9a467WjYeP+EyVWCxzGfAYrlIlwkjuB4=	\N	f	del_1-8.246				f	t	2017-10-25 20:11:20.767401+00
3631	pbkdf2_sha256$36000$KzpH9nBEHKP1$0b6a2NZGCIr+fiNx086Z3txtdLkjoZZS9qSxGdEVncg=	\N	f	del_1-8.247				f	t	2017-10-25 20:11:20.822809+00
3632	pbkdf2_sha256$36000$w2yBLPfNQdjy$4qm4pXCq/yAQjw/TJYJDQT8LSMYNmC2NQ9dpFERTgPU=	\N	f	del_1-8.248				f	t	2017-10-25 20:11:20.878491+00
3633	pbkdf2_sha256$36000$d7E4xejm1dxN$z/jzXxoZWxcZIGaStbV4OWAg0rNwjHABt+0tePTAP0Q=	\N	f	del_1-8.249				f	t	2017-10-25 20:11:20.93387+00
3634	pbkdf2_sha256$36000$Hd2TicH8qJKP$cBD+d6LhP6Y/jwGHGe+VPY3Hx3ZvirzLMPSx7jMxYvQ=	\N	f	del_1-8.250				f	t	2017-10-25 20:11:21.010318+00
3635	pbkdf2_sha256$36000$hMsPCvMOXPhP$RT792H15/anOsuCAE+O0O2Z3Jfoz3whRu/xcOfRxfk4=	\N	f	del_1-8.251				f	t	2017-10-25 20:11:21.073329+00
3636	pbkdf2_sha256$36000$aDF5MoBJdsP3$55UPFDs4sA73cnp3QTDH7lKguW+J9w9hf7uyHKSQsf8=	\N	f	del_1-8.252				f	t	2017-10-25 20:11:21.128382+00
3637	pbkdf2_sha256$36000$2QAmrKWpZf81$uVHHJN14nbOmUtcADVm/cy7GSiyaZhCrLikICX77vBU=	\N	f	del_1-8.253				f	t	2017-10-25 20:11:21.183171+00
3638	pbkdf2_sha256$36000$sLP4ZhmBfliH$72XanFfZPJQ6XMyWLIwpDJfdFvivxLzPWimDxt8qiHQ=	\N	f	del_1-8.254				f	t	2017-10-25 20:11:21.237961+00
3639	pbkdf2_sha256$36000$0d5SHw3wrUeP$mA4TL39/wOIsMKPHVZwRCoDCS/YOVgIJiTb6w0bWGZQ=	\N	f	del_1-8.255				f	t	2017-10-25 20:11:21.29293+00
3640	pbkdf2_sha256$36000$bawXEqjOY2Ut$UxvR18ofCpOJSt7EdRLpw3uepj/AQA+disO2lLF+Cjk=	\N	f	del_1-8.256				f	t	2017-10-25 20:11:21.34765+00
3641	pbkdf2_sha256$36000$Erynmfr36Rq2$xLbA3zPgcQwboV+FnBdCOGbi9Dl89eNo1CwqJIvNscE=	\N	f	del_1-8.257				f	t	2017-10-25 20:11:21.402685+00
3642	pbkdf2_sha256$36000$HowCoqjG66C7$9HKdpQXojOnF929Rw3fcbgFOlrmJv/pJnXSyXC+HXbE=	\N	f	del_1-8.258				f	t	2017-10-25 20:11:21.458456+00
3643	pbkdf2_sha256$36000$jbO12drnWiJF$Zeg4UmelcCJWz+bbpuxV4ORtFfHPEM/gVvevFbTbEpE=	\N	f	del_1-8.259				f	t	2017-10-25 20:11:21.513904+00
3644	pbkdf2_sha256$36000$Pcm1VKLjz0og$0aII93zYDO4NzbrDVTSFKJ26XDnkW1tfFA0leMueT/o=	\N	f	del_1-8.260				f	t	2017-10-25 20:11:21.569292+00
3645	pbkdf2_sha256$36000$TSA2swLmMOpC$qbPL1z7SCcEp9IaXVNew3gI5BCJ943bg9919d2GJy/Y=	\N	f	del_1-8.261				f	t	2017-10-25 20:11:21.62497+00
3646	pbkdf2_sha256$36000$eTKjlH8THKuW$yCRQIRSjw0pVo8+Q7xBLqQqyfWzgvQLvbH8RdgZZ094=	\N	f	del_1-8.262				f	t	2017-10-25 20:11:21.681028+00
3647	pbkdf2_sha256$36000$ZKqPsKjjHqws$DBkiteVltxvvuagCL/j4xNU+y1AGr4NMT/ZiG6dznUY=	\N	f	del_1-8.263				f	t	2017-10-25 20:11:21.736616+00
3648	pbkdf2_sha256$36000$wCRLs4olyW0M$g3EpZPkHXJmNbrofdj4QjkosTb6Vnog80K9AetfIQJk=	\N	f	del_1-8.264				f	t	2017-10-25 20:11:21.790986+00
3649	pbkdf2_sha256$36000$c9cfoVB52rgM$7tpk2S+07yJDp2dsgV5HA6+TiVB/rsc5QEWSEDcCJTs=	\N	f	del_1-8.265				f	t	2017-10-25 20:11:21.846134+00
3650	pbkdf2_sha256$36000$SwqtY5dX1aTP$RwNZMhFkDvwBR8rqy/LTdS3u1dpoGb0qYrSJTSbDxcU=	\N	f	del_1-8.266				f	t	2017-10-25 20:11:21.90041+00
3651	pbkdf2_sha256$36000$8NiWnjlbXfLv$2zC+5OE4CLLuPVZqecy2rU6gcaF24s+iTESuMwAja8k=	\N	f	del_1-8.267				f	t	2017-10-25 20:11:21.954995+00
3652	pbkdf2_sha256$36000$qQkhpICcgywL$ia7j8NYbZExnAHbSheE3XSooESxlb9Ad8VAXpKpCrwI=	\N	f	del_1-8.268				f	t	2017-10-25 20:11:22.010542+00
3653	pbkdf2_sha256$36000$7QOabMCHfI1h$U2PYlxoEPSwSxwwVrG7tT3C6O/oqfheLnxTXxeUaU1M=	\N	f	del_1-8.269				f	t	2017-10-25 20:11:22.091169+00
3654	pbkdf2_sha256$36000$oPzkjVYTiCYk$cLzrmwEQ0flJm+M+r3xVoJHUB2rDd864w/mR4RxQ2Sk=	\N	f	del_1-8.270				f	t	2017-10-25 20:11:22.146535+00
3655	pbkdf2_sha256$36000$1v47z6koBmKB$yOdCBZl79lQpn2OGpbrWXnpfLzDavwh0Xrtjw2DZebo=	\N	f	del_1-8.271				f	t	2017-10-25 20:11:22.201402+00
3656	pbkdf2_sha256$36000$V7yVUXb43SYy$HSotthE3QpMLFl1Osd6mHh7TdOQwjF8KTg8ctec3j7g=	\N	f	del_1-8.272				f	t	2017-10-25 20:11:22.257793+00
3657	pbkdf2_sha256$36000$xBfpmqSCWj0w$HBjbFCtZDPdMwyN0buoSogS5Y4bruIkGPhiin+cbNpU=	\N	f	del_1-8.273				f	t	2017-10-25 20:11:22.312912+00
3658	pbkdf2_sha256$36000$UP5VSLlf7RBf$oX5v6J6xC7uC+L9FFdpFKsxZ7EkqKia+ViUPT3ghIfc=	\N	f	del_1-8.274				f	t	2017-10-25 20:11:22.368337+00
3659	pbkdf2_sha256$36000$NjvA4Xp05B5M$4hPEKO/JZGSymGXec9ja1q+fbA94m7DI2ucTMGGlh4c=	\N	f	del_1-8.275				f	t	2017-10-25 20:11:22.422807+00
3660	pbkdf2_sha256$36000$ZwQcO1L2QqLc$58V0P45nFe362w3hk5j22VTP8wYIr26aV9M7yYqpVlU=	\N	f	del_1-8.276				f	t	2017-10-25 20:11:22.477181+00
3661	pbkdf2_sha256$36000$ffJchYJGFM4H$lj9xwFuDyRqZMLmK7vtXa+sc9Z3qtoPWILQLeRVPpBQ=	\N	f	del_1-8.277				f	t	2017-10-25 20:11:22.532282+00
3662	pbkdf2_sha256$36000$H4gD6t3Q42Uf$UnWyvPZW2ysy4qmMwJpvT0d2bSuLhD3TWoP0+jmCJU4=	\N	f	del_1-8.278				f	t	2017-10-25 20:11:22.587828+00
3663	pbkdf2_sha256$36000$AFFC90NuU6qU$LUJpDrCvdaGR18wvZ1UKCAXkw1HPevNevt9tqA9jN9k=	\N	f	del_1-8.279				f	t	2017-10-25 20:11:22.643261+00
3664	pbkdf2_sha256$36000$CgAUp1sS4ObU$bjlgqlPwpTKtUfO8F2uzGKInANesJBDirYxqcLFtnv0=	\N	f	del_1-8.280				f	t	2017-10-25 20:11:22.698383+00
3665	pbkdf2_sha256$36000$2SwNMxQXfEzc$db8MEqhB+cJMVS+mw6vvBHPugG1tYkC+6TS+8aSBOQ4=	\N	f	del_1-8.281				f	t	2017-10-25 20:11:22.75351+00
3666	pbkdf2_sha256$36000$htYnyJqNkE76$QmGT4IWncNUaLDYcz/+LAaVtCjHxqtaDVMpwBh1KuQ4=	\N	f	del_1-8.282				f	t	2017-10-25 20:11:22.808033+00
3667	pbkdf2_sha256$36000$NOEwLBLhslX9$MHPcLBX41ZhzvECExCxNSeVgYJxrFtv0zjXnutch7jQ=	\N	f	del_1-8.283				f	t	2017-10-25 20:11:22.863174+00
3668	pbkdf2_sha256$36000$319Z2QAwEgqf$BWH0huNzMSV56j2NmWGv2sZ/4SO9VEVvNy4RtB6VpJk=	\N	f	del_1-8.284				f	t	2017-10-25 20:11:22.918162+00
3669	pbkdf2_sha256$36000$DCOP3ACVoHA2$XwTXYg575yCItkDKPWAh1+QMISQm7Q+Dd3VakHvtDec=	\N	f	del_1-8.285				f	t	2017-10-25 20:11:22.973413+00
3670	pbkdf2_sha256$36000$Tsrrq90UkpYz$G3Wh2VOghBErhBHQpVFmsx0H2bffuQQZDtWTi3jULmM=	\N	f	del_1-8.286				f	t	2017-10-25 20:11:23.029452+00
3671	pbkdf2_sha256$36000$I4RWw7pjK6kq$3AwelcDZTzUVhNGAMmQLkAvb56uvMFzv1S4VOQ0Nnes=	\N	f	del_1-8.287				f	t	2017-10-25 20:11:23.094246+00
3672	pbkdf2_sha256$36000$v2mfsN7NtF5U$SVUeI38m8R9SYg0rmP4ZFxi6LpXf1c6GCfHeEEt6B8Y=	\N	f	del_1-8.288				f	t	2017-10-25 20:11:23.165021+00
3673	pbkdf2_sha256$36000$1XTwAja08zsW$ecQuP+sC28BiqSXBinMMOZo1aQpXtW7XaH/CZwenrwI=	\N	f	del_1-8.289				f	t	2017-10-25 20:11:23.221341+00
3674	pbkdf2_sha256$36000$IqSZR067ALtB$tHw9XAMiyJGgvx9uA7DOc9Jut6rJmpg4Q+nPMowda6o=	\N	f	del_1-8.290				f	t	2017-10-25 20:11:23.277234+00
3675	pbkdf2_sha256$36000$KqnWV1So8JLL$cgfxVmLeTdIv6x7o1pcMK2EmV7qcD8ZZGJYZSx60RcU=	\N	f	del_1-8.291				f	t	2017-10-25 20:11:23.332435+00
3676	pbkdf2_sha256$36000$Fc1IyQV57xqH$ctGbYOYApF7rZcUGdaMWnxVfRXi/ZhjO5D1j0ZzWgf4=	\N	f	del_1-8.292				f	t	2017-10-25 20:11:23.387721+00
3677	pbkdf2_sha256$36000$xXhXPT5j8rZc$N2M77uKV2i/BjiSUBP77tRBvusKVvxEzBI84FIyJFQE=	\N	f	del_1-8.293				f	t	2017-10-25 20:11:23.443487+00
3678	pbkdf2_sha256$36000$ArBo2OkYbQbk$VCq32AktBTDyeYnPl4AERd1nFIVKW2pic/EayhjmFVA=	\N	f	del_1-8.294				f	t	2017-10-25 20:11:23.499749+00
3679	pbkdf2_sha256$36000$y5t8XcUN09Ee$Tq+ahga3pZAuUY+1nmQZHX5l5IrbJkYlAspgBIis/Ao=	\N	f	del_1-8.295				f	t	2017-10-25 20:11:23.554849+00
3680	pbkdf2_sha256$36000$iXS2QVC0yZBB$MwnGpE011vRnyLTU6uHK1LRqkMg9as3w0lA/pV0rhJ4=	\N	f	del_1-8.296				f	t	2017-10-25 20:11:23.610133+00
3681	pbkdf2_sha256$36000$pHlyTlCffhq6$mFcuTMduxK5TDNwfLd+TvfuYa9W4nh/XxRIjftpGdcs=	\N	f	del_1-8.297				f	t	2017-10-25 20:11:23.665954+00
3682	pbkdf2_sha256$36000$IgGv28omL6h2$gdHV3v/hPHW+YX8mS1Rr6Grhp6XEgoz6x25gHqchod8=	\N	f	del_1-8.298				f	t	2017-10-25 20:11:23.720584+00
3683	pbkdf2_sha256$36000$zqHAqmWIyhE1$+gI1fgILaRujKNcmQQJ8mde30oBuZMuTNZAds7u0BAU=	\N	f	del_1-8.299				f	t	2017-10-25 20:11:23.774935+00
3684	pbkdf2_sha256$36000$K9j0jqIhmnvc$ErpSZL85XFIBdyZ6fBSyhjkFhVCnHLNEDDPgbCQWXXY=	\N	f	del_1-8.300				f	t	2017-10-25 20:11:23.829301+00
3685	pbkdf2_sha256$36000$rRonOBPMYhx1$YUQ6VU326UJjhA8hTpfK9varZf4y0BZWh1QR/rMFZO0=	\N	f	del_1-9.1				f	t	2017-10-25 20:11:23.884344+00
3686	pbkdf2_sha256$36000$d9R16tT9KsWM$ZeLJSKJIawcXsqe+CGIyYbEsnD5dfrAMlfPmS2j881Y=	\N	f	del_1-9.2				f	t	2017-10-25 20:11:23.938631+00
3687	pbkdf2_sha256$36000$01huia3wlX8Y$BFJTz2Z32fe3Mcj97bcvACt8giRskAnzMhPdzdSK3Mg=	\N	f	del_1-9.3				f	t	2017-10-25 20:11:23.993214+00
3688	pbkdf2_sha256$36000$5okZaXbzV9t5$ZlwbaqGmpyEaGsIlJhMqV4ZF5sLFU0xb1B4mgvxkz54=	\N	f	del_1-9.4				f	t	2017-10-25 20:11:24.047516+00
3689	pbkdf2_sha256$36000$1IAwDtJfPuBF$dNaxZTGxmfDn8HAzD+o0SBlUTPrnVpQKiyVyW1Y95PM=	\N	f	del_1-9.5				f	t	2017-10-25 20:11:24.102211+00
3690	pbkdf2_sha256$36000$oPcG4l2rzccv$1hBalU0TowjADaDBMxhbpRJpmGc/20yLEjp2egn5PAA=	\N	f	del_1-9.6				f	t	2017-10-25 20:11:24.182784+00
3691	pbkdf2_sha256$36000$JQgap4dpNs06$BJhN+xGEfIdgNJ6Mq195JDxiSkHfaTC55BBRFBNrPi8=	\N	f	del_1-9.7				f	t	2017-10-25 20:11:24.237479+00
3692	pbkdf2_sha256$36000$j39W7pIXnUWU$CFnqBz4HpVCVyl47B2mK7qkZ0EnBW4LUF8AUp5ylnkQ=	\N	f	del_1-9.8				f	t	2017-10-25 20:11:24.291504+00
3693	pbkdf2_sha256$36000$UbeWXNQa5MdB$US4NMKWYkbbvZB2VrxPi0kyCypRkW4WM/vv7EiSKWSo=	\N	f	del_1-9.9				f	t	2017-10-25 20:11:24.346772+00
3694	pbkdf2_sha256$36000$AJhUWVb3LnKU$efZn5otTTqCVf6SI/Wqsy1ecDNDyxVD21lJS+GXLwfw=	\N	f	del_1-9.10				f	t	2017-10-25 20:11:24.401326+00
3695	pbkdf2_sha256$36000$Bo7Mq9T6Yq61$dPIqXxwOjOPvxUPpKOx3MMYHydFJSlNo8rJpT/ZSy6o=	\N	f	del_1-9.11				f	t	2017-10-25 20:11:24.455572+00
3696	pbkdf2_sha256$36000$uxL8N1uZYVZb$FKkNptIB42tFKXec6tghmebfbeMZVKwiS2EeB2UyQLM=	\N	f	del_1-9.12				f	t	2017-10-25 20:11:24.509956+00
3697	pbkdf2_sha256$36000$rxpqPmNxTBcD$H+xmcpd32eMdEmJ56zpssRWtyuC+KTr6vHBXUoX1CX0=	\N	f	del_1-9.13				f	t	2017-10-25 20:11:24.564674+00
3698	pbkdf2_sha256$36000$rG1EB3wYm8nx$O2ALSyxkiOAVB1tMLvJAm8IaXkcUie5Wg1oOvok9UxM=	\N	f	del_1-9.14				f	t	2017-10-25 20:11:24.618939+00
3699	pbkdf2_sha256$36000$Y0RMSQaZavzJ$UN/yKplsf24I500Ly5G9NiDE1BDuRJgdG1qCmKbiN9E=	\N	f	del_1-9.15				f	t	2017-10-25 20:11:24.674461+00
3700	pbkdf2_sha256$36000$O0RoIbfidQgX$iDy1lCUpG4JLMlrlg0xWhp97NPuwUs3aQB2f1y6sGvs=	\N	f	del_1-9.16				f	t	2017-10-25 20:11:24.729425+00
3701	pbkdf2_sha256$36000$7LpLXGqD1WsY$9/o0+dlZNOL271PNydi0N5EUYT4I8JBi3ThleQNeTE0=	\N	f	del_1-9.17				f	t	2017-10-25 20:11:24.784734+00
3702	pbkdf2_sha256$36000$Q7iEAYYCb7IM$L5CXhoiE4aeDFtuFZQJ68VRDOUt0tpUId/NzvZJFCms=	\N	f	del_1-9.18				f	t	2017-10-25 20:11:24.83903+00
3703	pbkdf2_sha256$36000$hj5TCvG1BSfk$q4ux253YkXfWKLYPtrKRdPFrOsEFiCiHo3wFgyZ4PBU=	\N	f	del_1-9.19				f	t	2017-10-25 20:11:24.893157+00
3704	pbkdf2_sha256$36000$eoFlIEpaWeEQ$aY/BqF7QXen7/s6U35J9MyY38gW12SCA7YtLbNnymDQ=	\N	f	del_1-9.20				f	t	2017-10-25 20:11:24.947412+00
3705	pbkdf2_sha256$36000$uND29BuGWDHo$8vZBlIfqZ9ICIlu/dO6G4nhfzmvjK4UH6yxpwQKcqME=	\N	f	del_1-9.21				f	t	2017-10-25 20:11:25.001283+00
3706	pbkdf2_sha256$36000$bXmhgP5LDexI$/saJ1zEuxssDxUYtK0RlGfRXvkZumNZg39FyKUSPGpk=	\N	f	del_1-9.22				f	t	2017-10-25 20:11:25.055199+00
3707	pbkdf2_sha256$36000$ezxOV1pPKdU3$wTQfb0GZu9YOJnH+arfsb1RA++WFhXLLwN2zGcfCTs8=	\N	f	del_1-9.23				f	t	2017-10-25 20:11:25.109117+00
3708	pbkdf2_sha256$36000$8SGEYtKMscD2$gUkUjk3zED+Cn1+HDw00R6tIM/ozdmsw2yzt7HvdljA=	\N	f	del_1-9.24				f	t	2017-10-25 20:11:25.163346+00
3709	pbkdf2_sha256$36000$wOMYmLy3BxQx$SAu0HdxN14f1ivytBmfSxAQ8pHtDGm4UeXu0jVMNl8M=	\N	f	del_1-9.25				f	t	2017-10-25 20:11:25.243585+00
3710	pbkdf2_sha256$36000$Anj0UPi1iS4o$/CCaYvrFq1VAukA9NstM7rqas05DQtL/sO1/yi6/txI=	\N	f	del_1-9.26				f	t	2017-10-25 20:11:25.297613+00
3711	pbkdf2_sha256$36000$812luV6d3UbE$TunbSKsRMVNcIc1v7uAtIbV8EaMcWh5TIy5mmh0Gbj0=	\N	f	del_1-9.27				f	t	2017-10-25 20:11:25.353594+00
3712	pbkdf2_sha256$36000$w7lbeWby677K$Q5mgJjRY9Ouv1I5DAWpEv0qiioXxGpRkmDSs7YPL6Pw=	\N	f	del_1-9.28				f	t	2017-10-25 20:11:25.408263+00
3713	pbkdf2_sha256$36000$boQ9wTQsL64K$ixGvhZ3tb38br6ODKHpHjf1Qr1e0ow3Cnfz6cu1N+xk=	\N	f	del_1-9.29				f	t	2017-10-25 20:11:25.462432+00
3715	pbkdf2_sha256$36000$vWhx6HuyMc7Q$RphykPmLJZ8gKuyKynV6omctT5Er/q/mggJwasMCr2E=	\N	f	del_1-9.31				f	t	2017-10-25 20:11:25.573512+00
3716	pbkdf2_sha256$36000$EBUYajFzoX9T$nVN1ZQA1xGjNXdesrYJmal/vtZu990Ij0/zi+yPpUeQ=	\N	f	del_1-9.32				f	t	2017-10-25 20:11:25.629117+00
3717	pbkdf2_sha256$36000$lR0ZPKoUBgpq$PVbwwam14MIAGkpuCfrO9EBweTJ5FdZK1ApmlN6GnKw=	\N	f	del_1-9.33				f	t	2017-10-25 20:11:25.684459+00
3718	pbkdf2_sha256$36000$CTGHEkQtCJMF$HdNc2CLeuAYKow4uS2XpRyNHVzX1Z8d8XxFiQPS7VTc=	\N	f	del_1-9.34				f	t	2017-10-25 20:11:25.740631+00
3719	pbkdf2_sha256$36000$Sjxn5N5jxkAG$hbL7I+jufmhBMbnjFJ1ZfCKaAm3hEToUNeYiRa5GkVc=	\N	f	del_1-9.35				f	t	2017-10-25 20:11:25.795981+00
3720	pbkdf2_sha256$36000$W1UjsnHiGDS2$z2KsaKudkf2kkrEq/NCJF2L1Qae/xgpO7Mqvbl+funo=	\N	f	del_1-9.36				f	t	2017-10-25 20:11:25.851003+00
3721	pbkdf2_sha256$36000$rWNq859gXLCm$z7SxxNKAPoP8+ckyTyF8FG8Q9RB2hir5PzgRozeTl0o=	\N	f	del_1-9.37				f	t	2017-10-25 20:11:25.906447+00
3722	pbkdf2_sha256$36000$LDprk9dflVg4$9QpT6BBmCTgNY4Vne93lzk0oDGfrjdDI5N7HStFyikw=	\N	f	del_1-9.38				f	t	2017-10-25 20:11:25.962057+00
3723	pbkdf2_sha256$36000$XCpfLeM19maj$BHvm2MFcDLbP/O+sDkn3CdU6E8CWYgh3OWwEGuZD6P0=	\N	f	del_1-9.39				f	t	2017-10-25 20:11:26.016192+00
3724	pbkdf2_sha256$36000$KYKp7OrHtrdC$nepb8sdXu7SH4xETgbURK+dDALycnRnUY0/rlfZorOA=	\N	f	del_1-9.40				f	t	2017-10-25 20:11:26.070889+00
3725	pbkdf2_sha256$36000$wv6qmaA3w2UQ$wboC55xPchOQdXL9iW47cSLQehhgGZSgQGsrKCDeinM=	\N	f	del_1-9.41				f	t	2017-10-25 20:11:26.125432+00
3726	pbkdf2_sha256$36000$2YzzVtaGwFoc$wQkT26THWNvv2+fC7F8Btejg8ud92TrVy9K0dXGFlIY=	\N	f	del_1-9.42				f	t	2017-10-25 20:11:26.181178+00
3727	pbkdf2_sha256$36000$SFT2V6h3xsbC$kr+OGittQMyXQmWDwO96XDhgfzQyOPPB2SFFRvAO9KM=	\N	f	del_1-9.43				f	t	2017-10-25 20:11:26.250247+00
3728	pbkdf2_sha256$36000$F2k8hjWENGQW$BIIXGc0lLGnpJzA8QEPvGkBXJPeEDoUws+3K5F2u78w=	\N	f	del_1-9.44				f	t	2017-10-25 20:11:26.320859+00
3729	pbkdf2_sha256$36000$TmgYwFwmnU3l$xXimVCiKqWUNU8i3qkAoiXlD4wX5jR/ale4xdZtY6YY=	\N	f	del_1-9.45				f	t	2017-10-25 20:11:26.376568+00
3730	pbkdf2_sha256$36000$Jacq4QZkl00I$XWJEIEWoDMnSc7JAlI4w+2FwzJPhopo9pTTq8qUTN5o=	\N	f	del_1-9.46				f	t	2017-10-25 20:11:26.432418+00
3731	pbkdf2_sha256$36000$Pnol8qf4DrTn$qHF8RisqYstgAE+6EYEQHQejaAYxScPCyMIti1ysWzI=	\N	f	del_1-9.47				f	t	2017-10-25 20:11:26.488184+00
3732	pbkdf2_sha256$36000$YrabTLGLpakB$mQ2ETzdue0xQvyifBuZR3Jl7ExSI7tOzWqm5rRfyWsA=	\N	f	del_1-9.48				f	t	2017-10-25 20:11:26.543594+00
3733	pbkdf2_sha256$36000$pGJ9gQebBVln$ivBa9QWdQ0HtlpNAOG+/Hwd9+zj606qHnbJ8c6/DtEM=	\N	f	del_1-9.49				f	t	2017-10-25 20:11:26.599815+00
3734	pbkdf2_sha256$36000$ab1BAFQTNCQj$sB3P3uqrTRy6UbO/6g9UTzo3ME90ipvx0JGc6ozJj6w=	\N	f	del_1-9.50				f	t	2017-10-25 20:11:26.655135+00
3735	pbkdf2_sha256$36000$qmABYdOYcCTJ$uPf6GabTs9gLl3Q8+NqAqzN9PVHRS8OJTJyJ+zC81FI=	\N	f	del_1-9.51				f	t	2017-10-25 20:11:26.71154+00
3736	pbkdf2_sha256$36000$DyGHUfsHfmvZ$sZ1T18yuXHg9RFsyCrGLHAha34iQUXIQrbQ5LBg89gA=	\N	f	del_1-9.52				f	t	2017-10-25 20:11:26.766853+00
3737	pbkdf2_sha256$36000$fLRzJ5gou14A$mWWZ4dj+S2d/8YXACJGd3TGJ44yY0tSLIHxxLMEy//w=	\N	f	del_1-9.53				f	t	2017-10-25 20:11:26.822057+00
3738	pbkdf2_sha256$36000$EoZ6udXyRtyt$DdnbkIPvpPcyLJtSJXdS2q53Te22Xo3HrTR58GFyXiM=	\N	f	del_1-9.54				f	t	2017-10-25 20:11:26.877729+00
3739	pbkdf2_sha256$36000$ti9V8U6ytvlT$t40LoMEIRyv2yPVyLlnSE0Uacu7Dxutu+tOaG54YVIY=	\N	f	del_1-9.55				f	t	2017-10-25 20:11:26.932575+00
3740	pbkdf2_sha256$36000$fi4kbKBcevMs$6VTLvZKC6MCnzD/WpHNq4uiFujsaKPvZ6/Q8IhG8+Zo=	\N	f	del_1-9.56				f	t	2017-10-25 20:11:26.987903+00
3741	pbkdf2_sha256$36000$KgXkHzvIC964$er7avW3aRVDrYhdLtdcqRUq4yA2/OoNFD4uphZ6g+Zw=	\N	f	del_1-9.57				f	t	2017-10-25 20:11:27.043507+00
3742	pbkdf2_sha256$36000$64MU6uokwbHA$LAUfsrCoHRHXvTeS01WbpjrUc3YMGBM1uJZMWYYUFuk=	\N	f	del_1-9.58				f	t	2017-10-25 20:11:27.099197+00
3743	pbkdf2_sha256$36000$kcUMJ0GIjnuK$WXb8VedmkmN0KbsAY/lIxXYWGHZ5SpMe5CPOWVe7wOA=	\N	f	del_1-9.59				f	t	2017-10-25 20:11:27.155209+00
3744	pbkdf2_sha256$36000$QDe6tXmSfKOY$6AHpNZTlAiyRuFGnMzNzVr9ySwvOCrerTnhY8dxKSP8=	\N	f	del_1-9.60				f	t	2017-10-25 20:11:27.210372+00
3745	pbkdf2_sha256$36000$ffmZKU0ZBgEG$E5HeZE+qjNZSnMsI7plu9+SVf80wNlKTGwSEi6q+sHQ=	\N	f	del_1-9.61				f	t	2017-10-25 20:11:27.264879+00
3746	pbkdf2_sha256$36000$RT2KlhrT7ClG$FiX5aJG6D1HrueLx4Y2kFXSZT+WRnAHegzObF7DHWBo=	\N	f	del_1-9.62				f	t	2017-10-25 20:11:27.344391+00
3747	pbkdf2_sha256$36000$p4S0Wn3gYr1u$2tVPxtWYv+vrdoGVqnibZFkiG+BRsce/1XXvc+nz9GY=	\N	f	del_1-9.63				f	t	2017-10-25 20:11:27.40041+00
3748	pbkdf2_sha256$36000$6NslIyYPz2TK$VhRj2CpPKN5YpKQXvKhdNwPZOA3Unc8P+9llrA/715k=	\N	f	del_1-9.64				f	t	2017-10-25 20:11:27.455439+00
3749	pbkdf2_sha256$36000$17X4qN3ApvN0$beRnKmbPmFzTBt5z/L1br+IFAHG+vQacCUY+FITprKw=	\N	f	del_1-9.65				f	t	2017-10-25 20:11:27.51079+00
3750	pbkdf2_sha256$36000$w0OwQrhmPvgf$8wXee4hNnlalBAebSAo40bLyL2KXoXiCEWXWwQ2qQUk=	\N	f	del_1-9.66				f	t	2017-10-25 20:11:27.566016+00
3751	pbkdf2_sha256$36000$43nQkqxgDjtC$LlMSwh+R5tLxxu8RHMe2Jzkl9k4xxRS0clEqIYwZ65k=	\N	f	del_1-9.67				f	t	2017-10-25 20:11:27.621335+00
3752	pbkdf2_sha256$36000$2U9y9Y4ZUuoy$s2o3VvtdUZq2WaVXSUbZur1cen/h84vcfz8swQXv5/g=	\N	f	del_1-9.68				f	t	2017-10-25 20:11:27.676327+00
3753	pbkdf2_sha256$36000$Y7dv3UNbyeBB$aC7IllFMb+RoZT6owt88ZNfb5mi/8MNPjChU/ovke3A=	\N	f	del_1-9.69				f	t	2017-10-25 20:11:27.731764+00
3754	pbkdf2_sha256$36000$uNQEQsWffsRj$myeAr5beG1Mwqht45u6ui9otc1RVOxJ+feYRER0HdME=	\N	f	del_1-9.70				f	t	2017-10-25 20:11:27.785794+00
3755	pbkdf2_sha256$36000$pNDvNnd0APcJ$tAYAJW3pRIpXdQuRIrv+qfboDnOMa91JeBqvQlb955Q=	\N	f	del_1-9.71				f	t	2017-10-25 20:11:27.841506+00
3756	pbkdf2_sha256$36000$8FmzO6beipp3$6tX7ewAQhsc7ryqghgGA7YhMc6N9u8/SFKM82Hu71bI=	\N	f	del_1-9.72				f	t	2017-10-25 20:11:27.897036+00
3757	pbkdf2_sha256$36000$3bkpb5K3Bsxv$fJVl4rEC8TNXZnsHrHFY1Pu1SznLub/xIxCPR4w1E3g=	\N	f	del_1-9.73				f	t	2017-10-25 20:11:27.952163+00
3758	pbkdf2_sha256$36000$ib2UYVFgnQkV$//3c2Q/xLCQl6CY/cv+A43SOn3WPp+sqrlPtFeQziz4=	\N	f	del_1-9.74				f	t	2017-10-25 20:11:28.007503+00
3759	pbkdf2_sha256$36000$UC1AhWpqxHDH$wlmJO0khiJV/nABx/4FyHwQvtv/mDD6tKHI3W7J9sN0=	\N	f	del_1-9.75				f	t	2017-10-25 20:11:28.061333+00
3760	pbkdf2_sha256$36000$LcLcw3WkXqs6$Hk0a99tOjxAke+nVoLxePB4NIMWHqwY9Rc8pm52HsOY=	\N	f	del_1-9.76				f	t	2017-10-25 20:11:28.115648+00
3761	pbkdf2_sha256$36000$TTLnd6FpezTa$TfD1xm/D2oKbhk3Ty2s+e6wy/DI1o5wWAtFo4taPSts=	\N	f	del_1-9.77				f	t	2017-10-25 20:11:28.16929+00
3762	pbkdf2_sha256$36000$QG1jhzpotxhj$AggaPW4Cx9ccx/WEVWSU3s6XQUbQvR5+jXQ8ORzBmbM=	\N	f	del_1-9.78				f	t	2017-10-25 20:11:28.224051+00
3763	pbkdf2_sha256$36000$pQVRRDFlcHKO$F44ljKqCsXLc/81U1M4K9GzxdWEb5vCvkYQkJdMuu2k=	\N	f	del_1-9.79				f	t	2017-10-25 20:11:28.278529+00
3764	pbkdf2_sha256$36000$MkNOXoajct3o$t9auJnkUv+GTtQXqvsB2C5zQxcS4yDiSUw52QzXj5DI=	\N	f	del_1-9.80				f	t	2017-10-25 20:11:28.364593+00
3765	pbkdf2_sha256$36000$oKjmDmoMtNVV$nUstnFkZ4aWMD06PAaLecWMo6mpP9m5YQxQt/UbeM08=	\N	f	del_1-9.81				f	t	2017-10-25 20:11:28.435335+00
3766	pbkdf2_sha256$36000$by9Dq46SnMcm$WetUZdKDEUC7W/OB/a7f1yFP5fjuKEP63hq6K+IvTNo=	\N	f	del_1-9.82				f	t	2017-10-25 20:11:28.491118+00
3767	pbkdf2_sha256$36000$ELpOw6k4XmJr$fpU/G3CEQs0YAsfsoplR/1kYn0mH3auzizYc0C11aHk=	\N	f	del_1-9.83				f	t	2017-10-25 20:11:28.578201+00
3768	pbkdf2_sha256$36000$xYlKi3TZymca$c4rKhDYHkA1UdTEI+xrLWKTmnkghNTzsjuWUaIGWVgk=	\N	f	del_1-9.84				f	t	2017-10-25 20:11:28.721249+00
3769	pbkdf2_sha256$36000$TGgxE6s2oT8U$Axf1EaopYpxTIlDTinpI6yNZYpzynHuBxNsi9pzpGtw=	\N	f	del_1-9.85				f	t	2017-10-25 20:11:28.864426+00
3770	pbkdf2_sha256$36000$U8Dm0fryH4LX$DjToO9f7TFEridRUELd+kk19ur0gBiqCnO1mFolNTqo=	\N	f	del_1-9.86				f	t	2017-10-25 20:11:29.005884+00
3771	pbkdf2_sha256$36000$m6DJsaxu48gG$eLTBuVLQpCepdnHKcZFbiTMl+hkgG5vyk3Nb8uUmm2Y=	\N	f	del_1-9.87				f	t	2017-10-25 20:11:29.12659+00
3772	pbkdf2_sha256$36000$buZkQUTTybTf$6LKBZqfgxrl4gzUIU3ScoGniKXlksreRUgOUqhsWpEA=	\N	f	del_1-9.88				f	t	2017-10-25 20:11:29.241234+00
3773	pbkdf2_sha256$36000$m6K5IXKwpkYZ$TMfkeIaBCJPi4xEIJNCoG43m9bUFm/GxNYNZw7PmCrg=	\N	f	del_1-9.89				f	t	2017-10-25 20:11:29.35615+00
3774	pbkdf2_sha256$36000$i13srsSDQMqU$91pMQIyqEffEUhp0asII6S4nk2Q7Us7V8ca66aKG6Kk=	\N	f	del_1-9.90				f	t	2017-10-25 20:11:29.521574+00
3775	pbkdf2_sha256$36000$mdZk8kUxpEss$GhtSHSCIEBhk7l7uDSI1e9LBQkDCwqJtLG6Yl+uLF28=	\N	f	del_1-9.91				f	t	2017-10-25 20:11:29.617005+00
3776	pbkdf2_sha256$36000$S0n068swzhF6$LT/YLe5aVl6+ks3nLn0Ulio3aXf0jh+QHvqKTiauIAg=	\N	f	del_1-9.92				f	t	2017-10-25 20:11:29.711936+00
3777	pbkdf2_sha256$36000$LNFf6GR2R1H5$kByFQ++HHWI0Ht6vM57ubPy7yvz9Y0s5MvAfyP7h0g0=	\N	f	del_1-9.93				f	t	2017-10-25 20:11:29.805709+00
3778	pbkdf2_sha256$36000$WR4pdBVBgVHY$PWLF1/980mF9BrGEYPFOZoeK2sMrQiSCVFMlAOKMGtI=	\N	f	del_1-9.94				f	t	2017-10-25 20:11:29.899524+00
3779	pbkdf2_sha256$36000$rNpcPmLkldCb$+Et3KsepZrHZg8hmo95Ae9gnUbU19VTQQexQvqlc8pw=	\N	f	del_1-9.95				f	t	2017-10-25 20:11:29.997739+00
3780	pbkdf2_sha256$36000$lGXjlG6KIRC3$/QDloCrsCLCJboupa2Hq86FLc6Jze8b7h9OFxy41RTA=	\N	f	del_1-9.96				f	t	2017-10-25 20:11:30.079603+00
3781	pbkdf2_sha256$36000$VvYAu9MwxnV6$MZ5xZma+NtbPstgZC8LS+kRDvzLqb+bg3BsrFT2eU2Y=	\N	f	del_1-9.97				f	t	2017-10-25 20:11:30.156725+00
3782	pbkdf2_sha256$36000$rpVVn1IGDnvK$/xP2v+y3diGgVP7gQwtvNgspqDuFSpRO2enD6p0mOQg=	\N	f	del_1-9.98				f	t	2017-10-25 20:11:30.234429+00
3783	pbkdf2_sha256$36000$8mvbDWBtlEcJ$YsybbtLYEcGppMWyZeia+is8JYCeq+rDqsHT90W/6qM=	\N	f	del_1-9.99				f	t	2017-10-25 20:11:30.311354+00
3784	pbkdf2_sha256$36000$YEzpL9yJIAAe$PG8T/EV/7HS82f42BnrhGaSq6F2eWy1i5zEpYfDbEQM=	\N	f	del_1-9.100				f	t	2017-10-25 20:11:30.387886+00
3785	pbkdf2_sha256$36000$ZI6bNpAMCxHW$U03f7f8OmDMYfeHs3KbCohRRjyoHYwCSyOc9rhSCHTI=	\N	f	del_1-9.101				f	t	2017-10-25 20:11:30.46441+00
3786	pbkdf2_sha256$36000$5XwUHx9grBfI$itxQZz/3SA5HPPCCtkbXixEH3jRGUoM0WEW2BZI8yIE=	\N	f	del_1-9.102				f	t	2017-10-25 20:11:30.571532+00
3787	pbkdf2_sha256$36000$Oe4l3ib8vUWu$NB3CeybgkNVQTD9vQXyKz8a7wfEnqywXi68e0VboMIQ=	\N	f	del_1-9.103				f	t	2017-10-25 20:11:30.638763+00
3788	pbkdf2_sha256$36000$fa7BiUtxIBfa$OEVpmmJaxBGEYcS4FaqMirAy2Z1VQMP23wqX92SPuok=	\N	f	del_1-9.104				f	t	2017-10-25 20:11:30.706173+00
3789	pbkdf2_sha256$36000$E1Hly8vlYka0$2DPZzg6sUligxCpwjVin9iziRnEHgerkuOD3jh1Oz9k=	\N	f	del_1-9.105				f	t	2017-10-25 20:11:30.773932+00
3790	pbkdf2_sha256$36000$LXRYRfmMMg1R$kArWPC2e5U2EtO4EsLsvid69csX1kJuDRnIUxcUewWc=	\N	f	del_1-9.106				f	t	2017-10-25 20:11:30.841106+00
3791	pbkdf2_sha256$36000$rMOqB111JGvt$yHVN8V3eA2+Xv00ZEguDjJCEsWUpe/DdTA/jUv1WEhQ=	\N	f	del_1-9.107				f	t	2017-10-25 20:11:30.910051+00
3792	pbkdf2_sha256$36000$xib1FTEkcSZ7$MvmchnYjOpUJkF44PlWi4jX8X1jyIxtYdhPEair7xmc=	\N	f	del_1-9.108				f	t	2017-10-25 20:11:30.979102+00
3793	pbkdf2_sha256$36000$XPtjD3Tv2SaS$vfP839iXWTyfBKMi7O4lS3eo/Nvd3jFA6b8cXcaejXM=	\N	f	del_1-9.109				f	t	2017-10-25 20:11:31.087964+00
3794	pbkdf2_sha256$36000$HDGQviy7NcCC$XmSexA1iueACBAMaNG3if/gKy83zfGBJWmfg1G8EX1g=	\N	f	del_1-9.110				f	t	2017-10-25 20:11:31.236743+00
3795	pbkdf2_sha256$36000$6MQCP5u9HoQy$OseMuIS0LY2aEb4fauQ01cnSd6mcnlcd1eQ7fQn7sBU=	\N	f	del_1-9.111				f	t	2017-10-25 20:11:31.378578+00
3796	pbkdf2_sha256$36000$3jM6gEjbZU2j$tMGcbjzAzM2FpOUCZNyymCjBhkC1UnkqajEbBCfu/ik=	\N	f	del_1-9.112				f	t	2017-10-25 20:11:31.519668+00
3797	pbkdf2_sha256$36000$1OAEkyzigW0k$TjgDbShL1eu6c/5gx94Zxzys2+x8lY0E0YO8ktsbZIY=	\N	f	del_1-9.113				f	t	2017-10-25 20:11:31.694936+00
3798	pbkdf2_sha256$36000$Mx9TaWuk9CNE$YeCk4QpHVU6/lNS/jiEGH0b+/sLhtT1J81Rx1u/bTYY=	\N	f	del_1-9.114				f	t	2017-10-25 20:11:31.81666+00
3799	pbkdf2_sha256$36000$HUKrpPEfmcLm$4E7AhlUasbhTZgOSL+IYk56bmE29r7hn9vRn5U2OiJY=	\N	f	del_1-9.115				f	t	2017-10-25 20:11:31.937059+00
3800	pbkdf2_sha256$36000$NQTrMhX9KjvD$gZICQ/FD1JaFnnrT4Jq5Cub/u/DffqtKa7cqQfR7m1s=	\N	f	del_1-9.116				f	t	2017-10-25 20:11:32.04003+00
3801	pbkdf2_sha256$36000$0VaZPhktHMyu$17cNSP/J0nxMNWUnDTFu4hiYKOBjGOLAA2S/KkIrDOk=	\N	f	del_1-9.117				f	t	2017-10-25 20:11:32.095541+00
3802	pbkdf2_sha256$36000$VZvwmgZAI2St$wZW8P+TXkmawCGVUfCuaogA/nrp3r0YyGZHx/RM/awU=	\N	f	del_1-9.118				f	t	2017-10-25 20:11:32.150864+00
3803	pbkdf2_sha256$36000$LhdJ6HD71yJS$UC4+Ft0Bgu86VPQvslXfiIM8v7a/GK+86tEWyns9cMo=	\N	f	del_1-9.119				f	t	2017-10-25 20:11:32.206805+00
3805	pbkdf2_sha256$36000$MXQexI7rv7AJ$YCrTkzkn41lF+6WG6wVhYQKspwR6xmgJmsXoo6erAnE=	\N	f	del_1-9.121				f	t	2017-10-25 20:11:32.316985+00
3806	pbkdf2_sha256$36000$YcLgrqivReWt$aAy7Zytg96R7DxAfhZ+Ch3a/d7GF/yEVN+vwk8CH290=	\N	f	del_1-9.122				f	t	2017-10-25 20:11:32.37183+00
3807	pbkdf2_sha256$36000$qi1PxxZAzoNz$XEC1pZfmJjIPxL9xPgbEroEuF4yUwbPu11J1oPlOeB0=	\N	f	del_1-9.123				f	t	2017-10-25 20:11:32.426468+00
3808	pbkdf2_sha256$36000$aFcIH70HghCl$DMTXdDFooihz0f2Cchh+IpOBs3OzzEd98u7URfNX3H8=	\N	f	del_1-9.124				f	t	2017-10-25 20:11:32.481025+00
3809	pbkdf2_sha256$36000$vRZ4u5UUf30o$loqW2KC1KLPR5Xzi2SBdH5hnoGHba5azJCtA2kQanMk=	\N	f	del_1-9.125				f	t	2017-10-25 20:11:32.536114+00
3810	pbkdf2_sha256$36000$9T6uHalzAtwm$gmWAJmsKBKgfRigZOI/lNEmhLmbCUsLdu+t3wiO5WSo=	\N	f	del_1-9.126				f	t	2017-10-25 20:11:32.590979+00
3811	pbkdf2_sha256$36000$PTzn3WzXtzmo$lKOlWzdBJWw71lIrQL8EdmNThjPBfwKcGKjk3EpX2Wk=	\N	f	del_1-9.127				f	t	2017-10-25 20:11:32.645817+00
3812	pbkdf2_sha256$36000$mD0cLU4TeN7n$NcHFZ7AWlNNm/DmhVWqehPHnhJhH1kkZAZmQWS7rfZ4=	\N	f	del_1-9.128				f	t	2017-10-25 20:11:32.726468+00
3813	pbkdf2_sha256$36000$zvISjJhoXrXG$PAoD9mGHUKj2mognGbXRtd60gLItGZ8F46R73CCc0lE=	\N	f	del_1-9.129				f	t	2017-10-25 20:11:32.781159+00
3814	pbkdf2_sha256$36000$ukmiBHbz1EzR$MvpFVj0WK1rLWXB3DxnbU/DtQL0cUecloUBp5NZM+00=	\N	f	del_1-9.130				f	t	2017-10-25 20:11:32.835673+00
3815	pbkdf2_sha256$36000$XLwMa5tQ6WPZ$iejdOIMOfzsqahHkmorb1urJlmIYPUaSK4mya88H3A0=	\N	f	del_1-9.131				f	t	2017-10-25 20:11:32.890204+00
3816	pbkdf2_sha256$36000$HRn9GI5wOXbh$69FJ09mJ498JogJ8AKtrD98j8ucww27taDzRELf4j08=	\N	f	del_1-9.132				f	t	2017-10-25 20:11:32.945527+00
3817	pbkdf2_sha256$36000$Pw973CUFeAZs$n3QoWhElodnUlGJsKuTieYhWu9YLo16jsPJ6PrbYcDQ=	\N	f	del_1-9.133				f	t	2017-10-25 20:11:33.001029+00
3818	pbkdf2_sha256$36000$D7186V4IiJk0$jjmmQ5HiR7sbSJ2Dxgg3F2QG4iAuUpI/xQLiATA3sXI=	\N	f	del_1-9.134				f	t	2017-10-25 20:11:33.055998+00
3819	pbkdf2_sha256$36000$e5C7Uc5qHEjn$CBBM0tZOn3tHvRv/F2UttfC1yIExZe7D7N14NWHH4hs=	\N	f	del_1-9.135				f	t	2017-10-25 20:11:33.111754+00
3820	pbkdf2_sha256$36000$cyT18duLUmIz$DPy9/C3+EsmEy/+Wf6Q/yz05GpVMbCP2pIjGXOpo1Z4=	\N	f	del_1-9.136				f	t	2017-10-25 20:11:33.166924+00
3821	pbkdf2_sha256$36000$rTAZe5L1rr5H$OloFdopuc0LZH6uQguT5/OfuN5em3w8Mh7sDnundVcw=	\N	f	del_1-9.137				f	t	2017-10-25 20:11:33.223205+00
3822	pbkdf2_sha256$36000$vBzM3EgsZPjl$kP/pb1VnsPzLOkm4pdw865SNWxbXN3W+Cqhe3Nfgg2o=	\N	f	del_1-9.138				f	t	2017-10-25 20:11:33.278501+00
3823	pbkdf2_sha256$36000$mVYkr3d20lYn$gnXmCWYLoaffVHVCKC/dJ1Fmm55h+vhh8Z49oe/iW2g=	\N	f	del_1-9.139				f	t	2017-10-25 20:11:33.333275+00
3824	pbkdf2_sha256$36000$iv8TmWAL92bC$Bjhnf6iwv3XZp5Cn1g/k1YLAYju2WiWdtvt0Ceo+cYI=	\N	f	del_1-9.140				f	t	2017-10-25 20:11:33.388917+00
3825	pbkdf2_sha256$36000$JfevB1ZqENlT$lpn5jP4WwKNVPdbDtj7dTP9nGBCLdeswYLKOq4tX0f0=	\N	f	del_1-9.141				f	t	2017-10-25 20:11:33.445784+00
3826	pbkdf2_sha256$36000$0ARjI9K3ZzCG$Op1qvwiZxi0+vFX2gm0URJza+NCce9Hy1rH5msF/Rf4=	\N	f	del_1-9.142				f	t	2017-10-25 20:11:33.500654+00
3827	pbkdf2_sha256$36000$NhikPGOGKVa2$0ydpduWHUz7jY9v3EpGI9z4icZp/Lwyo/QJY9IJPyiY=	\N	f	del_1-9.143				f	t	2017-10-25 20:11:33.605497+00
3828	pbkdf2_sha256$36000$IycUNjqaYMmH$4jhJUKFwGT5T0f76H1UVLW5cNf6c2knBOhNoVByZ9bY=	\N	f	del_1-9.144				f	t	2017-10-25 20:11:33.779091+00
3829	pbkdf2_sha256$36000$D6m7UznxALvL$IeTynXTxChJvkICUSXQ0nq4BIEYEfuM2wWH/qArellU=	\N	f	del_1-9.145				f	t	2017-10-25 20:11:33.976576+00
3830	pbkdf2_sha256$36000$IqhdGdCPrhuk$lkCBwCWWfi9RRsrDo3HedZ/b1NMWZ3/M+/xzzYQaZFc=	\N	f	del_1-9.146				f	t	2017-10-25 20:11:34.062742+00
3831	pbkdf2_sha256$36000$TR00puLO7KCB$UMJwb7WuEehDBKmRCGFW0UhqrRMwyCD8BnIYTlwN6E4=	\N	f	del_1-9.147				f	t	2017-10-25 20:11:34.119778+00
3832	pbkdf2_sha256$36000$Vzu9zVDd0hYj$RQ/yfcvw+KRfedMRlIRj7QXsjQj3H8w2YwffDKTdxFE=	\N	f	del_1-9.148				f	t	2017-10-25 20:11:34.175447+00
3833	pbkdf2_sha256$36000$txQFprtCULcA$kxETWbzxDB1sdJYpmRukGZhzuSnJ8nj+y9BNxOV4fAc=	\N	f	del_1-9.149				f	t	2017-10-25 20:11:34.232095+00
3834	pbkdf2_sha256$36000$H8eUl0vskiL7$TnDkPoiZR4WtaskcZZ4z7oycBDU6QiBZ/w7elvx7cZc=	\N	f	del_1-9.150				f	t	2017-10-25 20:11:34.288186+00
3835	pbkdf2_sha256$36000$ykGXg2EImOc8$UqM30HBExUkQrDeUqayVzslJkTlPV5AQvzacKh9UF0k=	\N	f	del_1-9.151				f	t	2017-10-25 20:11:34.343575+00
3836	pbkdf2_sha256$36000$Pv5Ft3DPRhWE$RES7fQIQt9s1/Uxwnrfx7/k2DT4JYsrxKSbT6Yek5h0=	\N	f	del_1-9.152				f	t	2017-10-25 20:11:34.39911+00
3837	pbkdf2_sha256$36000$EuMEDSCjTXcb$N6L8S5xfWwwLmiO8wECu6ngek0sDC48Oo9PVVzmQ3Tw=	\N	f	del_1-9.153				f	t	2017-10-25 20:11:34.455162+00
3838	pbkdf2_sha256$36000$vH3jd9fe6Pim$UPrDBfcmCfe0Dswu5vD0afL4JjZnscIMUP8TBVe9HdE=	\N	f	del_1-9.154				f	t	2017-10-25 20:11:34.511252+00
3839	pbkdf2_sha256$36000$SuWW3W2hTcsj$remXjbmfIwunYSPjPl8TlqLzUwu+8i76xgmask0ldfA=	\N	f	del_1-9.155				f	t	2017-10-25 20:11:34.567612+00
3840	pbkdf2_sha256$36000$AZwDR6z1YR6e$mRfm5nq/rXqSqDz7+oZj9p/84pFkM8PNwCgsCjrSwY8=	\N	f	del_1-9.156				f	t	2017-10-25 20:11:34.623471+00
3841	pbkdf2_sha256$36000$2z3PhkhbFEWk$q1PoEvJgwA8yecYNbkFJedC7WgwZyroD8K7ogAX3400=	\N	f	del_1-9.157				f	t	2017-10-25 20:11:34.679887+00
3842	pbkdf2_sha256$36000$76Qc9YMJDnuT$dPRVseJ11WfVOKng41C2nIMTok2Rv3Q/irVQE6LkNm4=	\N	f	del_1-9.158				f	t	2017-10-25 20:11:34.735766+00
3843	pbkdf2_sha256$36000$IX4DifSsHX6u$nCoghHOhxM9w2nCmzkE6SZc9ooyeFRrADnXTNQBFo+w=	\N	f	del_1-9.159				f	t	2017-10-25 20:11:34.791249+00
3844	pbkdf2_sha256$36000$zH81U9RH48A5$DDQ7/n9vTFsiSSSxT4Vrpaau/sHH15IMoDyOpTMfxLo=	\N	f	del_1-9.160				f	t	2017-10-25 20:11:34.8474+00
3845	pbkdf2_sha256$36000$c6tGldK4lR4q$UwrRIJVF8nBX0D5fCV4Lr7pijn9jm0F83eBF0l0RBO4=	\N	f	del_1-9.161				f	t	2017-10-25 20:11:34.92953+00
3846	pbkdf2_sha256$36000$jzz4aKUCXzWK$G08wo8W7WP/g4mUyxZq5LzoTgPf+jOtNORSYWVqkCOY=	\N	f	del_1-9.162				f	t	2017-10-25 20:11:34.986062+00
3847	pbkdf2_sha256$36000$qeWkizM0J2Q3$/BX9PPAokZfJjEHBnlcb8GN7zsp4Sb9Ip9MS82//GQ4=	\N	f	del_1-9.163				f	t	2017-10-25 20:11:35.042355+00
3848	pbkdf2_sha256$36000$qbkAwcelCv7N$JmZZJ52bNBiSBxW9HzbgE1BSfl9HPSAP5uHUD6hWhm4=	\N	f	del_1-9.164				f	t	2017-10-25 20:11:35.097685+00
3849	pbkdf2_sha256$36000$QSAbFkyHPR6s$FDW+Wjz2AQZx4EN2HpAx8QimQMNz9XgU/u9PJW6WHDQ=	\N	f	del_1-9.165				f	t	2017-10-25 20:11:35.153401+00
3850	pbkdf2_sha256$36000$ZNDFacDbFjUO$+c4fEeil1QsdknRF9WnOrgWpD4s7sjz0Y22/6Wu05UE=	\N	f	del_1-9.166				f	t	2017-10-25 20:11:35.210214+00
3851	pbkdf2_sha256$36000$7aJwduGYnuKT$sgoMQytcOQi3MlRcB7HM3+JDh1z/EMBSNRscIuReql4=	\N	f	del_1-9.167				f	t	2017-10-25 20:11:35.266041+00
3852	pbkdf2_sha256$36000$36ugWpCU9C2j$xbTzWsnBYNUV+xEYBAU9Kg7KC88JUyOM6etdMcwQ6iM=	\N	f	del_1-9.168				f	t	2017-10-25 20:11:35.3223+00
3853	pbkdf2_sha256$36000$sO0rAD6jCPwV$3Je9Tn0ukyZcFnihcEEXd/YmcQsoa4KP7SvyMNp1iEM=	\N	f	del_1-9.169				f	t	2017-10-25 20:11:35.377923+00
3854	pbkdf2_sha256$36000$58buGiYz34Xs$hKg5JDKGmFAuR87Clkmbx5MNSbvSA83eys1y/PXlrLk=	\N	f	del_1-9.170				f	t	2017-10-25 20:11:35.43351+00
3855	pbkdf2_sha256$36000$LIBcZeFfuMTO$ZOvdYSEMZAxfBMdglWkgGDBykgG1msL9+ZQ8aTE57ps=	\N	f	del_1-9.171				f	t	2017-10-25 20:11:35.488942+00
3856	pbkdf2_sha256$36000$TqjZkAjR6Zvk$Qd/8+YPT5/MeMSYB0TowAAXCcA0k+6xLeDc1BGNLZVQ=	\N	f	del_1-9.172				f	t	2017-10-25 20:11:35.544496+00
3857	pbkdf2_sha256$36000$ARKUDziy2sHQ$QNbVznD1WZmOnw1GJ6a0Uz3oik58GHsTAvUqtc9DUcw=	\N	f	del_1-9.173				f	t	2017-10-25 20:11:35.602+00
3858	pbkdf2_sha256$36000$tC6TI7qjyLQH$3nVXGLXJNv3bbRZxt4jeQLfw0MTDtCUf8E00VJdUJuI=	\N	f	del_1-9.174				f	t	2017-10-25 20:11:35.657288+00
3859	pbkdf2_sha256$36000$twqDIUYV0arH$ZpLOlmjpBIHqr1uS3RdaadYz4cXPe0itMqeuR84vfGo=	\N	f	del_1-9.175				f	t	2017-10-25 20:11:35.713652+00
3860	pbkdf2_sha256$36000$Ty6wi0jGP6Dw$Tw3b3yvegQ8Eyd0fqsmz1rqrYJvbnASx7JBNgnzwJQ4=	\N	f	del_1-9.176				f	t	2017-10-25 20:11:35.769241+00
3861	pbkdf2_sha256$36000$dpauHXoZ1r8i$uZTY0G2JV14KayhTciloJB89JLP+FF1z05/fbxlKVPA=	\N	f	del_1-9.177				f	t	2017-10-25 20:11:35.824923+00
3862	pbkdf2_sha256$36000$wZCCGB6vcqMy$YJtugbImr+p7tM1REa/1bONbIWpYruyDfwTl3W/1QeA=	\N	f	del_1-9.178				f	t	2017-10-25 20:11:35.881553+00
3863	pbkdf2_sha256$36000$16lltnW2fVuk$g/ksXePhV/Es/W4jp9yJajRDPcei7bTV7wj3Ou/84ss=	\N	f	del_1-9.179				f	t	2017-10-25 20:11:35.962682+00
3864	pbkdf2_sha256$36000$leQJIuT8cP9F$5VJEX1WOS0JWtXoT9QPgunEMfxlXNVvOW8J+/KkALUs=	\N	f	del_1-9.180				f	t	2017-10-25 20:11:36.025684+00
3865	pbkdf2_sha256$36000$P06B0PmjUohj$vXw3p+CxM2a+H+iGzKJJJKMuS0PxSkjh3vwyNpCvizQ=	\N	f	del_1-9.181				f	t	2017-10-25 20:11:36.093822+00
3866	pbkdf2_sha256$36000$Wlehp2hphB2L$CRKEo8iiekxGyupqSGQAXqv6bQPYCv4MPYqmf04au00=	\N	f	del_1-9.182				f	t	2017-10-25 20:11:36.149952+00
3867	pbkdf2_sha256$36000$WaElNNjCp2e0$GxoqucSpR+PP13Zw7pA2CAuazzUZbB3Hzn8xtYDftS4=	\N	f	del_1-9.183				f	t	2017-10-25 20:11:36.216809+00
3868	pbkdf2_sha256$36000$dIaAQGRKmNAx$kPAsoQmS79iePejBzyqliw0rQNR56ohh2YCkG+1YSCQ=	\N	f	del_1-9.184				f	t	2017-10-25 20:11:36.273185+00
3869	pbkdf2_sha256$36000$OrBHzDs0w4Dp$5apRA4BBStYhO05Fn4ZkxnUlEtSK8aJbQjpZwBVXOSY=	\N	f	del_1-9.185				f	t	2017-10-25 20:11:36.330093+00
3870	pbkdf2_sha256$36000$ZVnA8vTx34FO$1Xd3SdP4hUOuQDoHXFOc1lapz+Ij/EKG9U/glF3p5uA=	\N	f	del_1-9.186				f	t	2017-10-25 20:11:36.386998+00
3871	pbkdf2_sha256$36000$5JUxjH7Ldmwx$IMSYG/48Vjw+/k3qBILUBJjYIFrVRo6mnUueE66tW8s=	\N	f	del_1-9.187				f	t	2017-10-25 20:11:36.443055+00
3872	pbkdf2_sha256$36000$9cTCygVJ0TiI$3lu5ESUPI08bOznKeMkO6kTVrAozPpDq3CjCiuFVTw8=	\N	f	del_1-9.188				f	t	2017-10-25 20:11:36.506886+00
3873	pbkdf2_sha256$36000$mgIsbZIp2Oh3$Vv0/g5oky8X5myG6uVnRoly9J8AYP03I4AMIn+UMS14=	\N	f	del_1-9.189				f	t	2017-10-25 20:11:36.628634+00
3874	pbkdf2_sha256$36000$O9VgtTnM66MS$/yoheHid425Ka148Q33lRFOTSp+A1WSLWD3SMe2xm6Y=	\N	f	del_1-9.190				f	t	2017-10-25 20:11:36.789636+00
3875	pbkdf2_sha256$36000$xxdto6XwYgsb$RzBGF/1qj0GTbyRBAkQHcm1xvgm+kEtEhmazsQxhOiU=	\N	f	del_1-9.191				f	t	2017-10-25 20:11:36.940944+00
3876	pbkdf2_sha256$36000$9HQuMuRiAVkc$HqMRlJ+eXWblADYfVQYSFzywejOUZZCs1+NjRbXhRwQ=	\N	f	del_1-9.192				f	t	2017-10-25 20:11:37.080553+00
3877	pbkdf2_sha256$36000$izbPIMIle0Ok$x05HiztPwjKG2kFHjKJmjjDFbdpZfcKF820YN5DULfc=	\N	f	del_1-9.193				f	t	2017-10-25 20:11:37.146433+00
3878	pbkdf2_sha256$36000$1dmr34db9VXs$8rtgcMURkFiZAdU58IPkzDxYUbeueKPaLVH/Si75egY=	\N	f	del_1-9.194				f	t	2017-10-25 20:11:37.203443+00
3879	pbkdf2_sha256$36000$4fPj6eo0nSvH$2srwUXSSeUMgT0I6aQzcs9adLJJi2zyjd2dNMw63/Jg=	\N	f	del_1-9.195				f	t	2017-10-25 20:11:37.260016+00
3880	pbkdf2_sha256$36000$Kr9PDOMtcvdk$SSV8LMsKPQbYg7ogLKFMVNhQWcVzSIK4qpUiSMLNI/4=	\N	f	del_1-9.196				f	t	2017-10-25 20:11:37.314422+00
3881	pbkdf2_sha256$36000$BNG9XPKDFJyI$IHQUAIqL36P7u80Jqt7rEcfr4TBXQJj6WU0GJLZ2nes=	\N	f	del_1-9.197				f	t	2017-10-25 20:11:37.374214+00
3882	pbkdf2_sha256$36000$QWGu20jdcnqR$bMRIDZ3JkvxkIQpIMG6AEWrl4IXkSf68hpXS5YXgpmA=	\N	f	del_1-9.198				f	t	2017-10-25 20:11:37.428852+00
3883	pbkdf2_sha256$36000$O6uc2HCN3fFq$YLMQK3hLwbF1uYilCGjlVYuAGPmNrP+ZJYVQSENlWVA=	\N	f	del_1-9.199				f	t	2017-10-25 20:11:37.484558+00
3884	pbkdf2_sha256$36000$Jz5YRVqMKkOq$TAmcGRmriJSvlpJTdx+IZc+dgbvdd0TdHd9f79f8HoQ=	\N	f	del_1-9.200				f	t	2017-10-25 20:11:37.540515+00
3885	pbkdf2_sha256$36000$0PX9hd9URUAK$OoDV7uef/djz1IrNskyR/U0dQKWRATZKenpp1dLmRbI=	\N	f	del_1-9.201				f	t	2017-10-25 20:11:37.605136+00
3886	pbkdf2_sha256$36000$PgvASWIldoqs$qG+TEFvW3YWOoZ7KBwAKOJhvK7gWhj7J3k5FTCTNfqs=	\N	f	del_1-9.202				f	t	2017-10-25 20:11:37.665767+00
3887	pbkdf2_sha256$36000$mWdn5WZzINvN$v7tbcViIDcU8aBP2T8vBb9HHy2PL22Py4ZaXMxaQkhc=	\N	f	del_1-9.203				f	t	2017-10-25 20:11:37.7275+00
3888	pbkdf2_sha256$36000$oFDEWgkN8Syu$ZU4u3zmUZOBvtI7CTvypyszaFQ2h5hhdv/NhCSCiwlQ=	\N	f	del_1-9.204				f	t	2017-10-25 20:11:37.791409+00
3889	pbkdf2_sha256$36000$RLolVFdsXyTf$gQfgDsPVXn7i6xhA8cmYY7m0uuhX0mJWxnX/ey2r4/8=	\N	f	del_1-9.205				f	t	2017-10-25 20:11:37.851391+00
3890	pbkdf2_sha256$36000$3eU8WD3DhdEw$15ZnPTAcYoyzIJ6RHoPbTezsF/3Sm2ffqTuWgfuat3s=	\N	f	del_1-9.206				f	t	2017-10-25 20:11:37.911837+00
3891	pbkdf2_sha256$36000$oDF5sr45YyhJ$hKl9woYZfoAqdfzf2sQVexnLnr6dEcik0kQEiOk5kgo=	\N	f	del_1-9.207				f	t	2017-10-25 20:11:37.971788+00
3892	pbkdf2_sha256$36000$D6p3NYCRTrND$02L5qJhsZ8r5NrotCHcCJ4CveMMAFdxAOtF+STlq7FA=	\N	f	del_1-9.208				f	t	2017-10-25 20:11:38.035548+00
3893	pbkdf2_sha256$36000$LJ7SXohMTard$8v3hmYowPjlRg/SY9LfheoRQ+WEvo2qfRh2NET606uc=	\N	f	del_1-9.209				f	t	2017-10-25 20:11:38.137113+00
3894	pbkdf2_sha256$36000$0GSkKDkHnzyq$mooYvQxnCdvD6L7x9hBhaX4ZRHc12LS0A6gurrnDJvA=	\N	f	del_1-9.210				f	t	2017-10-25 20:11:38.205088+00
3895	pbkdf2_sha256$36000$fgzWc2466fkH$19GsbatRBEwJaj4iJDtGF6QPp3yACsmzG/EUppqC/v4=	\N	f	del_1-9.211				f	t	2017-10-25 20:11:38.270426+00
3896	pbkdf2_sha256$36000$wPtNEOp2E0eg$nwfDwVpzCcTxuLRBjMnIJ5KyO0NpitX8AWTnM7Bla3M=	\N	f	del_1-9.212				f	t	2017-10-25 20:11:38.335535+00
3897	pbkdf2_sha256$36000$5qrIyxUEUE7I$jX7F3D+YdfLjijwsy3SuM6SRBn/WutByEEv9fhrixM4=	\N	f	del_1-9.213				f	t	2017-10-25 20:11:38.400048+00
3898	pbkdf2_sha256$36000$OlMnCYBO6UYe$Bg7nID8WyjwwagfhQsjRVfdZOJ/WnMTMbTD4gKHEKFs=	\N	f	del_1-9.214				f	t	2017-10-25 20:11:38.543448+00
3899	pbkdf2_sha256$36000$HZAPTRs32ID3$zz2Yb8W5XowDF6uFujinNo196plOYdQgvaVJd29zIbo=	\N	f	del_1-9.215				f	t	2017-10-25 20:11:38.687928+00
3900	pbkdf2_sha256$36000$svSY7UtKIZ9Y$Tj9hSfCdZHOdmHWTu5BCzbcBzm+aqj5gSugZmVJ4YRc=	\N	f	del_1-9.216				f	t	2017-10-25 20:11:38.835094+00
3901	pbkdf2_sha256$36000$pmB3t33I1Aq2$BsrD6yNKj7WsUDaKm1vq6JqH4B//HbxXDbOFwqoqk8Q=	\N	f	del_1-9.217				f	t	2017-10-25 20:11:38.986982+00
3902	pbkdf2_sha256$36000$lFNtOmqNErnc$LhSjBG6cJ0xqNkSlmoxR4W8PZsDHIZsdNO8FkFYVWlM=	\N	f	del_1-9.218				f	t	2017-10-25 20:11:39.117505+00
3903	pbkdf2_sha256$36000$HxEuHLZK7o8P$BAjXlMqFAN1Z3Bu8q0ln7AQWPbx/Xoqib4ekeHgvBU4=	\N	f	del_1-9.219				f	t	2017-10-25 20:11:39.353932+00
3904	pbkdf2_sha256$36000$U1fwZcoXczKh$oDpQNR30u/on2zIquVGrWz6tfpHvaEXDhEFBcT5hTKc=	\N	f	del_1-9.220				f	t	2017-10-25 20:11:39.501244+00
3905	pbkdf2_sha256$36000$koL4DYXGMdIa$h/hcGA44t3Q1CpesX99LnQAC2Nk2yI16fXR8H/WEc3s=	\N	f	del_1-9.221				f	t	2017-10-25 20:11:39.644919+00
3906	pbkdf2_sha256$36000$62oYn0E8rpye$YM5m6QGR8c3lYk8dJ0ftmHgZHuJJHf6m3tlUgtYMoAM=	\N	f	del_1-9.222				f	t	2017-10-25 20:11:39.786473+00
3907	pbkdf2_sha256$36000$MrRq2YBGMDD4$gtP49YTBwfvlwFz5QOIJU0HzhUoDwacueCEF+GHN0Uc=	\N	f	del_1-9.223				f	t	2017-10-25 20:11:39.925812+00
3908	pbkdf2_sha256$36000$IJyazd4lgcmK$6tuSFTSZlwW7cg13B4d5xy3toMf+4s+hH8zIW5MuMHM=	\N	f	del_1-9.224				f	t	2017-10-25 20:11:40.070948+00
3909	pbkdf2_sha256$36000$buVzqqasfxCD$zaktUKbgSyANp+WoduxOTqI1AtEGWBm6izpXCmJmbpw=	\N	f	del_1-9.225				f	t	2017-10-25 20:11:40.195128+00
3910	pbkdf2_sha256$36000$SmbMQ6TgI4vH$r9qZnFKjBRFN6lZc8ltjBtfVLePZhy3ZB9h5KGz9oIA=	\N	f	del_1-9.226				f	t	2017-10-25 20:11:40.329447+00
3911	pbkdf2_sha256$36000$MmJ1wUwR86oR$BRXy4MeETOFYszOYuX0oLAABOucxfVWbCIS7QxkdgAA=	\N	f	del_1-9.227				f	t	2017-10-25 20:11:40.497519+00
3912	pbkdf2_sha256$36000$E9fiTpRYjD3v$8ii3BfkzuhxPi85MmUt3uU4uZMN8P5B1uzfwJtS/Ri4=	\N	f	del_1-9.228				f	t	2017-10-25 20:11:40.607254+00
3913	pbkdf2_sha256$36000$tPOE1ZhU2g5n$THbveXSN6Jo47cjLvT+45Zp0oGpOnAALARw/J0BVBUc=	\N	f	del_1-9.229				f	t	2017-10-25 20:11:40.71509+00
3914	pbkdf2_sha256$36000$nzhf9VOxcsWD$0q2Ui1fmT9wp+aoXRMwkLIQMAcFjlEzBYaWZAjrid+M=	\N	f	del_1-9.230				f	t	2017-10-25 20:11:40.82164+00
3915	pbkdf2_sha256$36000$oXkka0k9r6JX$vCTDTaBade1ltFpybFjkfD8n1EI+yQhl4xfBXSTHOTI=	\N	f	del_1-9.231				f	t	2017-10-25 20:11:40.927674+00
3916	pbkdf2_sha256$36000$JqHlEB3rDpKI$lhbMqDbog/kDAbcJmx+5vE14oJWy+RmFAsvXOuuKAsA=	\N	f	del_1-9.232				f	t	2017-10-25 20:11:41.032638+00
3917	pbkdf2_sha256$36000$5ZIfonLbkkfU$n2dDkWso46HHBn9phiK8IRLoynn4i4204dVAEIQ0sFE=	\N	f	del_1-9.233				f	t	2017-10-25 20:11:41.117483+00
3918	pbkdf2_sha256$36000$zeKgQz0gcJCP$AAgkcKAJZ5Q+Vfsjyvvmarh/bICPNE8QSVdjWJDmY34=	\N	f	del_1-9.234				f	t	2017-10-25 20:11:41.203116+00
3919	pbkdf2_sha256$36000$kBeHkbYHMSNS$tL+WjT/M7+IxdHIMFQCbDQfmyIFTskPty3Jr+2H6hKs=	\N	f	del_1-9.235				f	t	2017-10-25 20:11:41.289861+00
3920	pbkdf2_sha256$36000$rvQfFVKFU6vu$W3YnrfVypuSYbRWcyxgmqfulqkmDOIW6ssOez1P6aRE=	\N	f	del_1-9.236				f	t	2017-10-25 20:11:41.375902+00
3921	pbkdf2_sha256$36000$ui835EdroEAs$6V3E8RMCfMcsqnUmlO1zM/3K9Hri67UaOtD98dWqBws=	\N	f	del_1-9.237				f	t	2017-10-25 20:11:41.499948+00
3922	pbkdf2_sha256$36000$FiULhszZ8ZDE$f8fRP91kAE6XB6ZvGc0KhWSS6SoaPoE20+4qHPdUjdc=	\N	f	del_1-9.238				f	t	2017-10-25 20:11:41.58018+00
3923	pbkdf2_sha256$36000$HlMRpKdDmQBY$e+pKVeCOduXLzmyuK1NAVzjv0XJ/P2oNQ08QJAAZmIk=	\N	f	del_1-9.239				f	t	2017-10-25 20:11:41.649736+00
3924	pbkdf2_sha256$36000$6XCw7qVksWvv$JgEE1ai7UCcpOSKqj2tT0loHK55iAjVuvYkw+NTJ5Po=	\N	f	del_1-9.240				f	t	2017-10-25 20:11:41.720262+00
3925	pbkdf2_sha256$36000$o9Qz9CCpyb8q$h6fLl6tI+CWlh398s8PDhySLPiAVWsltDI81oOg1to0=	\N	f	del_1-10.1				f	t	2017-10-25 20:11:41.789833+00
3926	pbkdf2_sha256$36000$aCJZENbQnUCN$HZdzg0GAHjcbQvCMLDr0IrLjJ1rB+B8pJZ2uZhotfZo=	\N	f	del_1-10.2				f	t	2017-10-25 20:11:41.860648+00
3927	pbkdf2_sha256$36000$xEb75p0ARoQ5$6yXVJBWaml+aAzZVatQaO8KkleJIO9Sbo7GIeanRoYQ=	\N	f	del_1-10.3				f	t	2017-10-25 20:11:41.935257+00
3928	pbkdf2_sha256$36000$hghw5c1LPV4L$g+pxw8kym/Gudz0v7fdtONCZYGqrYezfbWbd5Kjfv2Q=	\N	f	del_1-10.4				f	t	2017-10-25 20:11:42.004807+00
3929	pbkdf2_sha256$36000$MziiCC2Rg7lg$P6NHMr8y/YjrdxBDi53DoxZaGcv+h1iI4OWTgku48G4=	\N	f	del_1-10.5				f	t	2017-10-25 20:11:42.071276+00
3930	pbkdf2_sha256$36000$ewx3EN0oA6ii$7s+8W9OcCgWZEd1XTcfGL32v10wE6aSzTJoorFv2BuQ=	\N	f	del_1-10.6				f	t	2017-10-25 20:11:42.135624+00
3931	pbkdf2_sha256$36000$MfEGXCdOKv5V$eoHfUSAeriRqUPtDGJ07Z1jjab4Q3cnCp31N+nK2Xhs=	\N	f	del_1-10.7				f	t	2017-10-25 20:11:42.199504+00
3932	pbkdf2_sha256$36000$6YV8MDYnywZS$1wok8eREG7T/MhH8MFfAssCcZCqSupNXIhlm9jyfejk=	\N	f	del_1-10.8				f	t	2017-10-25 20:11:42.2694+00
3933	pbkdf2_sha256$36000$9DnCAypdi1yH$BBQZuP9PU8HqC7qb7ktcEQcFe0guSlCjU1Z8SF3ruKw=	\N	f	del_1-10.9				f	t	2017-10-25 20:11:42.33332+00
3934	pbkdf2_sha256$36000$1N1qYJy8QT0s$upl+D6MraOr0h8KOeT9s3EJ/NnFQEDU6n+DAdJ439EA=	\N	f	del_1-10.10				f	t	2017-10-25 20:11:42.397506+00
3935	pbkdf2_sha256$36000$s8tO2X11souK$aZca9J+nXPc2KtC7XxyJUCj9dDHw8WLEJjzvvCjvPJY=	\N	f	del_1-10.11				f	t	2017-10-25 20:11:42.461284+00
3936	pbkdf2_sha256$36000$QIzUYl1ARada$RkFzuVvAn2GwH13hXS46HWSysWNqUx7pq17SAAEhm5U=	\N	f	del_1-10.12				f	t	2017-10-25 20:11:42.555014+00
3937	pbkdf2_sha256$36000$DlG1fvucaCfM$y9WxDLmxhax+92ydgfibOQ8kTQIQOPRMSQ35RuAANJ8=	\N	f	del_1-10.13				f	t	2017-10-25 20:11:42.615966+00
3938	pbkdf2_sha256$36000$soGXPsmMu8tv$noMZ9GoRnJFrIxSvV/nyXUtt/LCj5ePfBhXCRqOEli4=	\N	f	del_1-10.14				f	t	2017-10-25 20:11:42.673704+00
3939	pbkdf2_sha256$36000$ufV439vtOE3R$GmDJ28iG+vfULv/YXpIC9WVpuUWIfkuBNrxY1pOES20=	\N	f	del_1-10.15				f	t	2017-10-25 20:11:42.732718+00
3940	pbkdf2_sha256$36000$DupOUjzDjCHi$Jkxazg1yORX4rEo3MTrxr2Ajj90QTDeJ3KQrCvbrc+4=	\N	f	del_1-10.16				f	t	2017-10-25 20:11:42.788802+00
3941	pbkdf2_sha256$36000$aAjqNEw7gneP$KwjUjo/H/aungTIaMG4Of8gZTMHQF2C+u97B96+NFBw=	\N	f	del_1-10.17				f	t	2017-10-25 20:11:42.845244+00
3942	pbkdf2_sha256$36000$32A7CUGQd6DO$VDA3I7v+o6jcVCpFgNT1emn312WckNdPDifgNrkaOiI=	\N	f	del_1-10.18				f	t	2017-10-25 20:11:42.901049+00
3943	pbkdf2_sha256$36000$8NSKa0tlxHR5$VeRnve1JdNvnPXkkS8cqNzz2iVzClOJYYEOuTMaAADk=	\N	f	del_1-10.19				f	t	2017-10-25 20:11:42.957386+00
3944	pbkdf2_sha256$36000$LEaHWMT62yhO$RNrtZsL8EPB3gIVbRAyexInV0CoCpk+xb1tb0DmwYAs=	\N	f	del_1-10.20				f	t	2017-10-25 20:11:43.012463+00
3945	pbkdf2_sha256$36000$XpRFxm17j5LF$Xaxht2xhm4Gfmj7SvPatsd2afOVvCm4CyXvASrfEY3w=	\N	f	del_1-10.21				f	t	2017-10-25 20:11:43.068078+00
3946	pbkdf2_sha256$36000$uzHqQm3PPEkt$H6JqmBkfG6Yv+h5sfuGsgY2i6jIg7VXJlaLDPUhmkX8=	\N	f	del_1-10.22				f	t	2017-10-25 20:11:43.12317+00
3947	pbkdf2_sha256$36000$szFHGHGnXAeV$oXD/frDz9Ay3N3Lszt2MXv41lyddUwNBSolbI8jVAro=	\N	f	del_1-10.23				f	t	2017-10-25 20:11:43.178399+00
3948	pbkdf2_sha256$36000$E5YdVTX6VaJb$+0nV+7x7PXtPaTE9Usp5W8iRWGMO1ibIxLBDIOHWCzY=	\N	f	del_1-10.24				f	t	2017-10-25 20:11:43.234117+00
3949	pbkdf2_sha256$36000$m0GMj453f7bk$1uMGEC156+RRJsCiNZOLh7Lw+cdnoR7WCzVhwk+aw/k=	\N	f	del_1-10.25				f	t	2017-10-25 20:11:43.28947+00
3950	pbkdf2_sha256$36000$QpRGXkq1aLyH$/riwRlLJMfaeqqbMIu2LxkMa+TfaUu4nttUvgP8Oinc=	\N	f	del_1-10.26				f	t	2017-10-25 20:11:43.349851+00
3951	pbkdf2_sha256$36000$k9Hmmq36E0jN$SBt8SWOJbm29Ip5/o0K1FAzDrmzxI6XTS8oGZDR7gXo=	\N	f	del_1-10.27				f	t	2017-10-25 20:11:43.406494+00
3952	pbkdf2_sha256$36000$5oqyjhCZgKTZ$LIAhXomZzEXbnGnJArLjD3NxqZ22e8hu5iuY7TynL9U=	\N	f	del_1-10.28				f	t	2017-10-25 20:11:43.463031+00
3953	pbkdf2_sha256$36000$CMQoVqsHEab5$+oj/kewvbLI4qioNP7j+nTln5LN4Q5vuy/mJb84zXvk=	\N	f	del_1-10.29				f	t	2017-10-25 20:11:43.519496+00
3954	pbkdf2_sha256$36000$uyCshKQ5xkFJ$4sWFCz/bDcgRryvoryOvh9N2qRh38UpvIcxvIKRiaCU=	\N	f	del_1-10.30				f	t	2017-10-25 20:11:43.581343+00
3955	pbkdf2_sha256$36000$eOeeaSEroI4B$4/chXd+qRCjwRPtFVInDPpa8DEXaHPPBcTJ3rWHXNJk=	\N	f	del_1-10.31				f	t	2017-10-25 20:11:43.660666+00
3956	pbkdf2_sha256$36000$HJxQuoBMcpYE$4bbW3R9HAMae+Toxon/4mqxSFcdN2KmykKkQILXW25g=	\N	f	del_1-10.32				f	t	2017-10-25 20:11:43.719325+00
3957	pbkdf2_sha256$36000$jvtB4kgBkpgR$kKbUYiBpNx9NkskQ7Zz84jL44y2BjGFQYR7Em77nfh0=	\N	f	del_1-10.33				f	t	2017-10-25 20:11:43.775419+00
3958	pbkdf2_sha256$36000$PBJj2wYjBrG1$R8lN8ngPhbIRdxg8k+/xVYMcaOjbGKJ6k8qFpIKebNw=	\N	f	del_1-10.34				f	t	2017-10-25 20:11:43.836407+00
3960	pbkdf2_sha256$36000$rhIDTdZRqtvk$/qtLLMGXFMJMMB6cx6OWy4H2NYoDJckPVLzbbFDcP3o=	\N	f	del_1-10.36				f	t	2017-10-25 20:11:43.953514+00
3961	pbkdf2_sha256$36000$Krt89MJi4cLv$0Xv/vsLvAQJIdozZw7YI5KtG1ngHo7CNFlqeocbvnKU=	\N	f	del_1-10.37				f	t	2017-10-25 20:11:44.009093+00
3962	pbkdf2_sha256$36000$TjfssQk3b59w$xbjO80MEgNKJAnq0uQ4g0QzNXChfXl1b/bW7YgTm1XU=	\N	f	del_1-10.38				f	t	2017-10-25 20:11:44.06496+00
3963	pbkdf2_sha256$36000$TGljrZauDSpU$lohMvPE3Ab83joIMJ5RaUcvynBqmEUCbsEzYTZ94Db0=	\N	f	del_1-10.39				f	t	2017-10-25 20:11:44.121751+00
3964	pbkdf2_sha256$36000$PqWPmDvCkutJ$qD6zChTOu04JJKezIJsaRKyX+YsOMd8Hd/VrcNkvwd4=	\N	f	del_1-10.40				f	t	2017-10-25 20:11:44.177647+00
3965	pbkdf2_sha256$36000$Zd2lZkTbfw5i$NdJ/e8CDyVnz4dIBeDdGsvyAVjVoukW9R2fDjqnYWTs=	\N	f	del_1-10.41				f	t	2017-10-25 20:11:44.234537+00
3966	pbkdf2_sha256$36000$S06gOwdHQJJu$TtXB8Pt9x+tz3JGvRUF0H/EGbSSC/z8+WabibEyyK7A=	\N	f	del_1-10.42				f	t	2017-10-25 20:11:44.290754+00
3967	pbkdf2_sha256$36000$yC3uWT6Yrgv0$wpx/xpKxkO4UArKHd/ULHf9aPgT/vCIm54S9/o5Y5/E=	\N	f	del_1-10.43				f	t	2017-10-25 20:11:44.35205+00
3968	pbkdf2_sha256$36000$tsR5tdfHOQBZ$yT4hwnfhk2V+itNuY8YANKJIQ/uxPnF8kKCEtFoMPqw=	\N	f	del_1-10.44				f	t	2017-10-25 20:11:44.408387+00
3969	pbkdf2_sha256$36000$jEBW8h3iAuSp$4yNBtnPvGRUa+b+4RNX/xnsylowTnzOR05aYwWeaOhw=	\N	f	del_1-10.45				f	t	2017-10-25 20:11:44.464742+00
3970	pbkdf2_sha256$36000$q9SGK5pyKDia$u0ND1H0Fa6RnaIG8gI+pRvT+Uh3wsagZExN8lqqwtcI=	\N	f	del_1-10.46				f	t	2017-10-25 20:11:44.520935+00
3971	pbkdf2_sha256$36000$eTAoN4bE1CtO$ndu+uTGAlGEBopcMeXwjvMU2IPf5g2T+JVGkNaBLK2M=	\N	f	del_1-10.47				f	t	2017-10-25 20:11:44.577184+00
3972	pbkdf2_sha256$36000$ei1DwlzkNq9U$28KRm9ZSeozMavObZARtFicrT889w1e/D0tanMBwIW0=	\N	f	del_1-10.48				f	t	2017-10-25 20:11:44.639215+00
3973	pbkdf2_sha256$36000$I8iklWNL0Y60$mXLW4CjkV/Q9diRPd6gWc9NvdxWWDoZYU5D+61Wmfpk=	\N	f	del_1-10.49				f	t	2017-10-25 20:11:44.7182+00
3974	pbkdf2_sha256$36000$78gNMeNl0IQk$qcdWZkhbDrm3xwV0Xu5R2HSee5pEIy3KuBobQuR1m7k=	\N	f	del_1-10.50				f	t	2017-10-25 20:11:44.7732+00
3975	pbkdf2_sha256$36000$xcxzYojVLaiY$qINVjIFjG9HpP3IJpsRaPUwE8lsqXvpfSTlM+9598ek=	\N	f	del_1-10.51				f	t	2017-10-25 20:11:44.828027+00
3976	pbkdf2_sha256$36000$4cY7MgC7hd5H$S9jiphdIJ0b27iFQ24cqnKj6Cy5flOnL2CkfIZl9G5M=	\N	f	del_1-10.52				f	t	2017-10-25 20:11:44.882935+00
3977	pbkdf2_sha256$36000$NisjCuFJ13B5$R1+Tl8pk9HI+goi9FfNXa76eUZu3ruWrNKJ7++KEvew=	\N	f	del_1-10.53				f	t	2017-10-25 20:11:44.938234+00
3978	pbkdf2_sha256$36000$lwEoeaRuHHxJ$64ZGLf8EnEgm24Zl/E377FvmYBe0OP4eqkKsH93efWM=	\N	f	del_1-10.54				f	t	2017-10-25 20:11:44.993132+00
3979	pbkdf2_sha256$36000$CWICIVXzNHbb$7Nlgm3jG15ymB8CVp8WcKCsrvAv615iT9gtQ4fq9zRw=	\N	f	del_1-10.55				f	t	2017-10-25 20:11:45.047714+00
3980	pbkdf2_sha256$36000$9eVG3W3fO7AF$LHhr8cZrugbYY5J0YofO5kLQ8pEs5RfqQ4BfFD3PHMs=	\N	f	del_1-10.56				f	t	2017-10-25 20:11:45.102692+00
3981	pbkdf2_sha256$36000$LJMxAusQRGyp$PRSHpwrACb6b5Rcxe8vxMe79OHdSFbBc/ddRGe7MOnc=	\N	f	del_1-10.57				f	t	2017-10-25 20:11:45.157666+00
3982	pbkdf2_sha256$36000$oPgaLqNXjsWZ$jpU1+mb1iHUSprxBJRty2u2xHRzE/HxkZFq7TlmNl5Y=	\N	f	del_1-10.58				f	t	2017-10-25 20:11:45.213175+00
3983	pbkdf2_sha256$36000$ChFf3PazEed2$6LqsUcrCDmtRQVMLAyAfKLW+vq64oGJKjqP8DXu0JxI=	\N	f	del_1-10.59				f	t	2017-10-25 20:11:45.267657+00
3984	pbkdf2_sha256$36000$QPCGWPpMBDIN$CV8O62Mk1qghyMChOBiF0G6OxGFyd5oiTJjHgYJauEY=	\N	f	del_1-10.60				f	t	2017-10-25 20:11:45.32169+00
3985	pbkdf2_sha256$36000$DTqhgXs3FkP5$+Zw2Fak56FLQEoLlMh+RVnBFMimAKO+J9vQwOLXpcmA=	\N	f	del_1-10.61				f	t	2017-10-25 20:11:45.375336+00
3986	pbkdf2_sha256$36000$hV1y2pgQJIB6$wPavWriPJJI4VA2jBmYfuIthj/Cn8Of/JrbKONbNgKg=	\N	f	del_1-10.62				f	t	2017-10-25 20:11:45.429024+00
3987	pbkdf2_sha256$36000$t4hF2rtSCdBA$fjfVG/L0DW30+Ep30ct8O3kAjZ+wzR6SEQM1/2FCyQU=	\N	f	del_1-10.63				f	t	2017-10-25 20:11:45.483+00
3988	pbkdf2_sha256$36000$g7ujYyrtXd0s$KsmmNXxPbzxS9ZG0Eb2C1t6grXLD+FcdpQLdsmPP4TQ=	\N	f	del_1-10.64				f	t	2017-10-25 20:11:45.537114+00
3989	pbkdf2_sha256$36000$bYGlCf3uVmZS$+XVL8J380CXBtMfur9Pgjg+g5XUv8my2K3J1gcBLCoM=	\N	f	del_1-10.65				f	t	2017-10-25 20:11:45.59127+00
3990	pbkdf2_sha256$36000$4ohgWLrwNNge$QFQi3teQwoEdOdhlAtMMUlySJ1i/SSJ+ii0BG1Z2Aps=	\N	f	del_1-10.66				f	t	2017-10-25 20:11:45.645778+00
3991	pbkdf2_sha256$36000$qaVq9ogQAKuT$+gOoDv6z8ALT+Njx8BZ3/OnKxLqAIW57GORjxZKMBqY=	\N	f	del_1-10.67				f	t	2017-10-25 20:11:45.714049+00
3993	pbkdf2_sha256$36000$q8gmRsZIICuK$K0MNLO5dCeZLoJ+9cqsW9IWJ1qTEF05wCZMxyuVuLs4=	\N	f	del_1-10.69				f	t	2017-10-25 20:11:45.834186+00
3994	pbkdf2_sha256$36000$GMjOMEdzt4dq$7LXx+E59iVdl0uGZF3cAjj8kCCijvCgUwHXBYJFq1hg=	\N	f	del_1-10.70				f	t	2017-10-25 20:11:45.889304+00
3995	pbkdf2_sha256$36000$bWbZk0NeRPyy$v8DLCrWSQMwtHNU7DfL1F70GlGACeCxje6+XA3/CA5c=	\N	f	del_1-10.71				f	t	2017-10-25 20:11:45.944645+00
3996	pbkdf2_sha256$36000$f3wOmVNfuIsE$2colGPV10ytR7JuhAuDMszpmu6MVXuB5O2q9rIrxpVo=	\N	f	del_1-10.72				f	t	2017-10-25 20:11:46.000357+00
3997	pbkdf2_sha256$36000$9acWuZWidNwL$ETEuXnViIOMrbnvN1OXLvLkELxaayElZNlP5Il6u4Pc=	\N	f	del_1-10.73				f	t	2017-10-25 20:11:46.055966+00
3998	pbkdf2_sha256$36000$pmOgsdN8umum$ZuKCYV37Uzqz/6Xap29XIYZKW2EunhAxdnB0I7vj8jQ=	\N	f	del_1-10.74				f	t	2017-10-25 20:11:46.110516+00
3999	pbkdf2_sha256$36000$eywYBrTNkXQ4$6+Ainuub05tlqawAsvn/+HjlWzbBs8tPwFBYX5TrDlE=	\N	f	del_1-10.75				f	t	2017-10-25 20:11:46.165391+00
4000	pbkdf2_sha256$36000$em7gpqPhR65x$B9oQ3/H1HnBc33g34u+8ff62KiNo0gpvlm509X07g2A=	\N	f	del_1-10.76				f	t	2017-10-25 20:11:46.220388+00
4001	pbkdf2_sha256$36000$EBlVH11it5AY$ZVLrxgHHd2J700QwRIRVkFHS9yfJ5A9hUa05yxfcHRs=	\N	f	del_1-10.77				f	t	2017-10-25 20:11:46.275703+00
4002	pbkdf2_sha256$36000$JHDnaOUVYZlT$PRVv9NMPR5dpB3uI0kQo6GWPQIhvdd9nlznzs2tQrFc=	\N	f	del_1-10.78				f	t	2017-10-25 20:11:46.331157+00
4003	pbkdf2_sha256$36000$uTza0V2VBXk7$SrjeGKThYrm5KvwKxb6jTi3KeX6E/3PEkfa0+QVZv9w=	\N	f	del_1-10.79				f	t	2017-10-25 20:11:46.386213+00
4004	pbkdf2_sha256$36000$w0Mm5hWng1Ik$ZDOW4aN+ZcouNU6pMuCFxBk7cc9efSzU+lCRU6fiVFE=	\N	f	del_1-10.80				f	t	2017-10-25 20:11:46.441908+00
4005	pbkdf2_sha256$36000$zStfq39NQ5f1$yEz57qBwb+cS3o+smsJHb9OHVhDLVk8VbYU9NL4PoN4=	\N	f	del_1-10.81				f	t	2017-10-25 20:11:46.497182+00
4006	pbkdf2_sha256$36000$mTKbukq9kiAs$F5p4PW/TY0NzZ0MsOc8xj/4RM7U42wHw1PUGkpss2tw=	\N	f	del_1-10.82				f	t	2017-10-25 20:11:46.595886+00
4007	pbkdf2_sha256$36000$XMTHJA3kwqIE$JEEly3Bcrw48wEQ+dM2OSiz4AMUiF4FZt3joah8Ctfo=	\N	f	del_1-10.83				f	t	2017-10-25 20:11:46.744076+00
4008	pbkdf2_sha256$36000$FMWPnZX2Eyoy$M+oGabp2aErbJI2wJRxCJyy5RolJ2ljRomF0KZq9rRU=	\N	f	del_1-10.84				f	t	2017-10-25 20:11:46.947674+00
4009	pbkdf2_sha256$36000$eFfVGEGrHtB3$OGSZASLCnCJOIuvfympax/0ps6tPdwrOJkyC8BORi7Y=	\N	f	del_1-10.85				f	t	2017-10-25 20:11:47.085755+00
4010	pbkdf2_sha256$36000$yoiY9ql0m8zo$373yjN6PUv3MeqKNOVYwhvzVkf/hVTEI5bpYPjIw/VI=	\N	f	del_1-10.86				f	t	2017-10-25 20:11:47.218159+00
4011	pbkdf2_sha256$36000$fb3cbKoMY8iA$SNEQXHg1whTOUQ9O4XoY4DSmuOzd8f/qK0YVWaBaDmw=	\N	f	del_1-10.87				f	t	2017-10-25 20:11:47.350387+00
4012	pbkdf2_sha256$36000$SOQVa79V3C8I$ZiO8WX0sUUf/4NZZoc5tDuRYQpqujsCTUYX0m03bVC0=	\N	f	del_1-10.88				f	t	2017-10-25 20:11:47.481806+00
4013	pbkdf2_sha256$36000$8n8zfC5RQcey$X8ku7wnG2jS72O+m08dOFY269n8kblFLiBBcJ0KT0K0=	\N	f	del_1-10.89				f	t	2017-10-25 20:11:47.596506+00
4014	pbkdf2_sha256$36000$bkXbXQtzZs2m$Z2XlPmnVweA4Ee4GYa61pbWrWxIOfqwLQ3PYUttqU94=	\N	f	del_1-10.90				f	t	2017-10-25 20:11:47.702521+00
4015	pbkdf2_sha256$36000$L88HSkLapolw$JL1BGK/myhVMLO9cVwP6DJppLane33fasTUJYMoR2zg=	\N	f	del_1-10.91				f	t	2017-10-25 20:11:47.809098+00
4016	pbkdf2_sha256$36000$qfS4gqHQ6Jkr$D7IHgcMe0TIVNhSOPtM10ZX1jFzBXWGP/5Y6QFJozHk=	\N	f	del_1-10.92				f	t	2017-10-25 20:11:47.963444+00
4017	pbkdf2_sha256$36000$PtTN9JWkfDEW$MXGgGSBZIfkNjz7LqxFKbgNJsazCBQn6KPhGjdw701g=	\N	f	del_1-10.93				f	t	2017-10-25 20:11:48.062572+00
4018	pbkdf2_sha256$36000$yBiPI2bteDf5$DrE8LPjH6UpPdZDkc8rn8QB8n64QfVHbxcsR/IrZXvs=	\N	f	del_1-10.94				f	t	2017-10-25 20:11:48.147122+00
4019	pbkdf2_sha256$36000$DPtTzy3bNigc$pC7g2nt28tx2nzN9O9fs5/H3yCDfqV25YZF8TkWLYUg=	\N	f	del_1-10.95				f	t	2017-10-25 20:11:48.23327+00
4020	pbkdf2_sha256$36000$x859O0n2rgpu$S+9Myqy8CyXeGwS2MJPauhKdPegWuUq+tcePVefKEuc=	\N	f	del_1-10.96				f	t	2017-10-25 20:11:48.318123+00
4021	pbkdf2_sha256$36000$N6bBlcQDsRui$Pepbky2plBFknOHSDf1mOWW7O0ACfCidJQ3oVKmrh+c=	\N	f	del_1-10.97				f	t	2017-10-25 20:11:48.402003+00
4022	pbkdf2_sha256$36000$KFcXmzL8v1Sx$jMctnJOLpRyu6PxaYyLw7wWG56N9qqP0qGb2uA7JaYg=	\N	f	del_1-10.98				f	t	2017-10-25 20:11:48.486137+00
4023	pbkdf2_sha256$36000$mWnY5UFXisyI$1Iqj4QhxwySNhLvY/a4B3eofdOfi3zJp9aEsHt4S8No=	\N	f	del_1-10.99				f	t	2017-10-25 20:11:48.562038+00
4024	pbkdf2_sha256$36000$wT20xW1Hv9B3$ONxijIJ8rrgdO0xt2cT0phuosey01X06+CSCA5yO/JY=	\N	f	del_1-10.100				f	t	2017-10-25 20:11:48.62927+00
4025	pbkdf2_sha256$36000$tvhIA0mSjIfY$m01HApdp4PRowkY6IB8dkj8kMFyazR8UQ+6zi7hPiJY=	\N	f	del_1-10.101				f	t	2017-10-25 20:11:48.698289+00
4026	pbkdf2_sha256$36000$BSwyDwGNRPAi$6uj2MlCon/c0640+MgaDUtYFsRm/RJ/uTAAnikcbszo=	\N	f	del_1-10.102				f	t	2017-10-25 20:11:48.768634+00
4027	pbkdf2_sha256$36000$CZL0QNlh2BEE$t+NiQDeEqfRbglSVzVD6L4a0xXvDOLl0md95zsgrA6U=	\N	f	del_1-10.103				f	t	2017-10-25 20:11:48.836487+00
4028	pbkdf2_sha256$36000$dNKrobOSqvcD$BFgai3k0j4LwerqYHfxHd0oXiFOVW0QJqbIQAMsAUZ4=	\N	f	del_1-10.104				f	t	2017-10-25 20:11:48.904608+00
4029	pbkdf2_sha256$36000$YvRr9Jjtl1iU$Mz90+GxzjeO+Nd1+OEpMWOr04+Z6/buN4PQhUqkL0Eo=	\N	f	del_1-10.105				f	t	2017-10-25 20:11:48.981306+00
4030	pbkdf2_sha256$36000$gelyfu7e1uUI$xMhaguvLOsM/hJUoip+1CQlLDJlGn1aKtCm3WRNNBag=	\N	f	del_1-10.106				f	t	2017-10-25 20:11:49.070201+00
4031	pbkdf2_sha256$36000$gYNojGB24Ewd$J5vKgcoMncX2CIK/N1TqnmX7cBIrForue2I1a5U1b10=	\N	f	del_1-10.107				f	t	2017-10-25 20:11:49.144786+00
4032	pbkdf2_sha256$36000$GkTk9Y7nRJVE$htzkt4fTF6iYPivg1gTLOkblekvHAQw6D/q2TYRWz18=	\N	f	del_1-10.108				f	t	2017-10-25 20:11:49.214172+00
4033	pbkdf2_sha256$36000$wBtDrkbVgjx1$3k9XV3jpr2Qpkn1PCXmmDCkLTqUtDBeU+8c3miPoWZQ=	\N	f	del_1-10.109				f	t	2017-10-25 20:11:49.283054+00
4034	pbkdf2_sha256$36000$uYglPc7NxMRX$FFWhl0SafTags64em5hjA1SSbdyxR1+qq106wot0wv8=	\N	f	del_1-10.110				f	t	2017-10-25 20:11:49.350983+00
4035	pbkdf2_sha256$36000$9Jm2xgUfQXpr$C9bSWiaUzvxB0EZRYilfshHkn+qaSxa8wTlEthVHYfw=	\N	f	del_1-10.111				f	t	2017-10-25 20:11:49.419151+00
4036	pbkdf2_sha256$36000$U5qFcwEDO30O$sF7jKwIYqJCpXVIg7kt4iFGTfqiBEjktkl12Lm4j5y0=	\N	f	del_1-10.112				f	t	2017-10-25 20:11:49.48732+00
4037	pbkdf2_sha256$36000$jFjLeXgmMk5v$XGJ1GdvBzF2RNdUmwMUwO9PBWC+zpTzWmC6fhhwAyig=	\N	f	del_1-10.113				f	t	2017-10-25 20:11:49.550013+00
4038	pbkdf2_sha256$36000$CUsfUheHjN0L$GL30qH8epHnFlDG+GsILE/C+f1y3rPZqfqo7rYdWwbM=	\N	f	del_1-10.114				f	t	2017-10-25 20:11:49.606639+00
4039	pbkdf2_sha256$36000$wgouuN2cbua5$sGDTR1YGj4e8gcMK+REI9K/8CrkfxoF0Vku4xhwACIY=	\N	f	del_1-10.115				f	t	2017-10-25 20:11:49.662331+00
4040	pbkdf2_sha256$36000$2pH4wLzDJUIq$RdorKP3GdnML+aPFzdR/IOwxqkSGM5kd5OK6EOQENiU=	\N	f	del_1-10.116				f	t	2017-10-25 20:11:49.71895+00
4041	pbkdf2_sha256$36000$U1ArsjW1nKfb$Fa23d/nrOAJUiWFyGfYY3yeZAX4w/T90AWAH+S2bkyE=	\N	f	del_1-10.117				f	t	2017-10-25 20:11:49.776372+00
4042	pbkdf2_sha256$36000$XdIwiCcWkoNW$sF2+eqYlVxn7t9Yzc4vTgKrhRJH9yJ4GkOvLhSIefcE=	\N	f	del_1-10.118				f	t	2017-10-25 20:11:49.833225+00
4043	pbkdf2_sha256$36000$1gQDyvIPpkI0$AMLeX9rG6oL7sViEIaD6QGXxc3DKmJmNsK4CWK3q5jw=	\N	f	del_1-10.119				f	t	2017-10-25 20:11:49.89052+00
4044	pbkdf2_sha256$36000$5XJgaULJCBCn$oxPoWT2iAiqJ4wLl1iMjCZHux8iSjzXeJEI7+FAQv5c=	\N	f	del_1-10.120				f	t	2017-10-25 20:11:49.946919+00
4045	pbkdf2_sha256$36000$HTE4Xv8Q7ubL$lUMWbk0ARwzg7UJAhYJtjSJwKAaiLBzSOnG9ZpE1mHs=	\N	f	del_1-10.121				f	t	2017-10-25 20:11:50.003021+00
4046	pbkdf2_sha256$36000$S8TtaQbMVcDa$JsFi/9gptRiW2VeOJiq/zUMusZpZAFOK924f7cervGE=	\N	f	del_1-10.122				f	t	2017-10-25 20:11:50.094458+00
4047	pbkdf2_sha256$36000$0EauqNsqDT3r$I1WCiOblfxGd5GY0QVRHGrLuFe6LBiVOupaJOUma3HI=	\N	f	del_1-10.123				f	t	2017-10-25 20:11:50.151382+00
4048	pbkdf2_sha256$36000$fvKJZqMDlaIC$AEBFF8HSAUCfXRJg3627zmIejY94XUVc+j3LpSOfv1U=	\N	f	del_1-10.124				f	t	2017-10-25 20:11:50.208905+00
4049	pbkdf2_sha256$36000$WeSB9YeyM2Ir$aStQnUhJqeVGcPhaybXep+qUWnlQaA1vjxZm6ixiwjs=	\N	f	del_1-10.125				f	t	2017-10-25 20:11:50.264995+00
4050	pbkdf2_sha256$36000$3qW29Y6s5wJu$9PiyAtYfvfT9fIVzxVQ6Z6vXkf1Z6iBZKQiNBpcQrTs=	\N	f	del_1-10.126				f	t	2017-10-25 20:11:50.322275+00
4051	pbkdf2_sha256$36000$tIl0DfX47FOP$SGBffClW+0UjtxEer19BU0I2A3f5hG1HciArtNQ447M=	\N	f	del_1-10.127				f	t	2017-10-25 20:11:50.37886+00
4052	pbkdf2_sha256$36000$tOdOzdq9RYsR$etFzuH1Rt3n8Q0Z8gsXdDmwRsCLaUyHpofmLCg0yBTE=	\N	f	del_1-10.128				f	t	2017-10-25 20:11:50.445494+00
4053	pbkdf2_sha256$36000$8y2KpY3OCL8v$TtCiVyJIcvYTV/tidBUJgYGNqUoIzFCC32ZXxTg7Y6k=	\N	f	del_1-10.129				f	t	2017-10-25 20:11:50.50411+00
4054	pbkdf2_sha256$36000$7TiJZ7i15iFt$scEo6f/nnMd2gO35lYiJKQCWOPmHsxdBQBH+C/49TrA=	\N	f	del_1-10.130				f	t	2017-10-25 20:11:50.6127+00
4055	pbkdf2_sha256$36000$MZ4ZNdYMtoat$5CvXIFGIdkmazVbOljd5epB/8csTFa/xdYk3dyZRIwU=	\N	f	del_1-10.131				f	t	2017-10-25 20:11:50.759167+00
4056	pbkdf2_sha256$36000$L1LQJ7w6UO54$TuH+ylL3Ytm0bTfkHCeFNmY4EFcqvyqxZ4NUbM2cPIk=	\N	f	del_1-10.132				f	t	2017-10-25 20:11:50.911227+00
4057	pbkdf2_sha256$36000$5ULz4acBxPOD$pgZ3ICljgGJVvKm4BkIQBXOLCRyGeGocQqzV4AyfZ/4=	\N	f	del_1-10.133				f	t	2017-10-25 20:11:51.052188+00
4058	pbkdf2_sha256$36000$0hEmNBGb8NWy$Wg9MuvJ4B+ZjQlfhah+32OnaAYqXRVx6AsTTsN1sGEY=	\N	f	del_1-10.134				f	t	2017-10-25 20:11:51.272169+00
4059	pbkdf2_sha256$36000$R4Gv9oo5x7X6$Sr91t0ih5hfPbQxlrjAOxy/hZTSbaJSCToRRLBeEHAs=	\N	f	del_1-10.135				f	t	2017-10-25 20:11:51.403516+00
4060	pbkdf2_sha256$36000$uOLSdVu9QLAF$9DK3VyzZGID71rvQNUGvkXNpWr4ysJ+U0mP2krBqpiU=	\N	f	del_1-10.136				f	t	2017-10-25 20:11:51.536295+00
4061	pbkdf2_sha256$36000$kaJBpn992ctC$Yzc0SZb9b82pqX/Y+XLydlm14SteBtmrhOEYWMNWjqU=	\N	f	del_1-10.137				f	t	2017-10-25 20:11:51.679271+00
4062	pbkdf2_sha256$36000$rCybbgesIqy0$/E64MDIlLVSF6xiNF3KkvsRUmhfwzVzZkhROQTSTAt4=	\N	f	del_1-10.138				f	t	2017-10-25 20:11:51.823467+00
4063	pbkdf2_sha256$36000$IlFs3iTQtBhQ$qfRH8VgvHH7uBfPcxDXoNz4K1Lz4naMwcWwz7QQXXFM=	\N	f	del_1-10.139				f	t	2017-10-25 20:11:51.966032+00
4064	pbkdf2_sha256$36000$hDM8EwImhLFR$XnpPxV3cKQX9f/38KVZrcNj8gHQ5S4vNaTOiRr5+kbY=	\N	f	del_1-10.140				f	t	2017-10-25 20:11:52.110299+00
4065	pbkdf2_sha256$36000$HKsQ6E7NunqE$ekQX8RTSB8eUxHVEluBcm5ZOCftqpuMgdBSKX9HPMqs=	\N	f	del_1-10.141				f	t	2017-10-25 20:11:52.269186+00
4066	pbkdf2_sha256$36000$esxZsfSzgYOx$8RylSpJ0DGwz11w36VaESk/MRvZGdxGjAXUIWDe7OPA=	\N	f	del_1-10.142				f	t	2017-10-25 20:11:52.469884+00
4067	pbkdf2_sha256$36000$B9kUt7bCUfsc$j/RFpL/k924YxZUy+gf5uE6giMEJcFXKX5dTQP/xUJA=	\N	f	del_1-10.143				f	t	2017-10-25 20:11:52.560117+00
4068	pbkdf2_sha256$36000$qmoyvNRVmXAa$fwL0BUCCdhM1YzlCJaj3C+KnpeiSfE8gdRyib/QNqf0=	\N	f	del_1-10.144				f	t	2017-10-25 20:11:52.617858+00
4069	pbkdf2_sha256$36000$0iDsWlT1UEEF$M9bCYUyZ/w31lgscLv1gWcMDG6n8DG59TwD1oqEIFO8=	\N	f	del_1-10.145				f	t	2017-10-25 20:11:52.672387+00
4070	pbkdf2_sha256$36000$SvTvY3EZqPfN$FqzcO2iupYttXKQqibAgupGa5OnuYNRCFHxvulXNaUQ=	\N	f	del_1-10.146				f	t	2017-10-25 20:11:52.754827+00
4071	pbkdf2_sha256$36000$wxXPcWDmPwQI$naBUBDQ6FjO1OBR9wCVtSed6LJ5dFg3j9xytZg0WZIg=	\N	f	del_1-10.147				f	t	2017-10-25 20:11:52.89595+00
4072	pbkdf2_sha256$36000$HNpBDeVN91Lc$Zkm08PF142omwaFTKTcW+flKh52RnyowwmgqF/tIb3U=	\N	f	del_1-10.148				f	t	2017-10-25 20:11:53.038208+00
4073	pbkdf2_sha256$36000$wZLjDO3UXDyA$p6pQSRY0b/Z+xQleaHHH8DwK7Ydr+FC2Q+GLisaYMt8=	\N	f	del_1-10.149				f	t	2017-10-25 20:11:53.17999+00
4074	pbkdf2_sha256$36000$CSfQZSRyLznz$APGBMEI2Q3qBcz3TdGcbDMcUZ09FkYDq/8VErj6R4d8=	\N	f	del_1-10.150				f	t	2017-10-25 20:11:53.324021+00
4075	pbkdf2_sha256$36000$juK32FVbZjG6$hiSAQnBhSUSyYM6qvmUfc1ptop7parKNqzQvsE3HxWQ=	\N	f	del_1-10.151				f	t	2017-10-25 20:11:53.532113+00
4076	pbkdf2_sha256$36000$wFQJJjN2NeIy$ui6woNo59fq2etXP8OoYX6w1Yhvu9cevi9BZq8ddLlI=	\N	f	del_1-10.152				f	t	2017-10-25 20:11:53.673741+00
4077	pbkdf2_sha256$36000$XAjCzCaN5WzH$pMKorWrEcHonAmdo/DrfO9NcAe/EWDSFV7FkF2R21VE=	\N	f	del_1-10.153				f	t	2017-10-25 20:11:53.817503+00
4078	pbkdf2_sha256$36000$N2E7iOiuwr1l$h9IhFbs8r0Ala4inEcofN6XOwOg8BOymFaysi92VLC0=	\N	f	del_1-10.154				f	t	2017-10-25 20:11:53.960392+00
4079	pbkdf2_sha256$36000$6kQSE454z2zm$fom76wLBTMDMz2+FIlN/HlR6RoX6M6KFtbJNH4hVqkU=	\N	f	del_1-10.155				f	t	2017-10-25 20:11:54.101678+00
4080	pbkdf2_sha256$36000$BrzVQBjwV1J9$lSk56q7JCu34s5V/vS8er5dijfMgei0whwZufA1kj0A=	\N	f	del_1-10.156				f	t	2017-10-25 20:11:54.245632+00
4081	pbkdf2_sha256$36000$NtjlJqRLGhuM$b6vFlU501Hw8W7OPJMM3hlvBIV89fxYc0+DuA8cuz7o=	\N	f	del_1-10.157				f	t	2017-10-25 20:11:54.387522+00
4082	pbkdf2_sha256$36000$bxMkxrmGEs6j$XJ9gzhbyWQOtXlfoBvsogOfs1Q/DfvSwgpCiwecCc4Y=	\N	f	del_1-10.158				f	t	2017-10-25 20:11:54.539131+00
4083	pbkdf2_sha256$36000$ZQ8MKw6bMgDj$D3yZppEUkcT9SBU/nU0rN7As7sslWH5pvQDHPUvN6j0=	\N	f	del_1-10.159				f	t	2017-10-25 20:11:54.606754+00
4084	pbkdf2_sha256$36000$gCC0qNe70bK6$yk5ZDNYWIyJ3GK6qJJLNGEDsxf2EgJ/XdTJq3/8P4M0=	\N	f	del_1-10.160				f	t	2017-10-25 20:11:54.662939+00
4085	pbkdf2_sha256$36000$fd9ZJyf0hGUq$q5YqElFhVZpEfaaDgn54hWhhuaoU0NY1pI/nsIYztbc=	\N	f	del_1-10.161				f	t	2017-10-25 20:11:54.722491+00
4086	pbkdf2_sha256$36000$el3LJi10vFDt$BRl3aKFujJKCjcmG1/r5A2tuto002HK18LEfggoXAak=	\N	f	del_1-10.162				f	t	2017-10-25 20:11:54.778912+00
4087	pbkdf2_sha256$36000$uzJrJAzU4bfG$dI5hhimME9W/RwmhkTraGiWvfuOR5LOmbxA+JKDqV7M=	\N	f	del_1-10.163				f	t	2017-10-25 20:11:54.834861+00
4088	pbkdf2_sha256$36000$aKzVA5hPAfwx$doZi7D9f1cO15BhdYMm+0w6GM7T1v5xiEs4oH0pQ9+c=	\N	f	del_1-10.164				f	t	2017-10-25 20:11:54.890709+00
4089	pbkdf2_sha256$36000$27ZYrhzEtF7J$GlK/8Q00oHPElhMYhsrPJPf5Kdd5n8Q6+UkybGlm/k0=	\N	f	del_1-10.165				f	t	2017-10-25 20:11:54.94727+00
4090	pbkdf2_sha256$36000$TkoJGWKXKoXt$+RoS8JENWXl7nYcjRjE5fFBsXPpDyqnlzTZdvvJ+uRU=	\N	f	del_1-10.166				f	t	2017-10-25 20:11:55.003137+00
4091	pbkdf2_sha256$36000$14OER1itUPJS$WDJ6/H29x7F14IgoDX2GJbJYhYrzDCZNSqxDlXA21Cg=	\N	f	del_1-10.167				f	t	2017-10-25 20:11:55.060098+00
4092	pbkdf2_sha256$36000$RSECOR27LIDi$LRIoZGprSewEENfQ5aouqURkrKIcM1pV6hYP8hAHWv0=	\N	f	del_1-10.168				f	t	2017-10-25 20:11:55.116996+00
4093	pbkdf2_sha256$36000$oz8oPbQ45ANN$RzhlTr6OQ+AHhNyljtMGCOI+O0iFJuEQqLctNaJGFNw=	\N	f	del_1-10.169				f	t	2017-10-25 20:11:55.173214+00
4094	pbkdf2_sha256$36000$2fyY6LsOn3Ca$cu80VoN4V9t0y+f6BX4uMBpG3fJGOGKzH2KgrxFbRXE=	\N	f	del_1-10.170				f	t	2017-10-25 20:11:55.229718+00
4095	pbkdf2_sha256$36000$MjFLzBCLHJMS$jAExZUFGGiP435uEZ1Ms+LrZKDsOGLsDHsanHo5zZDk=	\N	f	del_1-10.171				f	t	2017-10-25 20:11:55.285058+00
4096	pbkdf2_sha256$36000$LM7Jwu7S0AgZ$fquHh1Qq08K9UZ0Z6dXp1/EEquFBYGSsh1Wj3RRbvVY=	\N	f	del_1-10.172				f	t	2017-10-25 20:11:55.340531+00
4097	pbkdf2_sha256$36000$BWV3ul68DCcB$m88lmIJ3ux5YKs0T6i6DPhZdXGuzMZKngPlWfEr5+pw=	\N	f	del_1-10.173				f	t	2017-10-25 20:11:55.396351+00
4098	pbkdf2_sha256$36000$EyWA1vTfEgNj$hc5NLUdfKhABYnz5Wu7YZN95hTJcOlEeNsXW2Qm9CDc=	\N	f	del_1-10.174				f	t	2017-10-25 20:11:55.45378+00
4099	pbkdf2_sha256$36000$VtiIaW4yRaUK$aQKNBGDPjwfZOC9zGcQuQmJ10elzPOKDnPL3He2JsXM=	\N	f	del_1-10.175				f	t	2017-10-25 20:11:55.511556+00
4100	pbkdf2_sha256$36000$2cMoELdlCx94$qFSkKTXb+rGkVwYxGx9E8oMD6Xt6doBY+7qO7RRs/xM=	\N	f	del_1-10.176				f	t	2017-10-25 20:11:55.574962+00
4101	pbkdf2_sha256$36000$NZU1O1hxm3vo$WcO9B3Q/3jhMZ86BYezXesAEJtqmueJbjMa8/AdWZyg=	\N	f	del_1-10.177				f	t	2017-10-25 20:11:55.651439+00
4102	pbkdf2_sha256$36000$5JttN8YmfV4W$cBUZlzEhOSL4pNPE62Ch3PfNaGmfi6yEOEHXPaZ+RJU=	\N	f	del_1-10.178				f	t	2017-10-25 20:11:55.708988+00
4103	pbkdf2_sha256$36000$Nf4dbsQFX9PE$wl/b8S6T0jIHLh9cs5YhjF8JPfQbcIanyc3H3NZvafw=	\N	f	del_1-10.179				f	t	2017-10-25 20:11:55.765459+00
4104	pbkdf2_sha256$36000$2E163MoCdpAl$CK8QqkAQoHozX9IB5BkIRVgGw4M1uVfnMAuONk7kYLk=	\N	f	del_1-10.180				f	t	2017-10-25 20:11:55.820987+00
4105	pbkdf2_sha256$36000$JXJSGzS4R9jd$o63ZLh6G6/4Kp96yQXNf9+dfYwFqeCpJ1n7fRSn5KQQ=	\N	f	del_1-10.181				f	t	2017-10-25 20:11:55.876793+00
4106	pbkdf2_sha256$36000$OzjOs18x4CUb$aNI2N3e/zE37lfT6AjDJq8DL7CMtHVKd80DHqou0FbY=	\N	f	del_1-10.182				f	t	2017-10-25 20:11:55.934407+00
4107	pbkdf2_sha256$36000$QqJwgJQpXUEL$SY3E0WgbY8FKY/9lsCrOcbtulFR01ls2H0t9NSRrItE=	\N	f	del_1-10.183				f	t	2017-10-25 20:11:55.991738+00
4108	pbkdf2_sha256$36000$OrYjByxhc3n3$vxXtOF3DpJffjELvuLQGMqW5iPTL5nU0dBvCfGJbJxk=	\N	f	del_1-10.184				f	t	2017-10-25 20:11:56.082265+00
4110	pbkdf2_sha256$36000$aoo8oT9kgLFi$PQhgyo8eAmMDXXCwDbhEo72I3kJoblJwRgmd7HbLloA=	\N	f	del_1-10.186				f	t	2017-10-25 20:11:56.374198+00
4111	pbkdf2_sha256$36000$KRrBb4tsF31l$fPjHyrepcgTFmeyaWWmPoatP2URIgzINrVl9aLuGVtk=	\N	f	del_1-10.187				f	t	2017-10-25 20:11:56.517239+00
4112	pbkdf2_sha256$36000$O9JpPUZkQ7sc$ylvgKQsUvfEBPr8ZWqsxiy9w3MJMxsAOFPlZYGSRJcA=	\N	f	del_1-10.188				f	t	2017-10-25 20:11:56.698424+00
4113	pbkdf2_sha256$36000$xkJ27GAG0Hhw$UBuDZ2k5PxX5roq4Jqlqg8k3TIoMIQLhzeac7pvY3CI=	\N	f	del_1-10.189				f	t	2017-10-25 20:11:56.866596+00
4114	pbkdf2_sha256$36000$2hW8SV885Tt4$HFQm/ffIRdJxPL04S3X5qdeWhkc/wrJ75QCNFzB/0W8=	\N	f	del_1-10.190				f	t	2017-10-25 20:11:57.009584+00
4115	pbkdf2_sha256$36000$VBlKaHGTWhJP$8WfapCG1zhLFljcFEP5Z+jtVKd9RXRrvIskGUaFRY3E=	\N	f	del_1-10.191				f	t	2017-10-25 20:11:57.153059+00
4116	pbkdf2_sha256$36000$PvXn1H2BLZhU$NQO2/+JOfhKFEn/bBO+Q5UZqPRjAc0smKykQ9P0B6fs=	\N	f	del_1-10.192				f	t	2017-10-25 20:11:57.295093+00
4117	pbkdf2_sha256$36000$NP4mFtMx90G8$9aTal6xdUr0G/1Nr76UbJ91MrzkH9TF15GNzGwFqtQM=	\N	f	del_1-10.193				f	t	2017-10-25 20:11:57.438888+00
4118	pbkdf2_sha256$36000$3lbNY9ySElyC$e353bepztKJsK+eQDwdb/lHOcSpBeenv7p595f+X6Ik=	\N	f	del_1-10.194				f	t	2017-10-25 20:11:57.582034+00
4119	pbkdf2_sha256$36000$LxocJ8wuHjjX$H7WcexCTTkbNEs1GCwZOIDB5a5D8GSoR06Q2kSkyM+I=	\N	f	del_1-10.195				f	t	2017-10-25 20:11:57.72551+00
4120	pbkdf2_sha256$36000$HdB74Y4vMtT1$ajMTRomC6Bol7ZmE/kYV7xwihCklMPH1fWy2Tyo0TXA=	\N	f	del_1-10.196				f	t	2017-10-25 20:11:57.930873+00
4121	pbkdf2_sha256$36000$JfWtVR4k10KH$BlGZ1faVOznWzaLWcZ7Wja7R1HpV3+aqaOLSczHWX0o=	\N	f	del_1-10.197				f	t	2017-10-25 20:11:58.063277+00
4122	pbkdf2_sha256$36000$fP1sjIprZ60B$LvnB5PBZqlPc427eDqrxfJ5c23gVr+oQbIP3sYXdhgI=	\N	f	del_1-10.198				f	t	2017-10-25 20:11:58.175358+00
4123	pbkdf2_sha256$36000$MjNj9CmY1HFR$MLYr6VoCYfZlYWEZ8857aoWbJziG+0ThKcYn1FPz3VE=	\N	f	del_1-10.199				f	t	2017-10-25 20:11:58.298467+00
4124	pbkdf2_sha256$36000$jzBCLs89gWTY$Pbtay02l1gAptVjcNhgFpDGA88SyuVBIpUZ2CKCLR7w=	\N	f	del_1-10.200				f	t	2017-10-25 20:11:58.412239+00
4125	pbkdf2_sha256$36000$1xD4s6IOnSI2$ZHQAVEhr3NuuSqztTSjHHFUNIW7KvwgjAl4D2EllI10=	\N	f	del_1-10.201				f	t	2017-10-25 20:11:58.524379+00
4126	pbkdf2_sha256$36000$9Kk9UcB6UNpD$gZtG016ye2xXg1fG0BHWsTY5rGEraR3pvp+RQGcx+8M=	\N	f	del_1-10.202				f	t	2017-10-25 20:11:58.618578+00
4127	pbkdf2_sha256$36000$QVfo3qMbXFYa$IBMqe6ZEiRonFv8/vapBCviSEc2mtXNvVhVCkFWgqus=	\N	f	del_1-10.203				f	t	2017-10-25 20:11:58.713589+00
4128	pbkdf2_sha256$36000$b2jsZO794lO8$Y8uopguTbkWblnInau89NpiuTiexJJRdPCg/roTFOM4=	\N	f	del_1-10.204				f	t	2017-10-25 20:11:58.808263+00
4129	pbkdf2_sha256$36000$vPLAA3yHtVCe$q4RHiMLwtZxMtjbtUveDBbIwlaJKm2f4ZFJu0hnWfOY=	\N	f	del_1-10.205				f	t	2017-10-25 20:11:58.930079+00
4130	pbkdf2_sha256$36000$vOwYvU0xB6Qi$cK7NYwoKFy8NEGbGlhFjsgcZrbDzAr+v2e41/ahfNIY=	\N	f	del_1-10.206				f	t	2017-10-25 20:11:59.03399+00
4131	pbkdf2_sha256$36000$GZ50edApZeAW$IR58C/AmCdu4CfMziCRVBFddQfOE3w8qXtMqupLvXx4=	\N	f	del_1-10.207				f	t	2017-10-25 20:11:59.091751+00
4132	pbkdf2_sha256$36000$5REVwnudV5In$t4aSkU3f4c3O5s3REMsckSBIU0fpYbZyfbrM/YzQVoY=	\N	f	del_1-10.208				f	t	2017-10-25 20:11:59.145769+00
4133	pbkdf2_sha256$36000$wYeDgHgPZura$FkoR4uJhs1QD0HM48LUdXqiEXT1ZgQE0Hgl2C46CmrE=	\N	f	del_1-10.209				f	t	2017-10-25 20:11:59.2002+00
4134	pbkdf2_sha256$36000$odamvYdAHsU6$xpS/AxPIZucO5ogIY4ydezqo6IV15q3cNkcRJ/dN0ZE=	\N	f	del_1-10.210				f	t	2017-10-25 20:11:59.256045+00
4135	pbkdf2_sha256$36000$r1ltTExr1eXh$JZbWhcFWI4QH7/zi7pkvVazGBY7I12kJ/OYfSuMTR9A=	\N	f	del_1-10.211				f	t	2017-10-25 20:11:59.310453+00
4136	pbkdf2_sha256$36000$CVuJia540FBW$I+4M3zponmCZmLz5jki0Yc3JdMul88vww0PLrZKRsRQ=	\N	f	del_1-10.212				f	t	2017-10-25 20:11:59.365869+00
4137	pbkdf2_sha256$36000$uFWbP7YWx92K$TOHEc0lLooABZYTiDnuylG0MnR6XWl5rPNWgbm94YDU=	\N	f	del_1-10.213				f	t	2017-10-25 20:11:59.421537+00
4138	pbkdf2_sha256$36000$5xHVQxqQHP39$DM0JERr8nrRJ8/8o+CElpDq4JUC2wrNCxZ4oD2DuXLE=	\N	f	del_1-10.214				f	t	2017-10-25 20:11:59.484526+00
4139	pbkdf2_sha256$36000$uQGhMrMgllqi$8WJ8CDb8hBGMrtYeoftZjiaBwvvqKhr3fDUaH286/Ew=	\N	f	del_1-10.215				f	t	2017-10-25 20:11:59.541396+00
4140	pbkdf2_sha256$36000$NrTew7G51ddK$fUbxBsMOD/A/nnlhSGz6pWKvnO2KD/x7BahxODH5rlA=	\N	f	del_1-10.216				f	t	2017-10-25 20:11:59.597633+00
4141	pbkdf2_sha256$36000$KN9Rt6GG6kE9$UYAkfDTy2//xxYOaY1gBKJb27SxuoBFbk7w79UQPwls=	\N	f	del_1-10.217				f	t	2017-10-25 20:11:59.655783+00
4142	pbkdf2_sha256$36000$AjksurwzksCc$TizSzv35Cm6haaIXn8+gfOMgt1A2gRvHzDpZ9IdBFf0=	\N	f	del_1-10.218				f	t	2017-10-25 20:11:59.713264+00
4143	pbkdf2_sha256$36000$SQrndlhjrnnL$1jvGUQl0UPxM+rVg5nuiyp5YLBFeywSi0HGN9DxOq/Y=	\N	f	del_1-10.219				f	t	2017-10-25 20:11:59.768365+00
4144	pbkdf2_sha256$36000$A039PyJCpYU2$9pKosfd0nph71kOdr1n9GNDbzdzJxOXHY7TXWkyFn00=	\N	f	del_1-10.220				f	t	2017-10-25 20:11:59.823847+00
4145	pbkdf2_sha256$36000$479MScljLh4K$7qRfJ3GbS/Lhe6nE0yxB0ueUKNHZRYhe+I9beWr028E=	\N	f	del_1-10.221				f	t	2017-10-25 20:11:59.885089+00
4146	pbkdf2_sha256$36000$IiOmesgpanZA$vA2jp5xwoMjdZwUAUn4PD79zRtMyCU9OqATXwn1sce8=	\N	f	del_1-10.222				f	t	2017-10-25 20:11:59.941505+00
4147	pbkdf2_sha256$36000$sJzldukMLfWf$d3OOrgYfuObMfYxcaaGrECV+zlCpvSUHf5M810gQnyg=	\N	f	del_1-10.223				f	t	2017-10-25 20:12:00.029076+00
4148	pbkdf2_sha256$36000$XXPQmb7iLzWh$89viDuwPg3YHjzM/agwt05Zipd1Y8KHU/9BlGaGJw2A=	\N	f	del_1-10.224				f	t	2017-10-25 20:12:00.169693+00
4149	pbkdf2_sha256$36000$yRzLHNrH9uWB$5rrqfUp1msQRJKPDAP2xM6MLfnJ9p3xpI4CwIB6LbfU=	\N	f	del_1-10.225				f	t	2017-10-25 20:12:00.312185+00
4150	pbkdf2_sha256$36000$SVXA90eXPGoC$fAZxPD93uAvNrSyy5nDDaKA03COXABw4EqP63cwzoAQ=	\N	f	del_1-10.226				f	t	2017-10-25 20:12:00.454529+00
4151	pbkdf2_sha256$36000$cirFY8CuMFOM$fIcNTEW8EafzokfNU9L/HnM39h7sCjpVd/rXl3A/9g0=	\N	f	del_1-10.227				f	t	2017-10-25 20:12:00.553712+00
4152	pbkdf2_sha256$36000$rusL7NJOfyi2$t4bfQkXRfqpyG1O3otZQ1WL+e/DEBswkyfsvq8UUHrE=	\N	f	del_1-10.228				f	t	2017-10-25 20:12:00.610454+00
4153	pbkdf2_sha256$36000$fY8ZIKaZWr5F$EOR/f4JExh1II7j4uxGZ0xOFLqYWFeZNhTqnzTyTSDY=	\N	f	del_1-10.229				f	t	2017-10-25 20:12:00.666044+00
4154	pbkdf2_sha256$36000$e3V3iHHaMVdr$DJjqRvM3NCXlt7Grh0pY0slENYnkr3NHDOWmIjwOyc8=	\N	f	del_1-10.230				f	t	2017-10-25 20:12:00.722004+00
4155	pbkdf2_sha256$36000$osblk1jKnU35$EuC3lHMot4WEGzk10+dS3eQ4/UhZ9euWDBg2aLXgOi0=	\N	f	del_1-10.231				f	t	2017-10-25 20:12:00.777659+00
4156	pbkdf2_sha256$36000$ac9TVmXak96O$1IhSUq4gFBFtlxI6Y0WhOctME7QwuwZnEZ2Vnu2e+BY=	\N	f	del_1-10.232				f	t	2017-10-25 20:12:00.833203+00
4157	pbkdf2_sha256$36000$Z3lliT5IcBHe$efDkCOTqNMXWUpuS/rt60ya0nHLjocHoS7d1BoUhA5c=	\N	f	del_1-10.233				f	t	2017-10-25 20:12:00.889307+00
4158	pbkdf2_sha256$36000$70MQTe6UFf7R$ByIyFtrozwq1nmxlEMfOVpAfX8MtcvIFeludAw70wGE=	\N	f	del_1-10.234				f	t	2017-10-25 20:12:00.945663+00
4159	pbkdf2_sha256$36000$y274SddIu6le$pOQPNgadF3icyU1YVaOjFVuK3pHveLn77jPDWMJNYrs=	\N	f	del_1-10.235				f	t	2017-10-25 20:12:01.002659+00
4160	pbkdf2_sha256$36000$63b3F2d0Vrrj$4OlS4E4IixC9VhvQ45rcSEenRuu+a3gZiLGLoAA2AGQ=	\N	f	del_1-10.236				f	t	2017-10-25 20:12:01.084039+00
4161	pbkdf2_sha256$36000$ZlT4B0zOrT20$BvngY3Ih3e3oZKcwp3E5fV+wbuX79UAMs9pzNlbfYCU=	\N	f	del_1-10.237				f	t	2017-10-25 20:12:01.14106+00
4162	pbkdf2_sha256$36000$Cmdsonv8Osfj$DXpSTqxxQnmPcCpzLAVrLpm38HLDO3Yfk7toG1Hd3mE=	\N	f	del_1-10.238				f	t	2017-10-25 20:12:01.198293+00
4163	pbkdf2_sha256$36000$YgvnWPPz6Fa6$EpOruHSP7It/lLUqClegEjXBxYvsHVmFtSD8S5Amq20=	\N	f	del_1-10.239				f	t	2017-10-25 20:12:01.255827+00
4164	pbkdf2_sha256$36000$ENXfQId5JFNu$21FmwHJK+5/d8Bt5RphOHFDswSwBG4AUb+04I12pX1k=	\N	f	del_1-10.240				f	t	2017-10-25 20:12:01.311139+00
4165	pbkdf2_sha256$36000$jaPeSsRstTw6$37/B7iPt0DiysINfNajPma7GAyxxroZL0RUTZWSuQBU=	\N	f	del_1-10.241				f	t	2017-10-25 20:12:01.366995+00
4166	pbkdf2_sha256$36000$RRPKp5CJRuW3$7tSmSUG7jnHJmojphkVm3hK9CffBTAUOVsXXyjv0ymo=	\N	f	del_1-10.242				f	t	2017-10-25 20:12:01.423226+00
4167	pbkdf2_sha256$36000$kvW7antT7XjS$124Z1WBYdz+yA4IPm6Q5jo8h6UDiAzx0k+hkMuFDLFQ=	\N	f	del_1-10.243				f	t	2017-10-25 20:12:01.478248+00
4168	pbkdf2_sha256$36000$5TaO8gYVQS5N$HTYlaqIlUxOaxtMDNmzohf9Bu+e7AMnKvx7ceTlRXTw=	\N	f	del_1-10.244				f	t	2017-10-25 20:12:01.534457+00
4169	pbkdf2_sha256$36000$E4ru50kdGyS1$SLDt3RIyCqE76Zxny6VD+ADVXkEec4qXHZ9ePOJ6/6k=	\N	f	del_1-10.245				f	t	2017-10-25 20:12:01.590356+00
4170	pbkdf2_sha256$36000$WKPdADa9sJKm$oyGaI/coUuF8nnIxDUQMecfsGeu8D/LguZAfuYXJ1zQ=	\N	f	del_1-10.246				f	t	2017-10-25 20:12:01.645659+00
4171	pbkdf2_sha256$36000$ZMx3U3rH5dPh$I421s66xHQuLUwGxJDCNsIgvgbFDpe2XjsUAmVJ9OdM=	\N	f	del_1-10.247				f	t	2017-10-25 20:12:01.701184+00
4172	pbkdf2_sha256$36000$HsD49XP4u115$5PjhSSmkqbDQy02dmPLpnCY3z0Wz6x/tXbLXLGl4RWM=	\N	f	del_1-10.248				f	t	2017-10-25 20:12:01.759016+00
4173	pbkdf2_sha256$36000$UvwOZyJQVNxD$d7Q4nv2kca/qKWaWnUWELaTcRMKNCl1Zy6aVuH32ayY=	\N	f	del_1-10.249				f	t	2017-10-25 20:12:01.815343+00
4174	pbkdf2_sha256$36000$h6U6TsfXyO5f$Fh/Ijh3TPpTHGMHnEJCIzKjtdfTh6TJxUwm1Fn3cdxQ=	\N	f	del_1-10.250				f	t	2017-10-25 20:12:01.872297+00
4175	pbkdf2_sha256$36000$gMG8AsgAqwQw$ZEGS//+JDx8nW7tOdETHcUr0WvbGWrIfxOjaD8Qc1R4=	\N	f	del_1-10.251				f	t	2017-10-25 20:12:01.929028+00
4176	pbkdf2_sha256$36000$ryjiCMh7UQEk$kB3z7cBhl/+BI0W6sun5zUu9QMCkLRQWzwmn7bqtU+Q=	\N	f	del_1-10.252				f	t	2017-10-25 20:12:01.984641+00
4177	pbkdf2_sha256$36000$0bwvJ3KWMDZX$nRC4kN/4K5J4HnmcPnKmcMYGVT1tLxbPBQwVKtQm2e8=	\N	f	del_1-10.253				f	t	2017-10-25 20:12:02.061651+00
4178	pbkdf2_sha256$36000$EbgYFmzuW9uu$QN/92vxQ1Xx2WKcO2JNJdYarHA+3F+OAJdmelLwYGhY=	\N	f	del_1-10.254				f	t	2017-10-25 20:12:02.273203+00
4179	pbkdf2_sha256$36000$tV2jZe1bk70U$BufaQA6PzUFreuUyanes6RLbeZA2lqfJoZfbdHtELrM=	\N	f	del_1-10.255				f	t	2017-10-25 20:12:02.415836+00
4180	pbkdf2_sha256$36000$qDc3WX9QH3Au$UilWI/Z/8dne0idQhufep/yrMEK/4UD2fg4jpn/2xY8=	\N	f	del_1-10.256				f	t	2017-10-25 20:12:02.556588+00
4181	pbkdf2_sha256$36000$Qb6ZTgGXLPG0$pDzoWk3+RLY8DsfOTqjTMxykMa8stHo5K5xqDVjfcs0=	\N	f	del_1-10.257				f	t	2017-10-25 20:12:02.699078+00
4182	pbkdf2_sha256$36000$Re4kjySI8u52$6FbvUrTNFNoEOxoXtqFms3tWAJ3O3Yy9EVMktZHOnWE=	\N	f	del_1-10.258				f	t	2017-10-25 20:12:02.8419+00
4183	pbkdf2_sha256$36000$YwMpKR4yYZC9$1EJo2XKTryR768wsxD50u7yWFgJfbrJ6Y6XRGpHyVtA=	\N	f	del_1-10.259				f	t	2017-10-25 20:12:02.982675+00
4184	pbkdf2_sha256$36000$bwV95I2ikBZK$lMbyvTdmTPLn6GVLdF/Si5aXyzd0deKBwmLJbh3hX64=	\N	f	del_1-10.260				f	t	2017-10-25 20:12:03.104354+00
4185	pbkdf2_sha256$36000$bwwEQOkgH2L8$2ZWCqz7iRfuKzbgPXbkeW4dmRPfN6l2GvhPv1UDFmq8=	\N	f	del_1-10.261				f	t	2017-10-25 20:12:03.241527+00
4186	pbkdf2_sha256$36000$tMHIqHW9t5mY$VLi0EUGedZEWJac7zKf/qXfxMz1CnS4cixQ0f+J6FvA=	\N	f	del_1-10.262				f	t	2017-10-25 20:12:03.37951+00
4187	pbkdf2_sha256$36000$SzK2M5U6E7Dc$gMO3QAmJqXd///PBuTu1PsNJK2mvE9sz9sYi6hdUmoU=	\N	f	del_1-10.263				f	t	2017-10-25 20:12:03.49245+00
4188	pbkdf2_sha256$36000$DBwGLy1PeCCv$uhljLcycod11Fkp6NoI//CwYAInIfsbu4eH/aLTgKc8=	\N	f	del_1-10.264				f	t	2017-10-25 20:12:03.590102+00
4189	pbkdf2_sha256$36000$udszwQ6QPFJP$LQHyK/jebh5f8CFKK534TqeU7epbdivvzw3vdGAKK6A=	\N	f	del_1-10.265				f	t	2017-10-25 20:12:03.6799+00
4190	pbkdf2_sha256$36000$Sx8FM1hcHgso$NgfwsF8TnTdHrELyvD+Di0jZ5IODgtFH0Xt33DHVRx4=	\N	f	del_1-10.266				f	t	2017-10-25 20:12:03.782839+00
4191	pbkdf2_sha256$36000$Nbd36Kj127Nj$DOMujf5e5U/KuX/xI0mqXpbL4fl8Of0PmpBpk6SkQz0=	\N	f	del_1-10.267				f	t	2017-10-25 20:12:03.944435+00
4192	pbkdf2_sha256$36000$TQBP543xdKpZ$Rd2hN9j+URgb4ECAWYcmJIQoJCWRcvCulWxT14Sgwnk=	\N	f	del_1-10.268				f	t	2017-10-25 20:12:04.052214+00
4193	pbkdf2_sha256$36000$CK0dx2crLIUo$xqHWPfyule/TSyk7VT4j5kHBiaqpFWJOv4eg/OvxN6U=	\N	f	del_1-10.269				f	t	2017-10-25 20:12:04.127181+00
4195	pbkdf2_sha256$36000$hRWZTppRvxUr$I9Z+8a5TmunWw/KoFZibR39lN5K7KnnBv1JLAhdScx0=	\N	f	del_1-10.271				f	t	2017-10-25 20:12:04.279482+00
4196	pbkdf2_sha256$36000$R24BI3c1OQeW$IzKaOb7GkZuVrfxgguV0Vc7iZL2bHNsdfN/hLA+vb+Q=	\N	f	del_1-10.272				f	t	2017-10-25 20:12:04.387471+00
4197	pbkdf2_sha256$36000$3VeRzgHrSLrJ$Vw8/Q8Yu8LkywsPOskG3jymwFDbGcH1FavI3qHXTkdo=	\N	f	del_1-10.273				f	t	2017-10-25 20:12:04.460986+00
4198	pbkdf2_sha256$36000$5TPWIkFiXwab$tukE5/mpB7Dar1NYtAS5yEaArDTJGbbOzhR/LicPdEA=	\N	f	del_1-10.274				f	t	2017-10-25 20:12:04.593436+00
4199	pbkdf2_sha256$36000$GM3ZyNbwXGi6$upqN2ktm9VEaSv6t5iiLS3pkim7C1NF2izzOEjeqLOw=	\N	f	del_1-10.275				f	t	2017-10-25 20:12:04.737168+00
4200	pbkdf2_sha256$36000$U3YmhCADUnpz$UzfgPiO2nkMUV3Qc7f5j9cb2oKEXgTr+Q2plr3pUjeo=	\N	f	del_1-10.276				f	t	2017-10-25 20:12:04.864425+00
4201	pbkdf2_sha256$36000$Qtyx8A0L8shH$SpCSM1LYggcQ/FGw7XKUOcnVwMBKK+L16l9zPjkucuI=	\N	f	del_1-10.277				f	t	2017-10-25 20:12:04.942016+00
4202	pbkdf2_sha256$36000$sC7CA3abbO4g$g6qFWBHvSXzjngZ5l8Z3zt+x75PWMp/cwQ6eLV90EGo=	\N	f	del_1-10.278				f	t	2017-10-25 20:12:05.009849+00
4203	pbkdf2_sha256$36000$xZAolPguCwzG$6O0QLUSFVbWi4LCXHZdhj7YzhxmP5kN8FxIbXDzgpWA=	\N	f	del_1-10.279				f	t	2017-10-25 20:12:05.136245+00
4204	pbkdf2_sha256$36000$IdDAXARwaa1m$EvjTSxSTDBM3/TdSNTGSLGL4SkuuBDPZ/kB1nryVXH4=	\N	f	del_1-10.280				f	t	2017-10-25 20:12:05.277755+00
4205	pbkdf2_sha256$36000$njNrvfyO9xV6$viYWXohSoefKfYq4Es/x/VMkhQj/eDq0E17KfPGyNzY=	\N	f	del_1-10.281				f	t	2017-10-25 20:12:05.489285+00
4206	pbkdf2_sha256$36000$NHr6gfSpb2y2$gC/VlSZIldPsGHZw3WhnE1CT1T7ey4qaGSC/URdMVmM=	\N	f	del_1-10.282				f	t	2017-10-25 20:12:05.566885+00
4207	pbkdf2_sha256$36000$BoqZen5wZWJl$udSRgbcxuM3aNGyYbyvRxNgI3gjeoUANw2O7PkXXRDo=	\N	f	del_1-10.283				f	t	2017-10-25 20:12:05.623043+00
4208	pbkdf2_sha256$36000$KOFGh1bmnrA8$Q7kP15MutZIbGkVDdh/k0G+03jW5uZrYfieKlgKYfe4=	\N	f	del_1-10.284				f	t	2017-10-25 20:12:05.677933+00
4209	pbkdf2_sha256$36000$auVeDCUGhPGQ$cszXNsIhZUDCKMyouU4A4sg1Ufot6PL75fJgprJzRdo=	\N	f	del_1-10.285				f	t	2017-10-25 20:12:05.733867+00
4210	pbkdf2_sha256$36000$FdE7KLZGF7eW$Laq1PS1OGuewXEyVbeSwlPMd5Rit3HK57cX34k16cwo=	\N	f	del_1-10.286				f	t	2017-10-25 20:12:05.788981+00
4211	pbkdf2_sha256$36000$9mjIvzy87hLx$JspxKXr0ifkVB9Y5v/wkCf8zBLFZEgwuQj0kyjaT5Fs=	\N	f	del_1-10.287				f	t	2017-10-25 20:12:05.844047+00
4212	pbkdf2_sha256$36000$pQycoZKPvkmc$lFlK9VB19CCDz1xoe+SuVRSnp5/rqM3LLK/nDz4LT0o=	\N	f	del_1-10.288				f	t	2017-10-25 20:12:05.898908+00
4213	pbkdf2_sha256$36000$gn7gyqPFSduU$zK1pB8+OKLRvcSjFbEtXtXaedxEgs6rlWX5u1/pLhXg=	\N	f	del_1-10.289				f	t	2017-10-25 20:12:05.955295+00
4214	pbkdf2_sha256$36000$I0Q9FOji2zD1$jIvVR+I1sJ/s0xDSWarbUmHq1k3t870ur5Ar99M5HKM=	\N	f	del_1-10.290				f	t	2017-10-25 20:12:06.01148+00
4215	pbkdf2_sha256$36000$JxelD0LkQr17$NsGXAjYchGpMyleRPLriUo1oFh22f/x3iABCEar2LFQ=	\N	f	del_1-10.291				f	t	2017-10-25 20:12:06.069587+00
4216	pbkdf2_sha256$36000$k1uK8vB4uGGH$WSK0Vl7Td3Y+TbaQwcxYtURAr2LXOSFq/bIyQgMweAY=	\N	f	del_1-10.292				f	t	2017-10-25 20:12:06.125676+00
4217	pbkdf2_sha256$36000$5WxSWOexVd3b$TqlV9a3zF1PK9lPPUghNmxBNRaMKNTOlamilGp8zU94=	\N	f	del_1-10.293				f	t	2017-10-25 20:12:06.182079+00
4218	pbkdf2_sha256$36000$xJPwrnaEwnbq$z7y0pXN1lyMl0HV6VkfOD/fan2HxnHhUKEX+NOARxGs=	\N	f	del_1-10.294				f	t	2017-10-25 20:12:06.238506+00
4219	pbkdf2_sha256$36000$HLXshZJW4pfG$zUmbxVZvMNKhVFwo8cqr7VQnistU1wTnyrriq+QrA1I=	\N	f	del_1-10.295				f	t	2017-10-25 20:12:06.29559+00
4220	pbkdf2_sha256$36000$nNH8GT5fb6gs$FiyDV0Fh6B6bmSulZ92OjuZHKX+e1T3C7Wsc1WA2MHc=	\N	f	del_1-10.296				f	t	2017-10-25 20:12:06.352663+00
4221	pbkdf2_sha256$36000$WWFsWypdAgAE$n/n853j5U7Ve2mmc5t4Q2yhSKssIvHgl0Bc4yeiOjIc=	\N	f	del_1-10.297				f	t	2017-10-25 20:12:06.409273+00
4222	pbkdf2_sha256$36000$VL8Qi8L2VITc$tn0y7VG/RrgCXJ68QdguLJ6sWXjRyGBM+fcVhhpbW20=	\N	f	del_1-10.298				f	t	2017-10-25 20:12:06.465055+00
4223	pbkdf2_sha256$36000$3Szs4QCMbjfl$2OwR4dYuGhJ+2x2iQKnRtd8cvfX/kJNBJqZon9kAXfI=	\N	f	del_1-10.299				f	t	2017-10-25 20:12:06.546105+00
4224	pbkdf2_sha256$36000$pKyk3tKuFjyJ$RImz7EyUzOZFXQNvhHT/BtKVQpLWDcAR2JROdz7Ve4w=	\N	f	del_1-10.300				f	t	2017-10-25 20:12:06.602566+00
1732	pbkdf2_sha256$36000$Td4Pbv1mO97g$qGHIK2/yfveOqZxIDSLn5r+VVyx1HmlbTzB+ELHt1jg=	2017-10-25 20:13:04.297724+00	f	del_1-1.28				f	t	2017-10-25 20:08:55.122675+00
353	pbkdf2_sha256$36000$GGJE2DD9SG9V$Ljz+szd565fCcaW6zHmZEYGVp7E+QmJzqPAWCqshfmY=	2017-11-03 08:40:00.378304+00	f	cont_219-1.9				f	t	2017-10-25 20:03:17.008995+00
2	pbkdf2_sha256$36000$hN0fazDdEMhV$rP6uWgnBIRVMeta+UDibdxuZ6Q285LNZKVIYjUkpjno=	2017-11-09 13:45:36.956391+00	t	admin3			ds@sds.ru	t	t	2017-10-13 10:23:50+00
1350	pbkdf2_sha256$36000$XaTgMo9jQ2T6$AYXUELn08GpBBfvhhDK+verpyTE+ECdzdNQpmCGBvHA=	2017-11-03 09:53:41.949133+00	f	cont_219-2.411				f	t	2017-10-25 20:04:31.184156+00
1065	pbkdf2_sha256$36000$idqaVFuDD9EX$SBw6kMhNjb7c6W/AoSS4962AoA+3vp56OUkSdLHcIsE=	2017-11-03 10:09:05.252074+00	f	cont_219-2.126				f	t	2017-10-25 20:04:09.36155+00
918	pbkdf2_sha256$36000$lwZMdrX23rKS$eB+fxVCenoq90KjW34BN2jjneJcjWVu5VhsJASoAvDQ=	2017-11-03 10:44:50.317065+00	f	cont_219-1.574				f	t	2017-10-25 20:03:59.054361+00
290	pbkdf2_sha256$36000$DuF9TxJLLmHf$bXDdzpN4ypnfieV12qN+vloCSEODoGrXVdKVFHx/4I0=	2017-11-09 11:06:34.054503+00	f	ber_8-A.286				f	t	2017-10-25 19:57:35.240758+00
503	pbkdf2_sha256$36000$hke0Y5DhGnRc$TFwyscp7FioFD4UxGIDDX7hZ3msslYUQqvgwfldEc7U=	2017-11-02 16:26:56.074933+00	f	cont_219-1.159				f	t	2017-10-25 20:03:26.823403+00
865	pbkdf2_sha256$36000$t0qRRj5cTyY7$uV4mmFO+CN05HpfSVQLMjzKDZkgKN3Jw2R0ap0O06J8=	2017-11-03 17:43:06.737753+00	f	cont_219-1.521				f	t	2017-10-25 20:03:55.695154+00
1419	pbkdf2_sha256$36000$R5CpGtzzymRL$kPGZRKhZ3wqANDQwhr5s31lFa5TKl5w8Js++1TTeTac=	2017-11-04 10:21:42.309131+00	f	cont_219-3.55				f	t	2017-10-25 20:04:35.279594+00
650	pbkdf2_sha256$36000$1g5BciFifmG6$jvgOJb3c6lBKqnduQxDLXcTeGB4KNPSg7TZzfGThg5g=	2017-11-04 20:04:43.312794+00	f	cont_219-1.306				f	t	2017-10-25 20:03:38.223722+00
429	pbkdf2_sha256$36000$dRn9DfKvdoop$hrjsuk2+HJDoVxvsgAGaL5FTeO3uyhQPz26MO5OSd7Q=	2017-11-08 18:59:37.301697+00	f	cont_219-1.85				f	t	2017-10-25 20:03:22.137636+00
4226	pbkdf2_sha256$36000$FigBzD2yLYwN$D2dpfU6do8dhL20SJfHENjHPIcvap+zR+941VbpMEwQ=	\N	f	Green_215.2				f	t	2017-11-06 12:29:32.944282+00
4227	pbkdf2_sha256$36000$cmkP4jYW6aLx$ZO9PAbIFte24FtI71txk8jY/yEf4brbL939RnqbLUVE=	\N	f	Green_215.3				f	t	2017-11-06 12:29:33.113308+00
4225	pbkdf2_sha256$36000$NjXXMCM2ipZT$/ulwXM5Hj5bx5N3MDr8boJnwzWslcqY5IGZ+1HcUJPc=	2017-11-06 12:30:55.612625+00	f	Green_215.1				f	t	2017-11-06 12:29:32.620748+00
4194	pbkdf2_sha256$36000$w8r7YTBtBXsc$rmnHE80tH4jYDhSpw83padLx/9B0GOZY3MYiUgydK7c=	2017-11-09 19:51:25.234795+00	f	del_1-10.270				f	t	2017-10-25 20:12:04.201919+00
4228	pbkdf2_sha256$36000$PL4Mro225LWh$b8HFdHPG6LWpkfsKuXDkqcAl0xpN8rqn6Rd6I1JFSRo=	\N	f	Green_215.4				f	t	2017-11-06 12:29:33.283663+00
4229	pbkdf2_sha256$36000$wP9uWWomVgzP$G7CQr2E4iyX83UF9IAQNXdWHzMkJU1I/+vUJ4Akjunk=	\N	f	Green_215.5				f	t	2017-11-06 12:29:33.470104+00
4230	pbkdf2_sha256$36000$KOK4jzoQBwTN$4NRga9wCAoK88El/1c9xbjE08w9NcE/Iwl3qV1DFGWQ=	\N	f	Green_215.6				f	t	2017-11-06 12:29:33.606728+00
4231	pbkdf2_sha256$36000$Hm1tbLPL1FQ9$exhGfPIMkd/jjrmcayoDUioeLjppXN4oMM5g+z9ZwN0=	\N	f	Green_215.7				f	t	2017-11-06 12:29:33.75214+00
4232	pbkdf2_sha256$36000$RJdyuv8sHWc2$1bVUTl7eGJ61IL7PBStdmhuGtAu/ryp9obtV1tAiBxA=	\N	f	Green_215.8				f	t	2017-11-06 12:29:33.914068+00
4233	pbkdf2_sha256$36000$pXIHbPa9TjgQ$STqFO8P65tpPWIRdr8LySKL+IcHByudQ3A/EzUFqLlk=	\N	f	Green_215.9				f	t	2017-11-06 12:29:34.072091+00
4234	pbkdf2_sha256$36000$klb3yKyyZcPf$8HSKDbB2x9VjxAHb6xr6NOzVV0jdAN6OOWOMWwrUINE=	\N	f	Green_215.10				f	t	2017-11-06 12:29:34.217081+00
4235	pbkdf2_sha256$36000$TpvQ12Gl0Nbj$2ioOUwTcAHVa6lTiFf6mVwXKabXSWgLz0m3FVIBvG5Q=	\N	f	Green_215.11				f	t	2017-11-06 12:29:34.357959+00
4236	pbkdf2_sha256$36000$QQ8m7XDJc3vT$mO5DzUysl3/SqeZvz67iEw6o0hG1fLfX5r6B4oA3DZI=	\N	f	Green_215.12				f	t	2017-11-06 12:29:34.562711+00
4237	pbkdf2_sha256$36000$1fOfeOAyP35B$gYutwkzIu/HqQlZBcvtXW35x11PXhVBNpBzljfvls/U=	\N	f	Green_215.13				f	t	2017-11-06 12:29:34.695143+00
4238	pbkdf2_sha256$36000$SAAZfuPG8JAP$OBQzVm15T1bPtZdC/q5q9YpIN5aAcy1Qwk8DAYl6Sb8=	\N	f	Green_215.14				f	t	2017-11-06 12:29:34.82642+00
4239	pbkdf2_sha256$36000$kCG3X9WWL6Ea$kmtYb3a5T0TUACKqzstEgKLmYzDJdfofDXbfUVrWVJA=	\N	f	Green_215.15				f	t	2017-11-06 12:29:35.00995+00
4276	pbkdf2_sha256$36000$iTTGoADNube4$mbrZTK4fI3m2gRw7mooy+1aXMd3FZH/MNYRG5R+IsRA=	2017-11-09 09:49:40.793094+00	f	Green_215.52				f	t	2017-11-06 12:29:39.291739+00
4241	pbkdf2_sha256$36000$fvY59mbzpFuE$oRi8kCSx9erIq2RITljXZOEzwlO1xKw2FkHYlsYwzQ8=	\N	f	Green_215.17				f	t	2017-11-06 12:29:35.304687+00
4242	pbkdf2_sha256$36000$5L3dHtDjtKBM$P6lH3BoXieb+dTztQ0gsjGmlBp6ISgHil1p+lpYxp6c=	\N	f	Green_215.18				f	t	2017-11-06 12:29:35.425925+00
4243	pbkdf2_sha256$36000$GHzjnK58vdmd$zExu3zthQTATY7RbVedNWhL4gA39hs5ki4aefYlSRQY=	\N	f	Green_215.19				f	t	2017-11-06 12:29:35.575341+00
4244	pbkdf2_sha256$36000$hvOmHf5FsFuh$kAHI+vW9J++ZySJF4m7U28RjejIur/u4AjOVdFcB7BI=	\N	f	Green_215.20				f	t	2017-11-06 12:29:35.729484+00
4245	pbkdf2_sha256$36000$bpxgd1GWIpMJ$MO/AmqcumcGsj3mRcLgyUd1iC2h3VsSia0uBoUUIKkw=	\N	f	Green_215.21				f	t	2017-11-06 12:29:35.874255+00
4246	pbkdf2_sha256$36000$2275gMME6aul$t4+hkA/9M5xrFOk8P4qbmAWYBIpKXpSPiRr15bDyadI=	\N	f	Green_215.22				f	t	2017-11-06 12:29:36.001743+00
4247	pbkdf2_sha256$36000$BoAR4Rh1Wxag$tTWjb28zVmjSTuW/0PTgaksKsz6nlRHMaMJEqlZ6YvE=	\N	f	Green_215.23				f	t	2017-11-06 12:29:36.129098+00
4248	pbkdf2_sha256$36000$5kUODKHenVqv$sy2F4wQnn/6gxpmGH25t2h0fpRPtDhFwJFNlJ3DytM8=	\N	f	Green_215.24				f	t	2017-11-06 12:29:36.257079+00
4249	pbkdf2_sha256$36000$ZyPKUawjyLCE$/wpZyL+L/20dERKJ3ABeGrmsS0wGQanR70ns3vgmUwk=	\N	f	Green_215.25				f	t	2017-11-06 12:29:36.378073+00
4250	pbkdf2_sha256$36000$MnNBb8Yfvcvl$vmS2ZNUqsxKm0MOjyNTzuJLZhkAr/3cCkI9jaX7wW48=	\N	f	Green_215.26				f	t	2017-11-06 12:29:36.485129+00
4251	pbkdf2_sha256$36000$Y2MV395UejLi$XFxEEFMb4tQ2a/ss8+qiqUpq1qWIVqKGgFI2Q5IfIhk=	\N	f	Green_215.27				f	t	2017-11-06 12:29:36.587798+00
4252	pbkdf2_sha256$36000$zfvLJH7HXHzG$FQER8lpwp75HtKua4JV46EmlgncMDH9U10qE6sFkvN8=	\N	f	Green_215.28				f	t	2017-11-06 12:29:36.722769+00
4253	pbkdf2_sha256$36000$h4CE3i45hucA$7gvAd2MCW9s/YtHXS9w3mYJ7NsPhuSrlhlCHh9P0xmg=	\N	f	Green_215.29				f	t	2017-11-06 12:29:36.845494+00
4254	pbkdf2_sha256$36000$9H83gkStLWcA$MrqPqkdaae1rDbPGijRw1c+k8+hykbevDkysXqpatww=	\N	f	Green_215.30				f	t	2017-11-06 12:29:36.964304+00
4255	pbkdf2_sha256$36000$MkKFE34oke4L$4xsQUO/oRhly5m9nRNiOIXNEeV3WeWpUmsBDLYBI1RA=	\N	f	Green_215.31				f	t	2017-11-06 12:29:37.074103+00
4256	pbkdf2_sha256$36000$23H4MooY8oHz$5kdKtcbBrRekUtAbV1dRa87bCWJVysu3yM+MVA1s2Fw=	\N	f	Green_215.32				f	t	2017-11-06 12:29:37.182248+00
4257	pbkdf2_sha256$36000$i9GfT1FBf5WO$55/JqJ2bVJxsTKs/EGuUnT5W7tXesC+cHRz0mpxnT4k=	\N	f	Green_215.33				f	t	2017-11-06 12:29:37.291537+00
4258	pbkdf2_sha256$36000$eOBlHBjn1iFv$LwoaiQes9c88w3GKTcS5+bxchSCRrZK7qm612RAvBQ4=	\N	f	Green_215.34				f	t	2017-11-06 12:29:37.387073+00
4259	pbkdf2_sha256$36000$YN8ICy3rQFFo$fo7/FRabwClfycQbKvO/80uELacx7MpXMKiP6nf40KE=	\N	f	Green_215.35				f	t	2017-11-06 12:29:37.47216+00
4260	pbkdf2_sha256$36000$94RPSZKeWMlR$SCQp1mHIbKwR3RZ8ZIGmp2NT42fxa8l+2sS6VLd6BjM=	\N	f	Green_215.36				f	t	2017-11-06 12:29:37.558921+00
4261	pbkdf2_sha256$36000$ITre9USsL9XR$5rqV/oWZkPsstrY09yJEshhj3TFkOSG6moComJwOB/s=	\N	f	Green_215.37				f	t	2017-11-06 12:29:37.645443+00
4262	pbkdf2_sha256$36000$VmvItmV9OXA7$qDJHvgXFg7G78S58CkD19Cop3uQauZfkFRAk5iGWkp8=	\N	f	Green_215.38				f	t	2017-11-06 12:29:37.733456+00
4263	pbkdf2_sha256$36000$IvJfEClf1ZJx$EWEgSO31UtAvPWvCuB+KWAPQmJswuFe7cicgJg8YueI=	\N	f	Green_215.39				f	t	2017-11-06 12:29:37.85889+00
4264	pbkdf2_sha256$36000$L6nyg7lMSy4X$tsOXOp7Z4IsWxqa5Ia8meFChmlMyJCurf8+7Y2ooW0U=	\N	f	Green_215.40				f	t	2017-11-06 12:29:37.926066+00
4265	pbkdf2_sha256$36000$xXJuoaK0p5Bs$TD6ZcNpeauc76c3/WU0rXoZNoAuCNrX+QjTTXOj8xSA=	\N	f	Green_215.41				f	t	2017-11-06 12:29:37.994161+00
4266	pbkdf2_sha256$36000$QjbJu5uOqPTB$XqBHCdPKSXnqhzE78pLBWWJgQJecygKI9QFeSJc8gyA=	\N	f	Green_215.42				f	t	2017-11-06 12:29:38.064629+00
4267	pbkdf2_sha256$36000$7RPoqDef9GZd$OgPPFklWdz0jbCnsJ7qYNVwsk74eZUufDNLMBS6YAAI=	\N	f	Green_215.43				f	t	2017-11-06 12:29:38.133712+00
4268	pbkdf2_sha256$36000$vu5ySTM4kHC5$0MK6Q9XD2QxtIP0zLs8+i0QOGnZ6iayQUoaGDvt35jw=	\N	f	Green_215.44				f	t	2017-11-06 12:29:38.202465+00
4269	pbkdf2_sha256$36000$sVLJDjniBXiy$rSpZ6OCxmBl9GHjnVHxvMS5zWJdUvC6aj6bKkRGvebw=	\N	f	Green_215.45				f	t	2017-11-06 12:29:38.271071+00
4270	pbkdf2_sha256$36000$PsLrBxwfXyvk$2VSlw8+SJR8i+ySm2APsuBaxv7nVqP+FgSsdC3ur3Ss=	\N	f	Green_215.46				f	t	2017-11-06 12:29:38.344123+00
4271	pbkdf2_sha256$36000$9PjJW6xZijoy$9c0oK5P59RP8OQUbwtIWvKQAaYX6Vz/LGfnr7ntZ0vk=	\N	f	Green_215.47				f	t	2017-11-06 12:29:38.498434+00
4272	pbkdf2_sha256$36000$DGjCBEiBi6ue$stKL74t8CEWSsz4eQn2d0UudMmFmgYnIc/0x+7QjNas=	\N	f	Green_215.48				f	t	2017-11-06 12:29:38.646298+00
4273	pbkdf2_sha256$36000$SvodrsDJvnYq$asjZWM7kos/Urqy58u4sA/7CDkwp9aCrbaWCmppPrgw=	\N	f	Green_215.49				f	t	2017-11-06 12:29:38.789079+00
4274	pbkdf2_sha256$36000$2h0fwiFG3rt2$NHQ67lM/zirvDXndFW6EzRlII6pW7oKkkdKzUbVic3g=	\N	f	Green_215.50				f	t	2017-11-06 12:29:39.006007+00
4275	pbkdf2_sha256$36000$8wzL29TDK4Ll$M8ktj7yg0MN6cYqEeOjRFiHTOwN3bSXyfjWXVdxNZZ8=	\N	f	Green_215.51				f	t	2017-11-06 12:29:39.149272+00
4277	pbkdf2_sha256$36000$YzukucXA8oX3$q//YVfZ8teOObp5DrmDZ455355oBrunqeAXKZOQhYAg=	\N	f	Green_215.53				f	t	2017-11-06 12:29:39.37519+00
4278	pbkdf2_sha256$36000$NLXOT2ozwEUv$83T3C6g2xDTCaa/11CmLnFwpox7oCAPFZE57xcFx6CM=	\N	f	Green_215.54				f	t	2017-11-06 12:29:39.430146+00
4279	pbkdf2_sha256$36000$QGkF3pvw5Mpy$LjB6qyjsCePUu1cvnZ5CCJmWl/xB0//ydMUNHFaJQ3I=	\N	f	Green_215.55				f	t	2017-11-06 12:29:39.484661+00
4280	pbkdf2_sha256$36000$5NEfVvaDJfHH$Thceq1YpmXtvK8heDK0PxJZh4GHVkq4QRVo7epT0YNQ=	\N	f	Green_215.56				f	t	2017-11-06 12:29:39.539731+00
4281	pbkdf2_sha256$36000$RXbrArp49oY1$0nA937Zk71mtYUfOJh5TctSp8glV7rdB76Hq+sVJSEw=	\N	f	Green_215.57				f	t	2017-11-06 12:29:39.594591+00
4282	pbkdf2_sha256$36000$cPBgwECzyp8H$+moPMM5W2/glRmMWHQdLGGm7nlTzJVszLxgQNGURnLs=	\N	f	Green_215.58				f	t	2017-11-06 12:29:39.649347+00
4283	pbkdf2_sha256$36000$tToMqFb1UQz6$1ccWx9TzAZDErA0WeuYiZRQEfc/QlA38v3EnKnaWaa4=	\N	f	Green_215.59				f	t	2017-11-06 12:29:39.703327+00
4284	pbkdf2_sha256$36000$f1vc5tniPvAC$Uq1EmRkp0u96dduqGJSx1q5ToysyoKO7Oon8vLOeuTw=	\N	f	Green_215.60				f	t	2017-11-06 12:29:39.759571+00
4286	pbkdf2_sha256$36000$2cV0F8pOTQz1$354yQ9+d5maNvuZ54X4hGapVEZOSlms3zIJFRYjQXgM=	\N	f	Green_215.62				f	t	2017-11-06 12:29:39.879254+00
4287	pbkdf2_sha256$36000$iEY9bHyOvfBm$EVtvK5dKaimQELgM3/YFF7qxtpuCJBmFuFDtXNrYXno=	\N	f	Green_215.63				f	t	2017-11-06 12:29:39.935264+00
4288	pbkdf2_sha256$36000$e4GEXyZ11g7i$hzmp0fomJM5VlldqmbZgfZaOYh5qqKtgCqpEmXvRHMY=	\N	f	Green_215.64				f	t	2017-11-06 12:29:39.990584+00
4289	pbkdf2_sha256$36000$Gq22dvXEaPYg$l7sAnIHsMXY/FRrJa35ERLcifAq0VnuWsl8L7JwEkwQ=	\N	f	Green_215.65				f	t	2017-11-06 12:29:40.083658+00
4290	pbkdf2_sha256$36000$dsoxyosBrVFb$JOFmQyRUFD1iX/qeLbMmqdCE279pIv2kX6JkYjvkpuc=	\N	f	Green_215.66				f	t	2017-11-06 12:29:40.142709+00
4291	pbkdf2_sha256$36000$zsXkINs4qq7A$G1zrW1fNYUVZ7Ot7cdKb5XyJBf4KDnL9fdPVsQjculQ=	\N	f	Green_215.67				f	t	2017-11-06 12:29:40.199256+00
4292	pbkdf2_sha256$36000$fBhTRqsrwNva$GY6BumeFl6FPF/RKLubviWGGjPFqaVyjQ3pFzxM7qkg=	\N	f	Green_215.68				f	t	2017-11-06 12:29:40.253974+00
4293	pbkdf2_sha256$36000$EOPnAQ6suZxO$wjNcdU2gGuxkUyVwFReJH5LxxJLK+CMJG3HkdKA11SI=	\N	f	Green_215.69				f	t	2017-11-06 12:29:40.309746+00
4294	pbkdf2_sha256$36000$DhxzOOIfOyg0$VyjIHou6J6tPnLFpxKiHEeiZFFnVEf2bHgsW5oUNb7c=	\N	f	Green_215.70				f	t	2017-11-06 12:29:40.365398+00
4295	pbkdf2_sha256$36000$bOqm9RJSDZ26$E+jTSs0LtvHP4dbJQTtTiLtU9JQvydLDMfBvNFDcTMs=	\N	f	Green_215.71				f	t	2017-11-06 12:29:40.420753+00
4296	pbkdf2_sha256$36000$TDH5CoVqf6qA$gpUgNKAOrlxrKl85C/CsO0t/GdK37TZ8jwEZeOiETb8=	\N	f	Green_215.72				f	t	2017-11-06 12:29:40.475534+00
4297	pbkdf2_sha256$36000$07UplEwN7UHS$ZGpm8iGFXZEr0BDifT2eHV8DzaNg7p9ne/3IHNAaRdg=	\N	f	Green_215.73				f	t	2017-11-06 12:29:40.530568+00
4298	pbkdf2_sha256$36000$T9weiST69BTn$zLpwp74XssH4criPNlHmfQo7VoSND3pHkTecUY6G9IU=	\N	f	Green_215.74				f	t	2017-11-06 12:29:40.587079+00
4299	pbkdf2_sha256$36000$QNYlw2ADEcVT$/qNX1rKpJPvBbqRFw74NzDjgD1HTxlC3ExEAdM9Tvws=	\N	f	Green_215.75				f	t	2017-11-06 12:29:40.642712+00
4300	pbkdf2_sha256$36000$MteLP205l7ox$K0EU8fXzD/3YhMESfDQ7/tcQdHvWrdKL5EmxdaVqhFo=	\N	f	Green_215.76				f	t	2017-11-06 12:29:40.697672+00
4301	pbkdf2_sha256$36000$WfF95eK2YBW0$lug7Ii479XLg50u8JdbPf9EdfzYPL2c6EymDiwt1BBw=	\N	f	Green_215.77				f	t	2017-11-06 12:29:40.755702+00
4302	pbkdf2_sha256$36000$psbBFyNqCwOU$D7Ypuo4fG8wcRRRRaWYzSyVnrwZP10aF23ef6NRhTAM=	\N	f	Green_215.78				f	t	2017-11-06 12:29:40.810589+00
4303	pbkdf2_sha256$36000$97DIUJhMUvMh$xno7HoE7WBSTNyujj6wlJqrcYs5OwEUKlrYzqiOcTug=	\N	f	Green_215.79				f	t	2017-11-06 12:29:40.866162+00
4304	pbkdf2_sha256$36000$i1VhgaM6Tr92$qE39vtnPYPVvzBY22lg08Aev8w3oVxw3vpOMGoIKzkY=	\N	f	Green_215.80				f	t	2017-11-06 12:29:40.921306+00
4305	pbkdf2_sha256$36000$95AhsXEZvYn6$mCdxwxnEmxvAfvZF3lywFQC8u8JrbHXLYSVNc+elDdo=	\N	f	Green_215.81				f	t	2017-11-06 12:29:40.976222+00
4306	pbkdf2_sha256$36000$Gakd1hQtkkVV$Z9HiAte5e2UZMCBCUfnAhwgrJc4/9yIjitSDYV5Hhtw=	\N	f	Green_215.82				f	t	2017-11-06 12:29:41.030746+00
4307	pbkdf2_sha256$36000$HVAIJdPNvwMw$qFJqp6e3+BVdQLgB45TENIDRt+Y64ENYrzYGA1NCrVo=	\N	f	Green_215.83				f	t	2017-11-06 12:29:41.112356+00
4308	pbkdf2_sha256$36000$aMhCPegU7IHE$lmMmNpkHSCkCjnCvNRrDVchc0NvTH8p4AHh0wL1HAso=	\N	f	Green_215.84				f	t	2017-11-06 12:29:41.169954+00
4309	pbkdf2_sha256$36000$5X2jdHCBx4Sv$4735B57+fXircd9SnXt7BvNFY5XGDtN/H2ne6g+ZOEc=	\N	f	Green_215.85				f	t	2017-11-06 12:29:41.225704+00
4310	pbkdf2_sha256$36000$ncj847UkilMU$2ud6YJ0RUHwrxbpvCWcAKtLCbsVSuZ5WCKx2Wm39MMs=	\N	f	Green_215.86				f	t	2017-11-06 12:29:41.280423+00
4311	pbkdf2_sha256$36000$lZjWC8rIgniu$PFWFiYeuDh5S0WbPqxXctboP1VhcVcRudU5zN3G4Yng=	\N	f	Green_215.87				f	t	2017-11-06 12:29:41.335006+00
4312	pbkdf2_sha256$36000$o1Kt8qysT3lh$fRngtvBJ6ouDNFxvaaqWR2hIAwHAdzeZWOnFt7Lxg1Y=	\N	f	Green_215.88				f	t	2017-11-06 12:29:41.396396+00
4313	pbkdf2_sha256$36000$om2sbh1BbxLU$1WA8b7BqSRPy/mMOmiJh3drufrpuxT5sVS3ykBskCqs=	\N	f	Green_215.89				f	t	2017-11-06 12:29:41.451568+00
4314	pbkdf2_sha256$36000$gxb9HiIdST6S$Pp+UgHMKAkI9ZjDYO3JuhGMKYQihZubMQBA3N/WFWLw=	\N	f	Green_215.90				f	t	2017-11-06 12:29:41.50693+00
4315	pbkdf2_sha256$36000$HJAsRGmN9qHO$2Ixs9JcDaF0ac6AtM51yacdvJlsut1UCl1J18FayeEQ=	\N	f	Green_215.91				f	t	2017-11-06 12:29:41.564176+00
4316	pbkdf2_sha256$36000$DI0nl9lPvS3l$pKZm7QhOwTZuYAKP0Fm8bNmBaJ+wmiyirPUulXNqFUA=	\N	f	Green_215.92				f	t	2017-11-06 12:29:41.620343+00
4317	pbkdf2_sha256$36000$26SFMy45pvGY$Oq8kdijDVnNmMW8shWVtsj6OJd5jKICRyfZOGAUKcYY=	\N	f	Green_215.93				f	t	2017-11-06 12:29:41.675831+00
4318	pbkdf2_sha256$36000$QbVaQvtlPcHl$9hCaO5NxDvgO9gTHyUBPK9dQiEteYv0b29oDc9YspkA=	\N	f	Green_215.94				f	t	2017-11-06 12:29:41.730685+00
4319	pbkdf2_sha256$36000$lzN7wdu2yOv9$ogiwM5JnExGeUphadKbypWZH2c3rFTzew+1E89ZbLjQ=	\N	f	Green_215.95				f	t	2017-11-06 12:29:41.785919+00
4320	pbkdf2_sha256$36000$bmnOJNUHEuc9$8w9g1h7iJcvQWi6wvU6fkBba4DalM1FwdBJGbDEt9VQ=	\N	f	Green_215.96				f	t	2017-11-06 12:29:41.841085+00
4321	pbkdf2_sha256$36000$4clcEJySJgKW$a2Co93wfq1S447KCWggD1TQzxQ3orqg00io1XgrI84w=	\N	f	Green_215.97				f	t	2017-11-06 12:29:41.896874+00
4322	pbkdf2_sha256$36000$RpTAYcPO5PUk$mNkwBM4OHRyItnzlhg8F1vxIKj7eYXJdfWve07pkecI=	\N	f	Green_215.98				f	t	2017-11-06 12:29:41.95157+00
4323	pbkdf2_sha256$36000$WYtlRMDONEqI$eRzsAQ4IAl4t+Vbr/klCiWtrPc5ApNBed9YZTHFDWvI=	\N	f	Green_215.99				f	t	2017-11-06 12:29:42.007135+00
4324	pbkdf2_sha256$36000$tDcbSVflaBus$8ygzYU6tEj0EHUrM1kVVlfwhPBTuTHXzk6uK6gz6bh8=	\N	f	Green_215.100				f	t	2017-11-06 12:29:42.063601+00
4325	pbkdf2_sha256$36000$EvE4ucKn7ggj$U6rhpCixexSGUoJgTiBk1wSR78YDT5t+B9ckMNNmrYw=	\N	f	Green_215.101				f	t	2017-11-06 12:29:42.118713+00
4326	pbkdf2_sha256$36000$S1Y8pwKAoSNR$9Sv1No5jTELLDThIyJbYWPigapohIRtN5RPakWDbE/M=	\N	f	Green_215.102				f	t	2017-11-06 12:29:42.21713+00
4327	pbkdf2_sha256$36000$fKKzoW95afGD$K1cMdFHkaQT81WSEhBZDCQfBPoGn4jonGO39NUvjKmU=	\N	f	Green_215.103				f	t	2017-11-06 12:29:42.272047+00
4328	pbkdf2_sha256$36000$XJsGnGtqCf1T$EvImL61u4QRtZzQDdyOKQacwb8Ok+1TpL5ltfI7ZoOw=	\N	f	Green_215.104				f	t	2017-11-06 12:29:42.334687+00
4329	pbkdf2_sha256$36000$vu0ZSTaP9Jo7$9q4iFo/KxIJMlzqMtNQms4TouIs+aXpwJ0pYtlyWGeM=	\N	f	Green_215.105				f	t	2017-11-06 12:29:42.400959+00
4330	pbkdf2_sha256$36000$jbCV7URn8wCj$TMphYt0HHEGYafPoDX5RLXEdBFhJ+aD/lfl+k/7XhCI=	\N	f	Green_215.106				f	t	2017-11-06 12:29:42.456564+00
4285	pbkdf2_sha256$36000$MxvDJoWHmsPQ$wW5JA98mUBv0w/cOuTXnk5lDTQ9JeYNJ44eUFCMnJng=	2017-11-13 11:58:40.108287+00	f	Green_215.61				f	t	2017-11-06 12:29:39.813815+00
4332	pbkdf2_sha256$36000$wILrH0TsQqGD$E+fe+MAGHV/bu99wvkOy5ouWu8EAulipyESdSON9g14=	\N	f	Green_215.108				f	t	2017-11-06 12:29:42.570607+00
4333	pbkdf2_sha256$36000$FupqLL0Dqw78$t6leP8VyotLJNsY/j/dZ+Od6CtakUMuvvqfnHXwFjPc=	\N	f	Green_215.109				f	t	2017-11-06 12:29:42.625913+00
4334	pbkdf2_sha256$36000$hFrBrlYx3J2b$6L4AhmO1Fj/DSk2MbU7RXx6VrBFqTqCFttSHsr8Weow=	\N	f	Green_215.110				f	t	2017-11-06 12:29:42.682813+00
4335	pbkdf2_sha256$36000$I7jAaB98Ld0A$xfSnokUYQ5M2lRPMXuOxf+MWhoulJRO4c8zGVdE/p1U=	\N	f	Green_215.111				f	t	2017-11-06 12:29:42.738889+00
4336	pbkdf2_sha256$36000$tO1FvBcLuTuF$+5rQs9QU4s84gB5LtWxuogYjRNh07NZQv+DaxghD2fY=	\N	f	Green_215.112				f	t	2017-11-06 12:29:42.794419+00
4337	pbkdf2_sha256$36000$DnHerbWcfFDM$NYIdqeaIQBkybaJbg4yerDszgHX1BsADIe0bqI/3Kbw=	\N	f	Green_215.113				f	t	2017-11-06 12:29:42.853493+00
4338	pbkdf2_sha256$36000$5mWEe4w0gxx7$qL6suU2E6mPpZ3FKBgpbFm3Sa6tE6nuWv6oXP1SGdto=	\N	f	Green_215.114				f	t	2017-11-06 12:29:42.917632+00
4339	pbkdf2_sha256$36000$H4eymQ6RRJf1$iceuAQufMcFbq/Vu/r/lunmSOluj4s1t8VaA2KknFH0=	\N	f	Green_215.115				f	t	2017-11-06 12:29:42.974446+00
4340	pbkdf2_sha256$36000$Obujrj6bORdz$5mov00CmlCYgQFU3LItw8skke07CpzcjCatFIwrfiQk=	\N	f	Green_215.116				f	t	2017-11-06 12:29:43.030092+00
4341	pbkdf2_sha256$36000$O1fV60E2cnUn$bdFsZigwsd6Noaqt01sCMdwmg93kifTgHpHLzmbPSNw=	\N	f	Green_215.117				f	t	2017-11-06 12:29:43.092577+00
4342	pbkdf2_sha256$36000$1hJAYdUkXmHa$Z/mir2CDgntW1j6Hc/wUmSnf020Mt7B5dss/l1NSQiI=	\N	f	Green_215.118				f	t	2017-11-06 12:29:43.148127+00
4375	pbkdf2_sha256$36000$Iqw7AotNAdvl$F/sa+y/RSjSJs3OiqpwcroL/z9mjI9cA8mJ8Blt6CKE=	2017-11-12 14:48:29.897237+00	f	Green_215.151				f	t	2017-11-06 12:29:45.387418+00
4344	pbkdf2_sha256$36000$2o4AK5USKvNR$oyq84DN8Rsmmjd3EtfR+9BhVOY5KKic4kIKkqKX6Aa0=	2017-11-12 07:53:26.298009+00	f	Green_215.120				f	t	2017-11-06 12:29:43.288569+00
4345	pbkdf2_sha256$36000$XZE1AkKl8RhF$gaTW1v8RqUym1dmAJ2dYL4XDur+Reiak46R//q36GKo=	\N	f	Green_215.121				f	t	2017-11-06 12:29:43.344127+00
4346	pbkdf2_sha256$36000$uUYZAnCHKM12$qTbObmS7AhxO8W4B2oWUbvHY8Eb+hY9W465nEpu4nIk=	\N	f	Green_215.122				f	t	2017-11-06 12:29:43.398953+00
4347	pbkdf2_sha256$36000$tQArGH22ysL3$2UXyNyJiOIV3gp10ganhPX3N7SvdRr0/68ujc7ogBCA=	\N	f	Green_215.123				f	t	2017-11-06 12:29:43.453932+00
4348	pbkdf2_sha256$36000$kKD2A1r1odfG$sFvRGbbOBIRCGLIm7IPmXzboqcf6Xnedvp8UHxVDKbs=	\N	f	Green_215.124				f	t	2017-11-06 12:29:43.510296+00
4380	pbkdf2_sha256$36000$6dLMZwn43Rxm$a7bBzp1WTuTDM51zz2odQMqwM5JFdxIS4zMOs3+OvtY=	2017-11-14 11:40:11.478596+00	f	Green_215.156				f	t	2017-11-06 12:29:45.690684+00
4350	pbkdf2_sha256$36000$9injwGPMmbvA$d2Vb9QLbc0owupNFMwZuaP7reapusCeaGRGWJSiBJNw=	\N	f	Green_215.126				f	t	2017-11-06 12:29:43.623129+00
4351	pbkdf2_sha256$36000$61BRaIHL3Gtt$XOizlcULz6if83dgDrNpvO70Up1ZT1QLY9BDaxcUBBE=	\N	f	Green_215.127				f	t	2017-11-06 12:29:43.679577+00
4352	pbkdf2_sha256$36000$0q3rlk0afK94$VJt6dQFIapSafEoD8ol+LSVqXsfXOASRY+aLzPBp0EM=	\N	f	Green_215.128				f	t	2017-11-06 12:29:43.735201+00
4353	pbkdf2_sha256$36000$2MjbIsg1F9eI$tGgeLRU57Xt1V4iEPZPpFurJEJsdLpb5ojOA3+8UrNQ=	\N	f	Green_215.129				f	t	2017-11-06 12:29:43.792174+00
4354	pbkdf2_sha256$36000$vGz2Ny4gPrZU$WLbs0TebOhN1ELfPwW0RR/QhvIjOaR5IMFx96478AzQ=	\N	f	Green_215.130				f	t	2017-11-06 12:29:43.864633+00
4355	pbkdf2_sha256$36000$qrJrGmmAunQy$O3FE79Iugnlp3eKAOoYwvPWTOuZOA8FlNYfmJFQ/gnk=	\N	f	Green_215.131				f	t	2017-11-06 12:29:44.022115+00
4356	pbkdf2_sha256$36000$do4AKKJayqBg$Xh8BqPs8zHQ1O6kIICneAQ54K5O0VxpjTYS+B+IhdeA=	\N	f	Green_215.132				f	t	2017-11-06 12:29:44.168229+00
4357	pbkdf2_sha256$36000$BL5qcWu3l3fG$HsFBiT46u04As4+qM8W2AT56wkuGroW1NpibnsQDqUU=	\N	f	Green_215.133				f	t	2017-11-06 12:29:44.347049+00
4358	pbkdf2_sha256$36000$Xi69hj59rmQh$U/yv7dYsyP2DpjfNpCNRI9N6bXrb4K/Z8/UXNJp+yqA=	\N	f	Green_215.134				f	t	2017-11-06 12:29:44.419748+00
4359	pbkdf2_sha256$36000$1YKWDv7YMOrH$c9LFm6XvIrGAbsVnyEcoWEZvgRYFxh4/jtIGVKw7ta4=	\N	f	Green_215.135				f	t	2017-11-06 12:29:44.477139+00
4360	pbkdf2_sha256$36000$38Yb7686y55Q$4lNlVH/CWIWrL6WVhQYjGVTovTUXl4FlPDvkZJF3BMQ=	\N	f	Green_215.136				f	t	2017-11-06 12:29:44.532501+00
4361	pbkdf2_sha256$36000$VmjTXTAR3Rio$Cky7BO2/eO4Dq65WJaV7S6De/a1fqWbcoSGo+XPZ+S0=	\N	f	Green_215.137				f	t	2017-11-06 12:29:44.589655+00
4362	pbkdf2_sha256$36000$Sbq5LFDMNPeE$MbbM7wvoivMn7VP6hNAaUKb8ERmBlG5T/Bv5Dx2jvoc=	\N	f	Green_215.138				f	t	2017-11-06 12:29:44.645761+00
4363	pbkdf2_sha256$36000$qrpPT4dL2Mcw$70AY/9F60wwt3mJQmuCT9nxpJyZv88XnCkGExj0w7LQ=	\N	f	Green_215.139				f	t	2017-11-06 12:29:44.701347+00
4364	pbkdf2_sha256$36000$qRyboaWBsd3u$xSqFNZlVomGumyfHJspYtTguHzSnRr3p06JpRKGNO0Q=	\N	f	Green_215.140				f	t	2017-11-06 12:29:44.756802+00
4365	pbkdf2_sha256$36000$NdTgzZ9igkQG$gz5SY9GcqpmhzXHCiCjQeODtjpvYgHACDWspijDywfc=	\N	f	Green_215.141				f	t	2017-11-06 12:29:44.820358+00
4366	pbkdf2_sha256$36000$UINNTWbF0xBL$pyXxpRYLrhgEe278Q9nWc/Pt1ODWqCrCNjEh8wbkq7I=	\N	f	Green_215.142				f	t	2017-11-06 12:29:44.878818+00
4349	pbkdf2_sha256$36000$oRu6P2cDIua1$KF4OZXzk7jYi9+KF1EnGADgAoIGCC2oGFBR5dpeRNTc=	2017-11-14 10:46:32.317185+00	f	Green_215.125				f	t	2017-11-06 12:29:43.567544+00
4368	pbkdf2_sha256$36000$TtEBpgeDMNTs$VURFcpgpU0HDt4WVNLttltp0pr6eeW2jCq41/4Sj4sc=	\N	f	Green_215.144				f	t	2017-11-06 12:29:44.989851+00
4369	pbkdf2_sha256$36000$aKikIX7z3nqh$mBaHE8t0ou1ftANIIH+ASkujqXl8I8E4BHGKcd2nnIU=	\N	f	Green_215.145				f	t	2017-11-06 12:29:45.047923+00
4370	pbkdf2_sha256$36000$4CYuhhHjXmp6$MxisrKWV2gJmLwsMgXNc1FqeluZ2KJrifqsfYT8QGug=	\N	f	Green_215.146				f	t	2017-11-06 12:29:45.103197+00
4371	pbkdf2_sha256$36000$1fyIPz7YmIQW$kZhgitnpv2T+HdQuEDJUpZsVTQJZiSpEthOBgP0jkVg=	\N	f	Green_215.147				f	t	2017-11-06 12:29:45.157999+00
4372	pbkdf2_sha256$36000$vqEc5ApU1Sd2$24G4gvu+hZhFMvNha7dR8DCjiVnHY2JAafe9rRAJnq4=	\N	f	Green_215.148				f	t	2017-11-06 12:29:45.212833+00
4373	pbkdf2_sha256$36000$QdINbYIvajxH$9znnhTJjNkSAGkVnCCAX2twmF86MSCerOqPDNLb9/rY=	\N	f	Green_215.149				f	t	2017-11-06 12:29:45.268292+00
4374	pbkdf2_sha256$36000$OlM5MLu4ULdw$/vMu3+mW+mygzNRJXUGEK4WKN0c8n8Jin4+atWoS+94=	\N	f	Green_215.150				f	t	2017-11-06 12:29:45.323089+00
4367	pbkdf2_sha256$36000$S7Uvsc6fggwW$di6lWs0JzHTPvhelzUGqdn3r8IkEySrTUoxyNGxMH7g=	2017-11-10 12:11:01.847731+00	f	Green_215.143				f	t	2017-11-06 12:29:44.934518+00
4376	pbkdf2_sha256$36000$rgnQj59yELHZ$hAbfFIkUVhVCZwRC9IztpiQozcydvMDDrt5wiQShqCQ=	\N	f	Green_215.152				f	t	2017-11-06 12:29:45.467028+00
4377	pbkdf2_sha256$36000$bWNFCtI2HZvA$L3TGpAcukqbgHPMnQi/BXnvQRqHVWHj1goEDlW41NRk=	\N	f	Green_215.153				f	t	2017-11-06 12:29:45.523006+00
4378	pbkdf2_sha256$36000$6kkK8E7FQIt8$xJhUpyCRC3ufiHUM7KAKh77Q6tbgl1SL7E/2uQIeRck=	\N	f	Green_215.154				f	t	2017-11-06 12:29:45.580404+00
4379	pbkdf2_sha256$36000$9vUd4ARMWrtb$XJsQ2VXqdMg9DkNsD9b044NUrTbSK2+W0MVyNQow7Qg=	\N	f	Green_215.155				f	t	2017-11-06 12:29:45.635348+00
4381	pbkdf2_sha256$36000$WxU1TurK5HPb$PWHMHAp48r0qGTy92DWaBNKh83dLGiAbDCY5+zaw2lw=	\N	f	Green_215.157				f	t	2017-11-06 12:29:45.746898+00
4382	pbkdf2_sha256$36000$l9K0c10VXdRx$KgkS6L0loKnGkgPQTNIbERrB8m13+XkOztFzfetXJc0=	\N	f	Green_215.158				f	t	2017-11-06 12:29:45.801958+00
4383	pbkdf2_sha256$36000$1NklXb235qHk$cXjrdqnp2qDgXomUXHLapeKQz+g6rQNz1oCcoYpOWpg=	\N	f	Green_215.159				f	t	2017-11-06 12:29:45.887924+00
4384	pbkdf2_sha256$36000$pYWKZ7le95VM$FFjMd3EGi+csW6d0eNGomQd3BJxDY9/wrS8j4dYa7rI=	\N	f	Green_215.160				f	t	2017-11-06 12:29:46.030208+00
4385	pbkdf2_sha256$36000$Rx93DXh8cHjV$vUuVJgSKhU+9oPe8dvwMi/r4A5Gll00ouWOXLAi1Zcc=	\N	f	Green_215.161				f	t	2017-11-06 12:29:46.172587+00
4386	pbkdf2_sha256$36000$TBdPxxB4axJn$TxV7wdFzWRznRgLlbMdqOUaCZ7dFAWAG5+6FiDiC1mI=	\N	f	Green_215.162				f	t	2017-11-06 12:29:46.317497+00
4387	pbkdf2_sha256$36000$DxGjUVbt1uvg$2or8Vizs7WxJ5q8Q/W7U1FsGTolJfUJDnA/sb4Ok9ik=	\N	f	Green_215.163				f	t	2017-11-06 12:29:46.452511+00
4388	pbkdf2_sha256$36000$cTmqMBgcZb7Z$v8Klp1HpwG+NqEw2XRlHozhBLr3SLZZ5560SF4s/bLw=	\N	f	Green_215.164				f	t	2017-11-06 12:29:46.636478+00
4389	pbkdf2_sha256$36000$Njomv8Plfp76$BdkIAPXB8BUheI5q6b3mGaQtN7VHWR5ezf33BIyfudY=	\N	f	Green_215.165				f	t	2017-11-06 12:29:46.756872+00
4390	pbkdf2_sha256$36000$hTU14iaFE6vz$N6J47X3hTJ9b6IQxOYzDCQOPkqn+IWgHyCbomtSFat8=	\N	f	Green_215.166				f	t	2017-11-06 12:29:46.857066+00
4391	pbkdf2_sha256$36000$JtiwzxWiyM5z$hT0qehwH7FKTTfgtrl7k3zskeE+jvC++jGFLcgTQExM=	\N	f	Green_215.167				f	t	2017-11-06 12:29:46.91215+00
4392	pbkdf2_sha256$36000$bP4NU5zgBru2$Xhf7cttS82ivwlFrJhgo/aOBnDCayDLkdTprgXEfoTQ=	\N	f	Green_215.168				f	t	2017-11-06 12:29:46.967486+00
4393	pbkdf2_sha256$36000$mSd7WjMZpTpW$Dghb1rfvzewz+N2waBKFZ4NixiA+ySKyZeF+p3i/hMI=	\N	f	Green_215.169				f	t	2017-11-06 12:29:47.023257+00
4394	pbkdf2_sha256$36000$zZ0NE8Ngib3Z$lm75+rq65vxLVS4rF4C8AotSmODDdbz6/BW6TZM2rGE=	\N	f	Green_215.170				f	t	2017-11-06 12:29:47.080858+00
4395	pbkdf2_sha256$36000$CGrbVJN6OzSM$bEIN4oXYsYmYubhfDziATnCXETpUT8/WlMLatcLhwM4=	\N	f	Green_215.171				f	t	2017-11-06 12:29:47.136785+00
4396	pbkdf2_sha256$36000$cZNxeDN1Vtxu$dZVh4nQ7bzyed8bZVOJVQuUduGiX2BsYrc7Zo0r6vfo=	\N	f	Green_215.172				f	t	2017-11-06 12:29:47.193054+00
4397	pbkdf2_sha256$36000$tH9aB5GOzGow$naVvM0+13pQCSOKl7rdJTZqLclvj13PE/q4P/tKk7dE=	\N	f	Green_215.173				f	t	2017-11-06 12:29:47.254261+00
4398	pbkdf2_sha256$36000$MgJQBTfY9uHl$mRg0mroy+Qi5GTzCbzvqxWNHVDxxIe5XSDwOpVp/t1Q=	\N	f	Green_215.174				f	t	2017-11-06 12:29:47.309264+00
4399	pbkdf2_sha256$36000$iPRYwGv0LpnY$FPmSArDrPaosfyJbLXkUCJMdPsxG0TtTXf1pCMqN4JY=	\N	f	Green_215.175				f	t	2017-11-06 12:29:47.365849+00
4400	pbkdf2_sha256$36000$m5PT5OnmXTYT$0f4hbApWC1fn6r5APIPN2QxS+sz0GZN3Zdwn8xRB2a0=	\N	f	Green_215.176				f	t	2017-11-06 12:29:47.42167+00
4401	pbkdf2_sha256$36000$HGkDmJ8r0eIU$0Jk441POUCwNwzutUa7WkPOT83gRYh6kx++W0dlMoLY=	\N	f	Green_215.177				f	t	2017-11-06 12:29:47.477141+00
4402	pbkdf2_sha256$36000$sqANknXKvgwo$dEYB+o4e/JcxYLEp87YEaiSZ/KpArAkolJUXLLTFygg=	\N	f	Green_215.178				f	t	2017-11-06 12:29:47.533305+00
4403	pbkdf2_sha256$36000$3C8rRoSqKLr9$XGfQc8y2CbdGxq/0f14CGfVkUx+EZCuI0ZphBTs9UMM=	\N	f	Green_215.179				f	t	2017-11-06 12:29:47.623245+00
4404	pbkdf2_sha256$36000$9saEkXwXHQ7A$QpG8kuUzxVRbQDzjXT2bX/qJePdLzJTfHg2qLkJU4qY=	\N	f	Green_215.180				f	t	2017-11-06 12:29:47.792849+00
4405	pbkdf2_sha256$36000$Z1MclHbYLAPF$8J1VFbhjUz0cnFWcFs67lbaK8Y1P3Ww0dMeDxk/NEBU=	\N	f	Green_215.181				f	t	2017-11-06 12:29:47.953702+00
4406	pbkdf2_sha256$36000$FfoQAPQjerbn$y5sPZcqr6zgmFi553t6S5+df37JUEEr0LdKGEqd59RM=	\N	f	Green_215.182				f	t	2017-11-06 12:29:48.101824+00
4407	pbkdf2_sha256$36000$T33arVf18slP$FQ+nM64wxPdFx3ZqTkTz8OJLJanenK6v88eRpNsfoyU=	\N	f	Green_215.183				f	t	2017-11-06 12:29:48.247491+00
4408	pbkdf2_sha256$36000$iIW96jeyA84s$gx/CWOpnfUV9QIQydFBZWoJRZ/HXAVlEx2I/wvzOLzc=	\N	f	Green_215.184				f	t	2017-11-06 12:29:48.386125+00
4409	pbkdf2_sha256$36000$cBnIsZiRzTmi$+EKQO0807pufYhAH7GEKO0SWQl96RRKiAToPaDTtw28=	\N	f	Green_215.185				f	t	2017-11-06 12:29:48.511573+00
4410	pbkdf2_sha256$36000$4Vh3AiOPPBxB$7SnR2qAPSSr31xjrOUAU0cHsSTNp8n/H0bt8RIfhcok=	\N	f	Green_215.186				f	t	2017-11-06 12:29:48.638164+00
4411	pbkdf2_sha256$36000$ddHAYmWO3ctI$IBl4h7uu0F+kRWZzuDWNZ7ztUTyCq7SHZ9yF2LRaNAw=	\N	f	Green_215.187				f	t	2017-11-06 12:29:48.826825+00
4412	pbkdf2_sha256$36000$1tp9AKTutMZU$gvk6mS6OC8AZ8hjAyazMMB1gX1EUf0K9X9Hn3AEa+Tc=	\N	f	Green_215.188				f	t	2017-11-06 12:29:48.931651+00
4413	pbkdf2_sha256$36000$aPxNADrQj8wJ$5yBj9EUVxbFeFyrXU6DieRDxpgGGS3QVn423MWwhLgM=	\N	f	Green_215.189				f	t	2017-11-06 12:29:49.045599+00
4414	pbkdf2_sha256$36000$wQaVmbaEy2aS$DuxmdTCpcIMiGetxndjN9CmmB/bWa0n8zWs35VIVH+A=	\N	f	Green_215.190				f	t	2017-11-06 12:29:49.14808+00
4415	pbkdf2_sha256$36000$vcm7f02FErs2$yucHRBXonW8YdzsxDUocuLXIY3E/qkfh6dTuVmAwUFw=	\N	f	Green_215.191				f	t	2017-11-06 12:29:49.251809+00
4416	pbkdf2_sha256$36000$bIcyy9zQI3F8$TW9m7FtDL2L6mEaTltXE6maSIU2XlSd8hODo3eDVNVE=	\N	f	Green_215.192				f	t	2017-11-06 12:29:49.351378+00
4417	pbkdf2_sha256$36000$dNEQqV0Doqcf$kYfx4UCs2CA0tu2PE55RYSokSDHJasg7XfAwCXtSH/0=	\N	f	Green_215.193				f	t	2017-11-06 12:29:49.433819+00
4418	pbkdf2_sha256$36000$4xkifV4MMCG8$MjLDieTqXoWXJPeMJuxwxRaCG/5lL5yGGsztI9lcQI0=	\N	f	Green_215.194				f	t	2017-11-06 12:29:49.516852+00
4419	pbkdf2_sha256$36000$axhaJoku5Q95$9W+xy6BbpZ99Y/na5S4n8bhPgVTHGtOlh5ko/3+cg9o=	\N	f	Green_215.195				f	t	2017-11-06 12:29:49.600447+00
4420	pbkdf2_sha256$36000$5yExiax234AF$X2aFonoK7sbYXlJNEc84q+AOZKPNha72B/YuLZ3wIf4=	\N	f	Green_215.196				f	t	2017-11-06 12:29:49.682509+00
4421	pbkdf2_sha256$36000$UqxQ8XZIRMkz$ajkvjEsatuPUE8CqPKMCBqMxo0btmx18NpndLobQsN0=	\N	f	Green_215.197				f	t	2017-11-06 12:29:49.765359+00
4422	pbkdf2_sha256$36000$12j2K9R4szTL$xn7btI1p3mouAiOZ+rK63K1c38C4IKg1W2jxd1DWoL8=	\N	f	Green_215.198				f	t	2017-11-06 12:29:49.877787+00
4423	pbkdf2_sha256$36000$OxZccduLf5P3$yT4g9ZEB8h8IE+d2OR9gFGHIco6Rbi3yU+if0KCw5I4=	\N	f	Green_215.199				f	t	2017-11-06 12:29:49.950776+00
4424	pbkdf2_sha256$36000$JgxpKOF0JSS0$4u4+1juShS6KygC9gHktKfe6oD3ADKvV8el7HIWu4Ws=	\N	f	Green_215.200				f	t	2017-11-06 12:29:50.017493+00
4425	pbkdf2_sha256$36000$kbL01JYkjfrf$QrhcP7lUM7LvkKfUacv9YwzUPF8h3T7RWXRIivTmtPc=	\N	f	Green_215.201				f	t	2017-11-06 12:29:50.085218+00
4426	pbkdf2_sha256$36000$Ug4qrLsRlpYJ$mQvqbJmjZAHH8BAN8oBHVIin8gfdtidumkxDxV+Gbds=	\N	f	Green_215.202				f	t	2017-11-06 12:29:50.154589+00
4427	pbkdf2_sha256$36000$xj4aPLKNRPBx$uaRMShbCaCPTAWcHxlbFQbOLsnhlZ88UetaGFeUnROE=	\N	f	Green_215.203				f	t	2017-11-06 12:29:50.223483+00
4428	pbkdf2_sha256$36000$46rXJmOa4Tim$46jlvvhJl42MZEEiV0JtnJKY85+bt5x0r36icNKaHzs=	\N	f	Green_215.204				f	t	2017-11-06 12:29:50.292684+00
4429	pbkdf2_sha256$36000$UpFsTlcc5gyw$TkEJFSSYHtkBziZZZwG4eubYaW953pcq9o6tVPhJscE=	\N	f	Green_215.205				f	t	2017-11-06 12:29:50.359053+00
4430	pbkdf2_sha256$36000$HxmleAFGdgOm$unQAC7MwgvGV/vpIyklBOeJJYoqvEgNZGbu4UYjkYsA=	\N	f	Green_215.206				f	t	2017-11-06 12:29:50.417933+00
4431	pbkdf2_sha256$36000$dLYQAaQFkFul$w57UZW9lihttJZEvW2LcGyoSf++uuXYKIxb0zo/i2cU=	\N	f	Green_215.207				f	t	2017-11-06 12:29:50.477023+00
4432	pbkdf2_sha256$36000$LO0THE0qrOh4$PTjqp7DVfI34bVvWXF10HZS+S8pci2W3KqyNMFdHu/k=	\N	f	Green_215.208				f	t	2017-11-06 12:29:50.533674+00
4433	pbkdf2_sha256$36000$9uHOmNB2dyt0$IYsbCuyuIEkEIHWi88gBgcANgeyRHq9tcR/NsBCo0UY=	\N	f	Green_215.209				f	t	2017-11-06 12:29:50.59095+00
4434	pbkdf2_sha256$36000$cRWfB8If10SK$ZHuHvljHIZwYXeYbK+fWRiYKgn3+iSVxFPPOIf5UpEE=	\N	f	Green_215.210				f	t	2017-11-06 12:29:50.647597+00
4435	pbkdf2_sha256$36000$jWdgQ5VDAKkU$JnfqFMWp/0NPYNFNyF/Bbc8IDSG53UtfZOquG9hJk7o=	\N	f	Green_215.211				f	t	2017-11-06 12:29:50.706958+00
4436	pbkdf2_sha256$36000$GklecKd4aHY4$imSlnRHxJowih4jyVeP4bCGnVFiyJlzu1LVOp7RI2Tk=	\N	f	Green_215.212				f	t	2017-11-06 12:29:50.766979+00
4437	pbkdf2_sha256$36000$vV84S6HVwVYZ$xISTncUZZnSBN9jOYewvXcrYmyCGun4mWGoXyUw5/F4=	\N	f	Green_215.213				f	t	2017-11-06 12:29:50.825504+00
4438	pbkdf2_sha256$36000$IDIpskC5A0W3$lDpAraopiOuI9WLjmb9W8eimbJCDmcnmNoveUYGAe4s=	\N	f	Green_215.214				f	t	2017-11-06 12:29:50.88505+00
4439	pbkdf2_sha256$36000$giCIhILClwGH$QpvTrTTlXXIu2EXFCgzu84DREBe+j8hV6SBkJOhQ1sY=	\N	f	Green_215.215				f	t	2017-11-06 12:29:50.977674+00
4441	pbkdf2_sha256$36000$mjWNiQg2wFzW$hDYDqOE26Qr9bpUj80gMUb67U9DjyQiaOhZ5E6jCnLU=	\N	f	Green_215.217				f	t	2017-11-06 12:29:51.098049+00
4442	pbkdf2_sha256$36000$AclydX7lEq36$zVxf5W9wdHEFPtVaHm6uXgLoCSRgc103VOwwg4OHSpk=	\N	f	Green_215.218				f	t	2017-11-06 12:29:51.158765+00
4443	pbkdf2_sha256$36000$Ouf0D23i3GUi$/EaI86E+PLDpRI56oYF6QjJkibxUmZqxW3NNOASP5J0=	\N	f	Green_215.219				f	t	2017-11-06 12:29:51.217189+00
4444	pbkdf2_sha256$36000$rVcvj7Nj1jwN$p/xDD5Y/rdjJjCxP0YN4Q2y3BuAN5fFv4bdaZp7n7os=	\N	f	Green_215.220				f	t	2017-11-06 12:29:51.276145+00
4445	pbkdf2_sha256$36000$5iSJkwyMToqY$bCEl99MzQlb1MYzaISwdquRzdwE1O3gpl3wDOynN6DU=	\N	f	Green_215.221				f	t	2017-11-06 12:29:51.333703+00
4446	pbkdf2_sha256$36000$NojzOXQJ4h7c$eYp+1kmtwooq/gqoRYOjx2kZFHWxgNG8BzzR85FCO4s=	\N	f	Green_215.222				f	t	2017-11-06 12:29:51.389586+00
4447	pbkdf2_sha256$36000$M1fXcNPFbVR4$zIu8+iXt7qZ9fjqN24L3uYp1CQPYHngNFBnWo9ZXgUs=	\N	f	Green_215.223				f	t	2017-11-06 12:29:51.444841+00
4448	pbkdf2_sha256$36000$tPIgvNuzZSXF$kwioCNAY84O1Arhekx2aZp72BmLglNVC4kE1sU1/X3I=	\N	f	Green_215.224				f	t	2017-11-06 12:29:51.501053+00
4449	pbkdf2_sha256$36000$WxvsVzHMevsa$YKF6J06EBHvrzSemVefwBu2bTUHJpHocEKEsN8UG/qI=	\N	f	Green_215.225				f	t	2017-11-06 12:29:51.560074+00
4450	pbkdf2_sha256$36000$CgBU7YjXhXHS$hAPc96BFDj0dAKrz2hkkXaA5yeSbc75RQ+BkCjVdCy4=	\N	f	Green_215.226				f	t	2017-11-06 12:29:51.615843+00
4451	pbkdf2_sha256$36000$dFy3p3AFABYD$uRb/nwx4ixC2ZPg/AWRYTJJdNsosZ5zH18/8mDJSXbI=	\N	f	Green_215.227				f	t	2017-11-06 12:29:51.673785+00
4452	pbkdf2_sha256$36000$yYls8Bvkujgd$0EQMHZQgkFaikqTW+3NQIjUb7HcpCMt4tnVQUiatL9w=	\N	f	Green_215.228				f	t	2017-11-06 12:29:51.730937+00
4453	pbkdf2_sha256$36000$o9jWUabMZpQ3$dd8NCpmJhYbeCykSgQ0f08zP6dsBzARtuhBEQ/krDvc=	\N	f	Green_215.229				f	t	2017-11-06 12:29:51.787835+00
4454	pbkdf2_sha256$36000$v8mETfRoUzLJ$fVdGRLiUkltBRaS9zcSCVXcOezGoVlhcVJcW8WJUOqk=	\N	f	Green_215.230				f	t	2017-11-06 12:29:51.845053+00
4456	pbkdf2_sha256$36000$qXqhHnLw0nEl$qEKhyi1BPbc0/bwvidwGLe5w693t4+jjf3nmdDnU+YM=	\N	f	Green_215.232				f	t	2017-11-06 12:29:51.964588+00
4457	pbkdf2_sha256$36000$KMAXO3jwB2ha$nhF2xvybv6nmfqOVZm5xTNpSRqf85+C9QVoY2cg3i5M=	\N	f	Green_215.233				f	t	2017-11-06 12:29:52.044519+00
4458	pbkdf2_sha256$36000$aSvGPoBulgOI$rVVylZR+M+Rq//eMGO/8A+MbE/KlyPWXsJlvHG0eiHM=	\N	f	Green_215.234				f	t	2017-11-06 12:29:52.100986+00
4459	pbkdf2_sha256$36000$ACipgDPetaba$doEyVcoU8cd8G6VHMILN4Tjm9oMaoeQWo7g4ecDkU9U=	\N	f	Green_215.235				f	t	2017-11-06 12:29:52.158545+00
4460	pbkdf2_sha256$36000$fMRTtA9hFD4v$6hhnABGsI16/8hwgIb8zy43OdhwLJba9FhsJKwc1peg=	\N	f	Green_215.236				f	t	2017-11-06 12:29:52.215106+00
4461	pbkdf2_sha256$36000$syi4cqemTr5o$+HlQpu5HTt7U2W6+iVMRxnvVJTGGlNvjdKfSDmsQKJg=	\N	f	Green_215.237				f	t	2017-11-06 12:29:52.272499+00
4462	pbkdf2_sha256$36000$5e7g9T48qiEH$/mA+8w2ugm6IQsJFC8/gbeAkj2V1JCFfq93AOJJOXEM=	\N	f	Green_215.238				f	t	2017-11-06 12:29:52.334095+00
4463	pbkdf2_sha256$36000$1He4UaZaOPIT$WPn+AX9XycKCqEjZMu/U4E5UtkwouIKz2q6ZrB8lv4E=	\N	f	Green_215.239				f	t	2017-11-06 12:29:52.393219+00
4464	pbkdf2_sha256$36000$REAliacJpwuV$Sg9j4tlVsgqOi783wKbcqwmqHpt5G01xF1r4U4CRXA4=	\N	f	Green_215.240				f	t	2017-11-06 12:29:52.451468+00
4465	pbkdf2_sha256$36000$WITpQ17KjWmE$173wl43LlDt+fj98nWG2MWRo4/9Gj9IyZJF6xZ7y9nE=	\N	f	Green_215.241				f	t	2017-11-06 12:29:52.510263+00
4466	pbkdf2_sha256$36000$fwQDT6RgJE4I$qJi5vIwwQxAQScXRQc1Lke47awqInoNF36aakJLcOi4=	\N	f	Green_215.242				f	t	2017-11-06 12:29:52.575704+00
4467	pbkdf2_sha256$36000$qxuK0SIVVfC8$gHYG5GNfP1msFv8AJcb+jbYOcxxTLZMzEAZtaxPVg8E=	\N	f	Green_215.243				f	t	2017-11-06 12:29:52.631653+00
4468	pbkdf2_sha256$36000$MdgHq2IXtSCY$OGXRPgRO0T+DP4yxGHvKbo0dfSgk2Et2FkF0a3jR0z0=	\N	f	Green_215.244				f	t	2017-11-06 12:29:52.68693+00
4469	pbkdf2_sha256$36000$f3X95zyJ4wkf$AT/0jrOmKrRtWGgyb8FECRWaajjpWOSzBBaDzxcCSuo=	\N	f	Green_215.245				f	t	2017-11-06 12:29:52.741806+00
4470	pbkdf2_sha256$36000$0deMjFBHYvB3$PPQJEHR+Ux0Y63nYAfcqbtdLBlWFTkaBc7J6ZIIiB/A=	\N	f	Green_215.246				f	t	2017-11-06 12:29:52.804027+00
4471	pbkdf2_sha256$36000$E3swWgYf92fc$tGV6XqZbFQ4e5OUKJQBSqltzQtfYqNEGMKvMwNlqLYk=	\N	f	Green_215.247				f	t	2017-11-06 12:29:52.863216+00
4472	pbkdf2_sha256$36000$pQVTs4FbhYSj$N89BIQM2LboP38k9IS2I7bPTYc/PF2TqFRrLd4rrs7s=	\N	f	Green_215.248				f	t	2017-11-06 12:29:52.923979+00
4473	pbkdf2_sha256$36000$gFLk4spckGDH$RQMeg4Y3xiACZT4XFA7h0rPpRwRZwB2Kum/kRdWWRoI=	\N	f	Green_215.249				f	t	2017-11-06 12:29:53.005602+00
4474	pbkdf2_sha256$36000$9Fi9bLZgkosM$4U0cV54CtmLOXUBPA2YTUz7AH/OsIfCz9VT69smsrzI=	\N	f	Green_215.250				f	t	2017-11-06 12:29:53.11821+00
4475	pbkdf2_sha256$36000$6YfW3hnqr6Pc$DWYbvYcyRCM46gbjw4bTHJU4BlXhlxhltiEdQrvSSJQ=	\N	f	Green_215.251				f	t	2017-11-06 12:29:53.179085+00
4476	pbkdf2_sha256$36000$daDbJwp00yne$57x4zRezDxmWely0FzP5BUKGpHRZ5geUOwExHBxlqp8=	\N	f	Green_215.252				f	t	2017-11-06 12:29:53.243213+00
4477	pbkdf2_sha256$36000$SRAg3rykmD8U$5qyg6C19oM+79ZTDuh2A3uFpP0jbhDShl4+e8kpqLaM=	\N	f	Green_215.253				f	t	2017-11-06 12:29:53.30337+00
4478	pbkdf2_sha256$36000$RwUBHI0coZcx$En4mRGvSArSpv+wBcQ+j1dJukQyY1n53j9WX0Tskf4U=	\N	f	Green_215.254				f	t	2017-11-06 12:29:53.362704+00
4455	pbkdf2_sha256$36000$L1I4QfpRMyM6$fjJ/0E2Fn/Q0XkaxrPk/oRAMUaQ2mR8XuR7XYW9XzHc=	2017-11-06 12:33:01.097966+00	f	Green_215.231				f	t	2017-11-06 12:29:51.902458+00
1007	pbkdf2_sha256$36000$Sg3tTV87V2yY$ijYlFGaWl01RLDHRjQIjWCiouJARab3zwmNBpoorCpA=	2017-11-06 19:25:56.862641+00	f	cont_219-2.68				f	t	2017-10-25 20:04:05.344843+00
4240	pbkdf2_sha256$36000$MsiGOhWNRzQV$0iuMyt9IAMeRDk2NrBBSmQDHX8tBKEiHTBV1suy6rHA=	2017-11-08 06:52:58.671052+00	f	Green_215.16				f	t	2017-11-06 12:29:35.156672+00
1649	pbkdf2_sha256$36000$H4oiEV0933sd$jXrpdz5fPvDF/litEvuBDH/1gtWgVGKZ20vCqBt8JAU=	2017-11-07 16:36:08.982696+00	f	cont_219-3.285				f	t	2017-10-25 20:04:49.866224+00
2939	pbkdf2_sha256$36000$grSHcFOfgpvP$lnAfO5slqH7OCikwE+FnP1NzCRSX74OHpBJA1wmCSNo=	2017-11-11 15:11:55.428771+00	f	del_1-6.155				f	t	2017-10-25 20:10:28.152649+00
1153	pbkdf2_sha256$36000$ksKbRKYpWvXP$FTjT1bQNFNKd2Eely7UG1SgZ77j+1aD2eyatE89GX2s=	2017-11-07 17:23:25.443454+00	f	cont_219-2.214				f	t	2017-10-25 20:04:17.168197+00
822	pbkdf2_sha256$36000$Yv513hne7gm1$kT7uio+NyL2MoU3FtfumAcKOs01ldO/aTWT96FlvEw4=	2017-11-07 17:24:10.729979+00	f	cont_219-1.478				f	t	2017-10-25 20:03:52.060397+00
4343	pbkdf2_sha256$36000$WFVdP9dXfRdn$mDeymxeRd2KmmisI6iO1TCW6ICGpzG0X0QMWLNTV/2o=	2017-11-08 07:26:31.096057+00	f	Green_215.119				f	t	2017-11-06 12:29:43.202533+00
3118	pbkdf2_sha256$36000$sA3UWo76IgbH$NCsRmvUb6Pmfjxv2FbsFTDfI4gbgC5/vfChaEY4UGx8=	2017-11-08 08:36:15.152775+00	f	del_1-7.34				f	t	2017-10-25 20:10:38.408199+00
4440	pbkdf2_sha256$36000$fMBJWge8ciRM$scngqVbVSXd7U//3Li05AtZm0DOy4JQgzgPVkHY5YeY=	2017-11-08 12:01:29.49571+00	f	Green_215.216				f	t	2017-11-06 12:29:51.03778+00
1222	pbkdf2_sha256$36000$yIG2en3e06iD$OcsiSsS7Ul1L2LXgLbvMX4kknxr6TqGIqGITtmoxLAw=	2017-11-08 12:12:50.960133+00	f	cont_219-2.283				f	t	2017-10-25 20:04:21.169868+00
3288	pbkdf2_sha256$36000$f8TKEXgEbQl9$QHkrhccLfW7WF6tZPqDRKEaua3qchA1AYpS6oA4G2ZM=	2017-11-08 14:41:00.357097+00	f	del_1-7.204				f	t	2017-10-25 20:10:51.680918+00
2743	pbkdf2_sha256$36000$wMu0INjAGjCt$f13Ojvk45h+IHU3PH41wt3Fb2D/dKEC2OMW9c3qwlKU=	2017-11-08 16:02:41.030608+00	f	del_1-4.259				f	t	2017-10-25 20:10:13.358849+00
4479	pbkdf2_sha256$36000$O2LArVeTBLxt$vluNQSAVOWHxz4HZ+5pDS0H43DVmkGB4UdRhH9RLEUs=	2017-11-08 20:35:51.932436+00	f	Green_215.255				f	t	2017-11-06 12:29:53.42587+00
209	pbkdf2_sha256$36000$7z0CyMfa1pK6$Sv/VUBoVU37BBkHfMezqC1f1d2QwrUob6kxK3nWNz6s=	2017-11-08 17:24:42.8691+00	f	ber_8-A.205				f	t	2017-10-25 19:57:30.501736+00
745	pbkdf2_sha256$36000$jRY6gZRKl0yI$/pKohKihqKHs9PDNrLS33k/qJCl0/uUbJqjnsNvdhLs=	2017-11-08 16:34:06.521209+00	f	cont_219-1.401				f	t	2017-10-25 20:03:43.667201+00
618	pbkdf2_sha256$36000$9SvH3aKmplNE$2W42Nb1qhisdFurv0GO6bf8O6p9/FgbOpcHMePdskH0=	2017-11-08 16:38:31.14431+00	f	cont_219-1.274				f	t	2017-10-25 20:03:36.217903+00
714	pbkdf2_sha256$36000$mJtcRcyfZoPp$IKdpWYFOx9rQddJUmd6kpRCBX7H1KzdKvU2Vo0/Xkj8=	2017-11-08 18:19:47.407105+00	f	cont_219-1.370				f	t	2017-10-25 20:03:41.871538+00
2976	pbkdf2_sha256$36000$CILiLPkgjQEV$rZDOpSidYjHgbvC7mCQTO9+gItD8EcCQcGtklXoTOsg=	2017-11-08 18:45:31.830008+00	f	del_1-6.192				f	t	2017-10-25 20:10:30.273104+00
2699	pbkdf2_sha256$36000$wrvReQlHmKAa$C4qpVUy/j4H37BIfxmi+OvRpC+GBSTMLtN7d7hEHS2k=	2017-11-09 06:47:49.075416+00	f	del_1-4.215				f	t	2017-10-25 20:10:10.858195+00
3959	pbkdf2_sha256$36000$ZPFypHtwRahe$uCEw5QUauABCHFPGfyD0t9XlWKZYt6kuDF30QMsBj48=	2017-11-09 10:32:11.509432+00	f	del_1-10.35				f	t	2017-10-25 20:11:43.896565+00
3374	pbkdf2_sha256$36000$AMNesAnuTdks$xwI1fOsl0QGjRObkZFrLvsBnvr+Ja7ys+NulxPlDS1A=	2017-11-09 11:12:43.967206+00	f	del_1-7.290				f	t	2017-10-25 20:10:57.304255+00
1921	pbkdf2_sha256$36000$XyVMVp0LRH7h$I410Pmyx3n3MgKFV773U5hkGgUWbwJoS4sAzzDgYPnM=	2017-11-09 11:58:27.530117+00	f	del_1-1.217				f	t	2017-10-25 20:09:08.707783+00
1632	pbkdf2_sha256$36000$EHOwsaizXCD0$tIMA4DMZKxwgwch4eS97pWmN0Kj1HljrW9CcqrSz2gY=	2017-11-09 14:26:52.957603+00	f	cont_219-3.268				f	t	2017-10-25 20:04:48.854174+00
2424	pbkdf2_sha256$36000$WuEPJ3FPaveX$b5fypyV1xPSCQP2C8TCx3Tj0LBMWH1h1DDqEL3cZH0s=	2017-11-09 19:18:38.255553+00	f	del_1-3.180				f	t	2017-10-25 20:09:50.309996+00
2238	pbkdf2_sha256$36000$gFCPk9mcDFjT$/d4+PyeG0p7wW6k/BegMBEFKZwQHkWCJ2LTA7MUnGSQ=	2017-11-09 19:31:38.146163+00	f	del_1-2.294				f	t	2017-10-25 20:09:33.999893+00
1829	pbkdf2_sha256$36000$2ZOsTMuvgp8K$NlS5wK0C3MMaNZvIMZ7Ep3OrcU4b2Aw9WF99MS7QgHU=	2017-11-10 05:38:15.319624+00	f	del_1-1.125				f	t	2017-10-25 20:09:03.371343+00
3053	pbkdf2_sha256$36000$rELSqZTFVau3$iExeec78hqTa3NZgkkDzKZW7DFoGikRBlY1Hei/xF34=	2017-11-10 07:43:44.065266+00	f	del_1-6.269				f	t	2017-10-25 20:10:34.724249+00
2136	pbkdf2_sha256$36000$XJblhuL78Adv$smNdL5mjItqaBcE58IY45gpnr4KdmqJfNoQZzs0CXpk=	2017-11-10 10:55:15.118753+00	f	del_1-2.192				f	t	2017-10-25 20:09:25.598459+00
1962	pbkdf2_sha256$36000$lJVhzDr1bbtv$kmrn47GY6OuzgXxQ4QMFQTC32hGyPaF4XI3HLdTGa0E=	2017-11-10 15:43:12.408589+00	f	del_1-2.18				f	t	2017-10-25 20:09:13.369723+00
4331	pbkdf2_sha256$36000$7CNqllgJPKNE$WNpoms0YOCVIcqqYRjAzw60B/5vyqeb0ZIEJAGp1gFw=	2017-11-12 09:29:50.008453+00	f	Green_215.107				f	t	2017-11-06 12:29:42.513728+00
2194	pbkdf2_sha256$36000$6HDRzRWwrGtE$2yvkHk4Y/SuKmOO9LrMsRCjC4xoFVIIVAxMggNNQHQc=	2017-11-12 20:30:19.227519+00	f	del_1-2.250				f	t	2017-10-25 20:09:29.746519+00
2535	pbkdf2_sha256$36000$HnbsLdb5NOes$UqnU1loB/Yy0kpqupqdLuBhH3G5u/t5okLcnY9DZg2M=	2017-11-13 08:26:14.316071+00	f	del_1-4.51				f	t	2017-10-25 20:09:59.51025+00
105	pbkdf2_sha256$36000$rqXKUyRgNip7$Sp6CqvMmFpsphs91M1Gr0grIIuVEkFHK6yEw3Q5oxzM=	2017-11-13 10:39:22.151506+00	f	ber_8-A.101				f	t	2017-10-25 19:57:22.544256+00
1480	pbkdf2_sha256$36000$D04meEzTlESi$7nsVH29f4vpNDSxbAxrY5qMcnNAZvUZqh6vwQr8vk8U=	2017-11-13 11:10:30.835448+00	f	cont_219-3.116				f	t	2017-10-25 20:04:38.721089+00
3804	pbkdf2_sha256$36000$Li5NMTcwL1lC$yGY9l71Yszo8/2vom+xuCRmg+3zd5aIW4zE6uZZ+GGw=	2017-11-14 08:37:51.154228+00	f	del_1-9.120				f	t	2017-10-25 20:11:32.261851+00
3992	pbkdf2_sha256$36000$CZCkJkqtTQ2L$vo1E5/x4JS3K0qI+EitHDC1Ipdga1QRMKk2Q0w5DYYA=	2017-11-14 10:39:24.374041+00	f	del_1-10.68				f	t	2017-10-25 20:11:45.77981+00
3714	pbkdf2_sha256$36000$83Oqrt8gEZwW$s9qd/NSPi+Cv14TmG9iTpODFjCqQCnLgIIWvboT2qPs=	2017-11-14 11:18:56.11916+00	f	del_1-9.30				f	t	2017-10-25 20:11:25.517712+00
3565	pbkdf2_sha256$36000$zyaYScaDXAzA$tEnJ7cPzMt75j4UzUOobflDR6GEWCffq3zn1GSGaypI=	2017-11-14 13:00:05.268461+00	f	del_1-8.181				f	t	2017-10-25 20:11:13.801155+00
4109	pbkdf2_sha256$36000$BPCexgYyqKPe$MKFdhjCQatqqWR/vcSdxOqHsVgOVsGzZAprhIgkllQk=	2017-11-14 13:06:58.490274+00	f	del_1-10.185				f	t	2017-10-25 20:11:56.229186+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
20	2017-10-13 10:29:35.126857+00	2	admin3	2	[{"added": {"name": "\\u041e\\u0431\\u044a\\u0435\\u043a\\u0442\\u044b", "object": "UserProfileObjects object"}}]	4	2
21	2017-10-13 10:35:14.721477+00	3	User1	1	[{"added": {}}, {"added": {"name": "\\u041e\\u0431\\u044a\\u0435\\u043a\\u0442\\u044b", "object": "UserProfileObjects object"}}]	4	2
22	2017-10-13 10:41:20.853481+00	1	ЖК «Цветной Бульвар»	3		7	2
23	2017-10-13 11:39:10.579961+00	2	ЖК «Континент»	2	[{"changed": {"fields": ["title"]}}]	7	2
24	2017-10-17 07:53:16.734828+00	3	Камера3	2	[{"changed": {"fields": ["camera_id"]}}]	9	2
25	2017-10-17 07:56:28.151602+00	1	Камера 1	2	[{"changed": {"fields": ["server_ip", "camera_id"]}}]	9	2
26	2017-10-17 07:59:49.384615+00	2	Камера 2	2	[{"changed": {"fields": ["server_ip", "camera_id"]}}]	9	2
27	2017-10-17 09:29:06.384091+00	1	Камера 1	2	[{"changed": {"fields": ["camera_id"]}}]	9	2
28	2017-10-23 16:51:08.333708+00	5	ЖК "Грин Парк"	1	[{"added": {}}]	7	2
29	2017-10-23 16:51:48.668925+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["title", "meta_description"]}}]	7	2
30	2017-10-23 16:52:30.273661+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["meta_description"]}}]	7	2
31	2017-10-23 16:56:15.807632+00	2	admin3	2	[{"changed": {"name": "\\u041e\\u0431\\u044a\\u0435\\u043a\\u0442\\u044b", "object": "UserProfileObjects object", "fields": ["video_objects"]}}]	4	2
32	2017-10-23 16:59:28.016902+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["file"]}}]	7	2
33	2017-10-23 17:00:52.916238+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["file"]}}]	7	2
34	2017-10-23 17:01:02.150304+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["file"]}}]	7	2
35	2017-10-23 17:05:36.466811+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["file"]}}]	7	2
36	2017-10-23 17:05:46.720274+00	5	ЖК «Грин Парк»	2	[{"changed": {"fields": ["file"]}}]	7	2
37	2017-10-23 17:17:48.779306+00	5	8А Камера №1	1	[{"added": {}}]	9	2
38	2017-10-23 17:21:06.8443+00	5	8А Камера №1	2	[]	9	2
39	2017-10-23 17:21:43.756107+00	5	8А Камера №1	2	[{"changed": {"fields": ["server_login", "server_pass"]}}]	9	2
40	2017-10-23 17:23:23.804839+00	6	215 Камера №1	1	[{"added": {}}]	9	2
41	2017-10-23 17:23:44.215715+00	5	8А Камера №1	2	[{"changed": {"fields": ["server_login", "server_pass"]}}]	9	2
42	2017-10-23 17:29:41.160799+00	6	215 Камера №1	2	[{"changed": {"fields": ["server_login", "server_pass"]}}]	9	2
43	2017-10-23 17:32:30.369747+00	6	215 Камера №1	2	[]	9	2
44	2017-10-23 17:32:38.402578+00	6	215 Камера №1	2	[{"changed": {"fields": ["num"]}}]	9	2
45	2017-10-23 17:32:55.742073+00	6	215 Камера №1	2	[{"changed": {"fields": ["server_ip"]}}]	9	2
46	2017-10-23 17:33:46.476314+00	6	215 Камера №1	2	[{"changed": {"fields": ["server_login", "server_pass"]}}]	9	2
47	2017-10-23 17:35:05.488676+00	7	8А Камера №10	1	[{"added": {}}]	9	2
48	2017-10-23 17:35:31.125668+00	8	8А Камера №11	1	[{"added": {}}]	9	2
49	2017-10-23 17:36:12.710898+00	9	8А Камера №2 Подъезд 1	1	[{"added": {}}]	9	2
50	2017-10-23 17:36:59.080132+00	10	8А Камера №3 Подъезд 2	1	[{"added": {}}]	9	2
51	2017-10-23 17:37:46.073959+00	9	8А Камера №2 Подъезд 1	2	[{"changed": {"fields": ["num"]}}]	9	2
52	2017-10-23 17:37:51.434822+00	11	215 Камера №2	1	[{"added": {}}]	9	2
53	2017-10-23 17:38:19.529285+00	10	8А Камера №3 Подъезд 2	2	[{"changed": {"fields": ["num"]}}]	9	2
54	2017-10-23 17:38:53.307052+00	12	8А Камера №4	1	[{"added": {}}]	9	2
55	2017-10-23 17:39:13.546025+00	13	215 Камера №3	1	[{"added": {}}]	9	2
56	2017-10-23 17:39:18.831293+00	14	8А Камера №5 Подъезд 3	1	[{"added": {}}]	9	2
57	2017-10-23 17:39:47.435812+00	15	8А Камера №6	1	[{"added": {}}]	9	2
58	2017-10-23 17:40:21.55636+00	7	8А Камера №10	2	[{"changed": {"fields": ["num"]}}]	9	2
59	2017-10-23 17:40:28.557428+00	8	8А Камера №11	2	[{"changed": {"fields": ["num"]}}]	9	2
60	2017-10-23 17:41:21.660639+00	16	215 Камера №5	1	[{"added": {}}]	9	2
61	2017-10-23 17:42:12.903426+00	17	8А Камера №7 Подъезд 4	1	[{"added": {}}]	9	2
62	2017-10-23 17:42:17.628702+00	18	215 Камера №7	1	[{"added": {}}]	9	2
63	2017-10-23 17:42:51.271208+00	19	8А Камера №8	1	[{"added": {}}]	9	2
64	2017-10-23 17:43:39.329073+00	20	8А Камера №9	1	[{"added": {}}]	9	2
65	2017-10-23 17:43:42.506913+00	21	215 Камера №9	1	[{"added": {}}]	9	2
66	2017-10-23 17:44:53.000752+00	22	215 Камера №10	1	[{"added": {}}]	9	2
67	2017-10-23 17:46:23.155653+00	23	215 Камера №11	1	[{"added": {}}]	9	2
68	2017-10-23 17:49:34.874846+00	24	1/1 Камера №1	1	[{"added": {}}]	9	2
69	2017-10-23 17:51:57.030776+00	1	1/1 Камера №2	2	[{"changed": {"fields": ["title", "camera_description", "server_login", "server_pass", "num"]}}]	9	2
70	2017-10-23 17:52:27.475435+00	1	1/1 Камера №2	2	[{"changed": {"fields": ["camera_id"]}}]	9	2
71	2017-10-23 17:52:46.48592+00	25	215 Камера №4 Подъезд 1	1	[{"added": {}}]	9	2
72	2017-10-23 17:53:38.50155+00	26	215 Камера №6 Подъезд 2	1	[{"added": {}}]	9	2
73	2017-10-23 17:53:41.810623+00	2	1/1 Камера №3	2	[{"changed": {"fields": ["title", "camera_description", "server_login", "server_pass", "camera_id", "num"]}}]	9	2
74	2017-10-23 17:54:08.74332+00	3	1/1 Камера №4 Подъезд	2	[{"changed": {"fields": ["title", "camera_description", "server_login", "server_pass", "num"]}}]	9	2
75	2017-10-23 17:54:25.051079+00	27	215 Камера №8 Подъезд 3	1	[{"added": {}}]	9	2
76	2017-10-23 17:55:24.998573+00	28	1/1 Камера №5	1	[{"added": {}}]	9	2
77	2017-10-23 17:55:31.931672+00	6	215 Камера №1	2	[{"changed": {"fields": ["num"]}}]	9	2
78	2017-10-23 17:56:18.052581+00	11	215 Камера №2	2	[{"changed": {"fields": ["num"]}}]	9	2
79	2017-10-23 17:56:33.142934+00	29	1/2 Камера №1	1	[{"added": {}}]	9	2
80	2017-10-23 17:57:43.818768+00	13	215 Камера №3	2	[{"changed": {"fields": ["num"]}}]	9	2
81	2017-10-23 17:58:25.635406+00	25	215 Камера №4 Подъезд 1	2	[{"changed": {"fields": ["num"]}}]	9	2
82	2017-10-23 17:58:38.448511+00	16	215 Камера №5	2	[{"changed": {"fields": ["num"]}}]	9	2
83	2017-10-23 17:58:43.273782+00	3	1/1 Камера №4 Подъезд	2	[]	9	2
84	2017-10-23 17:58:50.861393+00	26	215 Камера №6 Подъезд 2	2	[{"changed": {"fields": ["num"]}}]	9	2
85	2017-10-23 17:58:55.499631+00	28	1/1 Камера №5	2	[]	9	2
86	2017-10-23 17:59:07.220559+00	18	215 Камера №7	2	[{"changed": {"fields": ["num"]}}]	9	2
87	2017-10-23 17:59:19.66002+00	27	215 Камера №8 Подъезд 3	2	[{"changed": {"fields": ["num"]}}]	9	2
88	2017-10-23 17:59:41.032357+00	21	215 Камера №9	2	[{"changed": {"fields": ["num"]}}]	9	2
89	2017-10-23 17:59:55.965445+00	22	215 Камера №10	2	[{"changed": {"fields": ["num"]}}]	9	2
90	2017-10-23 18:00:00.713706+00	30	1/2 Камера №2 Подъезд 1	1	[{"added": {}}]	9	2
91	2017-10-23 18:00:14.77323+00	23	215 Камера №11	2	[{"changed": {"fields": ["num"]}}]	9	2
92	2017-10-23 18:00:27.155+00	31	1/2 Камера №3	1	[{"added": {}}]	9	2
93	2017-10-23 18:00:54.138636+00	32	1/2 Камера №4 Подъезд 2	1	[{"added": {}}]	9	2
94	2017-10-23 18:01:25.035273+00	33	1/2 Камера №5	1	[{"added": {}}]	9	2
95	2017-10-23 18:02:05.523387+00	34	1/2 Камера №6 Подъезд 3	1	[{"added": {}}]	9	2
96	2017-10-23 18:03:12.671401+00	35	1/2 Камера №7	1	[{"added": {}}]	9	2
97	2017-10-23 18:03:19.562407+00	36	215 Камера №12	1	[{"added": {}}]	9	2
98	2017-10-23 18:03:34.45937+00	37	1/2 Камера №8	1	[{"added": {}}]	9	2
99	2017-10-23 18:04:47.345863+00	38	1/3 Камера №1	1	[{"added": {}}]	9	2
100	2017-10-23 18:05:19.734953+00	39	1/3 Камера №2 Подъезд	1	[{"added": {}}]	9	2
101	2017-10-23 18:05:47.885563+00	40	1/3 Камера №3	1	[{"added": {}}]	9	2
102	2017-10-23 18:06:52.538788+00	41	1/3 Камера №4	1	[{"added": {}}]	9	2
103	2017-10-23 18:07:44.87182+00	42	1/3 Камера №5	1	[{"added": {}}]	9	2
104	2017-10-23 18:07:54.2709+00	43	219/1 Камера №1	1	[{"added": {}}]	9	2
105	2017-10-23 18:09:18.399156+00	44	1/3 Камера №6	1	[{"added": {}}]	9	2
106	2017-10-23 18:09:46.509038+00	45	1/4 Камера №1	1	[{"added": {}}]	9	2
107	2017-10-23 18:10:05.647657+00	46	219/1 Камера №2 Подъезд 1	1	[{"added": {}}]	9	2
108	2017-10-23 18:10:45.74113+00	47	1/4 Камера №2	1	[{"added": {}}]	9	2
109	2017-10-23 18:11:08.780045+00	48	1/4 Камера №3	1	[{"added": {}}]	9	2
110	2017-10-23 18:11:22.348756+00	43	219/1 Камера №1	2	[{"changed": {"fields": ["num"]}}]	9	2
111	2017-10-23 18:13:06.984715+00	49	219/1 Камера №3 Подъезд 1 Лифт	1	[{"added": {}}]	9	2
112	2017-10-23 18:13:27.552716+00	43	219/1 Камера №1	2	[]	9	2
113	2017-10-23 18:14:37.271314+00	50	1/4 Камера №4 Подъезд 1	1	[{"added": {}}]	9	2
114	2017-10-23 18:14:58.538886+00	51	219/1 Камера №4	1	[{"added": {}}]	9	2
115	2017-10-23 18:15:00.132878+00	52	1/4 Камера №5 Подъезд 2	1	[{"added": {}}]	9	2
116	2017-10-23 18:15:26.065435+00	53	1/4 Камера №6	1	[{"added": {}}]	9	2
117	2017-10-23 18:16:01.482619+00	54	219/1 Камера №5 Подъезд 2	1	[{"added": {}}]	9	2
118	2017-10-23 18:16:03.475575+00	55	1/4 Камера №8	1	[{"added": {}}]	9	2
119	2017-10-23 18:16:31.091338+00	56	1/4 Камнра №7 Подъезд 3	1	[{"added": {}}]	9	2
120	2017-10-23 18:16:58.785433+00	57	1/6 Камера №1	1	[{"added": {}}]	9	2
121	2017-10-23 18:17:04.501457+00	58	219/1 Камера №6 Подъзд 2 Лифт	1	[{"added": {}}]	9	2
122	2017-10-23 18:17:27.233355+00	59	1/6 Камера №2	1	[{"added": {}}]	9	2
123	2017-10-23 18:17:51.101058+00	60	219/1 Камера №7 Подъезд 3	1	[{"added": {}}]	9	2
124	2017-10-23 18:17:51.415344+00	61	1/6 Камера №3 Подъезд Левое крыло	1	[{"added": {}}]	9	2
125	2017-10-23 18:18:13.342598+00	62	1/6 Камера №4 Подъезд Правое крыло	1	[{"added": {}}]	9	2
126	2017-10-23 18:18:37.281599+00	63	1/6 Камера №5	1	[{"added": {}}]	9	2
127	2017-10-23 18:18:41.254956+00	64	219/1 Камера №8 Подъезд 3 Лифт	1	[{"added": {}}]	9	2
128	2017-10-23 18:19:06.26686+00	65	1/6 Камера №6	1	[{"added": {}}]	9	2
129	2017-10-23 18:19:47.740851+00	66	1/6 Камера №7	1	[{"added": {}}]	9	2
130	2017-10-23 18:19:52.119231+00	67	219/1 Камера №9	1	[{"added": {}}]	9	2
131	2017-10-23 18:20:43.785515+00	68	219/1 Камера №10	1	[{"added": {}}]	9	2
132	2017-10-23 18:21:00.162617+00	69	1/7 Камера №1	1	[{"added": {}}]	9	2
133	2017-10-23 18:21:42.391779+00	70	219/1 Камера №11	1	[{"added": {}}]	9	2
134	2017-10-23 18:21:42.656104+00	71	1/7 Камера №2	1	[{"added": {}}]	9	2
135	2017-10-23 18:22:14.395419+00	72	1/7 Камера №3 Подъезд Левое крыло	1	[{"added": {}}]	9	2
136	2017-10-23 18:22:36.629415+00	73	1/7 Камера №4 Подъезд Правое крыло	1	[{"added": {}}]	9	2
137	2017-10-23 18:22:37.145552+00	74	219/1 Камера №12 Подъезд 4	1	[{"added": {}}]	9	2
138	2017-10-23 18:23:06.514508+00	75	1/7 Камера №5	1	[{"added": {}}]	9	2
139	2017-10-23 18:23:29.80425+00	76	219/1 Камера №13 Подъезд 4 Лифт	1	[{"added": {}}]	9	2
140	2017-10-23 18:23:35.664801+00	77	1/7 Камера №6	1	[{"added": {}}]	9	2
141	2017-10-23 18:23:54.338673+00	78	1/7 Камера №7	1	[{"added": {}}]	9	2
142	2017-10-23 18:24:17.341223+00	79	1/8 Камера №1	1	[{"added": {}}]	9	2
143	2017-10-23 18:24:21.621103+00	80	219/1 Камера №14 Подъезд 5	1	[{"added": {}}]	9	2
144	2017-10-23 18:24:38.28473+00	81	1/8 Камера №2	1	[{"added": {}}]	9	2
145	2017-10-23 18:25:01.773363+00	82	1/8 Камера №3 Подъезд Левое крыло	1	[{"added": {}}]	9	2
146	2017-10-23 18:25:12.254406+00	83	219/1 Камера №15 Подъезд 5 Лифт	1	[{"added": {}}]	9	2
147	2017-10-23 18:25:21.143629+00	84	1/8 Камера №4 Подъезд Правое крыло	1	[{"added": {}}]	9	2
148	2017-10-23 18:25:39.238337+00	85	1/8 Камера №5	1	[{"added": {}}]	9	2
149	2017-10-23 18:26:00.123836+00	86	1/8 Камера №6	1	[{"added": {}}]	9	2
150	2017-10-23 18:26:02.694467+00	87	219/1 Камера №16	1	[{"added": {}}]	9	2
151	2017-10-23 18:26:27.799232+00	88	1/8 Камера №7	1	[{"added": {}}]	9	2
152	2017-10-23 18:26:45.733601+00	89	219/1 Камера №17 Подъезд 6	1	[{"added": {}}]	9	2
153	2017-10-23 18:26:49.80183+00	90	1/9 Камера №1	1	[{"added": {}}]	9	2
154	2017-10-23 18:27:09.306432+00	91	1/9 Камера №2 Подъезд	1	[{"added": {}}]	9	2
155	2017-10-23 18:27:33.0626+00	92	219/1 Камера №18 Подъезд 6 Лифт	1	[{"added": {}}]	9	2
156	2017-10-23 18:27:58.130891+00	93	1/9 Камера №3	1	[{"added": {}}]	9	2
157	2017-10-23 18:28:28.421801+00	94	1/10 Камера №1	1	[{"added": {}}]	9	2
158	2017-10-23 18:28:50.565848+00	95	1/10 Камера №2	1	[{"added": {}}]	9	2
159	2017-10-23 18:29:11.35272+00	96	1/10 Камера №3 Подъезд Левое крыло	1	[{"added": {}}]	9	2
160	2017-10-23 18:29:16.585973+00	97	219/1 Камера №19 Подъезд 7	1	[{"added": {}}]	9	2
161	2017-10-23 18:30:25.129176+00	98	1/10 Камера №4 Подъезд Правое крыло	1	[{"added": {}}]	9	2
162	2017-10-23 18:30:26.300722+00	99	219/1 Камера №20 Подъезд 7 Лифт	1	[{"added": {}}]	9	2
163	2017-10-23 18:30:51.815641+00	100	1/10 Камера №5	1	[{"added": {}}]	9	2
164	2017-10-23 18:31:23.84582+00	101	1/10 Камера №6	1	[{"added": {}}]	9	2
165	2017-10-23 18:31:29.236771+00	102	219/1 Камера №21	1	[{"added": {}}]	9	2
166	2017-10-23 18:31:58.710177+00	103	1/10 Камера №7	1	[{"added": {}}]	9	2
167	2017-10-23 18:32:29.241991+00	104	219/1 Камера №22	1	[{"added": {}}]	9	2
168	2017-10-23 18:33:41.299962+00	105	219/1 Камера №23	1	[{"added": {}}]	9	2
169	2017-10-23 18:33:45.923863+00	39	1/3 Камера №2 Подъезд	2	[{"changed": {"fields": ["server_login", "server_pass"]}}]	9	2
170	2017-10-23 18:37:05.135663+00	106	219/2 Камера №1	1	[{"added": {}}]	9	2
171	2017-10-23 18:38:02.559205+00	107	219/2 Камера №10 Подъезд 3 Лифт	1	[{"added": {}}]	9	2
172	2017-10-23 18:40:27.957464+00	107	219/2 Камера №10 Подъезд 3 Лифт	2	[{"changed": {"fields": ["num"]}}]	9	2
173	2017-10-23 18:41:31.45513+00	108	219/2 Камера №2	1	[{"added": {}}]	9	2
174	2017-10-23 18:43:37.332854+00	109	219/2 Камера №3 Подъезд 1	1	[{"added": {}}]	9	2
175	2017-10-23 18:43:49.150625+00	110	219/3 Камера №9 Подъезд 4	1	[{"added": {}}]	9	2
176	2017-10-23 18:44:18.242308+00	111	219/3 Камера №8	1	[{"added": {}}]	9	2
177	2017-10-23 18:44:24.938065+00	112	219/2 Камера №4 Подъезд 1 Лифт	1	[{"added": {}}]	9	2
178	2017-10-23 18:45:13.253001+00	113	219/2 Камера №5	1	[{"added": {}}]	9	2
179	2017-10-23 18:45:14.359942+00	114	219/3 Камера №8	1	[{"added": {}}]	9	2
180	2017-10-23 18:45:34.512974+00	115	219/3 Камера №9 Подъезд 4	1	[{"added": {}}]	9	2
181	2017-10-23 18:46:54.863536+00	116	219/2 Камера №6 Подъезд 2	1	[{"added": {}}]	9	2
182	2017-10-23 18:56:13.243904+00	117	219/3 Камера №12	1	[{"added": {}}]	9	2
183	2017-10-23 18:56:41.276617+00	118	219/2 Камера №7 Подъезд 2 Лифт	1	[{"added": {}}]	9	2
184	2017-10-23 18:56:42.290386+00	119	219/3 Камера №11	1	[{"added": {}}]	9	2
185	2017-10-23 18:57:20.953187+00	120	219/3 Камера №10	1	[{"added": {}}]	9	2
186	2017-10-23 18:57:48.593933+00	121	219/3 Камера №7 Подъезд 3	1	[{"added": {}}]	9	2
187	2017-10-23 18:58:13.857553+00	122	219/3 Камера №6	1	[{"added": {}}]	9	2
188	2017-10-23 18:58:40.326665+00	123	219/3 Камера №5 Подъезд 2	1	[{"added": {}}]	9	2
189	2017-10-23 18:58:41.062101+00	124	219/2 Камера №9 Подъезд 3	1	[{"added": {}}]	9	2
190	2017-10-23 18:59:42.07891+00	125	219/3 Камера №4	1	[{"added": {}}]	9	2
191	2017-10-23 19:00:33.231064+00	126	219/3 Камера №2	1	[{"added": {}}]	9	2
192	2017-10-23 19:01:01.283968+00	127	219/2 Камера №11	1	[{"added": {}}]	9	2
193	2017-10-23 19:01:06.093706+00	128	219/3 Камера №1	1	[{"added": {}}]	9	2
194	2017-10-23 19:01:39.794647+00	129	219/2 Камера №18	1	[{"added": {}}]	9	2
195	2017-10-23 19:01:59.643644+00	130	219/2 Камера №12 Подъезд 4	1	[{"added": {}}]	9	2
196	2017-10-23 19:02:02.996773+00	131	219/2 Камера №17	1	[{"added": {}}]	9	2
197	2017-10-23 19:02:42.685616+00	132	219/2 Камера №16 Подъезд 5 Лифт	1	[{"added": {}}]	9	2
198	2017-10-23 19:03:51.504298+00	133	219/2 Камера №13 Подъезд №4 Лифт	1	[{"added": {}}]	9	2
199	2017-10-23 19:05:20.202928+00	117	219/3 Камера №12	2	[{"changed": {"fields": ["num"]}}]	9	2
200	2017-10-23 19:05:49.800221+00	119	219/3 Камера №11	2	[{"changed": {"fields": ["num"]}}]	9	2
201	2017-10-23 19:06:10.617959+00	120	219/3 Камера №10	2	[{"changed": {"fields": ["num"]}}]	9	2
202	2017-10-23 19:07:31.562095+00	110	219/3 Камера №9 Подъезд 4	3		9	2
203	2017-10-23 19:08:50.453026+00	115	219/3 Камера №9 Подъезд 4	2	[{"changed": {"fields": ["num"]}}]	9	2
204	2017-10-23 19:09:29.134814+00	111	219/3 Камера №8	3		9	2
205	2017-10-23 19:09:52.390828+00	114	219/3 Камера №8	2	[{"changed": {"fields": ["num"]}}]	9	2
206	2017-10-23 19:10:19.399535+00	121	219/3 Камера №7 Подъезд 3	2	[{"changed": {"fields": ["num"]}}]	9	2
207	2017-10-23 19:10:35.741652+00	122	219/3 Камера №6	2	[{"changed": {"fields": ["num"]}}]	9	2
208	2017-10-23 19:11:01.234004+00	123	219/3 Камера №5 Подъезд 2	2	[{"changed": {"fields": ["num"]}}]	9	2
209	2017-10-23 19:11:14.050406+00	125	219/3 Камера №4	2	[{"changed": {"fields": ["num"]}}]	9	2
210	2017-10-23 19:11:32.655226+00	126	219/3 Камера №2	2	[{"changed": {"fields": ["num"]}}]	9	2
211	2017-10-23 19:11:57.665017+00	128	219/3 Камера №1	2	[{"changed": {"fields": ["num"]}}]	9	2
212	2017-10-23 19:12:19.846134+00	129	219/2 Камера №18	2	[{"changed": {"fields": ["num"]}}]	9	2
213	2017-10-23 19:12:31.401845+00	131	219/2 Камера №17	2	[{"changed": {"fields": ["num"]}}]	9	2
214	2017-10-23 19:12:57.737491+00	132	219/2 Камера №16 Подъезд 5 Лифт	2	[{"changed": {"fields": ["num"]}}]	9	2
215	2017-10-23 19:13:44.731911+00	134	219/2 Камера №14	1	[{"added": {}}]	9	2
216	2017-10-23 19:20:51.33811+00	135	219/2 Камера №15 Подъезд 5	1	[{"added": {}}]	9	2
217	2017-10-25 19:46:00.73148+00	4	ber_8-A.340	3		4	2
218	2017-10-31 09:51:52.80004+00	25	215 Камера №4 Подъезд 3	2	[{"changed": {"fields": ["title", "camera_description"]}}]	9	2
219	2017-10-31 09:52:24.185011+00	27	215 Камера №4 Подъезд 1	2	[{"changed": {"fields": ["title", "camera_description"]}}]	9	2
220	2017-10-31 09:52:50.007815+00	25	215 Камера №8 Подъезд 3	2	[{"changed": {"fields": ["title", "camera_description"]}}]	9	2
221	2017-11-08 13:33:44.995177+00	136	1/11 Камера №1	1	[{"added": {}}]	9	2
222	2017-11-08 13:35:38.85323+00	136	1/11 Камера №1	2	[{"changed": {"fields": ["num"]}}]	9	2
223	2017-11-08 13:37:56.91436+00	137	1/11 Камера №2	1	[{"added": {}}]	9	2
224	2017-11-08 13:39:28.440161+00	138	1/11 Камера №3	1	[{"added": {}}]	9	2
225	2017-11-08 13:40:27.17725+00	139	1/11 Камера №4 Подъезд Левое крыло	1	[{"added": {}}]	9	2
226	2017-11-08 13:41:40.406307+00	140	1/11 Камера №5 Подъезд Правое крыло	1	[{"added": {}}]	9	2
227	2017-11-08 13:42:32.194828+00	141	1/11 Камера №6	1	[{"added": {}}]	9	2
228	2017-11-08 13:43:35.100897+00	142	1/11 Камера №7	1	[{"added": {}}]	9	2
229	2017-11-09 07:57:55.50692+00	43	219/1 Камера №1	2	[{"changed": {"fields": ["file"]}}]	9	2
230	2017-11-10 05:21:03.234098+00	143	219/3 Камера №3 Подъезд 1	1	[{"added": {}}]	9	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	videoadmin	video_objects
8	thumbnail	kvstore
9	videoadmin	video_cameras
10	videoadmin	userprofileobjects
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-10-09 09:47:52.679427+00
2	auth	0001_initial	2017-10-09 09:47:53.565056+00
3	admin	0001_initial	2017-10-09 09:47:53.755894+00
4	admin	0002_logentry_remove_auto_add	2017-10-09 09:47:53.825987+00
5	contenttypes	0002_remove_content_type_name	2017-10-09 09:47:53.896025+00
6	auth	0002_alter_permission_name_max_length	2017-10-09 09:47:53.916168+00
7	auth	0003_alter_user_email_max_length	2017-10-09 09:47:53.946153+00
8	auth	0004_alter_user_username_opts	2017-10-09 09:47:53.967918+00
9	auth	0005_alter_user_last_login_null	2017-10-09 09:47:53.996448+00
10	auth	0006_require_contenttypes_0002	2017-10-09 09:47:54.009931+00
11	auth	0007_alter_validators_add_error_messages	2017-10-09 09:47:54.030085+00
12	auth	0008_alter_user_username_max_length	2017-10-09 09:47:54.087075+00
13	sessions	0001_initial	2017-10-09 09:47:54.247495+00
14	videoadmin	0001_initial	2017-10-09 12:00:46.577779+00
15	videoadmin	0002_auto_20171010_0813	2017-10-10 08:13:20.943061+00
16	videoadmin	0003_userprofileobjects	2017-10-10 08:58:13.106334+00
17	videoadmin	0004_userprofileobjects_user	2017-10-10 09:27:35.594535+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
xmcnczz2o93s1byiz1epbtluh4lc42t1	ZTQxODZiMTU1OTBkNjhjYzM3ZDcxY2RkNWQ2NDVhMGM4OTI3YjY1NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiODkzMjVjNGYxNzVmMTYzYjgwMDk4NzllMTc5MjFlNGU2ZDA2Y2M0In0=	2017-10-23 09:49:03.453122+00
hap5aojsc7yy5j12ea4voadx7ee485sv	YWU0Y2M4OWJjYzEwZGUwZjRkZmRiOGU5N2RjYjQ5OWQ3MjE4NWQxMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjkwMDk0OWY2Yzk1MDE2OGJjODBlZjYxMGFjZmI5ZDliMGQ1YWZkIn0=	2017-10-25 13:26:04.496469+00
7glue0s3sxg3ei87lckxlebu7t4vipcv	ZjU0NDE5YWRlNTdjNTE2NTgzNzg3ZGNmMzQ4NzljMjEzMjdhYmE3Njp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGQyN2E1MDJiYzM5ZmZlZTQ0ZTg0MDM2ZTAwZmU3YThkMGZlMjZiIn0=	2017-10-25 16:08:23.776639+00
ttqotdn0hbfbmubs4kqj40e9nfs9nduu	NzA5MTYxMjRhYzZkMmVmZGQ5YTJmZjcxNThmOGZjMDJkYzU4Y2JjMDp7Il9hdXRoX3VzZXJfaWQiOiI5MTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyYjJmZjU4ZGMyMzVmZjg0MjA3OWFhZmRjODZjZDcwNjZhYmM3YTMifQ==	2017-11-17 10:44:07.619715+00
63x7ccqo0huv2cj9cfl7gyqbme8ilwr5	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 10:31:02.753714+00
4e50dvx27m3yr60d9wqydbl64zm2kwm4	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 10:35:35.111788+00
jua2etj546mr9kgbwh857wcil0esm4wm	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 10:40:44.510225+00
7dk05pv0publmovjzddgaiaopdour3vd	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 10:54:57.439131+00
v5f1ifyi28ph3eo6d46wpq4mbsf71k5m	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 11:06:27.729897+00
0sbju3vnbeji68c93ny0lvgd4h4igjs7	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 11:53:20.126579+00
jjg5z73twro7jgewe4683ezeonq1konu	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 11:56:39.217724+00
li3wqgdg8du1dqe0m6t19gmb96ibm11y	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:02:15.824531+00
r8dp3oait7qg7ostthj8pnz9kzp3fl7c	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:03:51.21979+00
81pklqfi9hqg4zxxs9blgpsjc8plj2rd	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:04:02.225726+00
fguyglxp5xehvmf9hjxvxpenv47gyrxf	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:06:49.646858+00
0ru9lfji6ssw8aol7z11jfg8kddt2uff	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:08:42.262729+00
e5lf4drq76k1rppxaivf6vh79x6l9qan	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:09:52.235348+00
whcc95xcqswifkjdy220ti6g3xlvqnyf	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-27 17:20:05.061308+00
z6xr5aj5o0adiefqy557q99poobgkktt	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-10-31 08:50:14.043669+00
u9pc1fy0tp75zoc92kzu2f20s1ki3l3j	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-06 16:51:49.426785+00
rru35be329jbq2zl0g34mkgd4g6hevt8	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-08 09:00:39.778203+00
ggf9x8fivapor35bchbgb3otwte6wdsg	MDE5ZWRiZTA1NjNiYWRiNTVkZjQ4Yjk3Yzc0YzA0MGM2NzNlODhmZjp7Il9hdXRoX3VzZXJfaWQiOiIyOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjYyMWYyOWU3ODAwNjYyMDQ1MDQ1YTQ2Yzg1MmE2Mzk2NmM4NjAxZWEifQ==	2017-11-09 05:53:39.938414+00
5w6h42zng5z9fj7vxe3ns6wviub7mvl8	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-09 13:03:54.395232+00
3o7lsols1dwjjrcuzb6iorfn6pw60ncm	MDE5ZWRiZTA1NjNiYWRiNTVkZjQ4Yjk3Yzc0YzA0MGM2NzNlODhmZjp7Il9hdXRoX3VzZXJfaWQiOiIyOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjYyMWYyOWU3ODAwNjYyMDQ1MDQ1YTQ2Yzg1MmE2Mzk2NmM4NjAxZWEifQ==	2017-11-13 13:20:24.400089+00
yepecvw06tix35o3qriyywcr6n4aygfs	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-14 09:18:05.16395+00
wmxez41hczrz4eepwsve6nw4fuqvxwbw	NzA5MTYxMjRhYzZkMmVmZGQ5YTJmZjcxNThmOGZjMDJkYzU4Y2JjMDp7Il9hdXRoX3VzZXJfaWQiOiI5MTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImEyYjJmZjU4ZGMyMzVmZjg0MjA3OWFhZmRjODZjZDcwNjZhYmM3YTMifQ==	2017-11-17 10:44:50.323999+00
ne76o0mmzqv3f46esklrdaoz01c5l5ff	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-14 09:50:54.746212+00
haz6zjepspo4szfpykvd17cv2o0o3slj	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-14 15:32:35.576243+00
951xdk78j9lc3s8mnzl7ogm8ch7vh4iv	ZGFhMWIxY2U3YmJjYTMwNzYwOGNiM2VhOTVlZWNkNjhiODlhYjJjNzp7Il9hdXRoX3VzZXJfaWQiOiI4NjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNlNGYwMTU3NjI2MTk5MWNjOTFjYjc0YTE5NTAyNzc5OTY3NWNmMWYifQ==	2017-11-17 17:40:03.494048+00
fo1puj7vd7j8lr38i3u5zjgbon9zca7b	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-14 15:32:52.302141+00
64a4pqmevjkgie8t0v4wc98icprhtk76	ZGFhMWIxY2U3YmJjYTMwNzYwOGNiM2VhOTVlZWNkNjhiODlhYjJjNzp7Il9hdXRoX3VzZXJfaWQiOiI4NjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjNlNGYwMTU3NjI2MTk5MWNjOTFjYjc0YTE5NTAyNzc5OTY3NWNmMWYifQ==	2017-11-17 17:43:06.745305+00
dccblwr99cnmsdlvbvignwwd4acu3qsq	ZThmYThiMjkwYTdhYjZlM2RkMjA5YWZiYjkzM2Q0YWUzYTAzYTgyYTp7Il9hdXRoX3VzZXJfaWQiOiIxNDE5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZGViZmVjYTVjYjg2NzI1MTg5YTgzMGU0Y2M1MjZmYWVjZjc0NjMyIn0=	2017-11-18 10:21:42.318892+00
9j5sbxj41ir3i4tot64zmhosena3kvq3	MzY2MzZiMTg2NTUwMWQxMDM0NDZmNmM2Y2FhOGE1MmE2MzcyM2RkMTp7Il9hdXRoX3VzZXJfaWQiOiI1MDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0ZDVkYmE2M2FjODRjMjkwNjA1NjAzOGE4ZGM5OWQ3OWYxZmYwZTQifQ==	2017-11-16 16:26:56.106935+00
2xyw2706v392qjpj0xk2w2ikfapcsi07	OTg2MjcyNWNkMTNiY2M4MDQ2MTUxNWZmOTNiYjMxOGE4Y2ZhZDg0MDp7Il9hdXRoX3VzZXJfaWQiOiI2NTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRlMWQyYjQyMDhkNzVhY2Y5ZjVlOTVmYzc0ZTgwODY5NjEwZWQ4N2EifQ==	2017-11-18 20:04:43.325238+00
8zttwqiperew9upfdb84fffh0uq5bj80	ZDRkNDEzZDMxNDc5NGUwOGMyMDNmNjI1YmY4MWFmZTJlMDRjNWZkYzp7Il9hdXRoX3VzZXJfaWQiOiIzNTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE0M2U4YjJiYWU1NWFmMjA0MTA2MTYyZDRiZjYxNTEwYzVlMzRhNGIifQ==	2017-11-17 08:40:00.39405+00
9takm4lpr8iddw2rir68vcc7wbdm305v	YTRkMzBiMzk2N2MzMzE3YmRiOGIwZGY5YWIyNGJkMWExMzA0YjRjNTp7Il9hdXRoX3VzZXJfaWQiOiIxMzUwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNzZkZWQ4MGZjYjY0ZjQyOWFiYjFiZWM0NjFmYTkzMzI1OGQ2OTE4In0=	2017-11-17 09:53:41.964459+00
7f6n2v0wdzr5bfzfbgojw6dla9sjbz60	NWJkNWQyNzNjYmEzYTU0MGRjZDkyNTFkOGM1MjM3NTAxZmQxYTAyYTp7Il9hdXRoX3VzZXJfaWQiOiIxMDA3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYWVjMTYyYTliMTQzODI4ZjdhNGRjMDFhZTM5ZTA2ODVmNDk1ZDNjIn0=	2017-11-20 19:25:56.873701+00
eoh5cgipxtng293zlex0a7lc2myn1wbk	M2JjYzgwMGViMmE1YThhYzNkZTE2ZGE5ZDE1Mjg2ZWUzZjlhYmU5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxNjQ5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDc1OTc4NjJlZmNkOWE0YWIzMmVjYjUyMDYyYjA1NTAyYzczMGU5In0=	2017-11-21 05:29:43.3723+00
aqaob43cld3cori004rpomsjdytybv71	M2JjYzgwMGViMmE1YThhYzNkZTE2ZGE5ZDE1Mjg2ZWUzZjlhYmU5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxNjQ5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDc1OTc4NjJlZmNkOWE0YWIzMmVjYjUyMDYyYjA1NTAyYzczMGU5In0=	2017-11-21 05:35:19.775765+00
n339zqt2sflz58vn4sbwlpcfl95gm4vs	NDEwNzQwMjVjYWYzMzhjYzkxMGVmYzNjMmJlNmE3YWFlYTQ5MGE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyOTM5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YmM0NWM0ZjE0MTkzZDIwMDI4ODg2NDE4NDcxMmU0ZGEyMzc3NzQ1In0=	2017-11-21 10:58:03.319784+00
micbwlvr9y2uo1584hijxzg6l6jo6i2s	NDEwNzQwMjVjYWYzMzhjYzkxMGVmYzNjMmJlNmE3YWFlYTQ5MGE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyOTM5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YmM0NWM0ZjE0MTkzZDIwMDI4ODg2NDE4NDcxMmU0ZGEyMzc3NzQ1In0=	2017-11-21 11:07:34.732355+00
af3gz3gvo3co1p3963jwknzcvyl9yr4h	Y2RkNDc1NDA4OTgwOTMzZjE5ZDA1NjhiNTBkODMxODk0ZTdkNDZjNzp7Il9hdXRoX3VzZXJfaWQiOiI3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY3NWU5OTViNTJhYzY2YzhhZGIyYmM4MjdhOWQyM2E3NTMzMThiNTkifQ==	2017-11-21 15:04:44.283809+00
1sp1p6z7uov7js37w5i8d7rhzwe1sc38	M2JjYzgwMGViMmE1YThhYzNkZTE2ZGE5ZDE1Mjg2ZWUzZjlhYmU5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxNjQ5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDc1OTc4NjJlZmNkOWE0YWIzMmVjYjUyMDYyYjA1NTAyYzczMGU5In0=	2017-11-21 16:36:08.991205+00
u8kb4zlw1mibatlgps3yd9xzt27rctmo	YTkwODEwMTk4NTNkNGI3YjgwMDk5ZWEzYTZlNGVkNWZiYzhmMGUyNDp7Il9hdXRoX3VzZXJfaWQiOiIxMTUzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZTMzMWJmNTEwOWViMTc0YTI3ZTU3ZjJhNzIwYzU5MDNmZTdmMjY0In0=	2017-11-21 17:23:25.462906+00
0qrai8pnuqvuueryvjsl493w5clizlbj	ZmNhNjQ4MTkyMWQ0ZmQzZjBhODVkYTU5NDBmMDg3OGQ1MjQ3OWU4Yjp7Il9hdXRoX3VzZXJfaWQiOiI2NzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgxMTZhOTJhMzYyZGM5YjY2M2E4OTQ2MDgwNTVkNWM2OWFkZTE0ZjkifQ==	2017-11-21 17:27:28.963648+00
p5vpoh32l9weyc1fzyez8ekhnogl6bri	ZmQ2ODEyOTcyOWFlMmFkZGZhNWRkMjY2Yzg4ZDBmMmZjZjI2YTczOTp7Il9hdXRoX3VzZXJfaWQiOiI0MjQwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTNmMjY0YTUwZTUxZDEzN2NlYzU2NWQ1MmMyNzdkMmVhYTZjNGE2In0=	2017-11-22 06:52:58.67869+00
9u08ovpjn6o8h6gpj2l4dndp1ap6flq9	NDc0ZTczMjY5ZGI0ZGQwMWNhNGI3YWVjZWEzNTg2NjNmMGI0NDc5Yjp7Il9hdXRoX3VzZXJfaWQiOiI0MzQzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNDNmMGZmY2Q1MzY2ZGJhZmEwZTczMzBhOTAzYmI0NjE5ZGIzYzMyIn0=	2017-11-22 07:26:31.100341+00
q2goz10wgutjefgvbygo7sl80c367mf0	YTQ4OGMyNTY0NGE0MGUwM2UxYzRhYWFjNjNkMGQxZDk3OGQ4MGI2NTp7Il9hdXRoX3VzZXJfaWQiOiIzMTE4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NTdkOWE2MTZiZjEwNDFmNmM0NDkwMWMwMzcwZWU0NWRhZjk1YWFmIn0=	2017-11-22 08:36:15.172981+00
iamghi2qhoc1nc6a59sh3iuphiynlz0v	YjZkYzgxZjI1ZGI2MzU5NDU1N2JiNGE3NDdkMjhiNDY0YTEzN2NhZTp7Il9hdXRoX3VzZXJfaWQiOiI1MjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgwOTRkZmFlYmQ2ZGU4ZTA0M2M3YmIyNzY0NGEzOWVlOWUwNmE4YTgifQ==	2017-11-22 19:24:43.374389+00
xrdfehd9mq3or7imhvio4aj6zg1wu90z	OWQ1YTlmYTkzZWNhMGRhMDRlMjVlOWJiZGYxMGM5NTBmNGM0Y2MxNDp7Il9hdXRoX3VzZXJfaWQiOiIxOTYzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZTNkNjkxYzExOWI0ZGNhZDAyY2FiMTg1MDQxMzZlM2UwNDAxYzdkIn0=	2017-11-27 13:57:47.876143+00
xvfiyvwnzlh1u0agv3wstju5gocxkafp	MGUxZDhkYWNiMWZjZjU4ODA3ZjY4NDVmNjRlYTZhNzIyZWM1YTI2NTp7Il9hdXRoX3VzZXJfaWQiOiI0NTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjFkMTM0YjM1MDBlMjI4NGI3ZGYwYmY3MjQ5ZDhlY2EyNTRhOWE4YmMifQ==	2017-11-22 08:56:02.549893+00
ebbq5h9z3adsepe29y8e465tryt6qkk9	MTgzN2Y1YTAwNjgwMTgwMTRkZmNiMjEyNDNmZDg0MTk0MDZmNTRkZDp7Il9hdXRoX3VzZXJfaWQiOiI0Mzc1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDU5MThkNTNkZWZhNTJlNjBhZWJhNGUwOWY1ZDIyZGRmNjE1NjA1In0=	2017-11-22 20:22:39.875257+00
r5zd60jzdkunbonj5a4px3d3mxqsef2b	OWQ1YTlmYTkzZWNhMGRhMDRlMjVlOWJiZGYxMGM5NTBmNGM0Y2MxNDp7Il9hdXRoX3VzZXJfaWQiOiIxOTYzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZTNkNjkxYzExOWI0ZGNhZDAyY2FiMTg1MDQxMzZlM2UwNDAxYzdkIn0=	2017-11-27 14:04:13.639547+00
fex683kcr0hanhulwb2ypocc8kmu0e7p	ZTdlMzIwNDMxY2E2MjkyOWQ3MmJhMWQyOGI1YWQ1NzE5YzIxMWQ0Zjp7Il9hdXRoX3VzZXJfaWQiOiIyMjM4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMTczNjE4ZjRiMDhkZDIyZjlmMTFiMjdiYTliZTZjOTc5NGRhNTljIn0=	2017-11-23 19:31:38.154061+00
nhw7gi7ko3i75qalvg2lamd9lrhx2573	NzRjZjQwMGJkOWI4MmQwMmI3NDM5MTRlNTRjZWQ0N2RkYTVmYWZjODp7Il9hdXRoX3VzZXJfaWQiOiIzOTkyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTk4MTMxMTMzZWMwNmIyZGE3MjI3ODJkNzk3Y2M5MDlkZmZmMWU1In0=	2017-11-28 10:39:24.38426+00
pt0f9ty9gazg26hb5wo4jcsdcunszkwf	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-22 10:28:03.228254+00
jo9xhnd6uy04dvdii79pyvwafcgz38sg	NjA5NTk4MWNjOTg2MDZmNjFhN2JjYTBhMjRlOTRhNzZiMWExMWJmOTp7Il9hdXRoX3VzZXJfaWQiOiI0NDc5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiYWRjOTNlYzNkM2MxZDYxMzkzM2Y2MGI5ZDEyYzhhNzUyMWU2In0=	2017-11-22 20:35:51.939703+00
kxgwhcyxwl43p3rlisxyvjf65rbrsnoa	MWRmYWMzMDU0ODhmZmJlNGI4MTgyNWU0NjRiODJjOGQwMTRlMmU0ODp7Il9hdXRoX3VzZXJfaWQiOiI0MzQ0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDkyNDY5MmRjOTcxNzFmNDIxMzFlNDllOTBiZDU5M2M5OGU2N2U3In0=	2017-11-26 07:40:25.227906+00
6eotapvxmi8em1czuw238xhbwxs77cgi	MTBlNzIwNWNkY2MyMjVhNTk0NWY0MGU1OTYwN2Y2YzFjNzcxNzIwMDp7Il9hdXRoX3VzZXJfaWQiOiI2NDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY5ZTQyYzZlY2M1YzE4Y2RmM2UwMGE4ZjkwZGZhMGZlOGUyMGI2NjIifQ==	2017-11-22 21:42:10.042273+00
2yczvipumpk58ipess48xaq882ivuyg7	NzQ2M2ViNjE3ZjhhNmYwY2VmYTIwNmQ5YjM2ZTE1YTJkOGUwYTcxZjp7Il9hdXRoX3VzZXJfaWQiOiIyOTYxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1M2MyMGEyZWQ2OTQzMTA3MDZiNjc2NDJjNTY2NjBhMmZjODkwZWQ1In0=	2017-11-28 04:09:07.368187+00
2r0b2gmmvbu4hcete9ym8n26khf1j0yv	MTAzMGEwMGQ3MjJlMTU2NGQ1MWZlNmMzMDExZDQ3NzEwNjY5Y2IwODp7Il9hdXRoX3VzZXJfaWQiOiIxODI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDlkMGI2MmYwNDU3MTBjMTc3YWJhNTg5OWI5NDcwYzZmZDQ1ZDUxIn0=	2017-11-24 05:30:10.516277+00
ixi4wxi4xj27lv9a88fuq27wg4xwm23q	ODc2YzVmOTkzOThkYzY2NDYxZjdiY2I2NjVmZDNhNDkwZWQxNzVlOTp7Il9hdXRoX3VzZXJfaWQiOiIzNzE0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzJjMDI0YWIzZmJlYzMyODE1NmE2N2VkNWZkZDNiMmFjMDY3ZDA2In0=	2017-11-28 11:18:56.127731+00
t6cohor521yx7jcvie52rmm9tvgsfxg3	MmY5Y2RhM2E0ZmQ1M2YyNDg3NWE0NTVhMjNjOTQyZjk5NTNlMGEyZjp7Il9hdXRoX3VzZXJfaWQiOiIzMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI4YmNkYWVlNjc5MWEwMDkxZDRmOTA1NGI5MTgyNzczMjNiNmVkODEifQ==	2017-11-22 22:02:27.336354+00
reompjg5ryk6e8zsf8dcdexj12yuicqa	NDE2YjM0OGY4ZTQ3NGQ4ODkxMmEwNTUyNDgyM2NjY2IyNTFmMTUxYjp7Il9hdXRoX3VzZXJfaWQiOiIzODA0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjE4ZjE5NzUxMjE4YTBiZTYyZDdlNWY3ZjA5Y2M5MDI0NWQzNDU0In0=	2017-11-28 08:37:51.17428+00
op95bnqtqc3gq26jlrv2cozs65ib3iji	MTAzMGEwMGQ3MjJlMTU2NGQ1MWZlNmMzMDExZDQ3NzEwNjY5Y2IwODp7Il9hdXRoX3VzZXJfaWQiOiIxODI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MDlkMGI2MmYwNDU3MTBjMTc3YWJhNTg5OWI5NDcwYzZmZDQ1ZDUxIn0=	2017-11-24 05:38:15.335047+00
u1fntwmu3v85tq3m9qq52pxwkb260bhe	OWQ4MTE3MGJlNDkwNmVhNDVhYTEzNDY3Y2VhNjNmOWZlY2VkZjUwOTp7Il9hdXRoX3VzZXJfaWQiOiI0MzMxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzk4NTU3NjI3MTM0ODA3ODY4NzlkNDYxYWZjMjI4ZjFiNTIxZWY2In0=	2017-11-26 09:29:50.022268+00
8qose8623d5c7n69h8ogxl4v7ij3hf1g	MWIyNzA1Mjk1ZDU3MmIzZDgzZDk4OWVhNGQ2NTgzZmVhNGExZjg3Zjp7Il9hdXRoX3VzZXJfaWQiOiI0MzgwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YWQ0MWI5ZGQ1N2IyOGE2YTE0OTI0YjU3YzYzNzU4Y2M0NDA2ZjIyIn0=	2017-11-28 11:40:11.489307+00
j0oal7wczokcw6lc190189kvhd9wowqx	YjAwYTM2N2E5YmFjY2FiZmEzYWRkNjE5ZGJmNWFkODZiN2JiYWNlODp7Il9hdXRoX3VzZXJfaWQiOiI0NDQwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MzNiY2MzODMyYThmMDgyNDdkMzA5ZmRiN2QzOGFkNWMzZTE5MjQ1In0=	2017-11-22 12:01:29.513829+00
st838ll7sarqi7xyb9lfem2e9u3e9i31	MmY5Y2RhM2E0ZmQ1M2YyNDg3NWE0NTVhMjNjOTQyZjk5NTNlMGEyZjp7Il9hdXRoX3VzZXJfaWQiOiIzMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI4YmNkYWVlNjc5MWEwMDkxZDRmOTA1NGI5MTgyNzczMjNiNmVkODEifQ==	2017-11-22 22:06:40.378328+00
tfy40qmx2altczk88698z2gxb0tnsa00	YWRmZjFiMjFmZjA5OGMxOTAyYWUzNWJlYjI3MWY3OTYyYWY0ZWI2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxNzM0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYjNjNmMxOWE5NDUzNzliZWQyMTQ2OGVmMGExMTY3ZWNlMmIwNzBlIn0=	2017-11-28 12:26:20.578525+00
x2j0juhxegusd6w2d9xn8dqai7142zrb	OGU4ODEyZjNjY2FmMmRhN2FhN2FjMzRkNmQ0MzE4ZWQyNDE0YTQxMTp7Il9hdXRoX3VzZXJfaWQiOiIyOTg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTk2ZWMyYzQ3MmI2YjNiOWMyMDViZTgxMTY2NjJmZDE3ZjlhODg5In0=	2017-11-24 07:10:03.294582+00
x2z51tk6g4k9ovabwn5ds75egs62ggld	MTgzN2Y1YTAwNjgwMTgwMTRkZmNiMjEyNDNmZDg0MTk0MDZmNTRkZDp7Il9hdXRoX3VzZXJfaWQiOiI0Mzc1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZDU5MThkNTNkZWZhNTJlNjBhZWJhNGUwOWY1ZDIyZGRmNjE1NjA1In0=	2017-11-26 14:48:29.905848+00
5w74wf2h9v9aculu4ur76zcpg24i6gt9	M2RmZTllODdjNjA0YjZiZTg0NzE0ODA1MzUzNjAwZTI5MWVmN2Q3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxMjIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZDUwMzJjYzU5YWYyZWI5ODYzODc1NGE3YzlhMTQxMWRjODUzNTFiIn0=	2017-11-22 12:12:50.968179+00
yqw0553c1u99z4ko4rygbfolecdiec3c	MmJjNzg0NWMzMzYxNmU4ODdmZmRkNWQ0NTQ2NjY5N2MwMTcyMzgyZjp7Il9hdXRoX3VzZXJfaWQiOiIxMzQ3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzAwNWYwOGE3NTM1ZTdhMzEyZDA1ZDQ5NjFmMWRhYTEzYWFjM2Y5In0=	2017-11-23 06:13:25.415003+00
i5zw416ddxh6u021as3mczzssj3gc9s9	ZDljNmI3NTdmN2E1MWY1ZjAzM2ZmN2YzZjM3NDU5YWQ0YjQ3MDJjZTp7Il9hdXRoX3VzZXJfaWQiOiIzNTY1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzJmNTFhMDBkMTUyNzRhYjUwMzM3Y2RkYzQ0ZmFhODdjM2Y0NDcxIn0=	2017-11-28 13:00:05.279633+00
67ymvz62f65d5wwd0d4luhet7h9c6hr3	OTU0OTkyZTBhNjI5OTQzMDYwOWY3Y2E1YTJkZjVmMjE2NWIwNDgxZTp7Il9hdXRoX3VzZXJfaWQiOiIzMDUzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMGMwNGFhODE4ZWI5OGQ2MjI2MjQxYTIwOTM5OWMwMGVhZWUzY2I1In0=	2017-11-24 07:43:44.093951+00
iuagf9j9h0ktuulbjmdhsvach4r3egem	N2UzNzNiMDkwN2I4MmQxYzkwMzcxMDU3N2I3NjgyMzA2Nzg5ZmJhYTp7Il9hdXRoX3VzZXJfaWQiOiIyMTk0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDY5OTI1Mzc2NTY0ZGFmYmJkOGEwZmEwODFjZDVmMTk4NTc3M2ExIn0=	2017-11-26 20:30:19.234769+00
k6n7cb5a03ppiktwwafaqcy42r3faziw	NGYxYzQwODU5ZWVmMWNjZjA4MjM0ZmI2OTc0MzAxY2E4Y2M3MzVjNjp7Il9hdXRoX3VzZXJfaWQiOiI0MzY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODM1MjZlYjk5NzhkOTc1ZTZkNDdmNTgwM2I5MzM4ODZmZmRmOTQzIn0=	2017-11-22 12:17:33.428991+00
cqio2riw6pb18l38ied51ufgh1metbpv	M2JhMmU1MjZiNjEwY2JhZmVjMjU1YTdkNDhjYWU2NTZjNjY2OGYyYjp7Il9hdXRoX3VzZXJfaWQiOiIyNjk5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWE0ZmYwZTAxMDBmYmM2NWFkOWI2YjY4ODc3Y2M3NDQ3NjM1MTVhIn0=	2017-11-23 06:47:49.085033+00
qtjhx4g8b8o3o5oyaqvazeacc69royi6	MzllOTQ1YzA1NTc0ODliZGEwMWI1YjNmMjllODgwZDNkNjNjNzM5Mzp7Il9hdXRoX3VzZXJfaWQiOiI0MTA5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWZlNDc2ZTRkYzQ5Y2ExNjllMmQxYmNmMDdhYjgzZDM2N2IwZGVjIn0=	2017-11-28 13:06:58.498288+00
7seye2xsxa5ffoxigzjzzbej17xa3ltd	Njc2OTJlYjQwZTk5YzBlZTIzY2NkZjNmZTdiMzcwZWQyZGIwNDRhNjp7Il9hdXRoX3VzZXJfaWQiOiIyMTM2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYTg2ZjUwOGExOGIzYmQxYWE1YWUyN2MxMTYzN2JlZTBmZWM2ZGQzIn0=	2017-11-24 10:25:13.868899+00
dedbhz7n3xwyqs695nb0a9fw806ussnb	Y2Q2NjJkZGFkNzUyZjZjOGU3MmQ1YzZhYTM5NmJmYjFlZTkwYmI4Mzp7Il9hdXRoX3VzZXJfaWQiOiIyNTM1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzIzMzJiYWI4MTI3NjhkNjRmOTQ5NmQ3Yzc4ZDdhYzQ2MzM3YTJmIn0=	2017-11-27 08:26:14.323362+00
w746dtzernlf7wfva0eym3twx8cl9cos	Yjc4MmFkZjBkZWMzYjBkNWRiMDllNmY3OGY5NDdhNDYzN2RjZmRiNjp7Il9hdXRoX3VzZXJfaWQiOiIzMTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjVkMTU4ZWZkYjNmOTM5NzNhZGFiM2JiZWM2MmI5YmVhOGYzODE4MTUifQ==	2017-11-23 06:51:20.871448+00
2hgc8oaeow6b845ogexp6d6b9ivogc68	Njc2OTJlYjQwZTk5YzBlZTIzY2NkZjNmZTdiMzcwZWQyZGIwNDRhNjp7Il9hdXRoX3VzZXJfaWQiOiIyMTM2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYTg2ZjUwOGExOGIzYmQxYWE1YWUyN2MxMTYzN2JlZTBmZWM2ZGQzIn0=	2017-11-24 10:55:15.125669+00
l3m95r0upt4habz8cphi0zuv2j8zy4y0	ZWQ4ZDViMThkZWYzOGQ3MTU4YjMwNzRjMWExYjhmNjEwYjBiNTk4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxMTY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZGEzMTU2NjE4M2Y1YjY2MmUyY2YyZWE4NzA0MzQ0MjlkZGY3ODNjIn0=	2017-11-27 09:23:55.007535+00
0detq4w8ufd46dahpnnr00j0ka9xhxrj	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-22 13:30:17.033648+00
03v0ycr24fj701qi2kctg6z9a2r9q2d7	ZWM2NGI0MGQ0MTQ4ZWY0ZTdhMDhhMzc0NmJmNWNmM2I3NmY1NmMwZDp7Il9hdXRoX3VzZXJfaWQiOiIzMzA4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNmYxODhjYjllZDc2YWNlNzZiMjcyODkxMjc4MWVmYmFiNTIzNzA0In0=	2017-11-24 11:40:45.406524+00
ciul85m8khzobb6r63qclpck0h9o1n2b	N2E4NzY4Mzg3ZmUwOTU2ZjRlNWNiYzBiNTJhOGY1MGM1MWYyMWM4Nzp7Il9hdXRoX3VzZXJfaWQiOiIxMDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImVkZmMyNWFkOGYyY2M2NDk1NjVlNTAxNWQ4Y2IwNTgwZmE4NTMyYWIifQ==	2017-11-27 10:39:22.164066+00
iih8ahky9ckc1fv37a0sfpndtu0fzumk	ZjJiOGZkMmM4MDE0NGU1NThlZjA1NjI4MWM5YmU2ZDA4ZGQ0OTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIxNDAwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjNjYjAwMDNiYjJiMTIzMWRmYmQ0MTM0MzJiM2U2MjcxMGE0Y2YwIn0=	2017-11-23 10:22:02.621684+00
l0ottvuhz8rayb73jzozu224gltdj4y7	MmY5Y2RhM2E0ZmQ1M2YyNDg3NWE0NTVhMjNjOTQyZjk5NTNlMGEyZjp7Il9hdXRoX3VzZXJfaWQiOiIzMDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI4YmNkYWVlNjc5MWEwMDkxZDRmOTA1NGI5MTgyNzczMjNiNmVkODEifQ==	2017-11-24 12:08:44.334497+00
dzhbycxds83fcs9mmyvk8ssolqx59xiv	YTcwOTI2MTY5NTYwNzMyNWEzOTMwNjFjYmU3NDZiZjcwODdiMmY3Yjp7Il9hdXRoX3VzZXJfaWQiOiIxNDgwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOWQ3M2IxZGFlZGY4NTcwM2M3NWY3ZjYyMGY1ZjJlMTkwYWU0YTllIn0=	2017-11-27 11:10:30.85557+00
vr7ls0xte9bm4cdeoe51huln5p05mi4g	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-23 10:25:18.965053+00
vtnlqfunumt2t463ki613eips212b1wv	NGYxYzQwODU5ZWVmMWNjZjA4MjM0ZmI2OTc0MzAxY2E4Y2M3MzVjNjp7Il9hdXRoX3VzZXJfaWQiOiI0MzY3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODM1MjZlYjk5NzhkOTc1ZTZkNDdmNTgwM2I5MzM4ODZmZmRmOTQzIn0=	2017-11-24 12:11:01.855969+00
i39oqv31xi71behw0im69yieagh47umx	NTMzMzUwZjQ3MjAxZmQ0NzNjOTdkNTExNTFmYjE1MmNlMzBkOWI1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzMjg4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzBlOWY3NDVkYTBlNjNiZjk0NTZkZTVlM2YxZDFmZjYxYzExMDZiIn0=	2017-11-22 14:41:00.363707+00
jgr2b8igi3cjpeeuckllag8j2g77xm9e	OWYyODE2N2IzODQ5MDkwMzAwYWYwNzc1N2U5OTI4Mzk3MzlkNzgzMDp7Il9hdXRoX3VzZXJfaWQiOiIzOTU5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjExNTFjYWNkM2FjYzljMGUwMmE1OGU3YjQyMDVlY2Q0OGNhMGM5In0=	2017-11-23 10:29:45.208265+00
65tjinwz1nbeb2spxyhbzik4foytbggt	OWQ4MTE3MGJlNDkwNmVhNDVhYTEzNDY3Y2VhNjNmOWZlY2VkZjUwOTp7Il9hdXRoX3VzZXJfaWQiOiI0MzMxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzk4NTU3NjI3MTM0ODA3ODY4NzlkNDYxYWZjMjI4ZjFiNTIxZWY2In0=	2017-11-24 12:28:56.813613+00
sxenxtg8ia836hlwup1lxxj4g2dg2772	NmQ3ZDEyNGJjNjBhYTk3MmQ4MmQyZGI0OTA0MDNkYWNiZmIzNWJiYTp7Il9hdXRoX3VzZXJfaWQiOiI0Mjg1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YWUwYTFmZGM0ODY5MzkzZDc0OTU5YjhkNmVjN2I1MzMyNjlkMDBlIn0=	2017-11-27 11:58:40.114927+00
gi4ljt1driip3raj8v4hy0isw6rty827	MWY5YWE0NjgwYzAyOTRkZTc2YzBiMWU5MWQ0MWQxMmNmYzI5YWQ0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxNjUyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MmI3ZDVjNTRkZmVhMzBkNjk2NDY5MDQxYWJlNzFlZTcwZjAwNTFkIn0=	2017-11-22 15:06:58.719401+00
o8uus43rj8c1hdhjxpmprab0z5c5dyw5	OWYyODE2N2IzODQ5MDkwMzAwYWYwNzc1N2U5OTI4Mzk3MzlkNzgzMDp7Il9hdXRoX3VzZXJfaWQiOiIzOTU5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjExNTFjYWNkM2FjYzljMGUwMmE1OGU3YjQyMDVlY2Q0OGNhMGM5In0=	2017-11-23 10:32:11.516532+00
g2af3agagdo3infejxgwf2hyb7f6p7yi	NmUwZmQ3MDEzZThiMTNjZTNiNjQ1OGU2NjQ2NjlhNDZiZTFjZjI5YTp7Il9hdXRoX3VzZXJfaWQiOiI5MTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJjYmM3ZWY1MTA5NzVkYzMzZGZkM2NiNWMxZTQzZmQxMDIyNzYyZjgifQ==	2017-11-27 12:00:05.040585+00
bvfh1sg5dmznp6gjxpk2j3pvh0lcqyrt	OTcxZjI5NzUzZDNhYTM0YmRmMzE2MjgwYWEyY2VjNTQ5MDFjMzdmMTp7Il9hdXRoX3VzZXJfaWQiOiIyNzQzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2UyNDU1MmVlN2E5NThhNTg0MWQwN2ZiMGJjYjY0ZWU2ZjdjNzIwIn0=	2017-11-22 16:02:41.057845+00
idk3qpsakxdoms606500uu8tec1210ec	MDE5ZWRiZTA1NjNiYWRiNTVkZjQ4Yjk3Yzc0YzA0MGM2NzNlODhmZjp7Il9hdXRoX3VzZXJfaWQiOiIyOTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjYyMWYyOWU3ODAwNjYyMDQ1MDQ1YTQ2Yzg1MmE2Mzk2NmM4NjAxZWEifQ==	2017-11-23 11:06:34.061344+00
l755pouh5gs56uzv8c0y1nqlmko5mfao	Y2RkNDc1NDA4OTgwOTMzZjE5ZDA1NjhiNTBkODMxODk0ZTdkNDZjNzp7Il9hdXRoX3VzZXJfaWQiOiI3NDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY3NWU5OTViNTJhYzY2YzhhZGIyYmM4MjdhOWQyM2E3NTMzMThiNTkifQ==	2017-11-22 16:34:06.531096+00
sun2ln8n0d5ua9ucfup1s0fry7fdp792	ZTdlMzIwNDMxY2E2MjkyOWQ3MmJhMWQyOGI1YWQ1NzE5YzIxMWQ0Zjp7Il9hdXRoX3VzZXJfaWQiOiIyMjM4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMTczNjE4ZjRiMDhkZDIyZjlmMTFiMjdiYTliZTZjOTc5NGRhNTljIn0=	2017-11-23 11:11:50.920819+00
98b1p0iih4mk7m99zje96qtctczapmct	NWI1NjA3NTZlY2I5ZjhiYzE4MjJiYzg4YmI3NTg0ZDBhODljNThlMDp7Il9hdXRoX3VzZXJfaWQiOiIxNjcwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NDVkZDZiZjE1ZjdhMDgzNzlhNmI0YzE3MzVmNzYxMGZlODMwZWJiIn0=	2017-11-24 13:35:12.860636+00
le2zzg4p6hp3s6cbgf0zr7u2w8o3ya5o	MDVjMTE4MzAzZGRjZWU5NjIzNDcyODQ3MWUxNGI2MjM5ZGIwZmUwMTp7Il9hdXRoX3VzZXJfaWQiOiI2MTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjQyZDE5N2M3NmFmYjc3YTVlNjg1YzE2Zjc1OWVjZGE0NTNjYjMzYTAifQ==	2017-11-22 16:38:31.151548+00
lbhw177901g43om2g2arw7mk7xolryf7	N2YyODliMGU1NGFmZmJkMGRiODhkNDU4YWVkMGFmM2MwZWJjYmRhMDp7Il9hdXRoX3VzZXJfaWQiOiIzMzc0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYzYyZDAxODg2YWZiYWVlYzljNWUzMWU1MDc2MjAwNWJlZDk3OTE0In0=	2017-11-23 11:12:43.975021+00
laiasu7sztsmlow9f68ksyssy8u9yod7	MDEyYmQwMTkwYTQ2ODgwZjIyOTNjZjkyMDVhODA2MmIwNTUwYTdmZDp7Il9hdXRoX3VzZXJfaWQiOiIxOTIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjcwYzhlMmJmMTdjODNiY2Q5OWU1ZGRkOWI3Yjg4NzEwNzE5MWE3In0=	2017-11-23 11:58:27.565452+00
ecc4bhr1fb21mmovp3m2jbr25vjj8qst	N2M0OTcyYjI1ZTg3ZTY1NmY4OTkwNDYzZTUzMDNlOTVkZGMxMzEyZjp7Il9hdXRoX3VzZXJfaWQiOiI5ODQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImZhMGUyNDdhNDAwYmU3NmUzOThkZGZhZDQ1MDgxYWM3Njk1ZmY0YmQifQ==	2017-11-24 17:36:24.279558+00
r0zdd5aev2463hx3soifyw1jjf9bi1mp	NDVhNjRiYjEwNGQ0ZTY0ZWI3OGQ0Yjg2MDhjNmQyNTM4ZjEyM2RkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3N2M4MWQxN2Y4MzU3NmFkYzRjYzMxN2I1MWJhNzEzN2Q0NzJhNTE4In0=	2017-11-23 13:45:36.963306+00
00mllk01k6ie4jjs81zw7p59v2k3x64o	YmY5NTlhYzcyOTc2NTk3MmE2NmM3YTViNjRkMTVjZTQxNDkyYzExZDp7Il9hdXRoX3VzZXJfaWQiOiIyOTQxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhM2ZjMmM3ZjA5OTk0MGQxNTEwOGQyYWNjM2Y3ZGEzYzg1OGRhODVmIn0=	2017-11-24 18:53:56.989672+00
i7ffxo1kbfvb3um8i4reox9na91yxm6u	NjQ3OTUzYTlhOTI4ZjM1YTE0MDIwNGRkMmY5MGJmOTRlNmJjY2Q3MDp7Il9hdXRoX3VzZXJfaWQiOiI3MTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjEwYjU1YmE3OTg0OTE4MDA5YWEyYjcxZDEzZTkwYWQ5NDA1YjRiMTkifQ==	2017-11-22 18:19:47.419674+00
nfbvu5uvjqohvptmd943uqbtwazxvm8f	ZGE4OGE1NGE5M2M4ODFkYzc4N2NiN2ViYzkxNjQ2YmEwYjY2NTQ3MDp7Il9hdXRoX3VzZXJfaWQiOiIxNjMyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOGYyMTNmNDVlYzdmNmUwMWIzZjAzOWQxMmM0N2VhZDExNDljNGMzIn0=	2017-11-23 14:26:52.966405+00
f3odlohwgcuyk1qs6ak6vj4odf6npl51	Yzk5MzNlMThjNDJiYThiYmI0NjA1YWMxMWUzNTlhOWQyMGJjNDkyYTp7Il9hdXRoX3VzZXJfaWQiOiI5NzQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImIyMThkYjM4MDc0OTViYWM2YzM2NjBmYTZiODc3NWY4Yzk4NDQxYjQifQ==	2017-11-24 22:44:41.344602+00
mlg88x9bexd3k1sr83nov4qks5ebq6yh	OTlmZjEyNTllZTYxMDk0ZGJhOWQxY2UyNWY4ZWUzNzhiYzFkOTg3ZTp7Il9hdXRoX3VzZXJfaWQiOiIyOTc2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYjNiYjEwMTM0ZDI3ZDg1NDYzZjE2NTNmMWNmMjUyMWRkMjBkNDFjIn0=	2017-11-22 18:45:31.834248+00
bkhhg4brb89ahcssvd4wfp7bk4876m3i	OWMwNThmODY2NDg5ZDM4NDM3NDAzN2ZmY2IyYTk3MTVmMDY1NWVkNDp7Il9hdXRoX3VzZXJfaWQiOiI5MDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjhmOGQ4MDM2MGJjZTAzZGE1MDg0NjlhYzBiZmVhMDVmN2ZiZTRhMDIifQ==	2017-11-23 17:20:46.044311+00
sr9zxjhft1g8dhi8ezj80f2yy3jytmz9	YzRhYWJiMTUxMzVkMTMyMzhhMWE2YjMzNzEyNWU1N2VkZDRkZTAzZDp7Il9hdXRoX3VzZXJfaWQiOiI2ODUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjYyYTU5NmE3NjExNTI5NDE1NjRkM2MxYTM2MGRmYmU2Mjc5ZDA3YzUifQ==	2017-11-25 10:57:58.158377+00
tdx9h6lgf22n0i8ayqw062n59hy5l433	M2FlYzJhMmM5ZTNhZGU0NjA4ZmE3ZDA3NmJjYWFmMWEzOGZhZWRmNjp7Il9hdXRoX3VzZXJfaWQiOiI0MjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImIxM2EwZTgxYjQ0ZDViZDJhOGU1M2EzMzAzZmVlMWZiMDU3ZTFmN2UifQ==	2017-11-22 18:59:37.308014+00
yyintvaziyd157n7xxgdtomgj83jrlvk	NDEwNzQwMjVjYWYzMzhjYzkxMGVmYzNjMmJlNmE3YWFlYTQ5MGE0ZDp7Il9hdXRoX3VzZXJfaWQiOiIyOTM5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YmM0NWM0ZjE0MTkzZDIwMDI4ODg2NDE4NDcxMmU0ZGEyMzc3NzQ1In0=	2017-11-25 15:11:55.437589+00
\.


--
-- Data for Name: registration_registrationprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY registration_registrationprofile (id, activation_key, user_id) FROM stdin;
\.


--
-- Data for Name: videoadmin_userprofileobjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videoadmin_userprofileobjects (id, user_id) FROM stdin;
347	345
348	346
5	3
4	2
105	103
7	5
8	6
9	7
10	8
11	9
12	10
13	11
14	12
15	13
16	14
17	15
18	16
19	17
20	18
21	19
22	20
23	21
24	22
25	23
26	24
27	25
28	26
29	27
30	28
31	29
32	30
33	31
34	32
35	33
36	34
37	35
38	36
39	37
40	38
41	39
42	40
43	41
44	42
45	43
46	44
47	45
48	46
49	47
50	48
51	49
52	50
53	51
54	52
55	53
56	54
57	55
58	56
59	57
60	58
61	59
62	60
63	61
64	62
65	63
66	64
67	65
68	66
69	67
70	68
71	69
72	70
73	71
74	72
75	73
76	74
77	75
78	76
79	77
80	78
81	79
82	80
83	81
84	82
85	83
86	84
87	85
88	86
89	87
90	88
91	89
92	90
93	91
94	92
95	93
96	94
97	95
98	96
99	97
100	98
101	99
102	100
103	101
104	102
106	104
107	105
108	106
109	107
110	108
111	109
112	110
113	111
114	112
115	113
116	114
117	115
118	116
119	117
120	118
121	119
122	120
123	121
124	122
125	123
126	124
127	125
128	126
129	127
130	128
131	129
132	130
133	131
134	132
135	133
136	134
137	135
138	136
139	137
140	138
141	139
142	140
143	141
144	142
145	143
146	144
147	145
349	347
148	146
149	147
150	148
151	149
152	150
153	151
154	152
155	153
156	154
157	155
158	156
159	157
160	158
161	159
162	160
163	161
164	162
165	163
166	164
167	165
168	166
169	167
170	168
171	169
172	170
173	171
174	172
175	173
176	174
177	175
178	176
179	177
180	178
181	179
182	180
183	181
184	182
185	183
186	184
187	185
188	186
189	187
190	188
191	189
192	190
193	191
194	192
195	193
196	194
197	195
198	196
199	197
200	198
201	199
202	200
203	201
204	202
205	203
206	204
207	205
208	206
209	207
210	208
211	209
212	210
213	211
214	212
215	213
216	214
217	215
218	216
219	217
220	218
221	219
222	220
223	221
224	222
225	223
226	224
227	225
228	226
229	227
230	228
231	229
232	230
233	231
234	232
235	233
236	234
237	235
238	236
239	237
240	238
241	239
242	240
243	241
244	242
245	243
246	244
247	245
248	246
249	247
250	248
251	249
252	250
253	251
254	252
255	253
256	254
257	255
258	256
259	257
260	258
261	259
262	260
263	261
264	262
265	263
266	264
267	265
268	266
269	267
270	268
271	269
272	270
273	271
274	272
275	273
276	274
277	275
278	276
279	277
280	278
281	279
282	280
283	281
284	282
285	283
286	284
287	285
288	286
289	287
290	288
291	289
292	290
293	291
294	292
295	293
296	294
297	295
298	296
299	297
300	298
301	299
302	300
303	301
304	302
305	303
306	304
307	305
308	306
309	307
310	308
311	309
312	310
313	311
314	312
315	313
316	314
317	315
318	316
319	317
320	318
321	319
322	320
323	321
324	322
325	323
326	324
327	325
328	326
329	327
330	328
331	329
332	330
333	331
334	332
335	333
336	334
337	335
338	336
339	337
340	338
341	339
342	340
343	341
344	342
345	343
346	344
350	348
351	349
352	350
353	351
354	352
355	353
356	354
357	355
358	356
359	357
360	358
361	359
362	360
363	361
364	362
365	363
366	364
367	365
368	366
369	367
370	368
371	369
372	370
373	371
374	372
375	373
376	374
377	375
378	376
379	377
380	378
381	379
382	380
383	381
384	382
385	383
386	384
387	385
388	386
389	387
390	388
391	389
392	390
393	391
394	392
395	393
396	394
397	395
398	396
399	397
400	398
401	399
402	400
403	401
404	402
405	403
406	404
407	405
408	406
409	407
410	408
411	409
412	410
413	411
414	412
415	413
416	414
417	415
418	416
419	417
420	418
421	419
422	420
423	421
424	422
425	423
426	424
427	425
428	426
429	427
430	428
431	429
432	430
433	431
434	432
435	433
436	434
437	435
438	436
439	437
440	438
441	439
442	440
443	441
444	442
445	443
446	444
447	445
448	446
449	447
450	448
451	449
452	450
453	451
454	452
455	453
456	454
457	455
458	456
459	457
460	458
461	459
462	460
463	461
464	462
465	463
466	464
467	465
468	466
469	467
470	468
471	469
472	470
473	471
474	472
475	473
476	474
477	475
478	476
479	477
480	478
481	479
482	480
483	481
484	482
485	483
486	484
487	485
488	486
489	487
490	488
491	489
492	490
493	491
494	492
495	493
496	494
497	495
498	496
499	497
500	498
501	499
502	500
503	501
504	502
505	503
506	504
507	505
508	506
509	507
510	508
511	509
512	510
513	511
514	512
515	513
516	514
517	515
518	516
519	517
520	518
521	519
522	520
523	521
524	522
525	523
526	524
527	525
528	526
529	527
530	528
531	529
532	530
533	531
534	532
535	533
536	534
537	535
538	536
539	537
540	538
541	539
542	540
543	541
544	542
545	543
546	544
547	545
548	546
549	547
550	548
551	549
552	550
553	551
554	552
555	553
556	554
557	555
558	556
559	557
560	558
561	559
562	560
563	561
564	562
565	563
566	564
567	565
568	566
569	567
570	568
571	569
572	570
573	571
574	572
575	573
576	574
577	575
578	576
579	577
580	578
581	579
582	580
583	581
584	582
585	583
586	584
587	585
588	586
589	587
590	588
591	589
592	590
593	591
594	592
595	593
596	594
597	595
598	596
599	597
600	598
601	599
602	600
603	601
604	602
605	603
606	604
607	605
608	606
609	607
610	608
611	609
612	610
613	611
614	612
615	613
616	614
617	615
618	616
619	617
620	618
621	619
622	620
623	621
624	622
625	623
626	624
627	625
628	626
629	627
630	628
631	629
632	630
633	631
634	632
635	633
636	634
637	635
638	636
639	637
640	638
641	639
642	640
643	641
644	642
645	643
646	644
647	645
648	646
649	647
650	648
651	649
652	650
653	651
654	652
655	653
656	654
657	655
658	656
659	657
660	658
661	659
662	660
663	661
664	662
665	663
666	664
667	665
668	666
669	667
670	668
671	669
672	670
673	671
674	672
675	673
676	674
677	675
678	676
679	677
680	678
681	679
682	680
683	681
684	682
685	683
686	684
687	685
688	686
689	687
690	688
691	689
692	690
693	691
694	692
695	693
696	694
697	695
698	696
699	697
700	698
701	699
702	700
703	701
704	702
705	703
706	704
707	705
708	706
709	707
710	708
711	709
712	710
713	711
714	712
715	713
716	714
717	715
718	716
719	717
720	718
721	719
722	720
723	721
724	722
725	723
726	724
727	725
728	726
729	727
730	728
731	729
732	730
733	731
734	732
735	733
736	734
737	735
738	736
739	737
740	738
741	739
742	740
743	741
744	742
745	743
746	744
747	745
748	746
749	747
750	748
751	749
752	750
753	751
754	752
755	753
756	754
757	755
758	756
759	757
760	758
761	759
762	760
763	761
764	762
765	763
766	764
767	765
768	766
769	767
770	768
771	769
772	770
773	771
774	772
775	773
776	774
777	775
778	776
779	777
780	778
781	779
782	780
783	781
784	782
785	783
786	784
787	785
788	786
789	787
790	788
791	789
792	790
793	791
794	792
795	793
796	794
797	795
798	796
799	797
800	798
801	799
802	800
803	801
804	802
805	803
806	804
807	805
808	806
809	807
810	808
811	809
812	810
813	811
814	812
815	813
816	814
817	815
818	816
819	817
820	818
821	819
822	820
823	821
824	822
825	823
826	824
827	825
828	826
829	827
830	828
831	829
832	830
833	831
834	832
835	833
836	834
837	835
838	836
839	837
840	838
841	839
842	840
843	841
844	842
845	843
846	844
847	845
848	846
849	847
850	848
851	849
852	850
853	851
854	852
855	853
856	854
857	855
858	856
859	857
860	858
861	859
862	860
863	861
864	862
865	863
866	864
867	865
868	866
869	867
870	868
871	869
872	870
873	871
874	872
875	873
876	874
877	875
878	876
879	877
880	878
881	879
882	880
883	881
884	882
885	883
886	884
887	885
888	886
889	887
890	888
891	889
892	890
893	891
894	892
895	893
896	894
897	895
898	896
899	897
900	898
901	899
902	900
903	901
904	902
905	903
906	904
907	905
908	906
909	907
910	908
911	909
912	910
913	911
914	912
915	913
916	914
917	915
918	916
919	917
920	918
921	919
922	920
923	921
924	922
925	923
926	924
927	925
928	926
929	927
930	928
931	929
932	930
933	931
934	932
935	933
936	934
937	935
938	936
939	937
940	938
941	939
942	940
943	941
944	942
945	943
946	944
947	945
948	946
949	947
950	948
951	949
952	950
953	951
954	952
955	953
956	954
957	955
958	956
959	957
960	958
961	959
962	960
963	961
964	962
965	963
966	964
967	965
968	966
969	967
970	968
971	969
972	970
973	971
974	972
975	973
976	974
977	975
978	976
979	977
980	978
981	979
982	980
983	981
984	982
985	983
986	984
987	985
988	986
989	987
990	988
991	989
992	990
993	991
994	992
995	993
996	994
997	995
998	996
999	997
1000	998
1001	999
1002	1000
1003	1001
1004	1002
1005	1003
1006	1004
1007	1005
1008	1006
1009	1007
1010	1008
1011	1009
1012	1010
1013	1011
1014	1012
1015	1013
1016	1014
1017	1015
1018	1016
1019	1017
1020	1018
1021	1019
1022	1020
1023	1021
1024	1022
1025	1023
1026	1024
1027	1025
1028	1026
1029	1027
1030	1028
1031	1029
1032	1030
1033	1031
1034	1032
1035	1033
1036	1034
1037	1035
1038	1036
1039	1037
1040	1038
1041	1039
1042	1040
1043	1041
1044	1042
1045	1043
1046	1044
1047	1045
1048	1046
1049	1047
1050	1048
1051	1049
1052	1050
1053	1051
1054	1052
1055	1053
1056	1054
1057	1055
1058	1056
1059	1057
1060	1058
1061	1059
1062	1060
1063	1061
1064	1062
1065	1063
1066	1064
1067	1065
1068	1066
1069	1067
1070	1068
1071	1069
1072	1070
1073	1071
1074	1072
1075	1073
1076	1074
1077	1075
1078	1076
1079	1077
1080	1078
1081	1079
1082	1080
1083	1081
1084	1082
1085	1083
1086	1084
1087	1085
1088	1086
1089	1087
1090	1088
1091	1089
1092	1090
1093	1091
1094	1092
1095	1093
1096	1094
1097	1095
1098	1096
1099	1097
1100	1098
1101	1099
1102	1100
1103	1101
1104	1102
1105	1103
1106	1104
1107	1105
1108	1106
1109	1107
1110	1108
1111	1109
1112	1110
1113	1111
1114	1112
1115	1113
1116	1114
1117	1115
1118	1116
1119	1117
1120	1118
1121	1119
1122	1120
1123	1121
1124	1122
1125	1123
1126	1124
1127	1125
1128	1126
1129	1127
1130	1128
1131	1129
1132	1130
1133	1131
1134	1132
1135	1133
1136	1134
1137	1135
1138	1136
1139	1137
1140	1138
1141	1139
1142	1140
1143	1141
1144	1142
1145	1143
1146	1144
1147	1145
1148	1146
1149	1147
1150	1148
1151	1149
1152	1150
1153	1151
1154	1152
1155	1153
1156	1154
1157	1155
1158	1156
1159	1157
1160	1158
1161	1159
1162	1160
1163	1161
1164	1162
1165	1163
1166	1164
1167	1165
1168	1166
1169	1167
1170	1168
1171	1169
1172	1170
1173	1171
1174	1172
1175	1173
1176	1174
1177	1175
1178	1176
1179	1177
1180	1178
1181	1179
1182	1180
1183	1181
1184	1182
1185	1183
1186	1184
1187	1185
1188	1186
1189	1187
1190	1188
1191	1189
1192	1190
1193	1191
1194	1192
1195	1193
1196	1194
1197	1195
1198	1196
1199	1197
1200	1198
1201	1199
1202	1200
1203	1201
1204	1202
1205	1203
1206	1204
1207	1205
1208	1206
1209	1207
1210	1208
1211	1209
1212	1210
1213	1211
1214	1212
1215	1213
1216	1214
1217	1215
1218	1216
1219	1217
1220	1218
1221	1219
1222	1220
1223	1221
1224	1222
1225	1223
1226	1224
1227	1225
1228	1226
1229	1227
1230	1228
1231	1229
1232	1230
1233	1231
1234	1232
1235	1233
1236	1234
1237	1235
1238	1236
1239	1237
1240	1238
1241	1239
1242	1240
1243	1241
1244	1242
1245	1243
1246	1244
1247	1245
1248	1246
1249	1247
1250	1248
1251	1249
1252	1250
1253	1251
1254	1252
1255	1253
1256	1254
1257	1255
1258	1256
1259	1257
1260	1258
1261	1259
1262	1260
1263	1261
1264	1262
1265	1263
1266	1264
1267	1265
1268	1266
1269	1267
1270	1268
1271	1269
1272	1270
1273	1271
1274	1272
1275	1273
1276	1274
1277	1275
1278	1276
1279	1277
1280	1278
1281	1279
1282	1280
1283	1281
1284	1282
1285	1283
1286	1284
1287	1285
1288	1286
1289	1287
1290	1288
1291	1289
1292	1290
1293	1291
1294	1292
1295	1293
1296	1294
1297	1295
1298	1296
1299	1297
1300	1298
1301	1299
1302	1300
1303	1301
1304	1302
1305	1303
1306	1304
1307	1305
1308	1306
1309	1307
1310	1308
1311	1309
1312	1310
1313	1311
1314	1312
1315	1313
1316	1314
1317	1315
1318	1316
1319	1317
1320	1318
1321	1319
1322	1320
1323	1321
1324	1322
1325	1323
1326	1324
1327	1325
1328	1326
1329	1327
1330	1328
1331	1329
1332	1330
1333	1331
1334	1332
1335	1333
1336	1334
1337	1335
1338	1336
1339	1337
1340	1338
1341	1339
1342	1340
1343	1341
1344	1342
1345	1343
1346	1344
1347	1345
1348	1346
1349	1347
1350	1348
1351	1349
1352	1350
1353	1351
1354	1352
1355	1353
1356	1354
1357	1355
1358	1356
1359	1357
1360	1358
1361	1359
1362	1360
1363	1361
1364	1362
1365	1363
1366	1364
1367	1365
1368	1366
1369	1367
1370	1368
1371	1369
1372	1370
1373	1371
1374	1372
1375	1373
1376	1374
1377	1375
1378	1376
1379	1377
1380	1378
1381	1379
1382	1380
1383	1381
1384	1382
1385	1383
1386	1384
1387	1385
1388	1386
1389	1387
1390	1388
1391	1389
1392	1390
1393	1391
1394	1392
1395	1393
1396	1394
1397	1395
1398	1396
1399	1397
1400	1398
1401	1399
1402	1400
1403	1401
1404	1402
1405	1403
1406	1404
1407	1405
1408	1406
1409	1407
1410	1408
1411	1409
1412	1410
1413	1411
1414	1412
1415	1413
1416	1414
1417	1415
1418	1416
1419	1417
1420	1418
1421	1419
1422	1420
1423	1421
1424	1422
1425	1423
1426	1424
1427	1425
1428	1426
1429	1427
1430	1428
1431	1429
1432	1430
1433	1431
1434	1432
1435	1433
1436	1434
1437	1435
1438	1436
1439	1437
1440	1438
1441	1439
1442	1440
1443	1441
1444	1442
1445	1443
1446	1444
1447	1445
1448	1446
1449	1447
1450	1448
1451	1449
1452	1450
1453	1451
1454	1452
1455	1453
1456	1454
1457	1455
1458	1456
1459	1457
1460	1458
1461	1459
1462	1460
1463	1461
1464	1462
1465	1463
1466	1464
1467	1465
1468	1466
1469	1467
1470	1468
1471	1469
1472	1470
1473	1471
1474	1472
1475	1473
1476	1474
1477	1475
1478	1476
1479	1477
1480	1478
1481	1479
1482	1480
1483	1481
1484	1482
1485	1483
1486	1484
1487	1485
1488	1486
1489	1487
1490	1488
1491	1489
1492	1490
1493	1491
1494	1492
1495	1493
1496	1494
1497	1495
1498	1496
1499	1497
1500	1498
1501	1499
1502	1500
1503	1501
1504	1502
1505	1503
1506	1504
1507	1505
1508	1506
1509	1507
1510	1508
1511	1509
1512	1510
1513	1511
1514	1512
1515	1513
1516	1514
1517	1515
1518	1516
1519	1517
1520	1518
1521	1519
1522	1520
1523	1521
1524	1522
1525	1523
1526	1524
1527	1525
1528	1526
1529	1527
1530	1528
1531	1529
1532	1530
1533	1531
1534	1532
1535	1533
1536	1534
1537	1535
1538	1536
1539	1537
1540	1538
1541	1539
1542	1540
1543	1541
1544	1542
1545	1543
1546	1544
1547	1545
1548	1546
1549	1547
1550	1548
1551	1549
1552	1550
1553	1551
1554	1552
1555	1553
1556	1554
1557	1555
1558	1556
1559	1557
1560	1558
1561	1559
1562	1560
1563	1561
1564	1562
1565	1563
1566	1564
1567	1565
1568	1566
1569	1567
1570	1568
1571	1569
1572	1570
1573	1571
1574	1572
1575	1573
1576	1574
1577	1575
1578	1576
1579	1577
1580	1578
1581	1579
1582	1580
1583	1581
1584	1582
1585	1583
1586	1584
1587	1585
1588	1586
1589	1587
1590	1588
1591	1589
1592	1590
1593	1591
1594	1592
1595	1593
1596	1594
1597	1595
1598	1596
1599	1597
1600	1598
1601	1599
1602	1600
1603	1601
1604	1602
1605	1603
1606	1604
1607	1605
1608	1606
1609	1607
1610	1608
1611	1609
1612	1610
1613	1611
1614	1612
1615	1613
1616	1614
1617	1615
1618	1616
1619	1617
1620	1618
1621	1619
1622	1620
1623	1621
1624	1622
1625	1623
1626	1624
1627	1625
1628	1626
1629	1627
1630	1628
1631	1629
1632	1630
1633	1631
1634	1632
1635	1633
1636	1634
1637	1635
1638	1636
1639	1637
1640	1638
1641	1639
1642	1640
1643	1641
1644	1642
1645	1643
1646	1644
1647	1645
1648	1646
1649	1647
1650	1648
1651	1649
1652	1650
1653	1651
1654	1652
1655	1653
1656	1654
1657	1655
1658	1656
1659	1657
1660	1658
1661	1659
1662	1660
1663	1661
1664	1662
1665	1663
1666	1664
1667	1665
1668	1666
1669	1667
1670	1668
1671	1669
1672	1670
1673	1671
1674	1672
1675	1673
1676	1674
1677	1675
1678	1676
1679	1677
1680	1678
1681	1679
1682	1680
1683	1681
1684	1682
1685	1683
1686	1684
1687	1685
1688	1686
1689	1687
1690	1688
1691	1689
1692	1690
1693	1691
1694	1692
1695	1693
1696	1694
1697	1695
1698	1696
1699	1697
1700	1698
1701	1699
1702	1700
1703	1701
1704	1702
1705	1703
1706	1704
1707	1705
1708	1706
1709	1707
1710	1708
1711	1709
1712	1710
1713	1711
1714	1712
1715	1713
1716	1714
1717	1715
1718	1716
1719	1717
1720	1718
1721	1719
1722	1720
1723	1721
1724	1722
1725	1723
1726	1724
1727	1725
1728	1726
1729	1727
1730	1728
1731	1729
1732	1730
1733	1731
1734	1732
1735	1733
1736	1734
1737	1735
1738	1736
1739	1737
1740	1738
1741	1739
1742	1740
1743	1741
1744	1742
1745	1743
1746	1744
1747	1745
1748	1746
1749	1747
1750	1748
1751	1749
1752	1750
1753	1751
1754	1752
1755	1753
1756	1754
1757	1755
1758	1756
1759	1757
1760	1758
1761	1759
1762	1760
1763	1761
1764	1762
1765	1763
1766	1764
1767	1765
1768	1766
1769	1767
1770	1768
1771	1769
1772	1770
1773	1771
1774	1772
1775	1773
1776	1774
1777	1775
1778	1776
1779	1777
1780	1778
1781	1779
1782	1780
1783	1781
1784	1782
1785	1783
1786	1784
1787	1785
1788	1786
1789	1787
1790	1788
1791	1789
1792	1790
1793	1791
1794	1792
1795	1793
1796	1794
1797	1795
1798	1796
1799	1797
1800	1798
1801	1799
1802	1800
1803	1801
1804	1802
1805	1803
1806	1804
1807	1805
1808	1806
1809	1807
1810	1808
1811	1809
1812	1810
1813	1811
1814	1812
1815	1813
1816	1814
1817	1815
1818	1816
1819	1817
1820	1818
1821	1819
1822	1820
1823	1821
1824	1822
1825	1823
1826	1824
1827	1825
1828	1826
1829	1827
1830	1828
1831	1829
1832	1830
1833	1831
1834	1832
1835	1833
1836	1834
1837	1835
1838	1836
1839	1837
1840	1838
1841	1839
1842	1840
1843	1841
1844	1842
1845	1843
1846	1844
1847	1845
1848	1846
1849	1847
1850	1848
1851	1849
1852	1850
1853	1851
1854	1852
1855	1853
1856	1854
1857	1855
1858	1856
1859	1857
1860	1858
1861	1859
1862	1860
1863	1861
1864	1862
1865	1863
1866	1864
1867	1865
1868	1866
1869	1867
1870	1868
1871	1869
1872	1870
1873	1871
1874	1872
1875	1873
1876	1874
1877	1875
1878	1876
1879	1877
1880	1878
1881	1879
1882	1880
1883	1881
1884	1882
1885	1883
1886	1884
1887	1885
1888	1886
1889	1887
1890	1888
1891	1889
1892	1890
1893	1891
1894	1892
1895	1893
1896	1894
1897	1895
1898	1896
1899	1897
1900	1898
1901	1899
1902	1900
1903	1901
1904	1902
1905	1903
1906	1904
1907	1905
1908	1906
1909	1907
1910	1908
1911	1909
1912	1910
1913	1911
1914	1912
1915	1913
1916	1914
1917	1915
1918	1916
1919	1917
1920	1918
1921	1919
1922	1920
1923	1921
1924	1922
1925	1923
1926	1924
1927	1925
1928	1926
1929	1927
1930	1928
1931	1929
1932	1930
1933	1931
1934	1932
1935	1933
1936	1934
1937	1935
1938	1936
1939	1937
1940	1938
1941	1939
1942	1940
1943	1941
1944	1942
1945	1943
1946	1944
1947	1945
1948	1946
1949	1947
1950	1948
1951	1949
1952	1950
1953	1951
1954	1952
1955	1953
1956	1954
1957	1955
1958	1956
1959	1957
1960	1958
1961	1959
1962	1960
1963	1961
1964	1962
1965	1963
1966	1964
1967	1965
1968	1966
1969	1967
1970	1968
1971	1969
1972	1970
1973	1971
1974	1972
1975	1973
1976	1974
1977	1975
1978	1976
1979	1977
1980	1978
1981	1979
1982	1980
1983	1981
1984	1982
1985	1983
1986	1984
1987	1985
1988	1986
1989	1987
1990	1988
1991	1989
1992	1990
1993	1991
1994	1992
1995	1993
1996	1994
1997	1995
1998	1996
1999	1997
2000	1998
2001	1999
2002	2000
2003	2001
2004	2002
2005	2003
2006	2004
2007	2005
2008	2006
2009	2007
2010	2008
2011	2009
2012	2010
2013	2011
2014	2012
2015	2013
2016	2014
2017	2015
2018	2016
2019	2017
2020	2018
2021	2019
2022	2020
2023	2021
2024	2022
2025	2023
2026	2024
2027	2025
2028	2026
2029	2027
2030	2028
2031	2029
2032	2030
2033	2031
2034	2032
2035	2033
2036	2034
2037	2035
2038	2036
2039	2037
2040	2038
2041	2039
2042	2040
2043	2041
2044	2042
2045	2043
2046	2044
2047	2045
2048	2046
2049	2047
2050	2048
2051	2049
2052	2050
2053	2051
2054	2052
2055	2053
2056	2054
2057	2055
2058	2056
2059	2057
2060	2058
2061	2059
2062	2060
2063	2061
2064	2062
2065	2063
2066	2064
2067	2065
2068	2066
2069	2067
2070	2068
2071	2069
2072	2070
2073	2071
2074	2072
2075	2073
2076	2074
2077	2075
2078	2076
2079	2077
2080	2078
2081	2079
2082	2080
2083	2081
2084	2082
2085	2083
2086	2084
2087	2085
2088	2086
2089	2087
2090	2088
2091	2089
2092	2090
2093	2091
2094	2092
2095	2093
2096	2094
2097	2095
2098	2096
2099	2097
2100	2098
2101	2099
2102	2100
2103	2101
2104	2102
2105	2103
2106	2104
2107	2105
2108	2106
2109	2107
2110	2108
2111	2109
2112	2110
2113	2111
2114	2112
2115	2113
2116	2114
2117	2115
2118	2116
2119	2117
2120	2118
2121	2119
2122	2120
2123	2121
2124	2122
2125	2123
2126	2124
2127	2125
2128	2126
2129	2127
2130	2128
2131	2129
2132	2130
2133	2131
2134	2132
2135	2133
2136	2134
2137	2135
2138	2136
2139	2137
2140	2138
2141	2139
2142	2140
2143	2141
2144	2142
2145	2143
2146	2144
2147	2145
2148	2146
2149	2147
2150	2148
2151	2149
2152	2150
2153	2151
2154	2152
2155	2153
2156	2154
2157	2155
2158	2156
2159	2157
2160	2158
2161	2159
2162	2160
2163	2161
2164	2162
2165	2163
2166	2164
2167	2165
2168	2166
2169	2167
2170	2168
2171	2169
2172	2170
2173	2171
2174	2172
2175	2173
2176	2174
2177	2175
2178	2176
2179	2177
2180	2178
2181	2179
2182	2180
2183	2181
2184	2182
2185	2183
2186	2184
2187	2185
2188	2186
2189	2187
2190	2188
2191	2189
2192	2190
2193	2191
2194	2192
2195	2193
2196	2194
2197	2195
2198	2196
2199	2197
2200	2198
2201	2199
2202	2200
2203	2201
2204	2202
2205	2203
2206	2204
2207	2205
2208	2206
2209	2207
2210	2208
2211	2209
2212	2210
2213	2211
2214	2212
2215	2213
2216	2214
2217	2215
2218	2216
2219	2217
2220	2218
2221	2219
2222	2220
2223	2221
2224	2222
2225	2223
2226	2224
2227	2225
2228	2226
2229	2227
2230	2228
2231	2229
2232	2230
2233	2231
2234	2232
2235	2233
2236	2234
2237	2235
2238	2236
2239	2237
2240	2238
2241	2239
2242	2240
2243	2241
2244	2242
2245	2243
2246	2244
2247	2245
2248	2246
2249	2247
2250	2248
2251	2249
2252	2250
2253	2251
2254	2252
2255	2253
2256	2254
2257	2255
2258	2256
2259	2257
2260	2258
2261	2259
2262	2260
2263	2261
2264	2262
2265	2263
2266	2264
2267	2265
2268	2266
2269	2267
2270	2268
2271	2269
2272	2270
2273	2271
2274	2272
2275	2273
2276	2274
2277	2275
2278	2276
2279	2277
2280	2278
2281	2279
2282	2280
2283	2281
2284	2282
2285	2283
2286	2284
2287	2285
2288	2286
2289	2287
2290	2288
2291	2289
2292	2290
2293	2291
2294	2292
2295	2293
2296	2294
2297	2295
2298	2296
2299	2297
2300	2298
2301	2299
2302	2300
2303	2301
2304	2302
2305	2303
2306	2304
2307	2305
2308	2306
2309	2307
2310	2308
2311	2309
2312	2310
2313	2311
2314	2312
2315	2313
2316	2314
2317	2315
2318	2316
2319	2317
2320	2318
2321	2319
2322	2320
2323	2321
2324	2322
2325	2323
2326	2324
2327	2325
2328	2326
2329	2327
2330	2328
2331	2329
2332	2330
2333	2331
2334	2332
2335	2333
2336	2334
2337	2335
2338	2336
2339	2337
2340	2338
2341	2339
2342	2340
2343	2341
2344	2342
2345	2343
2346	2344
2347	2345
2348	2346
2349	2347
2350	2348
2351	2349
2352	2350
2353	2351
2354	2352
2355	2353
2356	2354
2357	2355
2358	2356
2359	2357
2360	2358
2361	2359
2362	2360
2363	2361
2364	2362
2365	2363
2366	2364
2367	2365
2368	2366
2369	2367
2370	2368
2371	2369
2372	2370
2373	2371
2374	2372
2375	2373
2376	2374
2377	2375
2378	2376
2379	2377
2380	2378
2381	2379
2382	2380
2383	2381
2384	2382
2385	2383
2386	2384
2387	2385
2388	2386
2389	2387
2390	2388
2391	2389
2392	2390
2393	2391
2394	2392
2395	2393
2396	2394
2397	2395
2398	2396
2399	2397
2400	2398
2401	2399
2402	2400
2403	2401
2404	2402
2405	2403
2406	2404
2407	2405
2408	2406
2409	2407
2410	2408
2411	2409
2412	2410
2413	2411
2414	2412
2415	2413
2416	2414
2417	2415
2418	2416
2419	2417
2420	2418
2421	2419
2422	2420
2423	2421
2424	2422
2425	2423
2426	2424
2427	2425
2428	2426
2429	2427
2430	2428
2431	2429
2432	2430
2433	2431
2434	2432
2435	2433
2436	2434
2437	2435
2438	2436
2439	2437
2440	2438
2441	2439
2442	2440
2443	2441
2444	2442
2445	2443
2446	2444
2447	2445
2448	2446
2449	2447
2450	2448
2451	2449
2452	2450
2453	2451
2454	2452
2455	2453
2456	2454
2457	2455
2458	2456
2459	2457
2460	2458
2461	2459
2462	2460
2463	2461
2464	2462
2465	2463
2466	2464
2467	2465
2468	2466
2469	2467
2470	2468
2471	2469
2472	2470
2473	2471
2474	2472
2475	2473
2476	2474
2477	2475
2478	2476
2479	2477
2480	2478
2481	2479
2482	2480
2483	2481
2484	2482
2485	2483
2486	2484
2487	2485
2488	2486
2489	2487
2490	2488
2491	2489
2492	2490
2493	2491
2494	2492
2495	2493
2496	2494
2497	2495
2498	2496
2499	2497
2500	2498
2501	2499
2502	2500
2503	2501
2504	2502
2505	2503
2506	2504
2507	2505
2508	2506
2509	2507
2510	2508
2511	2509
2512	2510
2513	2511
2514	2512
2515	2513
2516	2514
2517	2515
2518	2516
2519	2517
2520	2518
2521	2519
2522	2520
2523	2521
2524	2522
2525	2523
2526	2524
2527	2525
2528	2526
2529	2527
2530	2528
2531	2529
2532	2530
2533	2531
2534	2532
2535	2533
2536	2534
2537	2535
2538	2536
2539	2537
2540	2538
2541	2539
2542	2540
2543	2541
2544	2542
2545	2543
2546	2544
2547	2545
2548	2546
2549	2547
2550	2548
2551	2549
2552	2550
2553	2551
2554	2552
2555	2553
2556	2554
2557	2555
2558	2556
2559	2557
2560	2558
2561	2559
2562	2560
2563	2561
2564	2562
2565	2563
2566	2564
2567	2565
2568	2566
2569	2567
2570	2568
2571	2569
2572	2570
2573	2571
2574	2572
2575	2573
2576	2574
2577	2575
2578	2576
2579	2577
2580	2578
2581	2579
2582	2580
2583	2581
2584	2582
2585	2583
2586	2584
2587	2585
2588	2586
2589	2587
2590	2588
2591	2589
2592	2590
2593	2591
2594	2592
2595	2593
2596	2594
2597	2595
2598	2596
2599	2597
2600	2598
2601	2599
2602	2600
2603	2601
2604	2602
2605	2603
2606	2604
2607	2605
2608	2606
2609	2607
2610	2608
2611	2609
2612	2610
2613	2611
2614	2612
2615	2613
2616	2614
2617	2615
2618	2616
2619	2617
2620	2618
2621	2619
2622	2620
2623	2621
2624	2622
2625	2623
2626	2624
2627	2625
2628	2626
2629	2627
2630	2628
2631	2629
2632	2630
2633	2631
2634	2632
2635	2633
2636	2634
2637	2635
2638	2636
2639	2637
2640	2638
2641	2639
2642	2640
2643	2641
2644	2642
2645	2643
2646	2644
2647	2645
2648	2646
2649	2647
2650	2648
2651	2649
2652	2650
2653	2651
2654	2652
2655	2653
2656	2654
2657	2655
2658	2656
2659	2657
2660	2658
2661	2659
2662	2660
2663	2661
2664	2662
2665	2663
2666	2664
2667	2665
2668	2666
2669	2667
2670	2668
2671	2669
2672	2670
2673	2671
2674	2672
2675	2673
2676	2674
2677	2675
2678	2676
2679	2677
2680	2678
2681	2679
2682	2680
2683	2681
2684	2682
2685	2683
2686	2684
2687	2685
2688	2686
2689	2687
2690	2688
2691	2689
2692	2690
2693	2691
2694	2692
2695	2693
2696	2694
2697	2695
2698	2696
2699	2697
2700	2698
2701	2699
2702	2700
2703	2701
2704	2702
2705	2703
2706	2704
2707	2705
2708	2706
2709	2707
2710	2708
2711	2709
2712	2710
2713	2711
2714	2712
2715	2713
2716	2714
2717	2715
2718	2716
2719	2717
2720	2718
2721	2719
2722	2720
2723	2721
2724	2722
2725	2723
2726	2724
2727	2725
2728	2726
2729	2727
2730	2728
2731	2729
2732	2730
2733	2731
2734	2732
2735	2733
2736	2734
2737	2735
2738	2736
2739	2737
2740	2738
2741	2739
2742	2740
2743	2741
2744	2742
2745	2743
2746	2744
2747	2745
2748	2746
2749	2747
2750	2748
2751	2749
2752	2750
2753	2751
2754	2752
2755	2753
2756	2754
2757	2755
2758	2756
2759	2757
2760	2758
2761	2759
2762	2760
2763	2761
2764	2762
2765	2763
2766	2764
2767	2765
2768	2766
2769	2767
2770	2768
2771	2769
2772	2770
2773	2771
2774	2772
2775	2773
2776	2774
2777	2775
2778	2776
2779	2777
2780	2778
2781	2779
2782	2780
2783	2781
2784	2782
2785	2783
2786	2784
2787	2785
2788	2786
2789	2787
2790	2788
2791	2789
2792	2790
2793	2791
2794	2792
2795	2793
2796	2794
2797	2795
2798	2796
2799	2797
2800	2798
2801	2799
2802	2800
2803	2801
2804	2802
2805	2803
2806	2804
2807	2805
2808	2806
2809	2807
2810	2808
2811	2809
2812	2810
2813	2811
2814	2812
2815	2813
2816	2814
2817	2815
2818	2816
2819	2817
2820	2818
2821	2819
2822	2820
2823	2821
2824	2822
2825	2823
2826	2824
2827	2825
2828	2826
2829	2827
2830	2828
2831	2829
2832	2830
2833	2831
2834	2832
2835	2833
2836	2834
2837	2835
2838	2836
2839	2837
2840	2838
2841	2839
2842	2840
2843	2841
2844	2842
2845	2843
2846	2844
2847	2845
2848	2846
2849	2847
2850	2848
2851	2849
2852	2850
2853	2851
2854	2852
2855	2853
2856	2854
2857	2855
2858	2856
2859	2857
2860	2858
2861	2859
2862	2860
2863	2861
2864	2862
2865	2863
2866	2864
2867	2865
2868	2866
2869	2867
2870	2868
2871	2869
2872	2870
2873	2871
2874	2872
2875	2873
2876	2874
2877	2875
2878	2876
2879	2877
2880	2878
2881	2879
2882	2880
2883	2881
2884	2882
2885	2883
2886	2884
2887	2885
2888	2886
2889	2887
2890	2888
2891	2889
2892	2890
2893	2891
2894	2892
2895	2893
2896	2894
2897	2895
2898	2896
2899	2897
2900	2898
2901	2899
2902	2900
2903	2901
2904	2902
2905	2903
2906	2904
2907	2905
2908	2906
2909	2907
2910	2908
2911	2909
2912	2910
2913	2911
2914	2912
2915	2913
2916	2914
2917	2915
2918	2916
2919	2917
2920	2918
2921	2919
2922	2920
2923	2921
2924	2922
2925	2923
2926	2924
2927	2925
2928	2926
2929	2927
2930	2928
2931	2929
2932	2930
2933	2931
2934	2932
2935	2933
2936	2934
2937	2935
2938	2936
2939	2937
2940	2938
2941	2939
2942	2940
2943	2941
2944	2942
2945	2943
2946	2944
2947	2945
2948	2946
2949	2947
2950	2948
2951	2949
2952	2950
2953	2951
2954	2952
2955	2953
2956	2954
2957	2955
2958	2956
2959	2957
2960	2958
2961	2959
2962	2960
2963	2961
2964	2962
2965	2963
2966	2964
2967	2965
2968	2966
2969	2967
2970	2968
2971	2969
2972	2970
2973	2971
2974	2972
2975	2973
2976	2974
2977	2975
2978	2976
2979	2977
2980	2978
2981	2979
2982	2980
2983	2981
2984	2982
2985	2983
2986	2984
2987	2985
2988	2986
2989	2987
2990	2988
2991	2989
2992	2990
2993	2991
2994	2992
2995	2993
2996	2994
2997	2995
2998	2996
2999	2997
3000	2998
3001	2999
3002	3000
3003	3001
3004	3002
3005	3003
3006	3004
3007	3005
3008	3006
3009	3007
3010	3008
3011	3009
3012	3010
3013	3011
3014	3012
3015	3013
3016	3014
3017	3015
3018	3016
3019	3017
3020	3018
3021	3019
3022	3020
3023	3021
3024	3022
3025	3023
3026	3024
3027	3025
3028	3026
3029	3027
3030	3028
3031	3029
3032	3030
3033	3031
3034	3032
3035	3033
3036	3034
3037	3035
3038	3036
3039	3037
3040	3038
3041	3039
3042	3040
3043	3041
3044	3042
3045	3043
3046	3044
3047	3045
3048	3046
3049	3047
3050	3048
3051	3049
3052	3050
3053	3051
3054	3052
3055	3053
3056	3054
3057	3055
3058	3056
3059	3057
3060	3058
3061	3059
3062	3060
3063	3061
3064	3062
3065	3063
3066	3064
3067	3065
3068	3066
3069	3067
3070	3068
3071	3069
3072	3070
3073	3071
3074	3072
3075	3073
3076	3074
3077	3075
3078	3076
3079	3077
3080	3078
3081	3079
3082	3080
3083	3081
3084	3082
3085	3083
3086	3084
3087	3085
3088	3086
3089	3087
3090	3088
3091	3089
3092	3090
3093	3091
3094	3092
3095	3093
3096	3094
3097	3095
3098	3096
3099	3097
3100	3098
3101	3099
3102	3100
3103	3101
3104	3102
3105	3103
3106	3104
3107	3105
3108	3106
3109	3107
3110	3108
3111	3109
3112	3110
3113	3111
3114	3112
3115	3113
3116	3114
3117	3115
3118	3116
3119	3117
3120	3118
3121	3119
3122	3120
3123	3121
3124	3122
3125	3123
3126	3124
3127	3125
3128	3126
3129	3127
3130	3128
3131	3129
3132	3130
3133	3131
3134	3132
3135	3133
3136	3134
3137	3135
3138	3136
3139	3137
3140	3138
3141	3139
3142	3140
3143	3141
3144	3142
3145	3143
3146	3144
3147	3145
3148	3146
3149	3147
3150	3148
3151	3149
3152	3150
3153	3151
3154	3152
3155	3153
3156	3154
3157	3155
3158	3156
3159	3157
3160	3158
3161	3159
3162	3160
3163	3161
3164	3162
3165	3163
3166	3164
3167	3165
3168	3166
3169	3167
3170	3168
3171	3169
3172	3170
3173	3171
3174	3172
3175	3173
3176	3174
3177	3175
3178	3176
3179	3177
3180	3178
3181	3179
3182	3180
3183	3181
3184	3182
3185	3183
3186	3184
3187	3185
3188	3186
3189	3187
3190	3188
3191	3189
3192	3190
3193	3191
3194	3192
3195	3193
3196	3194
3197	3195
3198	3196
3199	3197
3200	3198
3201	3199
3202	3200
3203	3201
3204	3202
3205	3203
3206	3204
3207	3205
3208	3206
3209	3207
3210	3208
3211	3209
3212	3210
3213	3211
3214	3212
3215	3213
3216	3214
3217	3215
3218	3216
3219	3217
3220	3218
3221	3219
3222	3220
3223	3221
3224	3222
3225	3223
3226	3224
3227	3225
3228	3226
3229	3227
3230	3228
3231	3229
3232	3230
3233	3231
3234	3232
3235	3233
3236	3234
3237	3235
3238	3236
3239	3237
3240	3238
3241	3239
3242	3240
3243	3241
3244	3242
3245	3243
3246	3244
3247	3245
3248	3246
3249	3247
3250	3248
3251	3249
3252	3250
3253	3251
3254	3252
3255	3253
3256	3254
3257	3255
3258	3256
3259	3257
3260	3258
3261	3259
3262	3260
3263	3261
3264	3262
3265	3263
3266	3264
3267	3265
3268	3266
3269	3267
3270	3268
3271	3269
3272	3270
3273	3271
3274	3272
3275	3273
3276	3274
3277	3275
3278	3276
3279	3277
3280	3278
3281	3279
3282	3280
3283	3281
3284	3282
3285	3283
3286	3284
3287	3285
3288	3286
3289	3287
3290	3288
3291	3289
3292	3290
3293	3291
3294	3292
3295	3293
3296	3294
3297	3295
3298	3296
3299	3297
3300	3298
3301	3299
3302	3300
3303	3301
3304	3302
3305	3303
3306	3304
3307	3305
3308	3306
3309	3307
3310	3308
3311	3309
3312	3310
3313	3311
3314	3312
3315	3313
3316	3314
3317	3315
3318	3316
3319	3317
3320	3318
3321	3319
3322	3320
3323	3321
3324	3322
3325	3323
3326	3324
3327	3325
3328	3326
3329	3327
3330	3328
3331	3329
3332	3330
3333	3331
3334	3332
3335	3333
3336	3334
3337	3335
3338	3336
3339	3337
3340	3338
3341	3339
3342	3340
3343	3341
3344	3342
3345	3343
3346	3344
3347	3345
3348	3346
3349	3347
3350	3348
3351	3349
3352	3350
3353	3351
3354	3352
3355	3353
3356	3354
3357	3355
3358	3356
3359	3357
3360	3358
3361	3359
3362	3360
3363	3361
3364	3362
3365	3363
3366	3364
3367	3365
3368	3366
3369	3367
3370	3368
3371	3369
3372	3370
3373	3371
3374	3372
3375	3373
3376	3374
3377	3375
3378	3376
3379	3377
3380	3378
3381	3379
3382	3380
3383	3381
3384	3382
3385	3383
3386	3384
3387	3385
3388	3386
3389	3387
3390	3388
3391	3389
3392	3390
3393	3391
3394	3392
3395	3393
3396	3394
3397	3395
3398	3396
3399	3397
3400	3398
3401	3399
3402	3400
3403	3401
3404	3402
3405	3403
3406	3404
3407	3405
3408	3406
3409	3407
3410	3408
3411	3409
3412	3410
3413	3411
3414	3412
3415	3413
3416	3414
3417	3415
3418	3416
3419	3417
3420	3418
3421	3419
3422	3420
3423	3421
3424	3422
3425	3423
3426	3424
3427	3425
3428	3426
3429	3427
3430	3428
3431	3429
3432	3430
3433	3431
3434	3432
3435	3433
3436	3434
3437	3435
3438	3436
3439	3437
3440	3438
3441	3439
3442	3440
3443	3441
3444	3442
3445	3443
3446	3444
3447	3445
3448	3446
3449	3447
3450	3448
3451	3449
3452	3450
3453	3451
3454	3452
3455	3453
3456	3454
3457	3455
3458	3456
3459	3457
3460	3458
3461	3459
3462	3460
3463	3461
3464	3462
3465	3463
3466	3464
3467	3465
3468	3466
3469	3467
3470	3468
3471	3469
3472	3470
3473	3471
3474	3472
3475	3473
3476	3474
3477	3475
3478	3476
3479	3477
3480	3478
3481	3479
3482	3480
3483	3481
3484	3482
3485	3483
3486	3484
3487	3485
3488	3486
3489	3487
3490	3488
3491	3489
3492	3490
3493	3491
3494	3492
3495	3493
3496	3494
3497	3495
3498	3496
3499	3497
3500	3498
3501	3499
3502	3500
3503	3501
3504	3502
3505	3503
3506	3504
3507	3505
3508	3506
3509	3507
3510	3508
3511	3509
3512	3510
3513	3511
3514	3512
3515	3513
3516	3514
3517	3515
3518	3516
3519	3517
3520	3518
3521	3519
3522	3520
3523	3521
3524	3522
3525	3523
3526	3524
3527	3525
3528	3526
3529	3527
3530	3528
3531	3529
3532	3530
3533	3531
3534	3532
3535	3533
3536	3534
3537	3535
3538	3536
3539	3537
3540	3538
3541	3539
3542	3540
3543	3541
3544	3542
3545	3543
3546	3544
3547	3545
3548	3546
3549	3547
3550	3548
3551	3549
3552	3550
3553	3551
3554	3552
3555	3553
3556	3554
3557	3555
3558	3556
3559	3557
3560	3558
3561	3559
3562	3560
3563	3561
3564	3562
3565	3563
3566	3564
3567	3565
3568	3566
3569	3567
3570	3568
3571	3569
3572	3570
3573	3571
3574	3572
3575	3573
3576	3574
3577	3575
3578	3576
3579	3577
3580	3578
3581	3579
3582	3580
3583	3581
3584	3582
3585	3583
3586	3584
3587	3585
3588	3586
3589	3587
3590	3588
3591	3589
3592	3590
3593	3591
3594	3592
3595	3593
3596	3594
3597	3595
3598	3596
3599	3597
3600	3598
3601	3599
3602	3600
3603	3601
3604	3602
3605	3603
3606	3604
3607	3605
3608	3606
3609	3607
3610	3608
3611	3609
3612	3610
3613	3611
3614	3612
3615	3613
3616	3614
3617	3615
3618	3616
3619	3617
3620	3618
3621	3619
3622	3620
3623	3621
3624	3622
3625	3623
3626	3624
3627	3625
3628	3626
3629	3627
3630	3628
3631	3629
3632	3630
3633	3631
3634	3632
3635	3633
3636	3634
3637	3635
3638	3636
3639	3637
3640	3638
3641	3639
3642	3640
3643	3641
3644	3642
3645	3643
3646	3644
3647	3645
3648	3646
3649	3647
3650	3648
3651	3649
3652	3650
3653	3651
3654	3652
3655	3653
3656	3654
3657	3655
3658	3656
3659	3657
3660	3658
3661	3659
3662	3660
3663	3661
3664	3662
3665	3663
3666	3664
3667	3665
3668	3666
3669	3667
3670	3668
3671	3669
3672	3670
3673	3671
3674	3672
3675	3673
3676	3674
3677	3675
3678	3676
3679	3677
3680	3678
3681	3679
3682	3680
3683	3681
3684	3682
3685	3683
3686	3684
3687	3685
3688	3686
3689	3687
3690	3688
3691	3689
3692	3690
3693	3691
3694	3692
3695	3693
3696	3694
3697	3695
3698	3696
3699	3697
3700	3698
3701	3699
3702	3700
3703	3701
3704	3702
3705	3703
3706	3704
3707	3705
3708	3706
3709	3707
3710	3708
3711	3709
3712	3710
3713	3711
3714	3712
3715	3713
3716	3714
3717	3715
3718	3716
3719	3717
3720	3718
3721	3719
3722	3720
3723	3721
3724	3722
3725	3723
3726	3724
3727	3725
3728	3726
3729	3727
3730	3728
3731	3729
3732	3730
3733	3731
3734	3732
3735	3733
3736	3734
3737	3735
3738	3736
3739	3737
3740	3738
3741	3739
3742	3740
3743	3741
3744	3742
3745	3743
3746	3744
3747	3745
3748	3746
3749	3747
3750	3748
3751	3749
3752	3750
3753	3751
3754	3752
3755	3753
3756	3754
3757	3755
3758	3756
3759	3757
3760	3758
3761	3759
3762	3760
3763	3761
3764	3762
3765	3763
3766	3764
3767	3765
3768	3766
3769	3767
3770	3768
3771	3769
3772	3770
3773	3771
3774	3772
3775	3773
3776	3774
3777	3775
3778	3776
3779	3777
3780	3778
3781	3779
3782	3780
3783	3781
3784	3782
3785	3783
3786	3784
3787	3785
3788	3786
3789	3787
3790	3788
3791	3789
3792	3790
3793	3791
3794	3792
3795	3793
3796	3794
3797	3795
3798	3796
3799	3797
3800	3798
3801	3799
3802	3800
3803	3801
3804	3802
3805	3803
3806	3804
3807	3805
3808	3806
3809	3807
3810	3808
3811	3809
3812	3810
3813	3811
3814	3812
3815	3813
3816	3814
3817	3815
3818	3816
3819	3817
3820	3818
3821	3819
3822	3820
3823	3821
3824	3822
3825	3823
3826	3824
3827	3825
3828	3826
3829	3827
3830	3828
3831	3829
3832	3830
3833	3831
3834	3832
3835	3833
3836	3834
3837	3835
3838	3836
3839	3837
3840	3838
3841	3839
3842	3840
3843	3841
3844	3842
3845	3843
3846	3844
3847	3845
3848	3846
3849	3847
3850	3848
3851	3849
3852	3850
3853	3851
3854	3852
3855	3853
3856	3854
3857	3855
3858	3856
3859	3857
3860	3858
3861	3859
3862	3860
3863	3861
3864	3862
3865	3863
3866	3864
3867	3865
3868	3866
3869	3867
3870	3868
3871	3869
3872	3870
3873	3871
3874	3872
3875	3873
3876	3874
3877	3875
3878	3876
3879	3877
3880	3878
3881	3879
3882	3880
3883	3881
3884	3882
3885	3883
3886	3884
3887	3885
3888	3886
3889	3887
3890	3888
3891	3889
3892	3890
3893	3891
3894	3892
3895	3893
3896	3894
3897	3895
3898	3896
3899	3897
3900	3898
3901	3899
3902	3900
3903	3901
3904	3902
3905	3903
3906	3904
3907	3905
3908	3906
3909	3907
3910	3908
3911	3909
3912	3910
3913	3911
3914	3912
3915	3913
3916	3914
3917	3915
3918	3916
3919	3917
3920	3918
3921	3919
3922	3920
3923	3921
3924	3922
3925	3923
3926	3924
3927	3925
3928	3926
3929	3927
3930	3928
3931	3929
3932	3930
3933	3931
3934	3932
3935	3933
3936	3934
3937	3935
3938	3936
3939	3937
3940	3938
3941	3939
3942	3940
3943	3941
3944	3942
3945	3943
3946	3944
3947	3945
3948	3946
3949	3947
3950	3948
3951	3949
3952	3950
3953	3951
3954	3952
3955	3953
3956	3954
3957	3955
3958	3956
3959	3957
3960	3958
3961	3959
3962	3960
3963	3961
3964	3962
3965	3963
3966	3964
3967	3965
3968	3966
3969	3967
3970	3968
3971	3969
3972	3970
3973	3971
3974	3972
3975	3973
3976	3974
3977	3975
3978	3976
3979	3977
3980	3978
3981	3979
3982	3980
3983	3981
3984	3982
3985	3983
3986	3984
3987	3985
3988	3986
3989	3987
3990	3988
3991	3989
3992	3990
3993	3991
3994	3992
3995	3993
3996	3994
3997	3995
3998	3996
3999	3997
4000	3998
4001	3999
4002	4000
4003	4001
4004	4002
4005	4003
4006	4004
4007	4005
4008	4006
4009	4007
4010	4008
4011	4009
4012	4010
4013	4011
4014	4012
4015	4013
4016	4014
4017	4015
4018	4016
4019	4017
4020	4018
4021	4019
4022	4020
4023	4021
4024	4022
4025	4023
4026	4024
4027	4025
4028	4026
4029	4027
4030	4028
4031	4029
4032	4030
4033	4031
4034	4032
4035	4033
4036	4034
4037	4035
4038	4036
4039	4037
4040	4038
4041	4039
4042	4040
4043	4041
4044	4042
4045	4043
4046	4044
4047	4045
4048	4046
4049	4047
4050	4048
4051	4049
4052	4050
4053	4051
4054	4052
4055	4053
4056	4054
4057	4055
4058	4056
4059	4057
4060	4058
4061	4059
4062	4060
4063	4061
4064	4062
4065	4063
4066	4064
4067	4065
4068	4066
4069	4067
4070	4068
4071	4069
4072	4070
4073	4071
4074	4072
4075	4073
4076	4074
4077	4075
4078	4076
4079	4077
4080	4078
4081	4079
4082	4080
4083	4081
4084	4082
4085	4083
4086	4084
4087	4085
4088	4086
4089	4087
4090	4088
4091	4089
4092	4090
4093	4091
4094	4092
4095	4093
4096	4094
4097	4095
4098	4096
4099	4097
4100	4098
4101	4099
4102	4100
4103	4101
4104	4102
4105	4103
4106	4104
4107	4105
4108	4106
4109	4107
4110	4108
4111	4109
4112	4110
4113	4111
4114	4112
4115	4113
4116	4114
4117	4115
4118	4116
4119	4117
4120	4118
4121	4119
4122	4120
4123	4121
4124	4122
4125	4123
4126	4124
4127	4125
4128	4126
4129	4127
4130	4128
4131	4129
4132	4130
4133	4131
4134	4132
4135	4133
4136	4134
4137	4135
4138	4136
4139	4137
4140	4138
4141	4139
4142	4140
4143	4141
4144	4142
4145	4143
4146	4144
4147	4145
4148	4146
4149	4147
4150	4148
4151	4149
4152	4150
4153	4151
4154	4152
4155	4153
4156	4154
4157	4155
4158	4156
4159	4157
4160	4158
4161	4159
4162	4160
4163	4161
4164	4162
4165	4163
4166	4164
4167	4165
4168	4166
4169	4167
4170	4168
4171	4169
4172	4170
4173	4171
4174	4172
4175	4173
4176	4174
4177	4175
4178	4176
4179	4177
4180	4178
4181	4179
4182	4180
4183	4181
4184	4182
4185	4183
4186	4184
4187	4185
4188	4186
4189	4187
4190	4188
4191	4189
4192	4190
4193	4191
4194	4192
4195	4193
4196	4194
4197	4195
4198	4196
4199	4197
4200	4198
4201	4199
4202	4200
4203	4201
4204	4202
4205	4203
4206	4204
4207	4205
4208	4206
4209	4207
4210	4208
4211	4209
4212	4210
4213	4211
4214	4212
4215	4213
4216	4214
4217	4215
4218	4216
4219	4217
4220	4218
4221	4219
4222	4220
4223	4221
4224	4222
4225	4223
4226	4224
4227	4225
4228	4226
4229	4227
4230	4228
4231	4229
4232	4230
4233	4231
4234	4232
4235	4233
4236	4234
4237	4235
4238	4236
4239	4237
4240	4238
4241	4239
4242	4240
4243	4241
4244	4242
4245	4243
4246	4244
4247	4245
4248	4246
4249	4247
4250	4248
4251	4249
4252	4250
4253	4251
4254	4252
4255	4253
4256	4254
4257	4255
4258	4256
4259	4257
4260	4258
4261	4259
4262	4260
4263	4261
4264	4262
4265	4263
4266	4264
4267	4265
4268	4266
4269	4267
4270	4268
4271	4269
4272	4270
4273	4271
4274	4272
4275	4273
4276	4274
4277	4275
4278	4276
4279	4277
4280	4278
4281	4279
4282	4280
4283	4281
4284	4282
4285	4283
4286	4284
4287	4285
4288	4286
4289	4287
4290	4288
4291	4289
4292	4290
4293	4291
4294	4292
4295	4293
4296	4294
4297	4295
4298	4296
4299	4297
4300	4298
4301	4299
4302	4300
4303	4301
4304	4302
4305	4303
4306	4304
4307	4305
4308	4306
4309	4307
4310	4308
4311	4309
4312	4310
4313	4311
4314	4312
4315	4313
4316	4314
4317	4315
4318	4316
4319	4317
4320	4318
4321	4319
4322	4320
4323	4321
4324	4322
4325	4323
4326	4324
4327	4325
4328	4326
4329	4327
4330	4328
4331	4329
4332	4330
4333	4331
4334	4332
4335	4333
4336	4334
4337	4335
4338	4336
4339	4337
4340	4338
4341	4339
4342	4340
4343	4341
4344	4342
4345	4343
4346	4344
4347	4345
4348	4346
4349	4347
4350	4348
4351	4349
4352	4350
4353	4351
4354	4352
4355	4353
4356	4354
4357	4355
4358	4356
4359	4357
4360	4358
4361	4359
4362	4360
4363	4361
4364	4362
4365	4363
4366	4364
4367	4365
4368	4366
4369	4367
4370	4368
4371	4369
4372	4370
4373	4371
4374	4372
4375	4373
4376	4374
4377	4375
4378	4376
4379	4377
4380	4378
4381	4379
4382	4380
4383	4381
4384	4382
4385	4383
4386	4384
4387	4385
4388	4386
4389	4387
4390	4388
4391	4389
4392	4390
4393	4391
4394	4392
4395	4393
4396	4394
4397	4395
4398	4396
4399	4397
4400	4398
4401	4399
4402	4400
4403	4401
4404	4402
4405	4403
4406	4404
4407	4405
4408	4406
4409	4407
4410	4408
4411	4409
4412	4410
4413	4411
4414	4412
4415	4413
4416	4414
4417	4415
4418	4416
4419	4417
4420	4418
4421	4419
4422	4420
4423	4421
4424	4422
4425	4423
4426	4424
4427	4425
4428	4426
4429	4427
4430	4428
4431	4429
4432	4430
4433	4431
4434	4432
4435	4433
4436	4434
4437	4435
4438	4436
4439	4437
4440	4438
4441	4439
4442	4440
4443	4441
4444	4442
4445	4443
4446	4444
4447	4445
4448	4446
4449	4447
4450	4448
4451	4449
4452	4450
4453	4451
4454	4452
4455	4453
4456	4454
4457	4455
4458	4456
4459	4457
4460	4458
4461	4459
4462	4460
4463	4461
4464	4462
4465	4463
4466	4464
4467	4465
4468	4466
4469	4467
4470	4468
4471	4469
4472	4470
4473	4471
4474	4472
4475	4473
4476	4474
4477	4475
4478	4476
4479	4477
4480	4478
4481	4479
\.


--
-- Data for Name: videoadmin_userprofileobjects_video_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videoadmin_userprofileobjects_video_objects (id, userprofileobjects_id, video_objects_id) FROM stdin;
8	4	2
9	4	3
10	5	3
11	4	4
12	4	5
14	7	4
15	8	4
16	9	4
17	10	4
18	11	4
19	12	4
20	13	4
21	14	4
22	15	4
23	16	4
24	17	4
25	18	4
26	19	4
27	20	4
28	21	4
29	22	4
30	23	4
31	24	4
32	25	4
33	26	4
34	27	4
35	28	4
36	29	4
37	30	4
38	31	4
39	32	4
40	33	4
41	34	4
42	35	4
43	36	4
44	37	4
45	38	4
46	39	4
47	40	4
48	41	4
49	42	4
50	43	4
51	44	4
52	45	4
53	46	4
54	47	4
55	48	4
56	49	4
57	50	4
58	51	4
59	52	4
60	53	4
61	54	4
62	55	4
63	56	4
64	57	4
65	58	4
66	59	4
67	60	4
68	61	4
69	62	4
70	63	4
71	64	4
72	65	4
73	66	4
74	67	4
75	68	4
76	69	4
77	70	4
78	71	4
79	72	4
80	73	4
81	74	4
82	75	4
83	76	4
84	77	4
85	78	4
86	79	4
87	80	4
88	81	4
89	82	4
90	83	4
91	84	4
92	85	4
93	86	4
94	87	4
95	88	4
96	89	4
97	90	4
98	91	4
99	92	4
100	93	4
101	94	4
102	95	4
103	96	4
104	97	4
105	98	4
106	99	4
107	100	4
108	101	4
109	102	4
110	103	4
111	104	4
112	105	4
113	106	4
114	107	4
115	108	4
116	109	4
117	110	4
118	111	4
119	112	4
120	113	4
121	114	4
122	115	4
123	116	4
124	117	4
125	118	4
126	119	4
127	120	4
128	121	4
129	122	4
130	123	4
131	124	4
132	125	4
133	126	4
134	127	4
135	128	4
136	129	4
137	130	4
138	131	4
139	132	4
140	133	4
141	134	4
142	135	4
143	136	4
144	137	4
145	138	4
146	139	4
147	140	4
148	141	4
149	142	4
150	143	4
151	144	4
152	145	4
153	146	4
154	147	4
155	148	4
156	149	4
157	150	4
158	151	4
159	152	4
160	153	4
161	154	4
162	155	4
163	156	4
164	157	4
165	158	4
166	159	4
167	160	4
168	161	4
169	162	4
170	163	4
171	164	4
172	165	4
173	166	4
174	167	4
175	168	4
176	169	4
177	170	4
178	171	4
179	172	4
180	173	4
181	174	4
182	175	4
183	176	4
184	177	4
185	178	4
186	179	4
187	180	4
188	181	4
189	182	4
190	183	4
191	184	4
192	185	4
193	186	4
194	187	4
195	188	4
196	189	4
197	190	4
198	191	4
199	192	4
200	193	4
201	194	4
202	195	4
203	196	4
204	197	4
205	198	4
206	199	4
207	200	4
208	201	4
209	202	4
210	203	4
211	204	4
212	205	4
213	206	4
214	207	4
215	208	4
216	209	4
217	210	4
218	211	4
219	212	4
220	213	4
221	214	4
222	215	4
223	216	4
224	217	4
225	218	4
226	219	4
227	220	4
228	221	4
229	222	4
230	223	4
231	224	4
232	225	4
233	226	4
234	227	4
235	228	4
236	229	4
237	230	4
238	231	4
239	232	4
240	233	4
241	234	4
242	235	4
243	236	4
244	237	4
245	238	4
246	239	4
247	240	4
248	241	4
249	242	4
250	243	4
251	244	4
252	245	4
253	246	4
254	247	4
255	248	4
256	249	4
257	250	4
258	251	4
259	252	4
260	253	4
261	254	4
262	255	4
263	256	4
264	257	4
265	258	4
266	259	4
267	260	4
268	261	4
269	262	4
270	263	4
271	264	4
272	265	4
273	266	4
274	267	4
275	268	4
276	269	4
277	270	4
278	271	4
279	272	4
280	273	4
281	274	4
282	275	4
283	276	4
284	277	4
285	278	4
286	279	4
287	280	4
288	281	4
289	282	4
290	283	4
291	284	4
292	285	4
293	286	4
294	287	4
295	288	4
296	289	4
297	290	4
298	291	4
299	292	4
300	293	4
301	294	4
302	295	4
303	296	4
304	297	4
305	298	4
306	299	4
307	300	4
308	301	4
309	302	4
310	303	4
311	304	4
312	305	4
313	306	4
314	307	4
315	308	4
316	309	4
317	310	4
318	311	4
319	312	4
320	313	4
321	314	4
322	315	4
323	316	4
324	317	4
325	318	4
326	319	4
327	320	4
328	321	4
329	322	4
330	323	4
331	324	4
332	325	4
333	326	4
334	327	4
335	328	4
336	329	4
337	330	4
338	331	4
339	332	4
340	333	4
341	334	4
342	335	4
343	336	4
344	337	4
345	338	4
346	339	4
347	340	4
348	341	4
349	342	4
350	343	4
351	344	4
352	345	4
353	346	4
354	347	2
355	348	2
356	349	2
357	350	2
358	351	2
359	352	2
360	353	2
361	354	2
362	355	2
363	356	2
364	357	2
365	358	2
366	359	2
367	360	2
368	361	2
369	362	2
370	363	2
371	364	2
372	365	2
373	366	2
374	367	2
375	368	2
376	369	2
377	370	2
378	371	2
379	372	2
380	373	2
381	374	2
382	375	2
383	376	2
384	377	2
385	378	2
386	379	2
387	380	2
388	381	2
389	382	2
390	383	2
391	384	2
392	385	2
393	386	2
394	387	2
395	388	2
396	389	2
397	390	2
398	391	2
399	392	2
400	393	2
401	394	2
402	395	2
403	396	2
404	397	2
405	398	2
406	399	2
407	400	2
408	401	2
409	402	2
410	403	2
411	404	2
412	405	2
413	406	2
414	407	2
415	408	2
416	409	2
417	410	2
418	411	2
419	412	2
420	413	2
421	414	2
422	415	2
423	416	2
424	417	2
425	418	2
426	419	2
427	420	2
428	421	2
429	422	2
430	423	2
431	424	2
432	425	2
433	426	2
434	427	2
435	428	2
436	429	2
437	430	2
438	431	2
439	432	2
440	433	2
441	434	2
442	435	2
443	436	2
444	437	2
445	438	2
446	439	2
447	440	2
448	441	2
449	442	2
450	443	2
451	444	2
452	445	2
453	446	2
454	447	2
455	448	2
456	449	2
457	450	2
458	451	2
459	452	2
460	453	2
461	454	2
462	455	2
463	456	2
464	457	2
465	458	2
466	459	2
467	460	2
468	461	2
469	462	2
470	463	2
471	464	2
472	465	2
473	466	2
474	467	2
475	468	2
476	469	2
477	470	2
478	471	2
479	472	2
480	473	2
481	474	2
482	475	2
483	476	2
484	477	2
485	478	2
486	479	2
487	480	2
488	481	2
489	482	2
490	483	2
491	484	2
492	485	2
493	486	2
494	487	2
495	488	2
496	489	2
497	490	2
498	491	2
499	492	2
500	493	2
501	494	2
502	495	2
503	496	2
504	497	2
505	498	2
506	499	2
507	500	2
508	501	2
509	502	2
510	503	2
511	504	2
512	505	2
513	506	2
514	507	2
515	508	2
516	509	2
517	510	2
518	511	2
519	512	2
520	513	2
521	514	2
522	515	2
523	516	2
524	517	2
525	518	2
526	519	2
527	520	2
528	521	2
529	522	2
530	523	2
531	524	2
532	525	2
533	526	2
534	527	2
535	528	2
536	529	2
537	530	2
538	531	2
539	532	2
540	533	2
541	534	2
542	535	2
543	536	2
544	537	2
545	538	2
546	539	2
547	540	2
548	541	2
549	542	2
550	543	2
551	544	2
552	545	2
553	546	2
554	547	2
555	548	2
556	549	2
557	550	2
558	551	2
559	552	2
560	553	2
561	554	2
562	555	2
563	556	2
564	557	2
565	558	2
566	559	2
567	560	2
568	561	2
569	562	2
570	563	2
571	564	2
572	565	2
573	566	2
574	567	2
575	568	2
576	569	2
577	570	2
578	571	2
579	572	2
580	573	2
581	574	2
582	575	2
583	576	2
584	577	2
585	578	2
586	579	2
587	580	2
588	581	2
589	582	2
590	583	2
591	584	2
592	585	2
593	586	2
594	587	2
595	588	2
596	589	2
597	590	2
598	591	2
599	592	2
600	593	2
601	594	2
602	595	2
603	596	2
604	597	2
605	598	2
606	599	2
607	600	2
608	601	2
609	602	2
610	603	2
611	604	2
612	605	2
613	606	2
614	607	2
615	608	2
616	609	2
617	610	2
618	611	2
619	612	2
620	613	2
621	614	2
622	615	2
623	616	2
624	617	2
625	618	2
626	619	2
627	620	2
628	621	2
629	622	2
630	623	2
631	624	2
632	625	2
633	626	2
634	627	2
635	628	2
636	629	2
637	630	2
638	631	2
639	632	2
640	633	2
641	634	2
642	635	2
643	636	2
644	637	2
645	638	2
646	639	2
647	640	2
648	641	2
649	642	2
650	643	2
651	644	2
652	645	2
653	646	2
654	647	2
655	648	2
656	649	2
657	650	2
658	651	2
659	652	2
660	653	2
661	654	2
662	655	2
663	656	2
664	657	2
665	658	2
666	659	2
667	660	2
668	661	2
669	662	2
670	663	2
671	664	2
672	665	2
673	666	2
674	667	2
675	668	2
676	669	2
677	670	2
678	671	2
679	672	2
680	673	2
681	674	2
682	675	2
683	676	2
684	677	2
685	678	2
686	679	2
687	680	2
688	681	2
689	682	2
690	683	2
691	684	2
692	685	2
693	686	2
694	687	2
695	688	2
696	689	2
697	690	2
698	691	2
699	692	2
700	693	2
701	694	2
702	695	2
703	696	2
704	697	2
705	698	2
706	699	2
707	700	2
708	701	2
709	702	2
710	703	2
711	704	2
712	705	2
713	706	2
714	707	2
715	708	2
716	709	2
717	710	2
718	711	2
719	712	2
720	713	2
721	714	2
722	715	2
723	716	2
724	717	2
725	718	2
726	719	2
727	720	2
728	721	2
729	722	2
730	723	2
731	724	2
732	725	2
733	726	2
734	727	2
735	728	2
736	729	2
737	730	2
738	731	2
739	732	2
740	733	2
741	734	2
742	735	2
743	736	2
744	737	2
745	738	2
746	739	2
747	740	2
748	741	2
749	742	2
750	743	2
751	744	2
752	745	2
753	746	2
754	747	2
755	748	2
756	749	2
757	750	2
758	751	2
759	752	2
760	753	2
761	754	2
762	755	2
763	756	2
764	757	2
765	758	2
766	759	2
767	760	2
768	761	2
769	762	2
770	763	2
771	764	2
772	765	2
773	766	2
774	767	2
775	768	2
776	769	2
777	770	2
778	771	2
779	772	2
780	773	2
781	774	2
782	775	2
783	776	2
784	777	2
785	778	2
786	779	2
787	780	2
788	781	2
789	782	2
790	783	2
791	784	2
792	785	2
793	786	2
794	787	2
795	788	2
796	789	2
797	790	2
798	791	2
799	792	2
800	793	2
801	794	2
802	795	2
803	796	2
804	797	2
805	798	2
806	799	2
807	800	2
808	801	2
809	802	2
810	803	2
811	804	2
812	805	2
813	806	2
814	807	2
815	808	2
816	809	2
817	810	2
818	811	2
819	812	2
820	813	2
821	814	2
822	815	2
823	816	2
824	817	2
825	818	2
826	819	2
827	820	2
828	821	2
829	822	2
830	823	2
831	824	2
832	825	2
833	826	2
834	827	2
835	828	2
836	829	2
837	830	2
838	831	2
839	832	2
840	833	2
841	834	2
842	835	2
843	836	2
844	837	2
845	838	2
846	839	2
847	840	2
848	841	2
849	842	2
850	843	2
851	844	2
852	845	2
853	846	2
854	847	2
855	848	2
856	849	2
857	850	2
858	851	2
859	852	2
860	853	2
861	854	2
862	855	2
863	856	2
864	857	2
865	858	2
866	859	2
867	860	2
868	861	2
869	862	2
870	863	2
871	864	2
872	865	2
873	866	2
874	867	2
875	868	2
876	869	2
877	870	2
878	871	2
879	872	2
880	873	2
881	874	2
882	875	2
883	876	2
884	877	2
885	878	2
886	879	2
887	880	2
888	881	2
889	882	2
890	883	2
891	884	2
892	885	2
893	886	2
894	887	2
895	888	2
896	889	2
897	890	2
898	891	2
899	892	2
900	893	2
901	894	2
902	895	2
903	896	2
904	897	2
905	898	2
906	899	2
907	900	2
908	901	2
909	902	2
910	903	2
911	904	2
912	905	2
913	906	2
914	907	2
915	908	2
916	909	2
917	910	2
918	911	2
919	912	2
920	913	2
921	914	2
922	915	2
923	916	2
924	917	2
925	918	2
926	919	2
927	920	2
928	921	2
929	922	2
930	923	2
931	924	2
932	925	2
933	926	2
934	927	2
935	928	2
936	929	2
937	930	2
938	931	2
939	932	2
940	933	2
941	934	2
942	935	2
943	936	2
944	937	2
945	938	2
946	939	2
947	940	2
948	941	2
949	942	2
950	943	2
951	944	2
952	945	2
953	946	2
954	947	2
955	948	2
956	949	2
957	950	2
958	951	2
959	952	2
960	953	2
961	954	2
962	955	2
963	956	2
964	957	2
965	958	2
966	959	2
967	960	2
968	961	2
969	962	2
970	963	2
971	964	2
972	965	2
973	966	2
974	967	2
975	968	2
976	969	2
977	970	2
978	971	2
979	972	2
980	973	2
981	974	2
982	975	2
983	976	2
984	977	2
985	978	2
986	979	2
987	980	2
988	981	2
989	982	2
990	983	2
991	984	2
992	985	2
993	986	2
994	987	2
995	988	2
996	989	2
997	990	2
998	991	2
999	992	2
1000	993	2
1001	994	2
1002	995	2
1003	996	2
1004	997	2
1005	998	2
1006	999	2
1007	1000	2
1008	1001	2
1009	1002	2
1010	1003	2
1011	1004	2
1012	1005	2
1013	1006	2
1014	1007	2
1015	1008	2
1016	1009	2
1017	1010	2
1018	1011	2
1019	1012	2
1020	1013	2
1021	1014	2
1022	1015	2
1023	1016	2
1024	1017	2
1025	1018	2
1026	1019	2
1027	1020	2
1028	1021	2
1029	1022	2
1030	1023	2
1031	1024	2
1032	1025	2
1033	1026	2
1034	1027	2
1035	1028	2
1036	1029	2
1037	1030	2
1038	1031	2
1039	1032	2
1040	1033	2
1041	1034	2
1042	1035	2
1043	1036	2
1044	1037	2
1045	1038	2
1046	1039	2
1047	1040	2
1048	1041	2
1049	1042	2
1050	1043	2
1051	1044	2
1052	1045	2
1053	1046	2
1054	1047	2
1055	1048	2
1056	1049	2
1057	1050	2
1058	1051	2
1059	1052	2
1060	1053	2
1061	1054	2
1062	1055	2
1063	1056	2
1064	1057	2
1065	1058	2
1066	1059	2
1067	1060	2
1068	1061	2
1069	1062	2
1070	1063	2
1071	1064	2
1072	1065	2
1073	1066	2
1074	1067	2
1075	1068	2
1076	1069	2
1077	1070	2
1078	1071	2
1079	1072	2
1080	1073	2
1081	1074	2
1082	1075	2
1083	1076	2
1084	1077	2
1085	1078	2
1086	1079	2
1087	1080	2
1088	1081	2
1089	1082	2
1090	1083	2
1091	1084	2
1092	1085	2
1093	1086	2
1094	1087	2
1095	1088	2
1096	1089	2
1097	1090	2
1098	1091	2
1099	1092	2
1100	1093	2
1101	1094	2
1102	1095	2
1103	1096	2
1104	1097	2
1105	1098	2
1106	1099	2
1107	1100	2
1108	1101	2
1109	1102	2
1110	1103	2
1111	1104	2
1112	1105	2
1113	1106	2
1114	1107	2
1115	1108	2
1116	1109	2
1117	1110	2
1118	1111	2
1119	1112	2
1120	1113	2
1121	1114	2
1122	1115	2
1123	1116	2
1124	1117	2
1125	1118	2
1126	1119	2
1127	1120	2
1128	1121	2
1129	1122	2
1130	1123	2
1131	1124	2
1132	1125	2
1133	1126	2
1134	1127	2
1135	1128	2
1136	1129	2
1137	1130	2
1138	1131	2
1139	1132	2
1140	1133	2
1141	1134	2
1142	1135	2
1143	1136	2
1144	1137	2
1145	1138	2
1146	1139	2
1147	1140	2
1148	1141	2
1149	1142	2
1150	1143	2
1151	1144	2
1152	1145	2
1153	1146	2
1154	1147	2
1155	1148	2
1156	1149	2
1157	1150	2
1158	1151	2
1159	1152	2
1160	1153	2
1161	1154	2
1162	1155	2
1163	1156	2
1164	1157	2
1165	1158	2
1166	1159	2
1167	1160	2
1168	1161	2
1169	1162	2
1170	1163	2
1171	1164	2
1172	1165	2
1173	1166	2
1174	1167	2
1175	1168	2
1176	1169	2
1177	1170	2
1178	1171	2
1179	1172	2
1180	1173	2
1181	1174	2
1182	1175	2
1183	1176	2
1184	1177	2
1185	1178	2
1186	1179	2
1187	1180	2
1188	1181	2
1189	1182	2
1190	1183	2
1191	1184	2
1192	1185	2
1193	1186	2
1194	1187	2
1195	1188	2
1196	1189	2
1197	1190	2
1198	1191	2
1199	1192	2
1200	1193	2
1201	1194	2
1202	1195	2
1203	1196	2
1204	1197	2
1205	1198	2
1206	1199	2
1207	1200	2
1208	1201	2
1209	1202	2
1210	1203	2
1211	1204	2
1212	1205	2
1213	1206	2
1214	1207	2
1215	1208	2
1216	1209	2
1217	1210	2
1218	1211	2
1219	1212	2
1220	1213	2
1221	1214	2
1222	1215	2
1223	1216	2
1224	1217	2
1225	1218	2
1226	1219	2
1227	1220	2
1228	1221	2
1229	1222	2
1230	1223	2
1231	1224	2
1232	1225	2
1233	1226	2
1234	1227	2
1235	1228	2
1236	1229	2
1237	1230	2
1238	1231	2
1239	1232	2
1240	1233	2
1241	1234	2
1242	1235	2
1243	1236	2
1244	1237	2
1245	1238	2
1246	1239	2
1247	1240	2
1248	1241	2
1249	1242	2
1250	1243	2
1251	1244	2
1252	1245	2
1253	1246	2
1254	1247	2
1255	1248	2
1256	1249	2
1257	1250	2
1258	1251	2
1259	1252	2
1260	1253	2
1261	1254	2
1262	1255	2
1263	1256	2
1264	1257	2
1265	1258	2
1266	1259	2
1267	1260	2
1268	1261	2
1269	1262	2
1270	1263	2
1271	1264	2
1272	1265	2
1273	1266	2
1274	1267	2
1275	1268	2
1276	1269	2
1277	1270	2
1278	1271	2
1279	1272	2
1280	1273	2
1281	1274	2
1282	1275	2
1283	1276	2
1284	1277	2
1285	1278	2
1286	1279	2
1287	1280	2
1288	1281	2
1289	1282	2
1290	1283	2
1291	1284	2
1292	1285	2
1293	1286	2
1294	1287	2
1295	1288	2
1296	1289	2
1297	1290	2
1298	1291	2
1299	1292	2
1300	1293	2
1301	1294	2
1302	1295	2
1303	1296	2
1304	1297	2
1305	1298	2
1306	1299	2
1307	1300	2
1308	1301	2
1309	1302	2
1310	1303	2
1311	1304	2
1312	1305	2
1313	1306	2
1314	1307	2
1315	1308	2
1316	1309	2
1317	1310	2
1318	1311	2
1319	1312	2
1320	1313	2
1321	1314	2
1322	1315	2
1323	1316	2
1324	1317	2
1325	1318	2
1326	1319	2
1327	1320	2
1328	1321	2
1329	1322	2
1330	1323	2
1331	1324	2
1332	1325	2
1333	1326	2
1334	1327	2
1335	1328	2
1336	1329	2
1337	1330	2
1338	1331	2
1339	1332	2
1340	1333	2
1341	1334	2
1342	1335	2
1343	1336	2
1344	1337	2
1345	1338	2
1346	1339	2
1347	1340	2
1348	1341	2
1349	1342	2
1350	1343	2
1351	1344	2
1352	1345	2
1353	1346	2
1354	1347	2
1355	1348	2
1356	1349	2
1357	1350	2
1358	1351	2
1359	1352	2
1360	1353	2
1361	1354	2
1362	1355	2
1363	1356	2
1364	1357	2
1365	1358	2
1366	1359	2
1367	1360	2
1368	1361	2
1369	1362	2
1370	1363	2
1371	1364	2
1372	1365	2
1373	1366	2
1374	1367	2
1375	1368	2
1376	1369	2
1377	1370	2
1378	1371	2
1379	1372	2
1380	1373	2
1381	1374	2
1382	1375	2
1383	1376	2
1384	1377	2
1385	1378	2
1386	1379	2
1387	1380	2
1388	1381	2
1389	1382	2
1390	1383	2
1391	1384	2
1392	1385	2
1393	1386	2
1394	1387	2
1395	1388	2
1396	1389	2
1397	1390	2
1398	1391	2
1399	1392	2
1400	1393	2
1401	1394	2
1402	1395	2
1403	1396	2
1404	1397	2
1405	1398	2
1406	1399	2
1407	1400	2
1408	1401	2
1409	1402	2
1410	1403	2
1411	1404	2
1412	1405	2
1413	1406	2
1414	1407	2
1415	1408	2
1416	1409	2
1417	1410	2
1418	1411	2
1419	1412	2
1420	1413	2
1421	1414	2
1422	1415	2
1423	1416	2
1424	1417	2
1425	1418	2
1426	1419	2
1427	1420	2
1428	1421	2
1429	1422	2
1430	1423	2
1431	1424	2
1432	1425	2
1433	1426	2
1434	1427	2
1435	1428	2
1436	1429	2
1437	1430	2
1438	1431	2
1439	1432	2
1440	1433	2
1441	1434	2
1442	1435	2
1443	1436	2
1444	1437	2
1445	1438	2
1446	1439	2
1447	1440	2
1448	1441	2
1449	1442	2
1450	1443	2
1451	1444	2
1452	1445	2
1453	1446	2
1454	1447	2
1455	1448	2
1456	1449	2
1457	1450	2
1458	1451	2
1459	1452	2
1460	1453	2
1461	1454	2
1462	1455	2
1463	1456	2
1464	1457	2
1465	1458	2
1466	1459	2
1467	1460	2
1468	1461	2
1469	1462	2
1470	1463	2
1471	1464	2
1472	1465	2
1473	1466	2
1474	1467	2
1475	1468	2
1476	1469	2
1477	1470	2
1478	1471	2
1479	1472	2
1480	1473	2
1481	1474	2
1482	1475	2
1483	1476	2
1484	1477	2
1485	1478	2
1486	1479	2
1487	1480	2
1488	1481	2
1489	1482	2
1490	1483	2
1491	1484	2
1492	1485	2
1493	1486	2
1494	1487	2
1495	1488	2
1496	1489	2
1497	1490	2
1498	1491	2
1499	1492	2
1500	1493	2
1501	1494	2
1502	1495	2
1503	1496	2
1504	1497	2
1505	1498	2
1506	1499	2
1507	1500	2
1508	1501	2
1509	1502	2
1510	1503	2
1511	1504	2
1512	1505	2
1513	1506	2
1514	1507	2
1515	1508	2
1516	1509	2
1517	1510	2
1518	1511	2
1519	1512	2
1520	1513	2
1521	1514	2
1522	1515	2
1523	1516	2
1524	1517	2
1525	1518	2
1526	1519	2
1527	1520	2
1528	1521	2
1529	1522	2
1530	1523	2
1531	1524	2
1532	1525	2
1533	1526	2
1534	1527	2
1535	1528	2
1536	1529	2
1537	1530	2
1538	1531	2
1539	1532	2
1540	1533	2
1541	1534	2
1542	1535	2
1543	1536	2
1544	1537	2
1545	1538	2
1546	1539	2
1547	1540	2
1548	1541	2
1549	1542	2
1550	1543	2
1551	1544	2
1552	1545	2
1553	1546	2
1554	1547	2
1555	1548	2
1556	1549	2
1557	1550	2
1558	1551	2
1559	1552	2
1560	1553	2
1561	1554	2
1562	1555	2
1563	1556	2
1564	1557	2
1565	1558	2
1566	1559	2
1567	1560	2
1568	1561	2
1569	1562	2
1570	1563	2
1571	1564	2
1572	1565	2
1573	1566	2
1574	1567	2
1575	1568	2
1576	1569	2
1577	1570	2
1578	1571	2
1579	1572	2
1580	1573	2
1581	1574	2
1582	1575	2
1583	1576	2
1584	1577	2
1585	1578	2
1586	1579	2
1587	1580	2
1588	1581	2
1589	1582	2
1590	1583	2
1591	1584	2
1592	1585	2
1593	1586	2
1594	1587	2
1595	1588	2
1596	1589	2
1597	1590	2
1598	1591	2
1599	1592	2
1600	1593	2
1601	1594	2
1602	1595	2
1603	1596	2
1604	1597	2
1605	1598	2
1606	1599	2
1607	1600	2
1608	1601	2
1609	1602	2
1610	1603	2
1611	1604	2
1612	1605	2
1613	1606	2
1614	1607	2
1615	1608	2
1616	1609	2
1617	1610	2
1618	1611	2
1619	1612	2
1620	1613	2
1621	1614	2
1622	1615	2
1623	1616	2
1624	1617	2
1625	1618	2
1626	1619	2
1627	1620	2
1628	1621	2
1629	1622	2
1630	1623	2
1631	1624	2
1632	1625	2
1633	1626	2
1634	1627	2
1635	1628	2
1636	1629	2
1637	1630	2
1638	1631	2
1639	1632	2
1640	1633	2
1641	1634	2
1642	1635	2
1643	1636	2
1644	1637	2
1645	1638	2
1646	1639	2
1647	1640	2
1648	1641	2
1649	1642	2
1650	1643	2
1651	1644	2
1652	1645	2
1653	1646	2
1654	1647	2
1655	1648	2
1656	1649	2
1657	1650	2
1658	1651	2
1659	1652	2
1660	1653	2
1661	1654	2
1662	1655	2
1663	1656	2
1664	1657	2
1665	1658	2
1666	1659	2
1667	1660	2
1668	1661	2
1669	1662	2
1670	1663	2
1671	1664	2
1672	1665	2
1673	1666	2
1674	1667	2
1675	1668	2
1676	1669	2
1677	1670	2
1678	1671	2
1679	1672	2
1680	1673	2
1681	1674	2
1682	1675	2
1683	1676	2
1684	1677	2
1685	1678	2
1686	1679	2
1687	1680	2
1688	1681	2
1689	1682	2
1690	1683	2
1691	1684	2
1692	1685	2
1693	1686	2
1694	1687	2
1695	1688	2
1696	1689	2
1697	1690	2
1698	1691	2
1699	1692	2
1700	1693	2
1701	1694	2
1702	1695	2
1703	1696	2
1704	1697	2
1705	1698	2
1706	1699	2
1707	1700	2
1708	1701	2
1709	1702	2
1710	1703	2
1711	1704	2
1712	1705	2
1713	1706	2
1714	1707	3
1715	1708	3
1716	1709	3
1717	1710	3
1718	1711	3
1719	1712	3
1720	1713	3
1721	1714	3
1722	1715	3
1723	1716	3
1724	1717	3
1725	1718	3
1726	1719	3
1727	1720	3
1728	1721	3
1729	1722	3
1730	1723	3
1731	1724	3
1732	1725	3
1733	1726	3
1734	1727	3
1735	1728	3
1736	1729	3
1737	1730	3
1738	1731	3
1739	1732	3
1740	1733	3
1741	1734	3
1742	1735	3
1743	1736	3
1744	1737	3
1745	1738	3
1746	1739	3
1747	1740	3
1748	1741	3
1749	1742	3
1750	1743	3
1751	1744	3
1752	1745	3
1753	1746	3
1754	1747	3
1755	1748	3
1756	1749	3
1757	1750	3
1758	1751	3
1759	1752	3
1760	1753	3
1761	1754	3
1762	1755	3
1763	1756	3
1764	1757	3
1765	1758	3
1766	1759	3
1767	1760	3
1768	1761	3
1769	1762	3
1770	1763	3
1771	1764	3
1772	1765	3
1773	1766	3
1774	1767	3
1775	1768	3
1776	1769	3
1777	1770	3
1778	1771	3
1779	1772	3
1780	1773	3
1781	1774	3
1782	1775	3
1783	1776	3
1784	1777	3
1785	1778	3
1786	1779	3
1787	1780	3
1788	1781	3
1789	1782	3
1790	1783	3
1791	1784	3
1792	1785	3
1793	1786	3
1794	1787	3
1795	1788	3
1796	1789	3
1797	1790	3
1798	1791	3
1799	1792	3
1800	1793	3
1801	1794	3
1802	1795	3
1803	1796	3
1804	1797	3
1805	1798	3
1806	1799	3
1807	1800	3
1808	1801	3
1809	1802	3
1810	1803	3
1811	1804	3
1812	1805	3
1813	1806	3
1814	1807	3
1815	1808	3
1816	1809	3
1817	1810	3
1818	1811	3
1819	1812	3
1820	1813	3
1821	1814	3
1822	1815	3
1823	1816	3
1824	1817	3
1825	1818	3
1826	1819	3
1827	1820	3
1828	1821	3
1829	1822	3
1830	1823	3
1831	1824	3
1832	1825	3
1833	1826	3
1834	1827	3
1835	1828	3
1836	1829	3
1837	1830	3
1838	1831	3
1839	1832	3
1840	1833	3
1841	1834	3
1842	1835	3
1843	1836	3
1844	1837	3
1845	1838	3
1846	1839	3
1847	1840	3
1848	1841	3
1849	1842	3
1850	1843	3
1851	1844	3
1852	1845	3
1853	1846	3
1854	1847	3
1855	1848	3
1856	1849	3
1857	1850	3
1858	1851	3
1859	1852	3
1860	1853	3
1861	1854	3
1862	1855	3
1863	1856	3
1864	1857	3
1865	1858	3
1866	1859	3
1867	1860	3
1868	1861	3
1869	1862	3
1870	1863	3
1871	1864	3
1872	1865	3
1873	1866	3
1874	1867	3
1875	1868	3
1876	1869	3
1877	1870	3
1878	1871	3
1879	1872	3
1880	1873	3
1881	1874	3
1882	1875	3
1883	1876	3
1884	1877	3
1885	1878	3
1886	1879	3
1887	1880	3
1888	1881	3
1889	1882	3
1890	1883	3
1891	1884	3
1892	1885	3
1893	1886	3
1894	1887	3
1895	1888	3
1896	1889	3
1897	1890	3
1898	1891	3
1899	1892	3
1900	1893	3
1901	1894	3
1902	1895	3
1903	1896	3
1904	1897	3
1905	1898	3
1906	1899	3
1907	1900	3
1908	1901	3
1909	1902	3
1910	1903	3
1911	1904	3
1912	1905	3
1913	1906	3
1914	1907	3
1915	1908	3
1916	1909	3
1917	1910	3
1918	1911	3
1919	1912	3
1920	1913	3
1921	1914	3
1922	1915	3
1923	1916	3
1924	1917	3
1925	1918	3
1926	1919	3
1927	1920	3
1928	1921	3
1929	1922	3
1930	1923	3
1931	1924	3
1932	1925	3
1933	1926	3
1934	1927	3
1935	1928	3
1936	1929	3
1937	1930	3
1938	1931	3
1939	1932	3
1940	1933	3
1941	1934	3
1942	1935	3
1943	1936	3
1944	1937	3
1945	1938	3
1946	1939	3
1947	1940	3
1948	1941	3
1949	1942	3
1950	1943	3
1951	1944	3
1952	1945	3
1953	1946	3
1954	1947	3
1955	1948	3
1956	1949	3
1957	1950	3
1958	1951	3
1959	1952	3
1960	1953	3
1961	1954	3
1962	1955	3
1963	1956	3
1964	1957	3
1965	1958	3
1966	1959	3
1967	1960	3
1968	1961	3
1969	1962	3
1970	1963	3
1971	1964	3
1972	1965	3
1973	1966	3
1974	1967	3
1975	1968	3
1976	1969	3
1977	1970	3
1978	1971	3
1979	1972	3
1980	1973	3
1981	1974	3
1982	1975	3
1983	1976	3
1984	1977	3
1985	1978	3
1986	1979	3
1987	1980	3
1988	1981	3
1989	1982	3
1990	1983	3
1991	1984	3
1992	1985	3
1993	1986	3
1994	1987	3
1995	1988	3
1996	1989	3
1997	1990	3
1998	1991	3
1999	1992	3
2000	1993	3
2001	1994	3
2002	1995	3
2003	1996	3
2004	1997	3
2005	1998	3
2006	1999	3
2007	2000	3
2008	2001	3
2009	2002	3
2010	2003	3
2011	2004	3
2012	2005	3
2013	2006	3
2014	2007	3
2015	2008	3
2016	2009	3
2017	2010	3
2018	2011	3
2019	2012	3
2020	2013	3
2021	2014	3
2022	2015	3
2023	2016	3
2024	2017	3
2025	2018	3
2026	2019	3
2027	2020	3
2028	2021	3
2029	2022	3
2030	2023	3
2031	2024	3
2032	2025	3
2033	2026	3
2034	2027	3
2035	2028	3
2036	2029	3
2037	2030	3
2038	2031	3
2039	2032	3
2040	2033	3
2041	2034	3
2042	2035	3
2043	2036	3
2044	2037	3
2045	2038	3
2046	2039	3
2047	2040	3
2048	2041	3
2049	2042	3
2050	2043	3
2051	2044	3
2052	2045	3
2053	2046	3
2054	2047	3
2055	2048	3
2056	2049	3
2057	2050	3
2058	2051	3
2059	2052	3
2060	2053	3
2061	2054	3
2062	2055	3
2063	2056	3
2064	2057	3
2065	2058	3
2066	2059	3
2067	2060	3
2068	2061	3
2069	2062	3
2070	2063	3
2071	2064	3
2072	2065	3
2073	2066	3
2074	2067	3
2075	2068	3
2076	2069	3
2077	2070	3
2078	2071	3
2079	2072	3
2080	2073	3
2081	2074	3
2082	2075	3
2083	2076	3
2084	2077	3
2085	2078	3
2086	2079	3
2087	2080	3
2088	2081	3
2089	2082	3
2090	2083	3
2091	2084	3
2092	2085	3
2093	2086	3
2094	2087	3
2095	2088	3
2096	2089	3
2097	2090	3
2098	2091	3
2099	2092	3
2100	2093	3
2101	2094	3
2102	2095	3
2103	2096	3
2104	2097	3
2105	2098	3
2106	2099	3
2107	2100	3
2108	2101	3
2109	2102	3
2110	2103	3
2111	2104	3
2112	2105	3
2113	2106	3
2114	2107	3
2115	2108	3
2116	2109	3
2117	2110	3
2118	2111	3
2119	2112	3
2120	2113	3
2121	2114	3
2122	2115	3
2123	2116	3
2124	2117	3
2125	2118	3
2126	2119	3
2127	2120	3
2128	2121	3
2129	2122	3
2130	2123	3
2131	2124	3
2132	2125	3
2133	2126	3
2134	2127	3
2135	2128	3
2136	2129	3
2137	2130	3
2138	2131	3
2139	2132	3
2140	2133	3
2141	2134	3
2142	2135	3
2143	2136	3
2144	2137	3
2145	2138	3
2146	2139	3
2147	2140	3
2148	2141	3
2149	2142	3
2150	2143	3
2151	2144	3
2152	2145	3
2153	2146	3
2154	2147	3
2155	2148	3
2156	2149	3
2157	2150	3
2158	2151	3
2159	2152	3
2160	2153	3
2161	2154	3
2162	2155	3
2163	2156	3
2164	2157	3
2165	2158	3
2166	2159	3
2167	2160	3
2168	2161	3
2169	2162	3
2170	2163	3
2171	2164	3
2172	2165	3
2173	2166	3
2174	2167	3
2175	2168	3
2176	2169	3
2177	2170	3
2178	2171	3
2179	2172	3
2180	2173	3
2181	2174	3
2182	2175	3
2183	2176	3
2184	2177	3
2185	2178	3
2186	2179	3
2187	2180	3
2188	2181	3
2189	2182	3
2190	2183	3
2191	2184	3
2192	2185	3
2193	2186	3
2194	2187	3
2195	2188	3
2196	2189	3
2197	2190	3
2198	2191	3
2199	2192	3
2200	2193	3
2201	2194	3
2202	2195	3
2203	2196	3
2204	2197	3
2205	2198	3
2206	2199	3
2207	2200	3
2208	2201	3
2209	2202	3
2210	2203	3
2211	2204	3
2212	2205	3
2213	2206	3
2214	2207	3
2215	2208	3
2216	2209	3
2217	2210	3
2218	2211	3
2219	2212	3
2220	2213	3
2221	2214	3
2222	2215	3
2223	2216	3
2224	2217	3
2225	2218	3
2226	2219	3
2227	2220	3
2228	2221	3
2229	2222	3
2230	2223	3
2231	2224	3
2232	2225	3
2233	2226	3
2234	2227	3
2235	2228	3
2236	2229	3
2237	2230	3
2238	2231	3
2239	2232	3
2240	2233	3
2241	2234	3
2242	2235	3
2243	2236	3
2244	2237	3
2245	2238	3
2246	2239	3
2247	2240	3
2248	2241	3
2249	2242	3
2250	2243	3
2251	2244	3
2252	2245	3
2253	2246	3
2254	2247	3
2255	2248	3
2256	2249	3
2257	2250	3
2258	2251	3
2259	2252	3
2260	2253	3
2261	2254	3
2262	2255	3
2263	2256	3
2264	2257	3
2265	2258	3
2266	2259	3
2267	2260	3
2268	2261	3
2269	2262	3
2270	2263	3
2271	2264	3
2272	2265	3
2273	2266	3
2274	2267	3
2275	2268	3
2276	2269	3
2277	2270	3
2278	2271	3
2279	2272	3
2280	2273	3
2281	2274	3
2282	2275	3
2283	2276	3
2284	2277	3
2285	2278	3
2286	2279	3
2287	2280	3
2288	2281	3
2289	2282	3
2290	2283	3
2291	2284	3
2292	2285	3
2293	2286	3
2294	2287	3
2295	2288	3
2296	2289	3
2297	2290	3
2298	2291	3
2299	2292	3
2300	2293	3
2301	2294	3
2302	2295	3
2303	2296	3
2304	2297	3
2305	2298	3
2306	2299	3
2307	2300	3
2308	2301	3
2309	2302	3
2310	2303	3
2311	2304	3
2312	2305	3
2313	2306	3
2314	2307	3
2315	2308	3
2316	2309	3
2317	2310	3
2318	2311	3
2319	2312	3
2320	2313	3
2321	2314	3
2322	2315	3
2323	2316	3
2324	2317	3
2325	2318	3
2326	2319	3
2327	2320	3
2328	2321	3
2329	2322	3
2330	2323	3
2331	2324	3
2332	2325	3
2333	2326	3
2334	2327	3
2335	2328	3
2336	2329	3
2337	2330	3
2338	2331	3
2339	2332	3
2340	2333	3
2341	2334	3
2342	2335	3
2343	2336	3
2344	2337	3
2345	2338	3
2346	2339	3
2347	2340	3
2348	2341	3
2349	2342	3
2350	2343	3
2351	2344	3
2352	2345	3
2353	2346	3
2354	2347	3
2355	2348	3
2356	2349	3
2357	2350	3
2358	2351	3
2359	2352	3
2360	2353	3
2361	2354	3
2362	2355	3
2363	2356	3
2364	2357	3
2365	2358	3
2366	2359	3
2367	2360	3
2368	2361	3
2369	2362	3
2370	2363	3
2371	2364	3
2372	2365	3
2373	2366	3
2374	2367	3
2375	2368	3
2376	2369	3
2377	2370	3
2378	2371	3
2379	2372	3
2380	2373	3
2381	2374	3
2382	2375	3
2383	2376	3
2384	2377	3
2385	2378	3
2386	2379	3
2387	2380	3
2388	2381	3
2389	2382	3
2390	2383	3
2391	2384	3
2392	2385	3
2393	2386	3
2394	2387	3
2395	2388	3
2396	2389	3
2397	2390	3
2398	2391	3
2399	2392	3
2400	2393	3
2401	2394	3
2402	2395	3
2403	2396	3
2404	2397	3
2405	2398	3
2406	2399	3
2407	2400	3
2408	2401	3
2409	2402	3
2410	2403	3
2411	2404	3
2412	2405	3
2413	2406	3
2414	2407	3
2415	2408	3
2416	2409	3
2417	2410	3
2418	2411	3
2419	2412	3
2420	2413	3
2421	2414	3
2422	2415	3
2423	2416	3
2424	2417	3
2425	2418	3
2426	2419	3
2427	2420	3
2428	2421	3
2429	2422	3
2430	2423	3
2431	2424	3
2432	2425	3
2433	2426	3
2434	2427	3
2435	2428	3
2436	2429	3
2437	2430	3
2438	2431	3
2439	2432	3
2440	2433	3
2441	2434	3
2442	2435	3
2443	2436	3
2444	2437	3
2445	2438	3
2446	2439	3
2447	2440	3
2448	2441	3
2449	2442	3
2450	2443	3
2451	2444	3
2452	2445	3
2453	2446	3
2454	2447	3
2455	2448	3
2456	2449	3
2457	2450	3
2458	2451	3
2459	2452	3
2460	2453	3
2461	2454	3
2462	2455	3
2463	2456	3
2464	2457	3
2465	2458	3
2466	2459	3
2467	2460	3
2468	2461	3
2469	2462	3
2470	2463	3
2471	2464	3
2472	2465	3
2473	2466	3
2474	2467	3
2475	2468	3
2476	2469	3
2477	2470	3
2478	2471	3
2479	2472	3
2480	2473	3
2481	2474	3
2482	2475	3
2483	2476	3
2484	2477	3
2485	2478	3
2486	2479	3
2487	2480	3
2488	2481	3
2489	2482	3
2490	2483	3
2491	2484	3
2492	2485	3
2493	2486	3
2494	2487	3
2495	2488	3
2496	2489	3
2497	2490	3
2498	2491	3
2499	2492	3
2500	2493	3
2501	2494	3
2502	2495	3
2503	2496	3
2504	2497	3
2505	2498	3
2506	2499	3
2507	2500	3
2508	2501	3
2509	2502	3
2510	2503	3
2511	2504	3
2512	2505	3
2513	2506	3
2514	2507	3
2515	2508	3
2516	2509	3
2517	2510	3
2518	2511	3
2519	2512	3
2520	2513	3
2521	2514	3
2522	2515	3
2523	2516	3
2524	2517	3
2525	2518	3
2526	2519	3
2527	2520	3
2528	2521	3
2529	2522	3
2530	2523	3
2531	2524	3
2532	2525	3
2533	2526	3
2534	2527	3
2535	2528	3
2536	2529	3
2537	2530	3
2538	2531	3
2539	2532	3
2540	2533	3
2541	2534	3
2542	2535	3
2543	2536	3
2544	2537	3
2545	2538	3
2546	2539	3
2547	2540	3
2548	2541	3
2549	2542	3
2550	2543	3
2551	2544	3
2552	2545	3
2553	2546	3
2554	2547	3
2555	2548	3
2556	2549	3
2557	2550	3
2558	2551	3
2559	2552	3
2560	2553	3
2561	2554	3
2562	2555	3
2563	2556	3
2564	2557	3
2565	2558	3
2566	2559	3
2567	2560	3
2568	2561	3
2569	2562	3
2570	2563	3
2571	2564	3
2572	2565	3
2573	2566	3
2574	2567	3
2575	2568	3
2576	2569	3
2577	2570	3
2578	2571	3
2579	2572	3
2580	2573	3
2581	2574	3
2582	2575	3
2583	2576	3
2584	2577	3
2585	2578	3
2586	2579	3
2587	2580	3
2588	2581	3
2589	2582	3
2590	2583	3
2591	2584	3
2592	2585	3
2593	2586	3
2594	2587	3
2595	2588	3
2596	2589	3
2597	2590	3
2598	2591	3
2599	2592	3
2600	2593	3
2601	2594	3
2602	2595	3
2603	2596	3
2604	2597	3
2605	2598	3
2606	2599	3
2607	2600	3
2608	2601	3
2609	2602	3
2610	2603	3
2611	2604	3
2612	2605	3
2613	2606	3
2614	2607	3
2615	2608	3
2616	2609	3
2617	2610	3
2618	2611	3
2619	2612	3
2620	2613	3
2621	2614	3
2622	2615	3
2623	2616	3
2624	2617	3
2625	2618	3
2626	2619	3
2627	2620	3
2628	2621	3
2629	2622	3
2630	2623	3
2631	2624	3
2632	2625	3
2633	2626	3
2634	2627	3
2635	2628	3
2636	2629	3
2637	2630	3
2638	2631	3
2639	2632	3
2640	2633	3
2641	2634	3
2642	2635	3
2643	2636	3
2644	2637	3
2645	2638	3
2646	2639	3
2647	2640	3
2648	2641	3
2649	2642	3
2650	2643	3
2651	2644	3
2652	2645	3
2653	2646	3
2654	2647	3
2655	2648	3
2656	2649	3
2657	2650	3
2658	2651	3
2659	2652	3
2660	2653	3
2661	2654	3
2662	2655	3
2663	2656	3
2664	2657	3
2665	2658	3
2666	2659	3
2667	2660	3
2668	2661	3
2669	2662	3
2670	2663	3
2671	2664	3
2672	2665	3
2673	2666	3
2674	2667	3
2675	2668	3
2676	2669	3
2677	2670	3
2678	2671	3
2679	2672	3
2680	2673	3
2681	2674	3
2682	2675	3
2683	2676	3
2684	2677	3
2685	2678	3
2686	2679	3
2687	2680	3
2688	2681	3
2689	2682	3
2690	2683	3
2691	2684	3
2692	2685	3
2693	2686	3
2694	2687	3
2695	2688	3
2696	2689	3
2697	2690	3
2698	2691	3
2699	2692	3
2700	2693	3
2701	2694	3
2702	2695	3
2703	2696	3
2704	2697	3
2705	2698	3
2706	2699	3
2707	2700	3
2708	2701	3
2709	2702	3
2710	2703	3
2711	2704	3
2712	2705	3
2713	2706	3
2714	2707	3
2715	2708	3
2716	2709	3
2717	2710	3
2718	2711	3
2719	2712	3
2720	2713	3
2721	2714	3
2722	2715	3
2723	2716	3
2724	2717	3
2725	2718	3
2726	2719	3
2727	2720	3
2728	2721	3
2729	2722	3
2730	2723	3
2731	2724	3
2732	2725	3
2733	2726	3
2734	2727	3
2735	2728	3
2736	2729	3
2737	2730	3
2738	2731	3
2739	2732	3
2740	2733	3
2741	2734	3
2742	2735	3
2743	2736	3
2744	2737	3
2745	2738	3
2746	2739	3
2747	2740	3
2748	2741	3
2749	2742	3
2750	2743	3
2751	2744	3
2752	2745	3
2753	2746	3
2754	2747	3
2755	2748	3
2756	2749	3
2757	2750	3
2758	2751	3
2759	2752	3
2760	2753	3
2761	2754	3
2762	2755	3
2763	2756	3
2764	2757	3
2765	2758	3
2766	2759	3
2767	2760	3
2768	2761	3
2769	2762	3
2770	2763	3
2771	2764	3
2772	2765	3
2773	2766	3
2774	2767	3
2775	2768	3
2776	2769	3
2777	2770	3
2778	2771	3
2779	2772	3
2780	2773	3
2781	2774	3
2782	2775	3
2783	2776	3
2784	2777	3
2785	2778	3
2786	2779	3
2787	2780	3
2788	2781	3
2789	2782	3
2790	2783	3
2791	2784	3
2792	2785	3
2793	2786	3
2794	2787	3
2795	2788	3
2796	2789	3
2797	2790	3
2798	2791	3
2799	2792	3
2800	2793	3
2801	2794	3
2802	2795	3
2803	2796	3
2804	2797	3
2805	2798	3
2806	2799	3
2807	2800	3
2808	2801	3
2809	2802	3
2810	2803	3
2811	2804	3
2812	2805	3
2813	2806	3
2814	2807	3
2815	2808	3
2816	2809	3
2817	2810	3
2818	2811	3
2819	2812	3
2820	2813	3
2821	2814	3
2822	2815	3
2823	2816	3
2824	2817	3
2825	2818	3
2826	2819	3
2827	2820	3
2828	2821	3
2829	2822	3
2830	2823	3
2831	2824	3
2832	2825	3
2833	2826	3
2834	2827	3
2835	2828	3
2836	2829	3
2837	2830	3
2838	2831	3
2839	2832	3
2840	2833	3
2841	2834	3
2842	2835	3
2843	2836	3
2844	2837	3
2845	2838	3
2846	2839	3
2847	2840	3
2848	2841	3
2849	2842	3
2850	2843	3
2851	2844	3
2852	2845	3
2853	2846	3
2854	2847	3
2855	2848	3
2856	2849	3
2857	2850	3
2858	2851	3
2859	2852	3
2860	2853	3
2861	2854	3
2862	2855	3
2863	2856	3
2864	2857	3
2865	2858	3
2866	2859	3
2867	2860	3
2868	2861	3
2869	2862	3
2870	2863	3
2871	2864	3
2872	2865	3
2873	2866	3
2874	2867	3
2875	2868	3
2876	2869	3
2877	2870	3
2878	2871	3
2879	2872	3
2880	2873	3
2881	2874	3
2882	2875	3
2883	2876	3
2884	2877	3
2885	2878	3
2886	2879	3
2887	2880	3
2888	2881	3
2889	2882	3
2890	2883	3
2891	2884	3
2892	2885	3
2893	2886	3
2894	2887	3
2895	2888	3
2896	2889	3
2897	2890	3
2898	2891	3
2899	2892	3
2900	2893	3
2901	2894	3
2902	2895	3
2903	2896	3
2904	2897	3
2905	2898	3
2906	2899	3
2907	2900	3
2908	2901	3
2909	2902	3
2910	2903	3
2911	2904	3
2912	2905	3
2913	2906	3
2914	2907	3
2915	2908	3
2916	2909	3
2917	2910	3
2918	2911	3
2919	2912	3
2920	2913	3
2921	2914	3
2922	2915	3
2923	2916	3
2924	2917	3
2925	2918	3
2926	2919	3
2927	2920	3
2928	2921	3
2929	2922	3
2930	2923	3
2931	2924	3
2932	2925	3
2933	2926	3
2934	2927	3
2935	2928	3
2936	2929	3
2937	2930	3
2938	2931	3
2939	2932	3
2940	2933	3
2941	2934	3
2942	2935	3
2943	2936	3
2944	2937	3
2945	2938	3
2946	2939	3
2947	2940	3
2948	2941	3
2949	2942	3
2950	2943	3
2951	2944	3
2952	2945	3
2953	2946	3
2954	2947	3
2955	2948	3
2956	2949	3
2957	2950	3
2958	2951	3
2959	2952	3
2960	2953	3
2961	2954	3
2962	2955	3
2963	2956	3
2964	2957	3
2965	2958	3
2966	2959	3
2967	2960	3
2968	2961	3
2969	2962	3
2970	2963	3
2971	2964	3
2972	2965	3
2973	2966	3
2974	2967	3
2975	2968	3
2976	2969	3
2977	2970	3
2978	2971	3
2979	2972	3
2980	2973	3
2981	2974	3
2982	2975	3
2983	2976	3
2984	2977	3
2985	2978	3
2986	2979	3
2987	2980	3
2988	2981	3
2989	2982	3
2990	2983	3
2991	2984	3
2992	2985	3
2993	2986	3
2994	2987	3
2995	2988	3
2996	2989	3
2997	2990	3
2998	2991	3
2999	2992	3
3000	2993	3
3001	2994	3
3002	2995	3
3003	2996	3
3004	2997	3
3005	2998	3
3006	2999	3
3007	3000	3
3008	3001	3
3009	3002	3
3010	3003	3
3011	3004	3
3012	3005	3
3013	3006	3
3014	3007	3
3015	3008	3
3016	3009	3
3017	3010	3
3018	3011	3
3019	3012	3
3020	3013	3
3021	3014	3
3022	3015	3
3023	3016	3
3024	3017	3
3025	3018	3
3026	3019	3
3027	3020	3
3028	3021	3
3029	3022	3
3030	3023	3
3031	3024	3
3032	3025	3
3033	3026	3
3034	3027	3
3035	3028	3
3036	3029	3
3037	3030	3
3038	3031	3
3039	3032	3
3040	3033	3
3041	3034	3
3042	3035	3
3043	3036	3
3044	3037	3
3045	3038	3
3046	3039	3
3047	3040	3
3048	3041	3
3049	3042	3
3050	3043	3
3051	3044	3
3052	3045	3
3053	3046	3
3054	3047	3
3055	3048	3
3056	3049	3
3057	3050	3
3058	3051	3
3059	3052	3
3060	3053	3
3061	3054	3
3062	3055	3
3063	3056	3
3064	3057	3
3065	3058	3
3066	3059	3
3067	3060	3
3068	3061	3
3069	3062	3
3070	3063	3
3071	3064	3
3072	3065	3
3073	3066	3
3074	3067	3
3075	3068	3
3076	3069	3
3077	3070	3
3078	3071	3
3079	3072	3
3080	3073	3
3081	3074	3
3082	3075	3
3083	3076	3
3084	3077	3
3085	3078	3
3086	3079	3
3087	3080	3
3088	3081	3
3089	3082	3
3090	3083	3
3091	3084	3
3092	3085	3
3093	3086	3
3094	3087	3
3095	3088	3
3096	3089	3
3097	3090	3
3098	3091	3
3099	3092	3
3100	3093	3
3101	3094	3
3102	3095	3
3103	3096	3
3104	3097	3
3105	3098	3
3106	3099	3
3107	3100	3
3108	3101	3
3109	3102	3
3110	3103	3
3111	3104	3
3112	3105	3
3113	3106	3
3114	3107	3
3115	3108	3
3116	3109	3
3117	3110	3
3118	3111	3
3119	3112	3
3120	3113	3
3121	3114	3
3122	3115	3
3123	3116	3
3124	3117	3
3125	3118	3
3126	3119	3
3127	3120	3
3128	3121	3
3129	3122	3
3130	3123	3
3131	3124	3
3132	3125	3
3133	3126	3
3134	3127	3
3135	3128	3
3136	3129	3
3137	3130	3
3138	3131	3
3139	3132	3
3140	3133	3
3141	3134	3
3142	3135	3
3143	3136	3
3144	3137	3
3145	3138	3
3146	3139	3
3147	3140	3
3148	3141	3
3149	3142	3
3150	3143	3
3151	3144	3
3152	3145	3
3153	3146	3
3154	3147	3
3155	3148	3
3156	3149	3
3157	3150	3
3158	3151	3
3159	3152	3
3160	3153	3
3161	3154	3
3162	3155	3
3163	3156	3
3164	3157	3
3165	3158	3
3166	3159	3
3167	3160	3
3168	3161	3
3169	3162	3
3170	3163	3
3171	3164	3
3172	3165	3
3173	3166	3
3174	3167	3
3175	3168	3
3176	3169	3
3177	3170	3
3178	3171	3
3179	3172	3
3180	3173	3
3181	3174	3
3182	3175	3
3183	3176	3
3184	3177	3
3185	3178	3
3186	3179	3
3187	3180	3
3188	3181	3
3189	3182	3
3190	3183	3
3191	3184	3
3192	3185	3
3193	3186	3
3194	3187	3
3195	3188	3
3196	3189	3
3197	3190	3
3198	3191	3
3199	3192	3
3200	3193	3
3201	3194	3
3202	3195	3
3203	3196	3
3204	3197	3
3205	3198	3
3206	3199	3
3207	3200	3
3208	3201	3
3209	3202	3
3210	3203	3
3211	3204	3
3212	3205	3
3213	3206	3
3214	3207	3
3215	3208	3
3216	3209	3
3217	3210	3
3218	3211	3
3219	3212	3
3220	3213	3
3221	3214	3
3222	3215	3
3223	3216	3
3224	3217	3
3225	3218	3
3226	3219	3
3227	3220	3
3228	3221	3
3229	3222	3
3230	3223	3
3231	3224	3
3232	3225	3
3233	3226	3
3234	3227	3
3235	3228	3
3236	3229	3
3237	3230	3
3238	3231	3
3239	3232	3
3240	3233	3
3241	3234	3
3242	3235	3
3243	3236	3
3244	3237	3
3245	3238	3
3246	3239	3
3247	3240	3
3248	3241	3
3249	3242	3
3250	3243	3
3251	3244	3
3252	3245	3
3253	3246	3
3254	3247	3
3255	3248	3
3256	3249	3
3257	3250	3
3258	3251	3
3259	3252	3
3260	3253	3
3261	3254	3
3262	3255	3
3263	3256	3
3264	3257	3
3265	3258	3
3266	3259	3
3267	3260	3
3268	3261	3
3269	3262	3
3270	3263	3
3271	3264	3
3272	3265	3
3273	3266	3
3274	3267	3
3275	3268	3
3276	3269	3
3277	3270	3
3278	3271	3
3279	3272	3
3280	3273	3
3281	3274	3
3282	3275	3
3283	3276	3
3284	3277	3
3285	3278	3
3286	3279	3
3287	3280	3
3288	3281	3
3289	3282	3
3290	3283	3
3291	3284	3
3292	3285	3
3293	3286	3
3294	3287	3
3295	3288	3
3296	3289	3
3297	3290	3
3298	3291	3
3299	3292	3
3300	3293	3
3301	3294	3
3302	3295	3
3303	3296	3
3304	3297	3
3305	3298	3
3306	3299	3
3307	3300	3
3308	3301	3
3309	3302	3
3310	3303	3
3311	3304	3
3312	3305	3
3313	3306	3
3314	3307	3
3315	3308	3
3316	3309	3
3317	3310	3
3318	3311	3
3319	3312	3
3320	3313	3
3321	3314	3
3322	3315	3
3323	3316	3
3324	3317	3
3325	3318	3
3326	3319	3
3327	3320	3
3328	3321	3
3329	3322	3
3330	3323	3
3331	3324	3
3332	3325	3
3333	3326	3
3334	3327	3
3335	3328	3
3336	3329	3
3337	3330	3
3338	3331	3
3339	3332	3
3340	3333	3
3341	3334	3
3342	3335	3
3343	3336	3
3344	3337	3
3345	3338	3
3346	3339	3
3347	3340	3
3348	3341	3
3349	3342	3
3350	3343	3
3351	3344	3
3352	3345	3
3353	3346	3
3354	3347	3
3355	3348	3
3356	3349	3
3357	3350	3
3358	3351	3
3359	3352	3
3360	3353	3
3361	3354	3
3362	3355	3
3363	3356	3
3364	3357	3
3365	3358	3
3366	3359	3
3367	3360	3
3368	3361	3
3369	3362	3
3370	3363	3
3371	3364	3
3372	3365	3
3373	3366	3
3374	3367	3
3375	3368	3
3376	3369	3
3377	3370	3
3378	3371	3
3379	3372	3
3380	3373	3
3381	3374	3
3382	3375	3
3383	3376	3
3384	3377	3
3385	3378	3
3386	3379	3
3387	3380	3
3388	3381	3
3389	3382	3
3390	3383	3
3391	3384	3
3392	3385	3
3393	3386	3
3394	3387	3
3395	3388	3
3396	3389	3
3397	3390	3
3398	3391	3
3399	3392	3
3400	3393	3
3401	3394	3
3402	3395	3
3403	3396	3
3404	3397	3
3405	3398	3
3406	3399	3
3407	3400	3
3408	3401	3
3409	3402	3
3410	3403	3
3411	3404	3
3412	3405	3
3413	3406	3
3414	3407	3
3415	3408	3
3416	3409	3
3417	3410	3
3418	3411	3
3419	3412	3
3420	3413	3
3421	3414	3
3422	3415	3
3423	3416	3
3424	3417	3
3425	3418	3
3426	3419	3
3427	3420	3
3428	3421	3
3429	3422	3
3430	3423	3
3431	3424	3
3432	3425	3
3433	3426	3
3434	3427	3
3435	3428	3
3436	3429	3
3437	3430	3
3438	3431	3
3439	3432	3
3440	3433	3
3441	3434	3
3442	3435	3
3443	3436	3
3444	3437	3
3445	3438	3
3446	3439	3
3447	3440	3
3448	3441	3
3449	3442	3
3450	3443	3
3451	3444	3
3452	3445	3
3453	3446	3
3454	3447	3
3455	3448	3
3456	3449	3
3457	3450	3
3458	3451	3
3459	3452	3
3460	3453	3
3461	3454	3
3462	3455	3
3463	3456	3
3464	3457	3
3465	3458	3
3466	3459	3
3467	3460	3
3468	3461	3
3469	3462	3
3470	3463	3
3471	3464	3
3472	3465	3
3473	3466	3
3474	3467	3
3475	3468	3
3476	3469	3
3477	3470	3
3478	3471	3
3479	3472	3
3480	3473	3
3481	3474	3
3482	3475	3
3483	3476	3
3484	3477	3
3485	3478	3
3486	3479	3
3487	3480	3
3488	3481	3
3489	3482	3
3490	3483	3
3491	3484	3
3492	3485	3
3493	3486	3
3494	3487	3
3495	3488	3
3496	3489	3
3497	3490	3
3498	3491	3
3499	3492	3
3500	3493	3
3501	3494	3
3502	3495	3
3503	3496	3
3504	3497	3
3505	3498	3
3506	3499	3
3507	3500	3
3508	3501	3
3509	3502	3
3510	3503	3
3511	3504	3
3512	3505	3
3513	3506	3
3514	3507	3
3515	3508	3
3516	3509	3
3517	3510	3
3518	3511	3
3519	3512	3
3520	3513	3
3521	3514	3
3522	3515	3
3523	3516	3
3524	3517	3
3525	3518	3
3526	3519	3
3527	3520	3
3528	3521	3
3529	3522	3
3530	3523	3
3531	3524	3
3532	3525	3
3533	3526	3
3534	3527	3
3535	3528	3
3536	3529	3
3537	3530	3
3538	3531	3
3539	3532	3
3540	3533	3
3541	3534	3
3542	3535	3
3543	3536	3
3544	3537	3
3545	3538	3
3546	3539	3
3547	3540	3
3548	3541	3
3549	3542	3
3550	3543	3
3551	3544	3
3552	3545	3
3553	3546	3
3554	3547	3
3555	3548	3
3556	3549	3
3557	3550	3
3558	3551	3
3559	3552	3
3560	3553	3
3561	3554	3
3562	3555	3
3563	3556	3
3564	3557	3
3565	3558	3
3566	3559	3
3567	3560	3
3568	3561	3
3569	3562	3
3570	3563	3
3571	3564	3
3572	3565	3
3573	3566	3
3574	3567	3
3575	3568	3
3576	3569	3
3577	3570	3
3578	3571	3
3579	3572	3
3580	3573	3
3581	3574	3
3582	3575	3
3583	3576	3
3584	3577	3
3585	3578	3
3586	3579	3
3587	3580	3
3588	3581	3
3589	3582	3
3590	3583	3
3591	3584	3
3592	3585	3
3593	3586	3
3594	3587	3
3595	3588	3
3596	3589	3
3597	3590	3
3598	3591	3
3599	3592	3
3600	3593	3
3601	3594	3
3602	3595	3
3603	3596	3
3604	3597	3
3605	3598	3
3606	3599	3
3607	3600	3
3608	3601	3
3609	3602	3
3610	3603	3
3611	3604	3
3612	3605	3
3613	3606	3
3614	3607	3
3615	3608	3
3616	3609	3
3617	3610	3
3618	3611	3
3619	3612	3
3620	3613	3
3621	3614	3
3622	3615	3
3623	3616	3
3624	3617	3
3625	3618	3
3626	3619	3
3627	3620	3
3628	3621	3
3629	3622	3
3630	3623	3
3631	3624	3
3632	3625	3
3633	3626	3
3634	3627	3
3635	3628	3
3636	3629	3
3637	3630	3
3638	3631	3
3639	3632	3
3640	3633	3
3641	3634	3
3642	3635	3
3643	3636	3
3644	3637	3
3645	3638	3
3646	3639	3
3647	3640	3
3648	3641	3
3649	3642	3
3650	3643	3
3651	3644	3
3652	3645	3
3653	3646	3
3654	3647	3
3655	3648	3
3656	3649	3
3657	3650	3
3658	3651	3
3659	3652	3
3660	3653	3
3661	3654	3
3662	3655	3
3663	3656	3
3664	3657	3
3665	3658	3
3666	3659	3
3667	3660	3
3668	3661	3
3669	3662	3
3670	3663	3
3671	3664	3
3672	3665	3
3673	3666	3
3674	3667	3
3675	3668	3
3676	3669	3
3677	3670	3
3678	3671	3
3679	3672	3
3680	3673	3
3681	3674	3
3682	3675	3
3683	3676	3
3684	3677	3
3685	3678	3
3686	3679	3
3687	3680	3
3688	3681	3
3689	3682	3
3690	3683	3
3691	3684	3
3692	3685	3
3693	3686	3
3694	3687	3
3695	3688	3
3696	3689	3
3697	3690	3
3698	3691	3
3699	3692	3
3700	3693	3
3701	3694	3
3702	3695	3
3703	3696	3
3704	3697	3
3705	3698	3
3706	3699	3
3707	3700	3
3708	3701	3
3709	3702	3
3710	3703	3
3711	3704	3
3712	3705	3
3713	3706	3
3714	3707	3
3715	3708	3
3716	3709	3
3717	3710	3
3718	3711	3
3719	3712	3
3720	3713	3
3721	3714	3
3722	3715	3
3723	3716	3
3724	3717	3
3725	3718	3
3726	3719	3
3727	3720	3
3728	3721	3
3729	3722	3
3730	3723	3
3731	3724	3
3732	3725	3
3733	3726	3
3734	3727	3
3735	3728	3
3736	3729	3
3737	3730	3
3738	3731	3
3739	3732	3
3740	3733	3
3741	3734	3
3742	3735	3
3743	3736	3
3744	3737	3
3745	3738	3
3746	3739	3
3747	3740	3
3748	3741	3
3749	3742	3
3750	3743	3
3751	3744	3
3752	3745	3
3753	3746	3
3754	3747	3
3755	3748	3
3756	3749	3
3757	3750	3
3758	3751	3
3759	3752	3
3760	3753	3
3761	3754	3
3762	3755	3
3763	3756	3
3764	3757	3
3765	3758	3
3766	3759	3
3767	3760	3
3768	3761	3
3769	3762	3
3770	3763	3
3771	3764	3
3772	3765	3
3773	3766	3
3774	3767	3
3775	3768	3
3776	3769	3
3777	3770	3
3778	3771	3
3779	3772	3
3780	3773	3
3781	3774	3
3782	3775	3
3783	3776	3
3784	3777	3
3785	3778	3
3786	3779	3
3787	3780	3
3788	3781	3
3789	3782	3
3790	3783	3
3791	3784	3
3792	3785	3
3793	3786	3
3794	3787	3
3795	3788	3
3796	3789	3
3797	3790	3
3798	3791	3
3799	3792	3
3800	3793	3
3801	3794	3
3802	3795	3
3803	3796	3
3804	3797	3
3805	3798	3
3806	3799	3
3807	3800	3
3808	3801	3
3809	3802	3
3810	3803	3
3811	3804	3
3812	3805	3
3813	3806	3
3814	3807	3
3815	3808	3
3816	3809	3
3817	3810	3
3818	3811	3
3819	3812	3
3820	3813	3
3821	3814	3
3822	3815	3
3823	3816	3
3824	3817	3
3825	3818	3
3826	3819	3
3827	3820	3
3828	3821	3
3829	3822	3
3830	3823	3
3831	3824	3
3832	3825	3
3833	3826	3
3834	3827	3
3835	3828	3
3836	3829	3
3837	3830	3
3838	3831	3
3839	3832	3
3840	3833	3
3841	3834	3
3842	3835	3
3843	3836	3
3844	3837	3
3845	3838	3
3846	3839	3
3847	3840	3
3848	3841	3
3849	3842	3
3850	3843	3
3851	3844	3
3852	3845	3
3853	3846	3
3854	3847	3
3855	3848	3
3856	3849	3
3857	3850	3
3858	3851	3
3859	3852	3
3860	3853	3
3861	3854	3
3862	3855	3
3863	3856	3
3864	3857	3
3865	3858	3
3866	3859	3
3867	3860	3
3868	3861	3
3869	3862	3
3870	3863	3
3871	3864	3
3872	3865	3
3873	3866	3
3874	3867	3
3875	3868	3
3876	3869	3
3877	3870	3
3878	3871	3
3879	3872	3
3880	3873	3
3881	3874	3
3882	3875	3
3883	3876	3
3884	3877	3
3885	3878	3
3886	3879	3
3887	3880	3
3888	3881	3
3889	3882	3
3890	3883	3
3891	3884	3
3892	3885	3
3893	3886	3
3894	3887	3
3895	3888	3
3896	3889	3
3897	3890	3
3898	3891	3
3899	3892	3
3900	3893	3
3901	3894	3
3902	3895	3
3903	3896	3
3904	3897	3
3905	3898	3
3906	3899	3
3907	3900	3
3908	3901	3
3909	3902	3
3910	3903	3
3911	3904	3
3912	3905	3
3913	3906	3
3914	3907	3
3915	3908	3
3916	3909	3
3917	3910	3
3918	3911	3
3919	3912	3
3920	3913	3
3921	3914	3
3922	3915	3
3923	3916	3
3924	3917	3
3925	3918	3
3926	3919	3
3927	3920	3
3928	3921	3
3929	3922	3
3930	3923	3
3931	3924	3
3932	3925	3
3933	3926	3
3934	3927	3
3935	3928	3
3936	3929	3
3937	3930	3
3938	3931	3
3939	3932	3
3940	3933	3
3941	3934	3
3942	3935	3
3943	3936	3
3944	3937	3
3945	3938	3
3946	3939	3
3947	3940	3
3948	3941	3
3949	3942	3
3950	3943	3
3951	3944	3
3952	3945	3
3953	3946	3
3954	3947	3
3955	3948	3
3956	3949	3
3957	3950	3
3958	3951	3
3959	3952	3
3960	3953	3
3961	3954	3
3962	3955	3
3963	3956	3
3964	3957	3
3965	3958	3
3966	3959	3
3967	3960	3
3968	3961	3
3969	3962	3
3970	3963	3
3971	3964	3
3972	3965	3
3973	3966	3
3974	3967	3
3975	3968	3
3976	3969	3
3977	3970	3
3978	3971	3
3979	3972	3
3980	3973	3
3981	3974	3
3982	3975	3
3983	3976	3
3984	3977	3
3985	3978	3
3986	3979	3
3987	3980	3
3988	3981	3
3989	3982	3
3990	3983	3
3991	3984	3
3992	3985	3
3993	3986	3
3994	3987	3
3995	3988	3
3996	3989	3
3997	3990	3
3998	3991	3
3999	3992	3
4000	3993	3
4001	3994	3
4002	3995	3
4003	3996	3
4004	3997	3
4005	3998	3
4006	3999	3
4007	4000	3
4008	4001	3
4009	4002	3
4010	4003	3
4011	4004	3
4012	4005	3
4013	4006	3
4014	4007	3
4015	4008	3
4016	4009	3
4017	4010	3
4018	4011	3
4019	4012	3
4020	4013	3
4021	4014	3
4022	4015	3
4023	4016	3
4024	4017	3
4025	4018	3
4026	4019	3
4027	4020	3
4028	4021	3
4029	4022	3
4030	4023	3
4031	4024	3
4032	4025	3
4033	4026	3
4034	4027	3
4035	4028	3
4036	4029	3
4037	4030	3
4038	4031	3
4039	4032	3
4040	4033	3
4041	4034	3
4042	4035	3
4043	4036	3
4044	4037	3
4045	4038	3
4046	4039	3
4047	4040	3
4048	4041	3
4049	4042	3
4050	4043	3
4051	4044	3
4052	4045	3
4053	4046	3
4054	4047	3
4055	4048	3
4056	4049	3
4057	4050	3
4058	4051	3
4059	4052	3
4060	4053	3
4061	4054	3
4062	4055	3
4063	4056	3
4064	4057	3
4065	4058	3
4066	4059	3
4067	4060	3
4068	4061	3
4069	4062	3
4070	4063	3
4071	4064	3
4072	4065	3
4073	4066	3
4074	4067	3
4075	4068	3
4076	4069	3
4077	4070	3
4078	4071	3
4079	4072	3
4080	4073	3
4081	4074	3
4082	4075	3
4083	4076	3
4084	4077	3
4085	4078	3
4086	4079	3
4087	4080	3
4088	4081	3
4089	4082	3
4090	4083	3
4091	4084	3
4092	4085	3
4093	4086	3
4094	4087	3
4095	4088	3
4096	4089	3
4097	4090	3
4098	4091	3
4099	4092	3
4100	4093	3
4101	4094	3
4102	4095	3
4103	4096	3
4104	4097	3
4105	4098	3
4106	4099	3
4107	4100	3
4108	4101	3
4109	4102	3
4110	4103	3
4111	4104	3
4112	4105	3
4113	4106	3
4114	4107	3
4115	4108	3
4116	4109	3
4117	4110	3
4118	4111	3
4119	4112	3
4120	4113	3
4121	4114	3
4122	4115	3
4123	4116	3
4124	4117	3
4125	4118	3
4126	4119	3
4127	4120	3
4128	4121	3
4129	4122	3
4130	4123	3
4131	4124	3
4132	4125	3
4133	4126	3
4134	4127	3
4135	4128	3
4136	4129	3
4137	4130	3
4138	4131	3
4139	4132	3
4140	4133	3
4141	4134	3
4142	4135	3
4143	4136	3
4144	4137	3
4145	4138	3
4146	4139	3
4147	4140	3
4148	4141	3
4149	4142	3
4150	4143	3
4151	4144	3
4152	4145	3
4153	4146	3
4154	4147	3
4155	4148	3
4156	4149	3
4157	4150	3
4158	4151	3
4159	4152	3
4160	4153	3
4161	4154	3
4162	4155	3
4163	4156	3
4164	4157	3
4165	4158	3
4166	4159	3
4167	4160	3
4168	4161	3
4169	4162	3
4170	4163	3
4171	4164	3
4172	4165	3
4173	4166	3
4174	4167	3
4175	4168	3
4176	4169	3
4177	4170	3
4178	4171	3
4179	4172	3
4180	4173	3
4181	4174	3
4182	4175	3
4183	4176	3
4184	4177	3
4185	4178	3
4186	4179	3
4187	4180	3
4188	4181	3
4189	4182	3
4190	4183	3
4191	4184	3
4192	4185	3
4193	4186	3
4194	4187	3
4195	4188	3
4196	4189	3
4197	4190	3
4198	4191	3
4199	4192	3
4200	4193	3
4201	4194	3
4202	4195	3
4203	4196	3
4204	4197	3
4205	4198	3
4206	4199	3
4207	4200	3
4208	4201	3
4209	4202	3
4210	4203	3
4211	4204	3
4212	4205	3
4213	4206	3
4214	4207	3
4215	4208	3
4216	4209	3
4217	4210	3
4218	4211	3
4219	4212	3
4220	4213	3
4221	4214	3
4222	4215	3
4223	4216	3
4224	4217	3
4225	4218	3
4226	4219	3
4227	4220	3
4228	4221	3
4229	4222	3
4230	4223	3
4231	4224	3
4232	4225	3
4233	4226	3
4234	4227	5
4235	4228	5
4236	4229	5
4237	4230	5
4238	4231	5
4239	4232	5
4240	4233	5
4241	4234	5
4242	4235	5
4243	4236	5
4244	4237	5
4245	4238	5
4246	4239	5
4247	4240	5
4248	4241	5
4249	4242	5
4250	4243	5
4251	4244	5
4252	4245	5
4253	4246	5
4254	4247	5
4255	4248	5
4256	4249	5
4257	4250	5
4258	4251	5
4259	4252	5
4260	4253	5
4261	4254	5
4262	4255	5
4263	4256	5
4264	4257	5
4265	4258	5
4266	4259	5
4267	4260	5
4268	4261	5
4269	4262	5
4270	4263	5
4271	4264	5
4272	4265	5
4273	4266	5
4274	4267	5
4275	4268	5
4276	4269	5
4277	4270	5
4278	4271	5
4279	4272	5
4280	4273	5
4281	4274	5
4282	4275	5
4283	4276	5
4284	4277	5
4285	4278	5
4286	4279	5
4287	4280	5
4288	4281	5
4289	4282	5
4290	4283	5
4291	4284	5
4292	4285	5
4293	4286	5
4294	4287	5
4295	4288	5
4296	4289	5
4297	4290	5
4298	4291	5
4299	4292	5
4300	4293	5
4301	4294	5
4302	4295	5
4303	4296	5
4304	4297	5
4305	4298	5
4306	4299	5
4307	4300	5
4308	4301	5
4309	4302	5
4310	4303	5
4311	4304	5
4312	4305	5
4313	4306	5
4314	4307	5
4315	4308	5
4316	4309	5
4317	4310	5
4318	4311	5
4319	4312	5
4320	4313	5
4321	4314	5
4322	4315	5
4323	4316	5
4324	4317	5
4325	4318	5
4326	4319	5
4327	4320	5
4328	4321	5
4329	4322	5
4330	4323	5
4331	4324	5
4332	4325	5
4333	4326	5
4334	4327	5
4335	4328	5
4336	4329	5
4337	4330	5
4338	4331	5
4339	4332	5
4340	4333	5
4341	4334	5
4342	4335	5
4343	4336	5
4344	4337	5
4345	4338	5
4346	4339	5
4347	4340	5
4348	4341	5
4349	4342	5
4350	4343	5
4351	4344	5
4352	4345	5
4353	4346	5
4354	4347	5
4355	4348	5
4356	4349	5
4357	4350	5
4358	4351	5
4359	4352	5
4360	4353	5
4361	4354	5
4362	4355	5
4363	4356	5
4364	4357	5
4365	4358	5
4366	4359	5
4367	4360	5
4368	4361	5
4369	4362	5
4370	4363	5
4371	4364	5
4372	4365	5
4373	4366	5
4374	4367	5
4375	4368	5
4376	4369	5
4377	4370	5
4378	4371	5
4379	4372	5
4380	4373	5
4381	4374	5
4382	4375	5
4383	4376	5
4384	4377	5
4385	4378	5
4386	4379	5
4387	4380	5
4388	4381	5
4389	4382	5
4390	4383	5
4391	4384	5
4392	4385	5
4393	4386	5
4394	4387	5
4395	4388	5
4396	4389	5
4397	4390	5
4398	4391	5
4399	4392	5
4400	4393	5
4401	4394	5
4402	4395	5
4403	4396	5
4404	4397	5
4405	4398	5
4406	4399	5
4407	4400	5
4408	4401	5
4409	4402	5
4410	4403	5
4411	4404	5
4412	4405	5
4413	4406	5
4414	4407	5
4415	4408	5
4416	4409	5
4417	4410	5
4418	4411	5
4419	4412	5
4420	4413	5
4421	4414	5
4422	4415	5
4423	4416	5
4424	4417	5
4425	4418	5
4426	4419	5
4427	4420	5
4428	4421	5
4429	4422	5
4430	4423	5
4431	4424	5
4432	4425	5
4433	4426	5
4434	4427	5
4435	4428	5
4436	4429	5
4437	4430	5
4438	4431	5
4439	4432	5
4440	4433	5
4441	4434	5
4442	4435	5
4443	4436	5
4444	4437	5
4445	4438	5
4446	4439	5
4447	4440	5
4448	4441	5
4449	4442	5
4450	4443	5
4451	4444	5
4452	4445	5
4453	4446	5
4454	4447	5
4455	4448	5
4456	4449	5
4457	4450	5
4458	4451	5
4459	4452	5
4460	4453	5
4461	4454	5
4462	4455	5
4463	4456	5
4464	4457	5
4465	4458	5
4466	4459	5
4467	4460	5
4468	4461	5
4469	4462	5
4470	4463	5
4471	4464	5
4472	4465	5
4473	4466	5
4474	4467	5
4475	4468	5
4476	4469	5
4477	4470	5
4478	4471	5
4479	4472	5
4480	4473	5
4481	4474	5
4482	4475	5
4483	4476	5
4484	4477	5
4485	4478	5
4486	4479	5
4487	4480	5
4488	4481	5
\.


--
-- Data for Name: videoadmin_video_cameras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videoadmin_video_cameras (id, title, camera_description, server_ip, camera_id, file, num, server_login, server_pass) FROM stdin;
23	215 Камера №11	215 Камера №11	http://185.40.77.67:11012	38cd12a3-7a0d-4398-be52-0fdc4d53ba94		11	Green_w	jYHoB0
31	1/2 Камера №3	1/2 Камера №3	http://185.40.77.67:11012	4e14ad69-796f-4e60-8ecb-1dd68be6d0dd		8	Delfin_w	OoKKfF
2	1/1 Камера №3	1/1 Камера №3	http://185.40.77.67:11012	294901a2-8b2f-49ac-81f4-f566a144203c		3	Delfin_w	OoKKfF
5	8А Камера №1	8А Камера №1	http://185.40.77.67:11012	5bfeb5c3-1b0a-477e-9b82-44ffcad1e452		0	Berez_w	BVgQhK
6	215 Камера №1	215 Камера №1	http://185.40.77.67:11012	da71a3d3-6b3e-406f-969c-1eff47d5e08c		1	Green_w	jYHoB0
11	215 Камера №2	215 Камера №2	http://185.40.77.67:11012	837d0d45-5c5d-48db-9091-67177520db64		2	Green_w	jYHoB0
32	1/2 Камера №4 Подъезд 2	1/2 Камера №4 Подъезд 2	http://185.40.77.67:11012	aced03fe-8992-45d1-8943-b268d821b025		9	Delfin_w	OoKKfF
9	8А Камера №2 Подъезд 1	8А Камера №2 Подъезд 1	http://185.40.77.67:11012	78dda6f4-412d-451e-bf42-452b4fa6b7d5		2	Berez_w	BVgQhK
10	8А Камера №3 Подъезд 2	8А Камера №3 Подъезд 2	http://185.40.77.67:11012	c9bad3d6-58d1-4542-b793-86cca95f1855		3	Berez_w	BVgQhK
12	8А Камера №4	8А Камера №4	http://185.40.77.67:11012	7918d59d-1260-4e15-a5ab-62abc5827eed		4	Berez_w	BVgQhK
14	8А Камера №5 Подъезд 3	8А Камера №5 Подъезд 3	http://185.40.77.67:11012	1d1fa57e-6e31-4305-8072-6ee1c692d0cd		5	Berez_w	BVgQhK
15	8А Камера №6	8А Камера №6	http://185.40.77.67:11012	29836ba3-1d07-470d-a3ad-32f0b7dec679		6	Berez_w	BVgQhK
7	8А Камера №10	8А Камера №10	http://185.40.77.67:11012	1afcaeb3-4ea7-48a6-a09a-47d386664bd0		10	Berez_w	BVgQhK
8	8А Камера №11	8А Камера №11	http://185.40.77.67:11012	70e84e17-e5a9-4d57-ba39-75464d683f3a		11	Berez_w	BVgQhK
17	8А Камера №7 Подъезд 4	8А Камера №7 Подъезд 4	http://185.40.77.67:11012	e0794098-96ca-48a3-87f0-149adbe94771		0	Berez_w	BVgQhK
19	8А Камера №8	8А Камера №8	http://185.40.77.67:11012	6b4ef11e-6a64-4aa7-aa27-8fc12d9df2c3		0	Berez_w	BVgQhK
20	8А Камера №9	8А Камера №9	http://185.40.77.67:11012	7bf9042a-65dd-44ae-af2e-ef2c9ad07ffe		0	Berez_w	BVgQhK
24	1/1 Камера №1	1/1 Камера №1	http://185.40.77.67:11012	45bace05-12be-4e31-92f1-a9519a1a4e7a		1	Delfin_w	OoKKfF
1	1/1 Камера №2	1/1 Камера №2	http://185.40.77.67:11012	e0a29e83-d7ad-4900-b07e-0d29ed096afc		2	Delfin_w	OoKKfF
29	1/2 Камера №1	1/2 Камера №1	http://185.40.77.67:11012	3722b7f5-6d1a-4f4f-b52e-af187c92bf34		6	Delfin_w	OoKKfF
13	215 Камера №3	215 Камера №3	http://185.40.77.67:11012	ffac0113-ca23-4f9d-829c-076e1c5849ed		3	Green_w	jYHoB0
16	215 Камера №5	215 Камера №5	http://185.40.77.67:11012	e5fb0a12-65db-4e86-90ba-0ece96ae83f9		5	Green_w	jYHoB0
3	1/1 Камера №4 Подъезд	1/1 Камера №4 Подъезд	http://185.40.77.67:11012	3722b7f5-6d1a-4f4f-b52e-af187c92bf34		4	Delfin_w	OoKKfF
26	215 Камера №6 Подъезд 2	215 Камера №6 Подъезд 2	http://185.40.77.67:11012	60c99d7f-062f-4948-aac6-53251052e820		6	Green_w	jYHoB0
28	1/1 Камера №5	1/1 Камера №5	http://185.40.77.67:11012	a26be552-9e6e-48a4-a6ff-4cd93588aec1		5	Delfin_w	OoKKfF
18	215 Камера №7	215 Камера №7	http://185.40.77.67:11012	7c5689b5-f643-4588-84f9-9fb80c020496		7	Green_w	jYHoB0
21	215 Камера №9	215 Камера №9	http://185.40.77.67:11012	19469786-a5de-4364-8637-9f0e164b3596		9	Green_w	jYHoB0
22	215 Камера №10	215 Камера №10	http://185.40.77.67:11012	52362014-13cc-420a-b896-ef1dc8d42ab1		10	Green_w	jYHoB0
30	1/2 Камера №2 Подъезд 1	1/2 Камера №2 Подъезд 1	http://185.40.77.67:11012	0bb674fb-7db9-46d3-9a7c-500b07561ad4		7	Delfin_w	OoKKfF
33	1/2 Камера №5	1/2 Камера №5	http://185.40.77.67:11012	3c743d84-b62b-47e2-9308-d52fcce72f5b		10	Delfin_w	OoKKfF
34	1/2 Камера №6 Подъезд 3	1/2 Камера №6 Подъезд 3	http://185.40.77.67:11012	afd12600-eaef-419c-8eca-47b801f1733e		11	Delfin_w	OoKKfF
35	1/2 Камера №7	1/2 Камера №7	http://185.40.77.67:11012	c4f0cd03-9c41-4cda-8a65-fb21eed082ab		12	Delfin_w	OoKKfF
36	215 Камера №12	215 Камера №12	http://185.40.77.67:11012	03c0f2ec-0470-42b6-95aa-7f02fb34aafb		12	Green_w	jYHoB0
37	1/2 Камера №8	1/2 Камера №8	http://185.40.77.67:11012	710ca75c-2620-440b-9e01-6e62a7c026a9		13	Delfin_w	OoKKfF
38	1/3 Камера №1	1/3 Камера №1	http://185.40.77.67:11012	3d1d24a4-d4f6-4c62-81df-37566bf7cb3b		14	Delfin_w	OoKKfF
40	1/3 Камера №3	1/3 Камера №3	http://185.40.77.67:11012	fe5ccd9f-ec59-4bde-ab5c-ee879db5c5b8		16	Delfin_w	OoKKfF
41	1/3 Камера №4	1/3 Камера №4	http://185.40.77.67:11012	549f5010-03f9-4422-a096-e89292dfea97		17	Delfin_w	OoKKfF
42	1/3 Камера №5	1/3 Камера №5	http://185.40.77.67:11012	08d72254-61aa-4d99-bf8e-813a66dddbbd		18	Delfin_w	OoKKfF
44	1/3 Камера №6	1/3 Камера №6	http://185.40.77.67:11012	8ca0c529-cd0d-472b-af5c-717cfb625960		19	Delfin_w	OoKKfF
45	1/4 Камера №1	1/4 Камера №1	http://185.40.77.67:11012	62c2b446-fadb-4e0b-9dc5-8f8bf2802219		20	Delfin_w	OoKKfF
46	219/1 Камера №2 Подъезд 1	219/1 Камера №2 Подъезд 1	http://185.40.77.67:11012	89ba9694-aade-4f19-9688-3ad3a1250b4f		2	Continent_w	AVO5vV
47	1/4 Камера №2	1/4 Камера №2	http://185.40.77.67:11012	3bd2a914-fc25-4dbe-a057-29f9f80c01dc		21	Delfin_w	OoKKfF
39	1/3 Камера №2 Подъезд	1/3 Камера №2 Подъезд	http://185.40.77.67:11012	43c4a0a3-b0bb-47b4-b772-bed801fb0613		15	Delfin_w	OoKKfF
27	215 Камера №4 Подъезд 1	215 Камера №4 Подъезд 1	http://185.40.77.67:11012	1e53cc8f-42b7-4399-808f-372f2cd1ed37		8	Green_w	jYHoB0
25	215 Камера №8 Подъезд 3	215 Камера №8 Подъезд 3	http://185.40.77.67:11012	53b283d3-5fa2-453e-87e8-9f3ebd76dada		4	Green_w	jYHoB0
48	1/4 Камера №3	1/4 Камера №3	http://185.40.77.67:11012	efb129d3-7837-4911-9be7-5a822352566f		22	Delfin_w	OoKKfF
49	219/1 Камера №3 Подъезд 1 Лифт	219/1 Камера №3 Подъезд 1 Лифт	http://185.40.77.67:11012	7189d7dd-5ec5-44e8-b552-98d77b10ab1f		3	Continent_w	AVO5vV
50	1/4 Камера №4 Подъезд 1	1/4 Камера №4 Подъезд 1	http://185.40.77.67:11012	a4d45a99-5913-46f3-a159-e2746c383b56		23	Delfin_w	OoKKfF
51	219/1 Камера №4	219/1 Камера №4	http://185.40.77.67:11012	9091e1c5-4538-4402-9bdd-755291e59269		4	Continent_w	AVO5vV
52	1/4 Камера №5 Подъезд 2	1/4 Камера №5 Подъезд 2	http://185.40.77.67:11012	7b0a6d8b-38d8-4dcc-88f4-2fab7e11037f		24	Delfin_w	OoKKfF
53	1/4 Камера №6	1/4 Камера №6	http://185.40.77.67:11012	2142a9ab-fe0c-42bd-90c3-24c6fed7031d		25	Delfin_w	OoKKfF
54	219/1 Камера №5 Подъезд 2	219/1 Камера №5 Подъезд 2	http://185.40.77.67:11012	52ae11a3-15b2-4eac-a406-39b170733e68		5	Continent_w	AVO5vV
55	1/4 Камера №8	1/4 Камера №8	http://185.40.77.67:11012	94350ded-e7b9-422d-8c7e-a8cf9fa58e86		26	Delfin_w	OoKKfF
56	1/4 Камнра №7 Подъезд 3	1/4 Камнра №7 Подъезд 3	http://185.40.77.67:11012	d33acc36-bb0c-44e1-bfdd-8c42fb2fe65f		27	Delfin_w	OoKKfF
57	1/6 Камера №1	1/6 Камера №1	http://185.40.77.67:11012	d64df3a2-4240-4703-b3b6-a9795352c8c9		28	Delfin_w	OoKKfF
58	219/1 Камера №6 Подъзд 2 Лифт	219/1 Камера №6 Подъзд 2 Лифт	http://185.40.77.67:11012	b9ac30c0-420a-4066-a6dd-a27020304df4		6	Continent_w	AVO5vV
59	1/6 Камера №2	1/6 Камера №2	http://185.40.77.67:11012	57c11bf7-a01d-433b-9aa4-a420622172c6		29	Delfin_w	OoKKfF
60	219/1 Камера №7 Подъезд 3	219/1 Камера №7 Подъезд 3	http://185.40.77.67:11012	69f6578d-9b23-401b-a421-a0bf5280e304		7	Continent_w	AVO5vV
61	1/6 Камера №3 Подъезд Левое крыло	1/6 Камера №3 Подъезд Левое крыло	http://185.40.77.67:11012	e54c39a8-c1ee-42d0-b4e7-daddfccb05d0		30	Delfin_w	OoKKfF
62	1/6 Камера №4 Подъезд Правое крыло	1/6 Камера №4 Подъезд Правое крыло	http://185.40.77.67:11012	9e81d3dd-e74a-4d22-a2b0-02369088b175		31	Delfin_w	OoKKfF
63	1/6 Камера №5	1/6 Камера №5	http://185.40.77.67:11012	2b433a84-c352-4a0e-b7c9-36866d98d3bd		32	Delfin_w	OoKKfF
64	219/1 Камера №8 Подъезд 3 Лифт	219/1 Камера №8 Подъезд 3 Лифт	http://185.40.77.67:11012	61d28276-7f87-450c-b012-f5a2fe656470		8	Continent_w	AVO5vV
65	1/6 Камера №6	1/6 Камера №6	http://185.40.77.67:11012	798cb512-3d0b-498a-8bff-19d5e861589d		33	Delfin_w	OoKKfF
66	1/6 Камера №7	1/6 Камера №7	http://185.40.77.67:11012	027f0edb-f905-4d7f-998f-8acdfb9b396e		34	Delfin_w	OoKKfF
67	219/1 Камера №9	219/1 Камера №9	http://185.40.77.67:11012	ee466085-5554-4785-9b90-06a4409ad139		9	Continent_w	AVO5vV
68	219/1 Камера №10	219/1 Камера №10	http://185.40.77.67:11012	db3ba5fe-a8c5-42d8-9c42-5486bfea4965		10	Continent_w	AVO5vV
69	1/7 Камера №1	1/7 Камера №1	http://185.40.77.67:11012	f959bd94-7e58-47c0-8af6-15e589c4c40d		35	Delfin_w	OoKKfF
70	219/1 Камера №11	219/1 Камера №11	http://185.40.77.67:11012	5c185d8a-540a-4a25-a7e3-b11d2c82cf62		11	Continent_w	AVO5vV
71	1/7 Камера №2	1/7 Камера №2	http://185.40.77.67:11012	2abba983-ca51-4b76-b7e3-a1afdde47096		36	Delfin_w	OoKKfF
72	1/7 Камера №3 Подъезд Левое крыло	1/7 Камера №3 Подъезд Левое крыло	http://185.40.77.67:11012	1eb1e775-1877-4102-ad0d-681b7370fd72		37	Delfin_w	OoKKfF
73	1/7 Камера №4 Подъезд Правое крыло	1/7 Камера №4 Подъезд Правое крыло	http://185.40.77.67:11012	7646580f-6271-46a3-91e1-d0ee6c81a524		38	Delfin_w	OoKKfF
74	219/1 Камера №12 Подъезд 4	219/1 Камера №12 Подъезд 4	http://185.40.77.67:11012	64f55023-be68-4e5e-a129-dbc4bcc27171		12	Continent_w	AVO5vV
75	1/7 Камера №5	1/7 Камера №5	http://185.40.77.67:11012	ccc261c3-7b4e-419f-aff6-9700bd9cf670		39	Delfin_w	OoKKfF
76	219/1 Камера №13 Подъезд 4 Лифт	219/1 Камера №13 Подъезд 4 Лифт	http://185.40.77.67:11012	2bd46715-4551-4774-802f-5631ee4cb965		13	Continent_w	AVO5vV
77	1/7 Камера №6	1/7 Камера №6	http://185.40.77.67:11012	9479a9d7-a128-49fb-97c7-3348e136b996		40	Delfin_w	OoKKfF
78	1/7 Камера №7	1/7 Камера №7	http://185.40.77.67:11012	1db99dd3-9b4c-4ccd-84af-527ac55b4a8f		41	Delfin_w	OoKKfF
79	1/8 Камера №1	1/8 Камера №1	http://185.40.77.67:11012	96fd91d9-1c8c-46e2-bee6-a222086e8bd1		42	Delfin_w	OoKKfF
80	219/1 Камера №14 Подъезд 5	219/1 Камера №14 Подъезд 5	http://185.40.77.67:11012	bc9639aa-4f18-47a5-a467-72fd6bc2cfd9		14	Continent_w	AVO5vV
81	1/8 Камера №2	1/8 Камера №2	http://185.40.77.67:11012	f052d7a5-2bf8-40cf-ac08-564b2be9a29e		43	Delfin_w	OoKKfF
82	1/8 Камера №3 Подъезд Левое крыло	1/8 Камера №3 Подъезд Левое крыло	http://185.40.77.67:11012	f080b3dd-4a05-4b32-a625-3ab88c972f65		44	Delfin_w	OoKKfF
83	219/1 Камера №15 Подъезд 5 Лифт	219/1 Камера №15 Подъезд 5 Лифт	http://185.40.77.67:11012	a18733e5-fab2-4ce9-8a74-fec5c7827e46		15	Continent_w	AVO5vV
84	1/8 Камера №4 Подъезд Правое крыло	1/8 Камера №4 Подъезд Правое крыло	http://185.40.77.67:11012	ffecdebf-73c7-4f8c-a4d5-7773a0c63aeb		45	Delfin_w	OoKKfF
85	1/8 Камера №5	1/8 Камера №5	http://185.40.77.67:11012	c93b80f1-a8ec-40ff-9738-2432451cb8db		46	Delfin_w	OoKKfF
86	1/8 Камера №6	1/8 Камера №6	http://185.40.77.67:11012	107f79b5-7c97-460a-9e05-40c5c040635c		47	Delfin_w	OoKKfF
87	219/1 Камера №16	219/1 Камера №16	http://185.40.77.67:11012	057a609f-3bbb-4503-ae3e-0e90ac9c7675		16	Continent_w	AVO5vV
88	1/8 Камера №7	1/8 Камера №7	http://185.40.77.67:11012	41bf2367-a4df-4761-accd-ede29fbf9fb8		48	Delfin_w	OoKKfF
89	219/1 Камера №17 Подъезд 6	219/1 Камера №17 Подъезд 6	http://185.40.77.67:11012	aef1f012-4a79-488f-a72a-b85f539c868d		17	Continent_w	AVO5vV
90	1/9 Камера №1	1/9 Камера №1	http://185.40.77.67:11012	0a5b1307-6801-4305-a9d3-e71953c5654b		49	Delfin_w	OoKKfF
91	1/9 Камера №2 Подъезд	1/9 Камера №2 Подъезд	http://185.40.77.67:11012	1e6ced19-ce37-404e-881d-f952f1fea8c6		50	Delfin_w	OoKKfF
92	219/1 Камера №18 Подъезд 6 Лифт	219/1 Камера №18 Подъезд 6 Лифт	http://185.40.77.67:11012	1d26c91e-4173-4a5a-8339-26b94747b47b		18	Continent_w	AVO5vV
93	1/9 Камера №3	1/9 Камера №3	http://185.40.77.67:11012	a57a14a8-2ee2-48ea-9938-e90074569cdf		51	Delfin_w	OoKKfF
94	1/10 Камера №1	1/10 Камера №1	http://185.40.77.67:11012	acace4f5-7c4f-4681-93f5-cde40675d39a		52	Delfin_w	OoKKfF
95	1/10 Камера №2	1/10 Камера №2	http://185.40.77.67:11012	ba168db2-b23b-41c1-b95f-447313d87c56		53	Delfin_w	OoKKfF
96	1/10 Камера №3 Подъезд Левое крыло	1/10 Камера №3 Подъезд Левое крыло	http://185.40.77.67:11012	998960c7-0657-4f33-98fc-df98e4f5c135		54	Delfin_w	OoKKfF
97	219/1 Камера №19 Подъезд 7	219/1 Камера №19 Подъезд 7	http://185.40.77.67:11012	9e7d0579-f368-49ad-9929-c690fe1d9398		19	Continent_w	AVO5vV
98	1/10 Камера №4 Подъезд Правое крыло	1/10 Камера №4 Подъезд Правое крыло	http://185.40.77.67:11012	046a7d47-5beb-4bc9-983b-db733c9cdd13		55	Delfin_w	OoKKfF
99	219/1 Камера №20 Подъезд 7 Лифт	219/1 Камера №20 Подъезд 7 Лифт	http://185.40.77.67:11012	57870554-1474-4d17-8e71-dea90ed48e32		20	Continent_w	AVO5vV
100	1/10 Камера №5	1/10 Камера №5	http://185.40.77.67:11012	47cb8ae4-e39e-4cbb-bd39-9b50929c685f		56	Delfin_w	OoKKfF
101	1/10 Камера №6	1/10 Камера №6	http://185.40.77.67:11012	93c5118e-acc3-42cd-a859-c0f7cef24e45		57	Delfin_w	OoKKfF
102	219/1 Камера №21	219/1 Камера №21	http://185.40.77.67:11012	a25ab1ef-25c2-4a74-b305-75a625e15389		21	Continent_w	AVO5vV
103	1/10 Камера №7	1/10 Камера №7	http://185.40.77.67:11012	1cf29a65-d33a-47e9-89cb-2a4f1059359b		58	Delfin_w	OoKKfF
104	219/1 Камера №22	219/1 Камера №22	http://185.40.77.67:11012	7f3303f5-618b-4338-b506-7a609b73b9d2		22	Continent_w	AVO5vV
105	219/1 Камера №23	219/1 Камера №23	http://185.40.77.67:11012	c24da7d0-9f47-4049-bd1e-65ac3909c112		23	Continent_w	AVO5vV
106	219/2 Камера №1	219/2 Камера №1	http://185.40.77.67:11012	c737c041-91d1-4c5b-9ef3-68a40fad6274		24	Continent_w	AVO5vV
107	219/2 Камера №10 Подъезд 3 Лифт	219/2 Камера №10 Подъезд 3 Лифт	http://185.40.77.67:11012	8f5476e9-a144-4687-a41d-95b9fa6c0fdc		33	Continent_w	AVO5vV
108	219/2 Камера №2	219/2 Камера №2	http://185.40.77.67:11012	a8647d37-0a91-4f06-be94-338273c021e4		25	Continent_w	AVO5vV
109	219/2 Камера №3 Подъезд 1	219/2 Камера №3 Подъезд 1	http://185.40.77.67:11012	e4a9c03e-6ac2-4673-b9a9-b5064ee94afb		26	Continent_w	AVO5vV
112	219/2 Камера №4 Подъезд 1 Лифт	219/2 Камера №4 Подъезд 1 Лифт	http://185.40.77.67:11012	808d2b26-6969-417e-8eb2-4da1acfb8d46		27	Continent_w	AVO5vV
113	219/2 Камера №5	219/2 Камера №5	http://185.40.77.67:11012	19b6fce9-3df1-44a1-b560-ff1ae682083c		28	Continent_w	AVO5vV
116	219/2 Камера №6 Подъезд 2	219/2 Камера №6 Подъезд 2	http://185.40.77.67:11012	bbd8f9c0-be59-4c47-a659-6764cafb494b		29	Continent_w	AVO5vV
118	219/2 Камера №7 Подъезд 2 Лифт	219/2 Камера №7 Подъезд 2 Лифт	http://185.40.77.67:11012	c0e3cb33-89bc-46a8-9b63-5b8131038127		30	Continent_w	AVO5vV
124	219/2 Камера №9 Подъезд 3	219/2 Камера №9 Подъезд 3	http://185.40.77.67:11012	9e8198ad-35c0-4cc5-9f99-805fd55e64aa		32	Continent_w	AVO5vV
127	219/2 Камера №11	219/2 Камера №11	http://185.40.77.67:11012	70f9dcbb-3008-4f73-834e-f352b3e08b33		34	Continent_w	AVO5vV
130	219/2 Камера №12 Подъезд 4	219/2 Камера №12 Подъезд 4	http://185.40.77.67:11012	b5ed4fa9-dc2e-4c0b-af9e-96a477620665		35	Continent_w	AVO5vV
119	219/3 Камера №11	219/3 Камера №11	http://185.40.77.67:11012	6c5f9b81-13bc-44c1-95a6-93fd10ea9195		52	Continent_w	AVO5vV
120	219/3 Камера №10	219/3 Камера №10	http://185.40.77.67:11012	cbff4bbf-86b9-498b-95c5-6004783d3e67		51	Continent_w	AVO5vV
115	219/3 Камера №9 Подъезд 4	219/3 Камера №9 Подъезд 4	http://185.40.77.67:11012	7739c264-ccb5-4dd2-ac0b-4d630a89f5a1		50	Continent_w	AVO5vV
114	219/3 Камера №8	219/3 Камера №8	http://185.40.77.67:11012	c941f1c7-2242-4597-9bfe-406ed581c38e		49	Continent_w	AVO5vV
121	219/3 Камера №7 Подъезд 3	219/3 Камера №7 Подъезд 3	http://185.40.77.67:11012	83901524-00bb-4eec-8f22-d35bf64624b6		48	Continent_w	AVO5vV
122	219/3 Камера №6	219/3 Камера №6	http://185.40.77.67:11012	324ec1dc-7b55-4482-b7a9-ac8bcd1bea23		47	Continent_w	AVO5vV
123	219/3 Камера №5 Подъезд 2	219/3 Камера №5 Подъезд 2	http://185.40.77.67:11012	f98c75c3-8d2a-4d56-8825-85b9c2336777		46	Continent_w	AVO5vV
125	219/3 Камера №4	219/3 Камера №4	http://185.40.77.67:11012	345d8c35-b4c9-4480-86a4-c76c5529b024		45	Continent_w	AVO5vV
126	219/3 Камера №2	219/3 Камера №2	http://185.40.77.67:11012	a3c8181e-508f-4e9b-8b66-2f8392ade8b6		43	Continent_w	AVO5vV
128	219/3 Камера №1	219/3 Камера №1	http://185.40.77.67:11012	e12efbc4-0756-4bf0-a349-fffd2be703dd		42	Continent_w	AVO5vV
129	219/2 Камера №18	219/2 Камера №18	http://185.40.77.67:11012	a7fef7a3-4c53-485e-bb31-3a9e13c7fed2		41	Continent_w	AVO5vV
131	219/2 Камера №17	219/2 Камера №17	http://185.40.77.67:11012	fa5fce35-46a7-4aea-a3b9-19c3b1c4515d		40	Continent_w	AVO5vV
132	219/2 Камера №16 Подъезд 5 Лифт	219/2 Камера №16 Подъезд 5 Лифт	http://185.40.77.67:11012	53437ced-cc84-4a02-bf88-8af283052db6		39	Continent_w	AVO5vV
133	219/2 Камера №13 Подъезд №4 Лифт	219/2 Камера №13 Подъезд №4 Лифт	http://185.40.77.67:11012	4db476fb-10fd-4fb8-9e40-be2f1aad36df		36	Continent_w	AVO5vV
117	219/3 Камера №12	219/3 Камера №12	http://185.40.77.67:11012	c8d97988-cdd9-43ee-82c6-b554994344a0		53	Continent_w	AVO5vV
134	219/2 Камера №14	219/2 Камера №14	http://185.40.77.67:11012	a8c91361-d5f2-4fdf-b705-f39ef1a71c7e		37	Continent_w	AVO5vV
135	219/2 Камера №15 Подъезд 5	219/2 Камера №15 Подъезд 5	http://185.40.77.67:11012	acaeba63-fdc5-49e1-adbd-bb75ef8f5aff		38	Continent_w	AVO5vV
136	1/11 Камера №1	1/11 Камера №1	http://185.40.77.67:11012	85bec102-93e2-4208-9782-b03b9e6cc41a		59	Delfin_w	OoKKfF
137	1/11 Камера №2	1/11 Камера №2	http://185.40.77.67:11012	ff269e56-dbe0-4445-8a14-4e70940f908a		60	Delfin_w	OoKKfF
138	1/11 Камера №3	1/11 Камера №3	http://185.40.77.67:11012	33ed88ea-63d8-4458-b6c7-72a3b0e46d04		61	Delfin_w	OoKKfF
139	1/11 Камера №4 Подъезд Левое крыло	1/11 Камера №4 Подъезд Левое крыло	http://185.40.77.67:11012	9bca1b67-0f43-40b6-b1e7-eaf0c21d60bd		62	Delfin_w	OoKKfF
140	1/11 Камера №5 Подъезд Правое крыло	1/11 Камера №5 Подъезд Правое крыло	http://185.40.77.67:11012	c1fa27c6-389d-4644-bec9-4bd3e285fa5a		63	Delfin_w	OoKKfF
141	1/11 Камера №6	1/11 Камера №6	http://185.40.77.67:11012	734d5cd6-a028-426b-a412-6eed4923b72f		64	Delfin_w	OoKKfF
142	1/11 Камера №7	1/11 Камера №7	http://185.40.77.67:11012	c989d183-5186-43e1-a0ab-dfbc1a744225		65	Delfin_w	OoKKfF
43	219/1 Камера №1	219/1 Камера №1	http://185.40.77.67:11012	2341ac5d-d51a-44c5-8c58-352c7f03067c	video_cameras/Снимок_экрана_40.png	1	Continent_w	AVO5vV
143	219/3 Камера №3 Подъезд 1	219/3 Камера №3 Подъезд 1	http://185.40.77.67:11012	bf2fc8cb-1d62-45c7-98d0-f3394e27be0e		44	Continent_w	AVO5vV
\.


--
-- Data for Name: videoadmin_video_cameras_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videoadmin_video_cameras_category (id, video_cameras_id, video_objects_id) FROM stdin;
3	1	3
4	2	3
5	3	3
6	5	4
7	6	5
8	7	4
9	8	4
10	9	4
11	10	4
12	11	5
13	12	4
14	13	5
15	14	4
16	15	4
17	16	5
18	17	4
19	18	5
20	19	4
21	20	4
22	21	5
23	22	5
24	23	5
25	24	3
26	25	5
27	26	5
28	27	5
29	28	3
30	29	3
31	30	3
32	31	3
33	32	3
34	33	3
35	34	3
36	35	3
37	36	5
38	37	3
39	38	3
40	39	3
41	40	3
42	41	3
43	42	3
44	43	2
45	44	3
46	45	3
47	46	2
48	47	3
49	48	3
50	49	2
51	50	3
52	51	2
53	52	3
54	53	3
55	54	2
56	55	3
57	56	3
58	57	3
59	58	2
60	59	3
61	60	2
62	61	3
63	62	3
64	63	3
65	64	2
66	65	3
67	66	3
68	67	2
69	68	2
70	69	3
71	70	2
72	71	3
73	72	3
74	73	3
75	74	2
76	75	3
77	76	2
78	77	3
79	78	3
80	79	3
81	80	2
82	81	3
83	82	3
84	83	2
85	84	3
86	85	3
87	86	3
88	87	2
89	88	3
90	89	2
91	90	3
92	91	3
93	92	2
94	93	3
95	94	3
96	95	3
97	96	3
98	97	2
99	98	3
100	99	2
101	100	3
102	101	3
103	102	2
104	103	3
105	104	2
106	105	2
107	106	2
108	107	2
109	108	2
110	109	2
113	112	2
114	113	2
115	114	2
116	115	2
117	116	2
118	117	2
119	118	2
120	119	2
121	120	2
122	121	2
123	122	2
124	123	2
125	124	2
126	125	2
127	126	2
128	127	2
129	128	2
130	129	2
131	130	2
132	131	2
133	132	2
134	133	2
135	134	2
136	135	2
137	136	3
138	137	3
139	138	3
140	139	3
141	140	3
142	141	3
143	142	3
144	143	2
\.


--
-- Data for Name: videoadmin_video_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY videoadmin_video_objects (id, created_date, edited_date, title, meta_description, file) FROM stdin;
3	2017-10-10 10:18:04.955205+00	2017-10-10 10:18:04.955246+00	ЖК «Дельфин»	(улица Переверткина, 1/1-11)	video_objects/DF-298x300.png
4	2017-10-10 10:18:47.43965+00	2017-10-10 10:18:47.43969+00	улица Берёзовая Роща, 8А		video_objects/2017-08-06-293x300.png
2	2017-10-10 08:06:58.289584+00	2017-10-13 11:39:10.575843+00	ЖК «Континент»	(Беговая улица, 219/1-3)	video_objects/BG-296x300.png
5	2017-10-23 16:51:08.330463+00	2017-10-23 17:05:46.7149+00	ЖК «Грин Парк»	(Московский проспект, 215)	video_objects/Gren_TIR9yB8.png
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 1, false);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 4479, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 230, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 1, false);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 1, false);


--
-- Name: django_migrations_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq1', 1, true);


--
-- Name: registration_registrationprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('registration_registrationprofile_id_seq', 1, false);


--
-- Name: videoadmin_userprofileobjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videoadmin_userprofileobjects_id_seq', 4481, true);


--
-- Name: videoadmin_userprofileobjects_video_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videoadmin_userprofileobjects_video_objects_id_seq', 4488, true);


--
-- Name: videoadmin_video_cameras_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videoadmin_video_cameras_category_id_seq', 144, true);


--
-- Name: videoadmin_video_cameras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videoadmin_video_cameras_id_seq', 143, true);


--
-- Name: videoadmin_video_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('videoadmin_video_objects_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: registration_registrationprofile registration_registrationprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_pkey PRIMARY KEY (id);


--
-- Name: registration_registrationprofile registration_registrationprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registrationprofile_user_id_key UNIQUE (user_id);


--
-- Name: videoadmin_userprofileobjects_video_objects videoadmin_userprofileob_userprofileobjects_id_vi_d99bc186_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects_video_objects
    ADD CONSTRAINT videoadmin_userprofileob_userprofileobjects_id_vi_d99bc186_uniq UNIQUE (userprofileobjects_id, video_objects_id);


--
-- Name: videoadmin_userprofileobjects videoadmin_userprofileobjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects
    ADD CONSTRAINT videoadmin_userprofileobjects_pkey PRIMARY KEY (id);


--
-- Name: videoadmin_userprofileobjects videoadmin_userprofileobjects_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects
    ADD CONSTRAINT videoadmin_userprofileobjects_user_id_key UNIQUE (user_id);


--
-- Name: videoadmin_userprofileobjects_video_objects videoadmin_userprofileobjects_video_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects_video_objects
    ADD CONSTRAINT videoadmin_userprofileobjects_video_objects_pkey PRIMARY KEY (id);


--
-- Name: videoadmin_video_cameras_category videoadmin_video_cameras_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_cameras_category
    ADD CONSTRAINT videoadmin_video_cameras_category_pkey PRIMARY KEY (id);


--
-- Name: videoadmin_video_cameras videoadmin_video_cameras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_cameras
    ADD CONSTRAINT videoadmin_video_cameras_pkey PRIMARY KEY (id);


--
-- Name: videoadmin_video_cameras_category videoadmin_video_cameras_video_cameras_id_video_o_ceaff25d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_cameras_category
    ADD CONSTRAINT videoadmin_video_cameras_video_cameras_id_video_o_ceaff25d_uniq UNIQUE (video_cameras_id, video_objects_id);


--
-- Name: videoadmin_video_objects videoadmin_video_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_objects
    ADD CONSTRAINT videoadmin_video_objects_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key);


--
-- Name: videoadmin_userprofileobje_userprofileobjects_id_17a79aec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX videoadmin_userprofileobje_userprofileobjects_id_17a79aec ON videoadmin_userprofileobjects_video_objects USING btree (userprofileobjects_id);


--
-- Name: videoadmin_userprofileobje_video_objects_id_875ac649; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX videoadmin_userprofileobje_video_objects_id_875ac649 ON videoadmin_userprofileobjects_video_objects USING btree (video_objects_id);


--
-- Name: videoadmin_video_cameras_category_video_cameras_id_4d303ba4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX videoadmin_video_cameras_category_video_cameras_id_4d303ba4 ON videoadmin_video_cameras_category USING btree (video_cameras_id);


--
-- Name: videoadmin_video_cameras_category_video_objects_id_c3c8ecc7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX videoadmin_video_cameras_category_video_objects_id_c3c8ecc7 ON videoadmin_video_cameras_category USING btree (video_objects_id);


--
-- Name: videoadmin_video_cameras_num_0231f99c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX videoadmin_video_cameras_num_0231f99c ON videoadmin_video_cameras USING btree (num);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: registration_registrationprofile registration_registr_user_id_5fcbf725_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registration_registrationprofile
    ADD CONSTRAINT registration_registr_user_id_5fcbf725_fk_auth_user FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videoadmin_userprofileobjects_video_objects videoadmin_userprofi_userprofileobjects_i_17a79aec_fk_videoadmi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects_video_objects
    ADD CONSTRAINT videoadmin_userprofi_userprofileobjects_i_17a79aec_fk_videoadmi FOREIGN KEY (userprofileobjects_id) REFERENCES videoadmin_userprofileobjects(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videoadmin_userprofileobjects_video_objects videoadmin_userprofi_video_objects_id_875ac649_fk_videoadmi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects_video_objects
    ADD CONSTRAINT videoadmin_userprofi_video_objects_id_875ac649_fk_videoadmi FOREIGN KEY (video_objects_id) REFERENCES videoadmin_video_objects(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videoadmin_userprofileobjects videoadmin_userprofileobjects_user_id_e87d6471_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_userprofileobjects
    ADD CONSTRAINT videoadmin_userprofileobjects_user_id_e87d6471_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videoadmin_video_cameras_category videoadmin_video_cam_video_cameras_id_4d303ba4_fk_videoadmi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_cameras_category
    ADD CONSTRAINT videoadmin_video_cam_video_cameras_id_4d303ba4_fk_videoadmi FOREIGN KEY (video_cameras_id) REFERENCES videoadmin_video_cameras(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: videoadmin_video_cameras_category videoadmin_video_cam_video_objects_id_c3c8ecc7_fk_videoadmi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY videoadmin_video_cameras_category
    ADD CONSTRAINT videoadmin_video_cam_video_objects_id_c3c8ecc7_fk_videoadmi FOREIGN KEY (video_objects_id) REFERENCES videoadmin_video_objects(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

