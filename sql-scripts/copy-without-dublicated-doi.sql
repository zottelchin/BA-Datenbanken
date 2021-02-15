-- Insert into Table if doi doesn't exists. Ignore empty doi's
--
-- change source_table and target_table!

insert into target_table (author, title, doi, year, abstract, url) 
select 
    S.author, S.title, S.doi, S.year, S.abstract, S.url
from 
    source_table as S
        left join 
    target_table as T on T.doi = S.doi
where 
    T.doi is null
    	and
    S.doi <> '';