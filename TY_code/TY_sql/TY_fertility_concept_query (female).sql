select * from NSF_Algorithms.dbo.concept_dimension
			where Concept_cd in (
				select Concept_cd from NSF_Algorithms.dbo.concept_dimension
				where concept_path like '%fertility%')
				----where concept_path like '%estrogen%'
				--		--or concept_path like '%progestogen%')
				