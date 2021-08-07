
--MDF CLONAR


create or alter procedure MDF_CLONAR (
    ID_D integer)
returns (
    ID integer)
as
declare variable MDF_ID integer;
declare variable MDF_ID_M integer;
declare variable MDF_ID_C integer;
declare variable I integer;
begin

    select gen_id(MDFE_DADOS,1) from RDB$DATABASE into :MDF_ID;


    insert into MDFE_DADOS (ID,
                            ID_NFE,
                            MODELO,
                            TIPO_EMITENTE,
                            Data,
                            UF_EMIT,
                            MODALIDADE,
                            FORMA_EMISSAO,
                            UF_DESCARREGAMENTO,
                            VEI_UF,
                            VEI_RNTRC,
                            VEI_CIOT,
                            COD_AG_PORTO,
                            COD_INT_VEIUC,
                            VEI_TIPO_CARROCERIA,
                            VEI_TIPO_RODADO,
                            VEI_PLACA,
                            VEI_RENAVAN,
                            VEI_TARA,
                            VEI_CAPACIDADE,
                            VEI_CAPC_M3,
                            TOT_QNT_NFE_REL_MANIFESTRO,
                            TOT_VALOR_TOTAL_MERCADORIA,
                            TOT_CODUNIDADE,
                            TOT_PESO_BRUTO,
                            UF_CARREGAMENTO,
                            STATUS,
                            OBS,
                            ID_EMPRESA,
                            TIPO_EMISSOR,
                            CNPJ_TOMADOR  )
                            
    select :                        MDF_ID,
                                    ID_NFE,
                                    MODELO,
                                    TIPO_EMITENTE,
                                    current_date,
                                    UF_EMIT,
                                    MODALIDADE,
                                    FORMA_EMISSAO,
                                    UF_DESCARREGAMENTO,
                                    VEI_UF,
                                    VEI_RNTRC,
                                    VEI_CIOT,
                                    COD_AG_PORTO,
                                    COD_INT_VEIUC,
                                    VEI_TIPO_CARROCERIA,
                                    VEI_TIPO_RODADO,
                                    VEI_PLACA,
                                    VEI_RENAVAN,
                                    VEI_TARA,
                                    VEI_CAPACIDADE,
                                    VEI_CAPC_M3,
                                    TOT_QNT_NFE_REL_MANIFESTRO,
                                    TOT_VALOR_TOTAL_MERCADORIA,
                                    TOT_CODUNIDADE,
                                    TOT_PESO_BRUTO,
                                    UF_CARREGAMENTO,
                                    0,
                                    OBS,
                                    ID_EMPRESA,
                                    TIPO_EMISSOR,
                                    CNPJ_TOMADOR
    from MDFE_DADOS
    where id = :ID_D;

  insert into  MDFE_CONDUTOR
               (id,
                ID_MDFE,
                nome,
                cpf)
                select   gen_id(GEN_MDFE_CONDUTOR_ID,1) ,
                        :MDF_ID,
                        NOME,
                        CPF
                        from mdfe_condutor
                        where id_mdfe = :ID_D;

    insert into  mdfe_l_carregamento
                  (id,
                  id_mdfe,
                  uf, 
                  cod_mun,
                  municipio
                  )
                  select   gen_id(MDFE_L_CARREGAMENTO_ID,1),
                                 :MDF_ID,
                                  uf, 
                                  cod_mun,
                                  municipio
                           from mdfe_l_carregamento
                             where id_mdfe = :ID_D;

     insert into  mdfe_l_descarregamento
                  (id,
                  id_mdfe,
                  uf, 
                  cod_mun,
                  municipio
                  )
                  select   gen_id(mdfe_l_descarregamento,1),
                                 :MDF_ID,
                                  uf, 
                                  cod_mun,
                                  municipio
                           from mdfe_l_descarregamento
                             where id_mdfe = :ID_D;

     insert into mdfe_uf_percurso
                  (id, 
                  id_mdfe,
                  uf
                  )
              select   gen_id(MDFE_UF_PERCURSO,1),
                                 :MDF_ID,
                                 uf
                                 from mdfe_uf_percurso
                                 where id_mdfe = :ID_D;

      insert into MDFE_V_REBOQUE
                  ( id,
                    id_mdfe,
                    COD_INT_VEIUC,
                    PLACA,
                    renavan,
                    uf_licenciamento,
                    tara,
                    CAPC_M3,
                    CARROCERIA 
                    )

               select gen_id(MDFE_V_REBOQUE,1),
                        :MDF_ID,
                        COD_INT_VEIUC,
                        PLACA,
                        renavan,
                        uf_licenciamento,
                        tara,
                        CAPC_M3,
                        CARROCERIA
                       from MDFE_V_REBOQUE
                      where id_mdfe = :ID_D;


        insert into MDF_SEGURO
                    (id,
                     id_mdf,
                     respseguro,
                     seguradora,
                     cpfcnpj,
                     napolice,
                     cnpj
                     )
               select gen_id(GEN_MDF_SEGURO_ID,1),
                         :MDF_ID,
                         respseguro,
                         seguradora,
                         cpfcnpj,
                         napolice,
                         cnpj
                      from MDF_SEGURO
                        where id_mdf = :ID_D;


    end;
	
	
	--CTE CLONAR / CTE ->MDF
	
	
	create or alter  procedure CTE_CLONAR (
    ID_D integer)
