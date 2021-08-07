CREATE TABLE CTE_CARGA (
    ID            INTEGER NOT NULL,
    ID_CTE        INTEGER,
    COD_UNIDADE   VARCHAR(10),
    TIPO_UNIDADE  VARCHAR(10),
    QNT           NUMERIC(9,0)
);

ALTER TABLE CTE_CARGA ADD PRIMARY KEY (ID);

CREATE TABLE CTE_CCORRECAO (
    ID         INTEGER NOT NULL,
    CHAVE      VARCHAR(80),
    EVENTO     DATE,
    CPF_CNPJ   VARCHAR(20),
    SEQUENCIA  INTEGER
);

ALTER TABLE CTE_CCORRECAO ADD PRIMARY KEY (ID);


CREATE TABLE CTE_CONDUTOR (
    ID      INTEGER NOT NULL,
    ID_CTE  INTEGER,
    NOME    VARCHAR(70),
    CPF     VARCHAR(20)
);


ALTER TABLE CTE_CONDUTOR ADD PRIMARY KEY (ID);

CREATE TABLE CTE_CONFIG (
    ID            INTEGER NOT NULL,
    CERTIFICADO   VARCHAR(50),
    LOGO          VARCHAR(300),
    PATCH         VARCHAR(300),
    UF            INTEGER,
    MODODACTE     INTEGER,
    AMBIENTE      INTEGER,
    FORMAEMISSAO  INTEGER,
    MODELO        VARCHAR(15),
    SERIE         INTEGER,
    NUMERO        INTEGER,
    VXML          VARCHAR(10),
    ESTADO        VARCHAR(5),
    ID_EMPRESA    INTEGER,
    SERIE_OS      INTEGER,
    NUMERO_OS     VARCHAR(10)
);

ALTER TABLE CTE_CONFIG ADD PRIMARY KEY (ID);


CREATE TABLE CTE_CORGRUPO (
    ID_CCORRACAO   INTEGER,
    GRUPOALTERADO  VARCHAR(30),
    CAMPO          VARCHAR(30),
    VALOR          VARCHAR(30),
    ITEM           INTEGER
);


