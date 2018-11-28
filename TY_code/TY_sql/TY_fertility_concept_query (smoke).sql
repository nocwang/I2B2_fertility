select * from NSF_Algorithms.dbo.concept_dimension
			where Concept_cd in (
				select Concept_cd from NSF_Algorithms.dbo.concept_dimension
				where 
				--	CONCEPT_PATH like '%female%'
				--and
					CONCEPT_PATH like '%cigarette%'
				--and
				--	CONCEPT_PATH NOT LIKE '%Diseases of male genital organs%'
				--and
				--	CONCEPT_PATH NOT LIKE '%male infertility%'	
				)
				----where CONCEPT_PATH like '%estrogen%'
				--		--or CONCEPT_PATH like '%progestogen%')
				