select * from NSF_Algorithms.dbo.concept_dimension
			where Concept_cd in (
				select Concept_cd from NSF_Algorithms.dbo.concept_dimension
				where 
				--CONCEPT_PATH like '%IVF%'
				--or
				CONCEPT_PATH like '%In Vitro Fertilization%'	
				)
				----where CONCEPT_PATH like '%estrogen%'
				--		--or CONCEPT_PATH like '%progestogen%')
				