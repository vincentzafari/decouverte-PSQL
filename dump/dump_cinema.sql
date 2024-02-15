--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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
-- Name: director; Type: TABLE; Schema: public; Owner: cinema
--

CREATE TABLE public.director (
    id integer NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL
);


ALTER TABLE public.director OWNER TO cinema;

--
-- Name: director_id_seq; Type: SEQUENCE; Schema: public; Owner: cinema
--

ALTER TABLE public.director ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: genre; Type: TABLE; Schema: public; Owner: cinema
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.genre OWNER TO cinema;

--
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: cinema
--

ALTER TABLE public.genre ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: movie; Type: TABLE; Schema: public; Owner: cinema
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    title text NOT NULL,
    year integer,
    excerpt text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone
);


ALTER TABLE public.movie OWNER TO cinema;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: cinema
--

ALTER TABLE public.movie ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: cinema
--

COPY public.director (id, firstname, lastname) FROM stdin;
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: cinema
--

COPY public.genre (id, name) FROM stdin;
1	comedie
2	thriller
3	horreur
4	aventure
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: cinema
--

COPY public.movie (id, title, year, excerpt, created_at, updated_at) FROM stdin;
\.


--
-- Name: director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cinema
--

SELECT pg_catalog.setval('public.director_id_seq', 1, false);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cinema
--

SELECT pg_catalog.setval('public.genre_id_seq', 4, true);


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cinema
--

SELECT pg_catalog.setval('public.movie_id_seq', 1, false);


--
-- Name: director director_pkey; Type: CONSTRAINT; Schema: public; Owner: cinema
--

ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: cinema
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: cinema
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