CREATE TABLE CTE_DADOS (
    ID                      INTEGER NOT NULL,
    NUMCTE                  NUMERIC(9,0),
    STATUS                  INTEGER,
    ID_NATUREZA             INTEGER,
    DATA_EMISSAO            DATE,
    MODAL                   VARCHAR(15),
    TIPO_SERV               VARCHAR(20),
    INDIETOMA               VARCHAR(20),
    INICODIBGE              INTEGER,
    FIMCODIBGE              INTEGER,
    ID_TOMADOR              INTEGER,
    TOTAL_PREST             DOUBLE PRECISION,
    VALOR_RECEBER           DOUBLE PRECISION,
    VAL_TOT_TRIB            DOUBLE PRECISION,
    CST                     VARCHAR(10),
    REDBC                   DOUBLE PRECISION,
    BASECALCULO             DOUBLE PRECISION,
    PERC_ICMS               DOUBLE PRECISION,
    INFADFISCO              VARCHAR(100),
    PIS                     DOUBLE PRECISION,
    COFINS                  DOUBLE PRECISION,
    IR                      DOUBLE PRECISION,
    INSS                    DOUBLE PRECISION,
    CSLL                    DOUBLE PRECISION,
    DESCSERV                VARCHAR(30),
    CARGA                   DOUBLE PRECISION,
    ID_CLIENTE              INTEGER,
    SERIE                   INTEGER,
    MODELO                  VARCHAR(15),
    NUMERO                  INTEGER,
    CHAVE                   VARCHAR(80),
    INIUF                   VARCHAR(10),
    INICIDADE               VARCHAR(50),
    FIMUF                   VARCHAR(10),
    FIMCIDADE               VARCHAR(50),
    CFOP                    VARCHAR(10),
    PESSOA                  INTEGER,
    CPF_CNPJ                VARCHAR(20),
    IE                      VARCHAR(18),
    NOME                    VARCHAR(70),
    NOME_FANTASIA           VARCHAR(50),
    ENDERECO                VARCHAR(50),
    BAIRRO                  VARCHAR(30),
    COMPLEMENTO             VARCHAR(30),
    CEP                     VARCHAR(9),
    UF                      VARCHAR(5),
    CIDADE                  VARCHAR(50),
    FONE_RES                VARCHAR(18),
    N_ENDERECO              VARCHAR(8),
    REMETENTE               INTEGER,
    REM_PESSOA              INTEGER,
    REM_CPF_CNPJ            VARCHAR(20),
    REM_IE                  VARCHAR(18),
    REM_NOME                VARCHAR(70),
    REM_NOME_FANTASIA       VARCHAR(50),
    REM_ENDERECO            VARCHAR(50),
    REM_BAIRRO              VARCHAR(30),
    REM_COMPLEMENTO         VARCHAR(30),
    REM_CEP                 VARCHAR(9),
    REM_UF                  VARCHAR(5),
    REM_COD_IBGE            INTEGER,
    REM_CIDADE              VARCHAR(50),
    REM_FONE_RES            VARCHAR(18),
    FORMA_PAGA              VARCHAR(10),
    CTE_REFERENCIA          VARCHAR(80),
    CTE_COMPLEMENTAR        VARCHAR(80),
    PRODUTOS_PREDOMINANTE   VARCHAR(60),
    PRODUTO_VALOR_DACARGA   DOUBLE PRECISION,
    PRODUTO_OUTRA_CARACTER  VARCHAR(60),
    RNTC                    VARCHAR(8),
    CIOT                    VARCHAR(8),
    INDIC_LOTA              VARCHAR(5),
    DATA_PREV               DATE,
    DESTINATARIO            INTEGER,
    DEST_PESSOA             INTEGER,
    DEST_CPF_CNPJ           VARCHAR(20),
    DEST_IE                 VARCHAR(18),
    DEST_NOME               VARCHAR(70),
    DEST_NOME_FANTASIA      VARCHAR(50),
    DEST_ENDERECO           VARCHAR(50),
    DEST_BAIRRO             VARCHAR(30),
    DEST_COMPLEMENTO        VARCHAR(30),
    DEST_CEP                VARCHAR(9),
    DEST_UF                 VARCHAR(5),
    DEST_CIDADE             VARCHAR(50),
    DEST_FONE_RES           VARCHAR(18),
    DEST_COD_IBGE           INTEGER,
    HORA                    TIME,
    NATUREZA_OPERACAO       VARCHAR(50),
    TOMCOD_IBGE             INTEGER,
    VALORICMS               DOUBLE PRECISION,
    CREDBC                  DOUBLE PRECISION,
    CONTRIBNOME             VARCHAR(50),
    CONTRBTEXT              VARCHAR(50),
    FISCOCAMPO              VARCHAR(50),
    FISCOTEXT               VARCHAR(50),
    SUFRAMA                 VARCHAR(50),
    ADVALOREM               DOUBLE PRECISION,
    PEDAGIO                 DOUBLE PRECISION,
    OUTRASDESP              DOUBLE PRECISION,
    DEST_NUMERO             VARCHAR(10),
    PROTOCOLO               VARCHAR(50),
    ID_EMPRESA              INTEGER,
    REM_NUMERO              VARCHAR(10),
    OBS                     BLOB SUB_TYPE 1 SEGMENT SIZE 200,
    RESPONSAVEL             INTEGER,
    SEGURADORA              VARCHAR(30),
    APOLICE                 VARCHAR(20),
    AVERBACAO               VARCHAR(40),
    NROREGESTADUAL          VARCHAR(25),
    GLOBALIZADO             INTEGER,
    EXP_PESSOA              INTEGER,
    EXP_CPF_CNPJ            VARCHAR(20),
    EXP_IE                  VARCHAR(18),
    EXP_NOME                VARCHAR(70),
    EXP_NOME_FANTASIA       VARCHAR(50),
    EXP_ENDERECO            VARCHAR(50),
    EXP_BAIRRO              VARCHAR(30),
    EXP_COMPLEMENTO         VARCHAR(30),
    EXP_CEP                 VARCHAR(9),
    EXP_UF                  VARCHAR(5),
    EXP_COD_IBGE            INTEGER,
    EXP_CIDADE              VARCHAR(50),
    REC_PESSOA              INTEGER,
    REC_CPF_CNPJ            VARCHAR(20),
    REC_IE                  VARCHAR(18),
    REC_NOME                VARCHAR(70),
    REC_NOME_FANTASIA       VARCHAR(50),
    REC_ENDERECO            VARCHAR(50),
    REC_BAIRRO              VARCHAR(30),
    REC_COMPLEMENTO         VARCHAR(30),
    REC_CEP                 VARCHAR(9),
    REC_UF                  VARCHAR(5),
    REC_COD_IBGE            INTEGER,
    REC_CIDADE              VARCHAR(50),
    REC_NUMERO              NUMERIC(15,2),
    EXP_NUMERO              NUMERIC(15,2),
    REC_ENUM                VARCHAR(8),
    EXP_ENUM                VARCHAR(8),
    FRETE                   DOUBLE PRECISION,
    DESPACHO                DOUBLE PRECISION,
    ST                      VARCHAR(10),
    TIPOEMI                 INTEGER,
    CODIGO                  VARCHAR(10)
);



