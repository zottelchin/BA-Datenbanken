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
-- Name: snowballing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.snowballing (
    id integer NOT NULL,
    author text,
    title text,
    doi text,
    year text,
    abstract text,
    url text
);


ALTER TABLE public.snowballing OWNER TO postgres;

--
-- Name: snowballing_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.snowballing_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snowballing_id_seq1 OWNER TO postgres;

--
-- Name: snowballing_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.snowballing_id_seq1 OWNED BY public.snowballing.id;


--
-- Name: snowballing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snowballing ALTER COLUMN id SET DEFAULT nextval('public.snowballing_id_seq1'::regclass);


--
-- Data for Name: snowballing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.snowballing (id, author, title, doi, year, abstract, url) FROM stdin;
1	Alexey Zagalsky, Joseph Feliciano, Margaret-Anne Storey, Yiyun Zhao, Weiliang Wang	The Emergence of GitHub as a Collaborative Platform forEducation	10.1145/2675133.2675284	2015	The software development community has embraced GitHubas an essential platform for managing their software projects.GitHub has created efficiencies and helped improve the waysoftware professionals work. It not only provides a traceableproject  repository,  but  it  acts  as  a  social  meeting  place  forinterested parties,  supporting communities of practice.   Re-cently, educators have seen the potential in GitHub’s collab-orative features for managing and improving—perhaps eventransforming—the learning experience.In this study, we examine how GitHub is emerging as a col-laborative platform for education. We aim to understand howenvironments such as GitHub—environments that provide so-cial and collaborative features in conjunction with distributedversion control—may improve (or possibly hinder) the edu-cational  experience  for  students  and  teachers.   We  conducta  qualitative  study  focusing  on  how  GitHub  is  being  usedin education, and the motivations, benefits and challenges itbrings.	http://dx.doi.org/10.1145/2675133.2675284
2	T. F. Bissyandé, D. Lo, L. Jiang, L. Réveillère, J. Klein and Y. L. Traon	Got issues? Who cares about it? A large scale investigation of issue trackers from GitHub	10.1109/ISSRE.2013.6698918	2013	Feedback from software users constitutes a vital part in the evolution of software projects. By filing issue reports, users help identify and fix bugs, document software code, and enhance the software via feature requests. Many studies have explored issue reports, proposed approaches to enable the submission of higher-quality reports, and presented techniques to sort, categorize and leverage issues for software engineering needs. Who, however, cares about filing issues? What kind of issues are reported in issue trackers? What kind of correlation exist between issue reporting and the success of software projects? In this study, we address the need for answering such questions by performing an empirical study on a hundred thousands of open source projects. After filtering relevant trackers, the study used about 20,000 projects. We investigate and answer various research questions on the popularity and impact of issue trackers.	https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6698918&isnumber=6698873
3	Miroslav Tushev, Grant Williams & Anas Mahmoud	Using GitHub in large software engineering classes. An exploratory case study	10.1080/08993408.2019.1696168	2020	Background and Context: GitHub has been recently used in Software Engineering (SE) classes to facilitate collaboration in student team projects as well as help teachers to evaluate the contributions of their students more objectively. Objective: We explore the benefits and drawbacks of using GitHub as a means for team collaboration and performance evaluation in large SE classes. Method: Our research method takes the form of a case study conducted in a senior level SE class with 91 students. Our study also includes entry and exit surveys, an exit interview, and a qualitative analysis of students’ commit behavior. Findings: Different teams adapt GitHub to their workflow differently. Furthermore, despite the steep learning curve, using GitHub should not affect the quality of students’ submissions. However, using GitHub metrics as a proxy for evaluating team performance can be risky. Implications: We provide several recommendations for integrating Web-based configuration management tools in SE classes. © 2019, © 2019 Informa UK Limited, trading as Taylor & Francis Group.	https://doi.org/10.1080/08993408.2019.1696168
4	Jordi Cabot, Javier Luis C ́anovas Izquierdo, Valerio Cosentino, Bel ́en Rolandi	Exploring the use of labels to categorize issues in Open-Source Software projects	10.1109/SANER.2015.7081875	2015	Reporting bugs, asking for new features and in general giving any kind of feedback is a common way to contribute to an Open-Source Software (OSS) project. This feedback is generally reported in the form of new issues for the project, managed by the so-called issue-trackers. One of the features provided by most issue-trackers is the possibility to define a set of labels/tags to classify the issues and, at least in theory, facilitate their management. Nevertheless, there is little empirical evidence to confirm that taking the time to categorize new issues has indeed a beneficial impact on the project evolution. In this paper we analyze a population of more than three million of GitHub projects and give some insights on how labels are used in them. Our preliminary results reveal that, even if the label mechanism is scarcely used, using labels favors the resolution of issues. Our analysis also suggests that not all projects use labels in the same way (e.g., for some labels are only a way to prioritize the project while others use them to signal their temporal evolution as they move along in the development workflow). Further research is needed to precisely characterize these label families and learn more the ideal application scenarios for each of them. © 2015 IEEE.	https://ieeexplore.ieee.org/document/7081875
6	Gousios, Georgios and Pinzger, Martin and Deursen, Arie van	An exploratory study of the pull-based software development model	10.1145/2568225.2568260	2014	The advent of distributed version control systems has led to the development of a new paradigm for distributed software development; instead of pushing changes to a central repository, developers pull them from other repositories and merge them locally. Various code hosting sites, notably Github, have tapped on the opportunity to facilitate pull-based development by offering workflow support tools, such as code reviewing systems and integrated issue trackers. In this work, we explore how pull-based software development works, first on the GHTorrent corpus and then on a carefully selected sample of 291 projects. We find that the pull request model offers fast turnaround, increased opportunities for community engagement and decreased time to incorporate contributions. We show that a relatively small number of factors affect both the decision to merge a pull request and the time to process it. We also examine the reasons for pull request rejection and find that technical ones are only a small minority. © 2014 ACM.	https://doi.org/10.1145/2568225.2568260
10	 Kavaler, D., Devanbu, P., Filkov, V.	Whom are you going to call? determinants of @-mentions in Github discussions	10.1007/s10664-019-09728-3	2019	Open Source Software (OSS) project success relies on crowd contributions. When an issue arises in pull-request based systems, @-mentions are used to call on people to task; previous studies have shown that @-mentions in discussions are associated with faster issue resolution. In most projects there may be many developers who could technically handle a variety of tasks. But OSS supports dynamic teams distributed across a wide variety of social and geographic backgrounds, as well as levels of involvement. It is, then, important to know whom to call on, i.e., who can be relied or trusted with important task-related duties, and why. In this paper, we sought to understand which observable socio-technical attributes of developers can be used to build good models of them being future @-mentioned in GitHub issues and pull request discussions. We built overall and project-specific predictive models of future @-mentions, in order to capture the determinants of @-mentions in each of two hundred GitHub projects, and to understand if and how those determinants differ between projects. We found that visibility, expertise, and productivity are associated with an increase in @-mentions, while responsiveness is not, in the presence of a number of control variables. Also, we find that though project-specific differences exist, the overall model can be used for cross-project prediction, indicating its GitHub-wide utility. © 2019, Springer Science+Business Media, LLC, part of Springer Nature.	https://link.springer.com/article/10.1007%2Fs10664-019-09728-3
13	Borges, H., Tulio Valente, M.	What's in a GitHub Star? Understanding Repository Starring Practices in a Social Coding Platform	10.1016/j.jss.2018.09.016	2018	Besides a git-based version control system, GitHub integrates several social coding features. Particularly, GitHub users can star a repository, presumably to manifest interest or satisfaction with an open source project. However, the real and practical meaning of starring a project was never the subject of an in-depth and well-founded empirical investigation. Therefore, we provide in this paper a throughout study on the meaning, characteristics, and dynamic growth of GitHub stars. First, by surveying 791 developers, we report that three out of four developers consider the number of stars before using or contributing to a GitHub project. Then, we report a quantitative analysis on the characteristics of the top-5,000 most starred GitHub repositories. We propose four patterns to describe stars growth, which are derived after clustering the time series representing the number of stars of the studied repositories; we also reveal the perception of 115 developers about these growth patterns. To conclude, we provide a list of recommendations to open source project managers (e.g., on the importance of social media promotion) and to GitHub users and Software Engineering researchers (e.g., on the risks faced when selecting projects by GitHub stars). © 2018 Elsevier Inc.	https://www.sciencedirect.com/science/article/abs/pii/S0164121218301961?via%3Dihub
14	Robles, G., González-Barahona, J.M.	A comprehensive study of software forks: Dates, reasons and outcomes	10.1007/978-3-642-33442-9_1	2012	In general it is assumed that a software product evolves within the authoring company or group of developers that develop the project. However, in some cases different groups of developers make the software evolve in different directions, a situation which is commonly known as a fork. In the case of free software, although forking is a practice that is considered as a last resort, it is inherent to the four freedoms. This paper tries to shed some light on the practice of forking. Therefore, we have identified significant forks, several hundreds in total, and have studied them in depth. Among the issues that have been analyzed for each fork is the date when the forking occurred, the reason of the fork, and the outcome of the fork, i.e., if the original or the forking project are still developed. Our investigation shows, among other results, that forks occur in every software domain, that they have become more frequent in recent years, and that very few forks merge with the original project. © 2012 IFIP International Federation for Information Processing.	https://link.springer.com/chapter/10.1007%2F978-3-642-33442-9_1
17	Lisha Li; Zhilei Ren; Xiaochen Li; Weiqin Zou; He Jiang	How Are Issue Units Linked? Empirical Study on the Linking Behavior in GitHub	10.1109/APSEC.2018.00053	2018	Issue reports and Pull Requests (PRs) are two important kinds of artifacts of software projects in GitHub. It is common for developers to leave explicit links in issues/PRs that refer to the other issues/PRs during discussions. Existing studies have demonstrated the value of such links in identifying complex bugs and duplicate issue reports. However, there are no broad examinations of why developers leave links within issues/PRs and the potential impact of such links on software development. Without such knowledge, practitioners and researchers may miss various opportunities to develop practical techniques for better solving bug-fixing or feature implementation related tasks. To fill this gap, we conducted the first empirical study to explore the characteristics of a large number of links within 642,281 issues/PRs of 16,584 popular (>50 stars) Python projects in GitHub. Specifically, we first constructed an Issue Unit Network (IUN, we refer to issue reports or PRs as issue units) by making use of the links between issue units. Then, we manually checked a sample of 1,384 links in the IUN and concluded six major kinds of linking relationships between issue units. For each kind of linking relationships, we presented some common patterns that developers usually adopted while linking issue units. By further analyzing as many as 423,503 links that match these common patterns, we found several interesting findings which indicate potential research directions in the future, including detecting cross-project duplicate issue reports, using IUN to help better identify influential projects and core issue reports.	https://ieeexplore.ieee.org/document/8719531
\.


--
-- Name: snowballing_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.snowballing_id_seq1', 21, true);


--
-- Name: snowballing snowballing_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snowballing
    ADD CONSTRAINT snowballing_pkey1 PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

