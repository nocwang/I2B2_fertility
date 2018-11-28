 select count(DISTINCT obs.PATIENT_NUM),count(obs.PATIENT_NUM)  
--select *
--select obs.PATIENT_NUM, obs.CONCEPT_CD,obs.START_DATE, obs.VALTYPE_CD, obs.TVAL_CHAR, obs.NVAL_NUM, con.CONCEPT_PATH, con.NAME_CHAR, pat.SEX_CD, pat.LANGUAGE_CD,pat.RACE_CD,pat.ZIP_CD
--obs.PATIENT_NUM, con.Concept_cd
from 
NSF_Algorithms.dbo.observation_fact obs, NSF_Algorithms.dbo.concept_dimension con--, NSF_Algorithms.dbo.patient_dimension pat
where	
	--obs.PATIENT_NUM in
	--	(select PATIENT_NUM from NSF_Algorithms.dbo.observation_fact
	--	where (CONCEPT_CD like '%HDID:50588%'
	--	OR
	--	CONCEPT_CD like '%HDID:2578%')
	--	--AND
	--	--CONCEPT_CD like '%RXCUI:688242%'
	--	)
	--AND
		obs.CONCEPT_CD=con.CONCEPT_CD
	AND
	--	obs.PATIENT_NUM=pat.PATIENT_NUM
	--AND
		(
		--con.CONCEPT_PATH like '%Testosterone%' 
		--OR
		----con.CONCEPT_PATH like '%Anti-Müllerian hormone%' 
		----OR
		con.CONCEPT_PATH like '%In Vitro Fertilization%' 
		)
	--AND
	--	YEAR(obs.START_DATE) between 2001 and 2016
	--AND
	--	pat.SEX_CD='F'
		
--		--obs.PATIENT_NUM like '9322698'
----ORDER BY obs.PATIENT_NUM	