returns (
    ID integer)
as
declare variable CTE_ID integer;
begin

    select gen_id(gen_cte_dados_id,1) from RDB$DATABASE into :CTE_ID;


    insert into CTE_DADOS ( ID,
                           STATUS,
                           ID_NATUREZA,
                           DATA_EMISSAO,
                           MODAL,
                           TIPO_SERV,
                           INDIETOMA,
                           INICODIBGE,
                           FIMCODIBGE,
                           ID_TOMADOR,
                           CST,
                           PERC_ICMS,
                           PIS,
                           DESCSERV,
                           CARGA,
                           ID_CLIENTE,
                           SERIE,
                           MODELO,
                           INIUF,
                           INICIDADE,
                           FIMUF,
                           FIMCIDADE,
                           CFOP,
                           PESSOA,
                           CPF_CNPJ,
                           IE,
                           NOME,
                           NOME_FANTASIA,
                           ENDERECO,
                           BAIRRO,
                           COMPLEMENTO,
                           CEP,
                           UF,
                           CIDADE,
                           FONE_RES,
                           N_ENDERECO,
                           REMETENTE,
                           REM_PESSOA,
                           REM_CPF_CNPJ,
                           REM_IE,
                           REM_NOME,
                           REM_NOME_FANTASIA,
                            REM_ENDERECO,
                            REM_BAIRRO,
                            REM_COMPLEMENTO,
                            REM_CEP,
                            REM_UF,
                            REM_COD_IBGE,
                            REM_CIDADE,
                            REM_FONE_RES,
                            FORMA_PAGA,
                            CTE_REFERENCIA,
                            CTE_COMPLEMENTAR,
                            PRODUTOS_PREDOMINANTE,
                            PRODUTO_VALOR_DACARGA,
                            PRODUTO_OUTRA_CARACTER,
                            RNTC,
                            CIOT,
                            INDIC_LOTA,
                            DATA_PREV,
                            DESTINATARIO,
                            DEST_PESSOA,
                            DEST_CPF_CNPJ,
                            DEST_IE,
                            DEST_NOME,
                            DEST_NOME_FANTASIA,
                            DEST_ENDERECO,
                            DEST_BAIRRO,
                            DEST_COMPLEMENTO,
                            DEST_CEP,
                            DEST_UF,
                            DEST_CIDADE,
                            DEST_FONE_RES,
                            DEST_COD_IBGE,
                            HORA,
                            NATUREZA_OPERACAO,
                            TOMCOD_IBGE,
                            CREDBC,
                            CONTRIBNOME,
                            CONTRBTEXT,
                            FISCOCAMPO,
                            FISCOTEXT,
                            SUFRAMA,
                            ADVALOREM,
                            PEDAGIO,
                            OUTRASDESP,
                            DEST_NUMERO,
                            ID_EMPRESA,
                            REM_NUMERO,
                            OBS,
                            NROREGESTADUAL,
                            RESPONSAVEL,
                            SEGURADORA,
                            APOLICE    )
                            
    select :               CTE_ID,
                           '0',
                           ID_NATUREZA,
                           current_date,
                           MODAL,
                           TIPO_SERV,
                           INDIETOMA,
                           INICODIBGE,
                           FIMCODIBGE,
                           ID_TOMADOR,
                           CST,
                           PERC_ICMS,
                           PIS,
                           DESCSERV,
                           CARGA,
                           ID_CLIENTE,
                           SERIE,
                           MODELO,
                           INIUF,
                           INICIDADE,
                           FIMUF,
                           FIMCIDADE,
                           CFOP,
                           PESSOA,
                           CPF_CNPJ,
                           IE,
                           NOME,
                           NOME_FANTASIA,
                           ENDERECO,
                           BAIRRO,
                           COMPLEMENTO,
                           CEP,
                           UF,
                           CIDADE,
                           FONE_RES,
                           N_ENDERECO,
                           REMETENTE,
                           REM_PESSOA,
                           REM_CPF_CNPJ,
                           REM_IE,
                           REM_NOME,
                           REM_NOME_FANTASIA,
                            REM_ENDERECO,
                            REM_BAIRRO,
                            REM_COMPLEMENTO,
                            REM_CEP,
                            REM_UF,
                            REM_COD_IBGE,
                            REM_CIDADE,
                            REM_FONE_RES,
                            FORMA_PAGA,
                            CTE_REFERENCIA,
                            CTE_COMPLEMENTAR,
                            PRODUTOS_PREDOMINANTE,
                            PRODUTO_VALOR_DACARGA,
                            PRODUTO_OUTRA_CARACTER,
                            RNTC,
                            CIOT,
                            INDIC_LOTA,
                            DATA_PREV,
                            DESTINATARIO,
                            DEST_PESSOA,
                            DEST_CPF_CNPJ,
                            DEST_IE,
                            DEST_NOME,
                            DEST_NOME_FANTASIA,
                            DEST_ENDERECO,
                            DEST_BAIRRO,
                            DEST_COMPLEMENTO,
                            DEST_CEP,
                            DEST_UF,
                            DEST_CIDADE,
                            DEST_FONE_RES,
                            DEST_COD_IBGE,
                            current_time,
                            NATUREZA_OPERACAO,
                            TOMCOD_IBGE,
                            CREDBC,
                            CONTRIBNOME,
                            CONTRBTEXT,
                            FISCOCAMPO,
                            FISCOTEXT,
                            SUFRAMA,
                            ADVALOREM,
                            PEDAGIO,
                            OUTRASDESP,
                            DEST_NUMERO,
                            ID_EMPRESA,
                            REM_NUMERO,
                            OBS,
                            NROREGESTADUAL,
                            RESPONSAVEL,
                            SEGURADORA,
                            APOLICE 
    from cte_dados
    where id = :ID_D;


