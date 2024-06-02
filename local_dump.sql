--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Homebrew)
-- Dumped by pg_dump version 14.12 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: photo; Type: TABLE; Schema: public; Owner: labber
--

CREATE TABLE public.photo (
    id integer NOT NULL,
    full_url character varying(255) NOT NULL,
    regular_url character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    user_id integer,
    topic_id integer
);


ALTER TABLE public.photo OWNER TO labber;

--
-- Name: topic; Type: TABLE; Schema: public; Owner: labber
--

CREATE TABLE public.topic (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.topic OWNER TO labber;

--
-- Name: user_account; Type: TABLE; Schema: public; Owner: labber
--

CREATE TABLE public.user_account (
    id integer NOT NULL,
    fullname character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    profile_url character varying(255) NOT NULL
);


ALTER TABLE public.user_account OWNER TO labber;

--
-- Name: user_account_id_seq; Type: SEQUENCE; Schema: public; Owner: labber
--

CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_account_id_seq OWNER TO labber;

--
-- Name: user_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: labber
--

ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;


--
-- Name: user_account id; Type: DEFAULT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: labber
--

COPY public.photo (id, full_url, regular_url, city, country, user_id, topic_id) FROM stdin;
1	Image-1-Full.jpeg	Image-1-Regular.jpeg	Montreal	Canada	1	1
11	people-1-full.jpg	people-1-regular.jpg	Toronto	Canada	1	1
12	people-2-full.jpg	people-2-regular.jpg	Vancouver	Canada	2	1
13	people-3-full.jpg	people-3-regular.jpg	Calgary	Canada	3	1
14	people-4-full.jpg	people-4-regular.jpg	Victoria	Canada	4	1
15	people-5-full.jpg	people-5-regular.jpg	Ottawa	Canada	5	1
16	people-6-full.jpg	people-6-regular.jpg	Montreal	Canada	6	1
17	people-7-full.jpg	people-7-regular.jpg	Toronto	Canada	7	1
18	people-8-full.jpg	people-8-regular.jpg	Vancouver	Canada	8	1
19	people-9-full.jpg	people-9-regular.jpg	Calgary	Canada	9	1
21	nature-1-full.jpg	nature-1-regular.jpg	Toronto	Canada	1	2
22	nature-2-full.jpg	nature-2-regular.jpg	Vancouver	Canada	2	2
23	nature-3-full.jpg	nature-3-regular.jpg	Calgary	Canada	3	2
24	nature-4-full.jpg	nature-4-regular.jpg	Victoria	Canada	4	2
25	nature-5-full.jpg	nature-5-regular.jpg	Ottawa	Canada	5	2
26	nature-6-full.jpg	nature-6-regular.jpg	Montreal	Canada	6	2
27	nature-7-full.jpg	nature-7-regular.jpg	Toronto	Canada	7	2
28	nature-8-full.jpg	nature-8-regular.jpg	Vancouver	Canada	8	2
29	nature-9-full.jpg	nature-9-regular.jpg	Calgary	Canada	9	2
31	travel-1-full.jpg	travel-1-regular.jpg	Toronto	Canada	1	3
32	travel-2-full.jpg	travel-2-regular.jpg	Vancouver	Canada	2	3
33	travel-3-full.jpg	travel-3-regular.jpg	Calgary	Canada	3	3
34	travel-4-full.jpg	travel-4-regular.jpg	Victoria	Canada	4	3
35	travel-5-full.jpg	travel-5-regular.jpg	Ottawa	Canada	5	3
36	travel-6-full.jpg	travel-6-regular.jpg	Montreal	Canada	6	3
37	travel-7-full.jpg	travel-7-regular.jpg	Toronto	Canada	7	3
38	travel-8-full.jpg	travel-8-regular.jpg	Vancouver	Canada	8	3
41	animals-1-full.jpg	animals-1-regular.jpg	Toronto	Canada	1	4
42	animals-2-full.jpg	animals-2-regular.jpg	Vancouver	Canada	2	4
43	animals-3-full.jpg	animals-3-regular.jpg	Calgary	Canada	3	4
44	animals-4-full.jpg	animals-4-regular.jpg	Victoria	Canada	4	4
45	animals-5-full.jpg	animals-5-regular.jpg	Ottawa	Canada	5	4
46	animals-6-full.jpg	animals-6-regular.jpg	Montreal	Canada	6	4
47	animals-7-full.jpg	animals-7-regular.jpg	Toronto	Canada	7	4
48	animals-8-full.jpg	animals-8-regular.jpg	Vancouver	Canada	8	4
49	animals-9-full.jpg	animals-9-regular.jpg	Calgary	Canada	9	4
51	fashion-1-full.jpg	fashion-1-regular.jpg	Toronto	Canada	1	5
52	fashion-2-full.jpg	fashion-2-regular.jpg	Vancouver	Canada	2	5
53	fashion-3-full.jpg	fashion-3-regular.jpg	Calgary	Canada	3	5
54	fashion-4-full.jpg	fashion-4-regular.jpg	Victoria	Canada	4	5
55	fashion-5-full.jpg	fashion-5-regular.jpg	Ottawa	Canada	5	5
56	fashion-6-full.jpg	fashion-6-regular.jpg	Montreal	Canada	6	5
57	fashion-7-full.jpg	fashion-7-regular.jpg	Toronto	Canada	7	5
58	fashion-8-full.jpg	fashion-8-regular.jpg	Vancouver	Canada	8	5
59	fashion-9-full.jpg	fashion-9-regular.jpg	Calgary	Canada	9	5
\.


--
-- Data for Name: topic; Type: TABLE DATA; Schema: public; Owner: labber
--

COPY public.topic (id, title, slug) FROM stdin;
1	People	people
2	Nature	nature
3	Travel	travel
4	Animals	animals
5	Fashion	fashion
\.


--
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: labber
--

COPY public.user_account (id, fullname, username, profile_url) FROM stdin;
1	John Doe	jdoe	profile-1.jpg
2	Alice Wonderland	awond	profile-2.jpg
3	Sita Dennis	sitad	profile-3.jpg
4	Sasha Mateo	matte	profile-4.jpg
5	Anita Austi	anita	profile-5.jpg
6	Lukas Souza	lsouza	profile-6.jpg
7	Jose Alejandro	josea	profile-7.jpg
8	Dwayne Jacob	jdwayne	profile-8.jpg
9	Allison Saeng	saeng	profile-9.jpg
10	Adrea Santos	santa	profile-10.jpg
\.


--
-- Name: user_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: labber
--

SELECT pg_catalog.setval('public.user_account_id_seq', 1, false);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (id);


--
-- Name: user_account user_account_pkey; Type: CONSTRAINT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);


--
-- Name: photo photo_topic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topic(id) ON DELETE CASCADE;


--
-- Name: photo photo_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: labber
--

ALTER TABLE ONLY public.photo
    ADD CONSTRAINT photo_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

