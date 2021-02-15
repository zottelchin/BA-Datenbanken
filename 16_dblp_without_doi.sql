--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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
-- Name: dblp_manual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dblp_manual (
    id integer NOT NULL,
    author text,
    title text,
    doi text,
    year text,
    abstract text,
    url text
);


ALTER TABLE public.dblp_manual OWNER TO postgres;

--
-- Name: dblp_manual_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dblp_manual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dblp_manual_id_seq OWNER TO postgres;

--
-- Name: dblp_manual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dblp_manual_id_seq OWNED BY public.dblp_manual.id;


--
-- Name: dblp_manual id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dblp_manual ALTER COLUMN id SET DEFAULT nextval('public.dblp_manual_id_seq'::regclass);


--
-- Data for Name: dblp_manual; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dblp_manual (id, author, title, doi, year, abstract, url) FROM stdin;
1	Nat\\'ercia A. Batista and	Tie Strength Metrics to Rank Pairs of Developers from GitHub		2018		https://periodicos.ufmg.br/index.php/jidm/article/view/417
2	Bogdan Negoita and	Code Forking and Software Development Project Sustainability: Evidence		2019		https://aisel.aisnet.org/icis2019/is\\_development/is\\_development/7
3	Yasemin Acar and	Security Developer Studies with GitHub Users: Exploring a Convenience		2017		https://www.usenix.org/conference/soups2017/technical-sessions/presentation/acar
4	Tianjie Deng and	Diversity in Software Development Routines are Attractive: A Preliminary		2015		http://aisel.aisnet.org/amcis2015/SystemsAnalysis/GeneralPresentations/7
5	Damien Legay and	On the Usage of Badges in Open Source Packages on GitHub		2019		http://ceur-ws.org/Vol-2605/9.pdf
\.


--
-- Name: dblp_manual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dblp_manual_id_seq', 5, true);


--
-- Name: dblp_manual dblp_manual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dblp_manual
    ADD CONSTRAINT dblp_manual_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