ALTER TABLE CTE_DADOS ADD PRIMARY KEY (ID);


CREATE TABLE CTE_NF (
    ID                    INTEGER NOT NULL,
    SERIE                 VARCHAR(5),
    NUMERO                VARCHAR(25),
    EMISSAO               VARCHAR(20),
    CFOP                  VARCHAR(10),
    BASE_CALCULO_ICMS     DOUBLE PRECISION,
    VALOR_ICMS            DOUBLE PRECISION,
    BASE_CALCULO_SUBICMS  DOUBLE PRECISION,
    VALOR_SUBICMS         DOUBLE PRECISION,
    VALOR_DOS_PRODUTOS    DOUBLE PRECISION,
    VALOR_DA_NOTA         DOUBLE PRECISION,
    MODELO_NF             VARCHAR(20),
    ID_CTE                INTEGER
);


ALTER TABLE CTE_NF ADD PRIMARY KEY (ID);


CREATE TABLE CTE_NFEES (
    ID_CTE  INTEGER,
    CHAVE   VARCHAR(80),
    NUMERO  INTEGER
);


CREATE TABLE CTE_OCC (
    ID      INTEGER NOT NULL,
    ID_CTE  INTEGER,
    SERIE   INTEGER,
    NOCC    INTEGER,
    DEMI    DATE
);

ALTER TABLE CTE_OCC ADD PRIMARY KEY (ID);


CREATE TABLE CTE_OUTRODOC (
    ID_CTE     INTEGER,
    TIPO       VARCHAR(20),
    DESCRICAO  VARCHAR(20),
    NUMERO     VARCHAR(20),
    EMISSAO    VARCHAR(20),
    VALOR      DOUBLE PRECISION
);

CREATE TABLE CTE_UF_PERCURSO (
    ID      INTEGER NOT NULL,
    ID_CTE  INTEGER,
    UF      VARCHAR(2)
);



ALTER TABLE CTE_UF_PERCURSO ADD PRIMARY KEY (ID);

CREATE TABLE CTE_UNI (
    ID         INTEGER NOT NULL,
    ID_CTE     INTEGER,
    CHAVE_NFE  VARCHAR(90),
    UN         VARCHAR(10),
    QNT        NUMERIC(15,3)
);
ALTER TABLE CTE_UNI ADD PRIMARY KEY (ID);

CREATE TABLE CTE_VALORADICIONAL (
    ID      INTEGER NOT NULL,
    NOME    VARCHAR(50),
    VALOR   DOUBLE PRECISION,
    ID_CTE  INTEGER
);



ALTER TABLE CTE_VALORADICIONAL ADD PRIMARY KEY (ID);


CREATE TABLE CTE_VEIC (
    ID               INTEGER NOT NULL,
    ID_CTE           INTEGER,
    PLACA            VARCHAR(8),
    RENAVAN          VARCHAR(30),
    UF               VARCHAR(2),
    TARA             NUMERIC(15,2),
    CAPACIDADE       NUMERIC(15,2),
    VEI_CAPC_M3      NUMERIC(15,2),
    PROPRI_DO_VEIC   CHAR(10),
    TIPO_RODADO      VARCHAR(30),
    TIPO_CARROCERIA  VARCHAR(30),
    TIPO_VEICULO     VARCHAR(30)
);



ALTER TABLE CTE_VEIC ADD PRIMARY KEY (ID);


CREATE SEQUENCE GEN_CTE_CCORRECAO;
CREATE SEQUENCE GEN_CTE_CONDUTOR_ID;
CREATE SEQUENCE GEN_CTE_DADOS_ID;
CREATE SEQUENCE GEN_CTE_NFE_ID;
CREATE SEQUENCE GEN_CTE_UF_PERCURSO_ID;
CREATE SEQUENCE GEN_CTE_VALORADICIONAL_ID;
CREATE SEQUENCE GEN_CTE_VEIC_ID;



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