end;



create or alter procedure CTE_G_MDF (
    ID_CTE integer,
    ID_MDFE integer)
returns (
    ID integer,
    ID_MD integer)
as
BEGIN
SELECT gen_id(MDFE_DADOS,1) from RDB$DATABASE INTO :ID_MDFE;
insert into mdfe_dados
            (ID,
             MODELO,
             SERIE,
             NUMERO,
             DATA,
             HORA,
             UF_DESCARREGAMENTO,
             UF_CARREGAMENTO,
             VEI_UF,
             VEI_RNTRC,
             VEI_PLACA,
             VEI_RENAVAN,
             VEI_TARA,
             VEI_CAPACIDADE,
             STATUS,
             id_empresa,
             CNPJ_TOMADOR,
             TIPO_EMISSOR)
             SELECT  :ID_MDFE,
                      ((SELECT mdfe_config.modelo FROM mdfe_config WHERE mdfe_config.id_empresa = cte_dados.id_empresa)),
                      (SELECT mdfe_config.serie FROM mdfe_config WHERE mdfe_config.id_empresa = cte_dados.id_empresa),
                      (SELECT (mdfe_config.numero+1) FROM mdfe_config WHERE mdfe_config.id_empresa = cte_dados.id_empresa),
                      current_date,
                      current_time,
                      cte_dados.FIMUF,
                      cte_dados.INIUF,
                      cte_veic.uf,
                      cte_dados.rntc,
                      cte_veic.placa,
                      cte_veic.renavan,
                      cte_veic.tara,
                      cte_veic.capacidade,
                      0,
                      cte_dados.id_empresa,
                      CTE_DADOS.CPF_CNPJ,
                      1
                      FROM cte_dados
                      LEFT JOIN cte_veic ON cte_veic.id_cte = cte_dados.id
                      WHERE cte_dados.id = :ID_CTE;


                  INSERT into mdfe_l_carregamento(ID,
                                                  ID_MDFE,
                                                  UF,
                                                  COD_MUN,
                                                  MUNICIPIO)

                  SELECT (SELECT gen_id(mdfe_l_carregamento_ID,1) from RDB$DATABASE),
                          :ID_MDFE,
                          cte_dados.INIUF,
                          Cte_dados.inicodibge,
                          cte_dados.inicidade
                          FROM cte_dados
                          WHERE cte_dados.id = :ID_CTE;



                INSERT into mdfe_l_descarregamento(ID,
                                      ID_MDFE,
                                      UF,
                                      COD_MUN,
                                      MUNICIPIO)

                  SELECT (SELECT gen_id(mdfe_l_descarregamento,1) from RDB$DATABASE),
                              :ID_MDFE,
                              cte_dados.fimuf,
                              Cte_dados.fimcodibge,
                              cte_dados.fimcidade
                              FROM cte_dados
                              WHERE cte_dados.id = :ID_CTE;

           insert into  MDFE_CONDUTOR
               (id,
                ID_MDFE,
                nome,
                cpf)
                select   gen_id(GEN_MDFE_CONDUTOR_ID,1),
                        :ID_MDFE,
                        NOME,
                        CPF
                        from cte_condutor
                        where cte_condutor.id_cte = :ID_CTE;

                insert into MDF_DOCCTE
                        (id,
                        id_mdfe,
                        chave_cte,
                        valor,
                        PESO,
                        COD_IBGE
                        )
                  SELECT gen_id(GEN_MDF_DOCCTE,1),
                          :ID_MDFE,
                          cte_dados.chave,
                          cte_dados.produto_valor_dacarga,
                          (select FIRST 1 (case cte_uni.un when 'TON'  THEN (cte_uni.qnt*1000)
                           when 'KG' then cte_uni.qnt
                            ELSE
                             0 END) AS PESO from cte_uni
                             INNER JOIN cte_dados ON cte_dados.ID = cte_uni.id_cte
                             WHERE cte_dados.chave =cte_dados.chave),
                           cte_dados.fimcodibge
                           FROM cte_dados
                              LEFT JOIN cte_veic ON cte_veic.id_cte = cte_dados.id
                              WHERE cte_dados.id = :ID_CTE;


                      END;
	
