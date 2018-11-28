 select count(DISTINCT obs.PATIENT_NUM),count(obs.PATIENT_NUM)  
--select * 
from 
NSF_Algorithms.dbo.observation_fact obs, NSF_Algorithms.dbo.concept_dimension con, NSF_Algorithms.dbo.patient_dimension pat
			where obs.CONCEPT_CD in (
				select CONCEPT_CD from NSF_Algorithms.dbo.concept_dimension
				where 
				--concept_path like '%fertility%'
				CONCEPT_CD like '%HDID:50588%'
				OR
				CONCEPT_CD like '%HDID:2578%' --31498	169136
				--AND
				--concept_path like '%pregnancy test%' -- 31545  169324  
				----In Vitro Fertilization
				----CONCEPT_PATH like '%Fertilization%'--In Vitro 
				)
	AND
		obs.CONCEPT_CD=con.CONCEPT_CD
	AND
		obs.PATIENT_NUM=pat.PATIENT_NUM
				
--select * from NSF_Algorithms.dbo.concept_dimension
--			where Concept_cd in (
--				select Concept_cd from NSF_Algorithms.dbo.concept_dimension
--				where concept_path like '%pregnancy test%')
--				----where concept_path like '%estrogen%'
--				--		--or concept_path like '%progestogen%')		
				
--CONCEPT_PATH	CONCEPT_CD	NAME_CHAR
--\HDID2\Basic\Dx\Lab\Genetics/fertility\pregnancy test results (HDID:50588)\	HDID:50588	pregnancy test results (HDID:50588)
--\HDID2\Basic\Dx\Lab\Genetics/fertility\pregnancy test, date (HDID:6707)\	HDID:6707	pregnancy test, date (HDID:6707)
--\HDID2\Basic\Dx\Lab\Genetics/fertility\pregnancy test, type (HDID:6706)\	HDID:6706	pregnancy test, type (HDID:6706)
--\HDID2\Basic\Dx\Lab\Chemistry\human chorionic gonadotropin, urine, qualitative (urine pregnancy test) (HDID:2578)\	HDID:2578	human chorionic gonadotropin, urine, qualitative (urine pregnancy test) (HDID:2578)
--\HDID\GE-P\pregnancy test results (HDID:50588)\	HDID:50588	pregnancy test results (HDID:50588)
--\HDID\GE-P\pregnancy test, date (HDID:6707)\	HDID:6707	pregnancy test, date (HDID:6707)
--\HDID\GE-P\pregnancy test, type (HDID:6706)\	HDID:6706	pregnancy test, type (HDID:6706)
--\HDID\GE-H\human chorionic gonadotropin, urine, qualitative (urine pregnancy test) (HDID:2578)\	HDID:2578	human chorionic gonadotropin, urine, qualitative (urine pregnancy test) (HDID:2578)						