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
-- Name: dblp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dblp (
    id integer NOT NULL,
    author text,
    title text,
    doi text,
    year text,
    abstract text,
    url text
);


ALTER TABLE public.dblp OWNER TO postgres;

--
-- Name: dblp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dblp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dblp_id_seq OWNER TO postgres;

--
-- Name: dblp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dblp_id_seq OWNED BY public.dblp.id;


--
-- Name: dblp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dblp ALTER COLUMN id SET DEFAULT nextval('public.dblp_id_seq'::regclass);


--
-- Data for Name: dblp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dblp (id, author, title, doi, year, abstract, url) FROM stdin;
1	Zhenhui Peng and	Exploring how software developers work with mention bot in GitHub	10.1007/s42486-019-00013-2	2019		https://doi.org/10.1007/s42486-019-00013-2
2	Cunyan Li and	Github\\unicode20013\\unicode24320\\unicode21457\\unicode20154\\unicode21592\\unicode30340\\unicode34892\\unicode20026\\unicode29305\\unicode24449\\unicode20998\\unicode26512	10.11896/j.issn.1002-137X.2019.02.024	2019		https://doi.org/10.11896/j.issn.1002-137X.2019.02.024
3	Chao Liu and	Recommending GitHub Projects for Developer Onboarding	10.1109/ACCESS.2018.2869207	2018		https://doi.org/10.1109/ACCESS.2018.2869207
4	Neil C. Borle and	Analyzing the effects of test driven development in GitHub	10.1007/s10664-017-9576-3	2018		https://doi.org/10.1007/s10664-017-9576-3
5	Yan Hu and	User influence analysis for Github developer social networks	10.1016/j.eswa.2018.05.002	2018		https://doi.org/10.1016/j.eswa.2018.05.002
6	Oskar Jarczyk and	Surgical teams on GitHub: Modeling performance of GitHub project development	10.1016/j.infsof.2018.03.010	2018		https://doi.org/10.1016/j.infsof.2018.03.010
7	Valerio Cosentino and	A Systematic Mapping Study of Software Development With GitHub	10.1109/ACCESS.2017.2682323	2017		https://doi.org/10.1109/ACCESS.2017.2682323
8	Yang Zhang and	Social media in GitHub: the role of @-mention in assisting software	10.1007/s11432-015-1024-6	2017		https://doi.org/10.1007/s11432-015-1024-6
9	Jing Jiang and	Why and how developers fork what from whom in GitHub	10.1007/s10664-016-9436-6	2017		https://doi.org/10.1007/s10664-016-9436-6
10	Yunxiang Xiong and	Developer Identity Linkage and Behavior Mining Across GitHub and StackOverflow	10.1142/S0218194017400034	2017		https://doi.org/10.1142/S0218194017400034
11	Ritu Arora and	Supporting collaborative software development over GitHub	10.1002/spe.2468	2017		https://doi.org/10.1002/spe.2468
12	Francisco Jurado and	Sentiment Analysis in monitoring software development processes: An	10.1016/j.jss.2015.02.055	2015		https://doi.org/10.1016/j.jss.2015.02.055
13	Andrew Begel and	Social Networking Meets Software Development: Perspectives from GitHub	10.1109/MS.2013.13	2013		https://doi.org/10.1109/MS.2013.13
14	Thomas S. Heinze and	Mining BPMN Processes on GitHub for Tool Validation and Development	10.1007/978-3-030-49418-6\\_13	2020		https://doi.org/10.1007/978-3-030-49418-6\\_13
15	Vikram N. Subramanian	An empirical study of the first contributions of developers to open	10.1145/3377812.3382165	2020		https://doi.org/10.1145/3377812.3382165
16	Ifraz Rehman and	Newcomer Candidate: Characterizing Contributions of a Novice Developer	10.1109/ICSME46990.2020.00110	2020		https://doi.org/10.1109/ICSME46990.2020.00110
17	Sri Lakshmi Vadlamani and	Studying Software Developer Expertise and Contributions in Stack Overflow	10.1109/ICSME46990.2020.00038	2020		https://doi.org/10.1109/ICSME46990.2020.00038
18	Hongbo Fang and	Need for Tweet: How Open Source Developers Talk About Their GitHub	10.1145/3379597.3387466	2020		https://doi.org/10.1145/3379597.3387466
19	Danielle Gonzalez and	The State of the ML-universe: 10 Years of Artificial Intelligence	10.1145/3379597.3387473	2020		https://doi.org/10.1145/3379597.3387473
20	Chris Brown and	Understanding the impact of GitHub suggested changes on recommendations	10.1145/3368089.3409722	2020		https://doi.org/10.1145/3368089.3409722
21	Syed Fatiul Huq and	Is Developer Sentiment Related to Software Bugs: An Exploratory Study	10.1109/SANER48275.2020.9054801	2020		https://doi.org/10.1109/SANER48275.2020.9054801
22	Syed Fatiul Huq and	Understanding the Effect of Developer Sentiment on Fix-Inducing Changes:	10.1109/APSEC48747.2019.00075	2019		https://doi.org/10.1109/APSEC48747.2019.00075
23	Simon Larsen and	RepoBee: Developing Tool Support for Courses using Git/GitHub	10.1145/3304221.3319784	2019		https://doi.org/10.1145/3304221.3319784
24	Saraj Singh Manes and	How often and what StackOverflow posts do developers reference in	10.1109/MSR.2019.00047	2019		https://doi.org/10.1109/MSR.2019.00047
25	Rijnard van Tonder and	A panel data set of cryptocurrency development activity on GitHub	10.1109/MSR.2019.00037	2019		https://doi.org/10.1109/MSR.2019.00037
26	Luis Silvestre and	Improving Continuous Software Development in Academic Scenarios using	10.1109/SCCC49216.2019.8966391	2019		https://doi.org/10.1109/SCCC49216.2019.8966391
27	Yutsuki Miyashita and	A Visualization System of the Contribution of Learners in Software	10.1109/APSEC.2018.00093	2018		https://doi.org/10.1109/APSEC.2018.00093
28	Zhenhui Peng and	Exploring How Software Developers Work with Mention Bot in GitHub	10.1145/3202667.3202694	2018		https://doi.org/10.1145/3202667.3202694
29	Ayushi Rastogi and	Relationship between geographical location and evaluation of developer	10.1145/3239235.3240504	2018		https://doi.org/10.1145/3239235.3240504
30	Riyu Bana and	Influence Indexing of Developers, Repositories, Technologies and Programming	10.1109/IC3.2018.8530644	2018		https://doi.org/10.1109/IC3.2018.8530644
31	Neil C. Borle and	Analyzing the effects of test driven development in GitHub	10.1145/3180155.3182535	2018		https://doi.org/10.1145/3180155.3182535
32	Naoyasu Ubayashi and	Exploring uncertainty in GitHub OSS projects: when and how do developers	10.1145/3183440.3194966	2018		https://doi.org/10.1145/3183440.3194966
33	Zhendong Wang and	Competence-confidence gap: a threat to female developers' contribution	10.1145/3183428.3183437	2018		https://doi.org/10.1145/3183428.3183437
34	Eldan Cohen and	Large-scale analysis of the co-commit patterns of the active developers	10.1145/3196398.3196436	2018		https://doi.org/10.1145/3196398.3196436
35	Justin Middleton and	Which contributions predict whether developers are accepted into github	10.1145/3196398.3196429	2018		https://doi.org/10.1145/3196398.3196429
36	Marco Ortu and	Mining Communication Patterns in Software Development: A GitHub	10.1145/3273934.3273943	2018		https://doi.org/10.1145/3273934.3273943
37	Can Cheng and	Automatic Detection of Public Development Projects in Large Open Source	10.18293/SEKE2018-085	2018		https://doi.org/10.18293/SEKE2018-085
38	Mateus F. Santos and	Analyzing The Impact Of Feedback In GitHub On The Software Developer's	10.18293/SEKE2018-153	2018		https://doi.org/10.18293/SEKE2018-153
39	Navdeep Singh and	How Do Code Refactoring Activities Impact Software Developers' Sentiments?	10.1109/APSEC.2017.79	2017		https://doi.org/10.1109/APSEC.2017.79
40	Christoph Matthies and	Prof. CI: Employing continuous integration services and Github workflows	10.1109/FIE.2017.8190589	2017		https://doi.org/10.1109/FIE.2017.8190589
41	Zhifang Liao and	DevRank: Mining Influential Developers in Github	10.1109/GLOCOM.2017.8255005	2017		https://doi.org/10.1109/GLOCOM.2017.8255005
42	Wanwangying Ma and	How do developers fix cross-project correlated bugs?: a case study	10.1109/ICSE.2017.42	2017		https://doi.org/10.1109/ICSE.2017.42
43	Francesca Arcelli Fontana and	Students' Feedback in Using GitHub in a Project Development for a	10.1145/3059009.3072984	2017		https://doi.org/10.1145/3059009.3072984
44	Yunxiang Xiong and	Mining Developer Behavior Across GitHub and StackOverflow	10.18293/SEKE2017-062	2017		https://doi.org/10.18293/SEKE2017-062
45	Roy Ka-Wei Lee and	GitHub and Stack Overflow: Analyzing Developer Interests Across Multiple	10.1007/978-3-319-67256-4\\_19	2017		https://doi.org/10.1007/978-3-319-67256-4\\_19
46	Roman Bartusiak and	Cooperation Prediction in GitHub Developers Network with Restricted	10.1007/978-3-662-49390-8\\_9	2016		https://doi.org/10.1007/978-3-662-49390-8\\_9
47	William Leibzon	Social network of software development at GitHub	10.1109/ASONAM.2016.7752419	2016		https://doi.org/10.1109/ASONAM.2016.7752419
48	Yusuke Saito and	How do GitHub Users Feel with Pull-Based Development?	10.1109/IWESEP.2016.19	2016		https://doi.org/10.1109/IWESEP.2016.19
49	Radoslaw Nielek and	Choose a Job You Love: Predicting Choices of GitHub Developers	10.1109/WI.2016.0037	2016		https://doi.org/10.1109/WI.2016.0037
50	Eirini Kalliamvakou and	Open Source-Style Collaborative Development Practices in Commercial	10.1109/ICSE.2015.74	2015		https://doi.org/10.1109/ICSE.2015.74
51	Yang Zhang and	Exploring the Use of @-mention to Assist Software Development in GitHub	10.1145/2875913.2875914	2015		https://doi.org/10.1145/2875913.2875914
52	Claudia Hauff and	Matching GitHub Developer Profiles to Job Advertisements	10.1109/MSR.2015.41	2015		https://doi.org/10.1109/MSR.2015.41
53	Casey Casalnuovo and	Developer onboarding in GitHub: the role of prior social links and	10.1145/2786805.2786854	2015		https://doi.org/10.1145/2786805.2786854
54	Leticia Montalvillo and	Tuning GitHub for SPL development: branching models \\& repository	10.1145/2791060.2791083	2015		https://doi.org/10.1145/2791060.2791083
55	David Rusk and	Location-Based Analysis of Developers and Technologies on GitHub	10.1109/WAINA.2014.110	2014		https://doi.org/10.1109/WAINA.2014.110
56	Yu Wu and	Exploring the ecosystem of software developers on GitHub and other	10.1145/2556420.2556483	2014		https://doi.org/10.1145/2556420.2556483
57	Liguo Yu and	An Empirical Study of the Dynamics of GitHub Repository and Its Impact	10.1007/978-3-662-45550-0\\_46	2014		https://doi.org/10.1007/978-3-662-45550-0\\_46
58	Saya Onoue and	A Study of the Characteristics of Developers' Activities in GitHub	10.1109/APSEC.2013.104	2013		https://doi.org/10.1109/APSEC.2013.104
59	Weicheng Yang and	Mining GitHub: Why Commit Stops - Exploring the Relationship between	10.1109/APSEC.2013.133	2013		https://doi.org/10.1109/APSEC.2013.133
60	Michael J. Lee and	GitHub developers use rockstars to overcome overflow of news	10.1145/2468356.2468381	2013		https://doi.org/10.1145/2468356.2468381
61	Bogdan Vasilescu and	StackOverflow and GitHub: Associations between Software Development	10.1109/SocialCom.2013.35	2013		https://doi.org/10.1109/SocialCom.2013.35
62	Sebastian Baltes and Stephan Diehl	Usage and attribution of Stack Overflow code snippets in GitHub projects	10.1007/s10664-018-9650-5	2019		https://doi.org/10.1007/s10664-018-9650-5
63	Christopher Vendome and Gabriele Bavota and Massimiliano Di Penta and Mario Linares Vasquez and Daniel M. German andDenys Poshyvanyk	License usage and changes: a large-scale study on gitHub	10.1007/s10664-016-9438-4	2017		https://doi.org/10.1007/s10664-016-9438-4
64	Muhammad Hilmi Asyrofi and	AUSearch: Accurate API Usage Search in GitHub Repositories with	10.1109/SANER48275.2020.9054809	2020		https://doi.org/10.1109/SANER48275.2020.9054809
65	David Kavaler and	Tool choice matters: JavaScript quality assurance tools and usage	10.1109/ICSE.2019.00060	2019		https://doi.org/10.1109/ICSE.2019.00060
66	Hudson Borges and	Beyond Textual Issues: Understanding the Usage and Impact of GitHub	10.1145/3350768.3350788	2019		https://doi.org/10.1145/3350768.3350788
67	Johannes H\\"artel and	EMF Patterns of Usage on GitHub	10.1007/978-3-319-92997-2\\_14	2018		https://doi.org/10.1007/978-3-319-92997-2\\_14
68	Anastasia Reinhardt and	Augmenting stack overflow with API usage patterns mined from GitHub	10.1145/3236024.3264585	2018		https://doi.org/10.1145/3236024.3264585
69	Casimiro Conde Marco Neto and	A structured survey on the usage of the issue tracking system provided	10.1145/3132498.3134110	2017		https://doi.org/10.1145/3132498.3134110
70	Christopher Vendome	A Large Scale Study of License Usage on GitHub	10.1109/ICSE.2015.245	2015		https://doi.org/10.1109/ICSE.2015.245
71	Christopher Vendome and	License usage and changes: a large-scale study of Java projects on	10.1109/ICPC.2015.32	2015		https://doi.org/10.1109/ICPC.2015.32
\.


--
-- Name: dblp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dblp_id_seq', 71, true);


--
-- Name: dblp dblp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dblp
    ADD CONSTRAINT dblp_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

