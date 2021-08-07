	   --APAGAR MDFE

	DROP TRIGGER MDFE_DEL;
		CREATE  TRIGGER MDFE_DEL FOR mdfe_dados
		ACTIVE BEFORE DELETE POSITION 0
		AS
		begin
		  DELETE FROM mdfe_l_carregamento WHERE id_mdfe = old.ID;
		  DELETE FROM mdfe_l_descarregamento WHERE id_mdfe = old.ID;
		  DELETE FROM mdfe_condutor WHERE id_mdfe = old.ID;
		  DELETE FROM nfe_mdf WHERE id_mdfe = old.ID;
		  DELETE FROM mdfe_uf_percurso WHERE id_mdfe = old.ID;
		  DELETE FROM mdfe_l_carregamento WHERE id_mdfe = old.ID;
		  DELETE FROM mdfe_v_reboque WHERE id_mdfe = old.ID;
		  DELETE FROM mdf_doccte WHERE id_mdfe = old.ID;
		  DELETE FROM mdf_seguro WHERE id_mdf = old.ID;
		end;





			--APAGAR CTE
		DROP TRIGGER DEL_CTE_DADOS;
			CREATE TRIGGER DEL_CTE_DADOS FOR CTE_DADOS
			ACTIVE BEFORE DELETE POSITION 0
			AS
			begin
			  DELETE FROM cte_carga WHERE id_cte = old.ID;
			  DELETE FROM cte_condutor WHERE id_cte = old.ID;
			  DELETE FROM cte_nf WHERE id_cte = old.ID;
			  DELETE FROM cte_nfees WHERE id_cte = old.ID;
			  DELETE FROM cte_uf_percurso WHERE id_cte = old.ID;
			  DELETE FROM cte_uni WHERE id_cte = old.ID;
			  DELETE FROM cte_veic WHERE id_cte = old.ID;
			end;