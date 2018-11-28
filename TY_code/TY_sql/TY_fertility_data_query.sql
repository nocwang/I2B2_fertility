
select count(DISTINCT obs.PATIENT_NUM),count(obs.PATIENT_NUM)  
-- select *
--obs.PATIENT_NUM, con.Concept_cd
from NSF_Algorithms.dbo.observation_fact obs, NSF_Algorithms.dbo.concept_dimension con
where obs.Concept_cd=con.Concept_cd
	AND
		(
		con.concept_path like '%Testosterone%' 
		OR
		--con.concept_path like '%Anti-Müllerian hormone%' 
		--OR
		con.concept_path like '%Luteinizing hormone%' 
		OR
		con.concept_path like '%Follicle Stimulating Hormone%' 
		OR
		con.concept_path like '%Progesterone%' 
		OR
		con.concept_path like '%Estrogen%' 
		--OR		
		--con.concept_path like '%fertility%' 
		--OR
		--con.concept_path like '%Family Planning%' 
		)
	AND
		YEAR(obs.Start_Date) between 2001 and 2016
		--obs.PATIENT_NUM like '9322698'
--ORDER BY obs.PATIENT_NUM	

--INTO OUTFILE 'data2001_2016.csv'
--FIELDS TERMINATED BY ','
--ENCLOSED BY '"'
--LINES TERMINATED BY '\n'		
		
----	where Concept_cd like 'ICD9:250' 
--    where Concept_cd in (
--    select Concept_cd from NSF_Algorithms.dbo.concept_dimension
--    where Concept_Path like'%Genetics/fertility\Bloom lab test%')
--	and YEAR(Start_Date) between 2007 and 2012)
--and Concept_cd in (
--	select Concept_cd from NSF_Algorithms.dbo.concept_dimension
--	where concept_path like '%Drug Products by VA class%')
--and YEAR(Start_Date) between 2001 and 2012
