-- Automatische Verarbeitung aller Daten aus automatischen Suche
--
-- 1. erstellen der benötigten Tabellen:

CREATE TABLE acm (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);
CREATE TABLE acm_manual (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);

CREATE TABLE dblp (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);
CREATE TABLE dblp_manual (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);

CREATE TABLE scopus_manual (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);

CREATE TABLE automatic_search (id SERIAL PRIMARY KEY, author TEXT, title TEXT, doi TEXT, year TEXT, abstract TEXT, url TEXT);

--
-- 2. Kopieren aller Einträge mit Doi in eine Tabelle pro Suchmaschine:

insert into acm (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    acm_deve as S
        left join 
    acm as T on T.doi = S.doi
where 
    T.doi is null
    	and
    S.doi <> '';

insert into acm (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    acm_usage as S
        left join 
    acm as T on T.doi = S.doi
where 
    T.doi is null
    	and
    S.doi <> '';

insert into dblp (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    dblp_deve as S
        left join 
    dblp as T on T.doi = S.doi
where 
    T.doi is null
    	and
    S.doi <> '';

insert into dblp (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    dblp_usage as S
        left join 
    dblp as T on T.doi = S.doi
where 
    T.doi is null
    	and
    S.doi <> '';

--
-- 3. alle Einträge ohne Doi in eine Tabelle isolieren, sodass diese händisch nachbearbeitet werden können:

insert into acm_manual (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    acm_deve as S
where 
    S.doi = '';

insert into acm_manual (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    acm_usage as S
where 
    S.doi = '';

insert into dblp_manual (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    dblp_deve as S
where 
    S.doi = '';

insert into dblp_manual (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    dblp_usage as S
where 
    S.doi = '';

insert into scopus_manual (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    scopus as S
where 
    S.doi = '';

DELETE FROM scopus WHERE doi = '';

--
-- 4. Dublikate in manuellen Tabellen löschen

DELETE FROM scopus_manual
    WHERE id NOT IN
    (
        SELECT MAX(id)
        FROM scopus_manual
        GROUP BY author, 
                 title, 
                 year
    );

DELETE FROM dblp_manual
    WHERE id NOT IN
    (
        SELECT MAX(id)
        FROM dblp_manual
        GROUP BY author, 
                 title, 
                 year
    );

DELETE FROM acm_manual
    WHERE id NOT IN
    (
        SELECT MAX(id)
        FROM acm_manual
        GROUP BY author, 
                 title, 
                 year
    );