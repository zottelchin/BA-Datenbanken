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
-- Name: scopus_manual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scopus_manual (
    id integer NOT NULL,
    author text,
    title text,
    doi text,
    year text,
    abstract text,
    url text
);


ALTER TABLE public.scopus_manual OWNER TO postgres;

--
-- Name: scopus_manual_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.scopus_manual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scopus_manual_id_seq OWNER TO postgres;

--
-- Name: scopus_manual_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.scopus_manual_id_seq OWNED BY public.scopus_manual.id;


--
-- Name: scopus_manual id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scopus_manual ALTER COLUMN id SET DEFAULT nextval('public.scopus_manual_id_seq'::regclass);


--
-- Data for Name: scopus_manual; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scopus_manual (id, author, title, doi, year, abstract, url) FROM stdin;
1		14th European Conference on Modelling Foundations and Applications, ECMFA 2018 Held as Part of STAF 2018		2018		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85048883728&partnerID=40&md5=a1eec847e708a663b101710313975dbb
2	Grichi, M. and Guéhéneuc, Y.-G. and Abidi, M. and Khomh, F.	State of practices of java native interface		2020		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85087419066&partnerID=40&md5=37069b0f3a4ae4e70ebf87c386514467
3	Abdelaziz, I. and Srinivas, K. and Dolby, J. and McCusker, J.P.	A demonstration of codebreaker: A machine interpretable knowledge graph for code		2020		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85096233087&partnerID=40&md5=216847069b28a16550f0d40c42e37979
4		Proceedings - 2019 IEEE/ACM 27th International Conference on Program Comprehension, ICPC 2019		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85072306102&partnerID=40&md5=b1405868c0291b88e60138ed6f2c450b
5	Legay, D. and Decan, A. and Mens, T.	On the usage of badges in open source packages on GitHub		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85089901592&partnerID=40&md5=592cfca20a6900752cfa70a92371d02e
6		BENEVOL 2019 - Proceedings of the 18th Belgium-Netherlands Software Evolution Workshop		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85089913118&partnerID=40&md5=eeb2e926a303945d8153fc141b715295
7	Liu, H. and Han, Z. and Liu, Y.-S. and Gu, M.	Fast low-rank metric learning for large-scale and high-dimensional data		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85090173303&partnerID=40&md5=29650e18c731b80e20f565a63d7e6490
8	Kim, Y.W. and Consens, M.P. and Hartig, O.	An empirical analysis of GraphQL API schemas in open code repositories and package registries		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85066978177&partnerID=40&md5=93a82b208b3137e56012703227cafa3f
9	Luo, P. and Ren, J. and Peng, Z. and Zhang, R. and Li, J.	Differentiable learning-to-normalize via switchable normalization		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85083954533&partnerID=40&md5=52cdc018a15f0103e2162d3a18a5ebeb
10		13th International Conference on Software Technologies, ICSOFT 2018		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85071684289&partnerID=40&md5=246fd2eeca5afd47a1fb91d962f4a405
11	Fan, Q. and Chen, C.-F. and Kuehne, H. and Pistoia, M. and Cox, D.	More is less: Learning efficient video representations by big-little network and depthwise temporal aggregation		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85088876874&partnerID=40&md5=bfa70d0301052548ba334208dac815f7
12	Khashabi, D. and Sammons, M. and Zhou, B. and Redman, T. and Christodoulopoulos, C. and Srikumar, V. and Rizzolo, N. and Luo, L.R.G. and Do, Q. and Tsai, C.-T. and Roy, S. and Mayhew, S. and Feng, Z. and Wieting, J. and Yu, X. and Song, Y. and Gupta, S. and Upadhyay, S. and Arivazhagan, N. and Ning, Q. and Ling, S. and Roth, D.	CogcompnLP: Your Swiss army knife for NLP		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85059881208&partnerID=40&md5=3f0eb4e7000f15d47ceb7069509f21bb
13	Wu, C. and Miller, J. and Chang, Y. and Sznaier, M. and Dy, J.	Solving interpretable kernel dimension reduction		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85090175310&partnerID=40&md5=182e2e3fbd09f7c03f1342d0a754dc3f
14	Li, H. and Szum, C. and Lisauskas, S. and Bekhit, A. and Nesler, C. and Snyder, S.C.	Targeting building energy efficiency opportunities: An Open-source Analytical &amp; Benchmarking Tool		2019		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85071939979&partnerID=40&md5=c15331ebd8c38a5fb0976030571eb521
15		ACM International Conference Proceeding Series		2018		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85056723451&partnerID=40&md5=1700489bee3e744584c3175cc2155578
16		Proceedings - International Conference on Software Engineering		2018		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85051651224&partnerID=40&md5=fecc8db685f619c739d1ff6e68ce0b9f
17	Pedersoli, F. and Tzanetakis, G. and Tagliasacchi, A.	Espresso: Efficient forward propagation for binary deep neural networks		2018		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85083951336&partnerID=40&md5=a4ab7aa506219d7d3fe8074c6e663bea
19		ACM International Conference Proceeding Series		2017		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85037856430&partnerID=40&md5=2fbf64fa2e1b5a4872ea3d15135d6791
20	Wilkerson, S.A. and Forsyth, J. and Korpela, C.M.	Project based learning using the robotic Operating System (ROS) for undergraduate research applications		2017		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85030551439&partnerID=40&md5=75b64d5b362084bb54a580901aa00d00
21		Proceedings - Asia-Pacific Software Engineering Conference, APSEC		2017		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85017674294&partnerID=40&md5=42476fcdd9eaaf582c5c6ee4ddd1f6f2
22	Lemaître, G. and Nogueira, F. and Aridas, C.K.	Imbalanced-learn: A python toolbox to tackle the curse of imbalanced datasets in machine learning		2017		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85016274615&partnerID=40&md5=dd32549cc0b9c2cd01c342fff0468b7b
23	Defferrard, M. and Benzi, K. and Vandergheynst, P. and Bresson, X.	FMA: A dataset for music analysis		2017		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85068955365&partnerID=40&md5=52ec35cfef56f2b0a0851dd8d52c1502
24		Proceedings - 3rd International Workshop on CrowdSourcing in Software Engineering, CSI-SE 2016		2016		https://www.scopus.com/inward/record.uri?eid=2-s2.0-84973501927&partnerID=40&md5=17967783afeb5df1bbc4db98eb6d74eb
25	Wang, S.-M. and Ku, L.-W.	ANTUSD: A large Chinese sentiment dictionary		2016		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85027864979&partnerID=40&md5=d301422d69fcda6729833e0780272e0a
26	Pajkossy, K. and Zseder, A.	The hunvec framework for NN-CRF-based sequential tagging		2016		https://www.scopus.com/inward/record.uri?eid=2-s2.0-85037172480&partnerID=40&md5=b9f9a014d86dff83ec8bc4c270d56f1c
27	Blfgeh, A. and Warrender, J.D. and Hilkens, C.M.U. and Lord, P.	A document-centric approach for developing the tolAPC Ontology		2016		https://www.scopus.com/inward/record.uri?eid=2-s2.0-84992323947&partnerID=40&md5=ed03bed2969be7406895b8f8958805b0
28		11th Working Conference on Mining Software Repositories, MSR 2014 - Proceedings		2014		https://www.scopus.com/inward/record.uri?eid=2-s2.0-84938782711&partnerID=40&md5=6b7705afa8754a2676b2342cb2ce9a4d
\.


--
-- Name: scopus_manual_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scopus_manual_id_seq', 28, true);


--
-- Name: scopus_manual scopus_manual_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scopus_manual
    ADD CONSTRAINT scopus_manual_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