create or alter procedure MDFE_INSERE_NFE_MDF (
    ID integer,
    CHAVE varchar(80),
    QNT numeric(15,2),
    NOTA_FISCAL varchar(15),
    PESO_BRUTO numeric(15,2),
    VALOR_TOTAL double precision,
    IBGE integer,
    ID_REGIAO integer,
    ID_MDF integer,
    CHAVE_REF varchar(44),
    CADASTRO integer)
as
BEGIN
  if (cadastro = 0) then
  begin
   INSERT INTO nfe_mdf(ID,ID_MDFE,CHAVE_NFE,QNT_UN_TRANSP,N_DA_NFE,PESO,COD_MUN,VALOR,ID_REGIAO)
               VALUES((SELECT GEN_ID(nfe_mdf,1) FROM RDB$DATABASE),
                      :ID_MDF,
                      :CHAVE,
                      :QNT,
                      :NOTA_FISCAL,
                      :PESO_BRUTO,
                      :IBGE,
                      :VALOR_TOTAL,
                      :ID_REGIAO)                      ;
     END
  if (cadastro=1) then
    begin
       update nfe_mdf set ID_MDFE=:ID_MDF,
                        CHAVE_NFE=:CHAVE,
                    QNT_UN_TRANSP=:QNT,
                         N_DA_NFE=:NOTA_FISCAL,
                             PESO=:PESO_BRUTO,
                          COD_MUN=:IBGE,
                            VALOR=:VALOR_TOTAL,
                        ID_REGIAO=:ID_REGIAO,
                        CHAVE_REF=:CHAVE_REF
                        where ID =:id;

    end

     end;

create or alter procedure MDFE_INSERE_NFE_MDF (
    ID integer,
    CHAVE varchar(80),
    QNT numeric(15,2),
    NOTA_FISCAL varchar(15),
    PESO_BRUTO numeric(15,2),
    VALOR_TOTAL double precision,
    IBGE integer,
    ID_REGIAO integer,
    ID_MDF integer,
    CHAVE_REF varchar(44),
    CADASTRO integer)
as
BEGIN
  if (cadastro = 0) then
  begin
   INSERT INTO nfe_mdf(ID,ID_MDFE,CHAVE_NFE,QNT_UN_TRANSP,N_DA_NFE,PESO,COD_MUN,VALOR,ID_REGIAO)
               VALUES((SELECT GEN_ID(nfe_mdf,1) FROM RDB$DATABASE),
                      :ID_MDF,
                      :CHAVE,
                      :QNT,
                      :NOTA_FISCAL,
                      :PESO_BRUTO,
                      :IBGE,
                      :VALOR_TOTAL,
                      :ID_REGIAO)                      ;
     END
  if (cadastro=1) then
    begin
       update nfe_mdf set ID_MDFE=:ID_MDF,
                        CHAVE_NFE=:CHAVE,
                    QNT_UN_TRANSP=:QNT,
                         N_DA_NFE=:NOTA_FISCAL,
                             PESO=:PESO_BRUTO,
                          COD_MUN=:IBGE,
                            VALOR=:VALOR_TOTAL,
                        ID_REGIAO=:ID_REGIAO,
                        CHAVE_REF=:CHAVE_REF
                        where ID =:id;

    end

     end;
	