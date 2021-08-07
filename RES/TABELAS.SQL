CREATE TABLE CTE_MDF_CONFIG (
    MODULO           INTEGER,
    ID_EMPRESA       INTEGER,
    CHAVE            VARCHAR(50),
    VERSAO           VARCHAR(50),
    ULTIMA_ATUALIZA  TIMESTAMP
);

CREATE TABLE MDFE_CADMOTORISTA (
    ID            INTEGER NOT NULL,
    ID_VEICULO    INTEGER,
    ID_MOTORISTA  INTEGER
);

   CREATE TABLE MDF_TEMP (
    CHAVE      VARCHAR(50),
    PROTOCOLO  VARCHAR(50),
    NUMERO     VARCHAR(9),
    BT         INTEGER,
    ID_REGIAO  INTEGER
);



CREATE TABLE MDFE_CONDUTOR (
    ID       INTEGER NOT NULL,
    ID_MDFE  INTEGER,
    NOME     VARCHAR(70),
    CPF      VARCHAR(20)
);


CREATE TABLE MDFE_CONFIG (
    FORM_EMISSAO  INTEGER,
    LOGO          VARCHAR(500),
    PATHSALVAR    VARCHAR(500),
    IDUF          INTEGER,
    NUMERO        INTEGER,
    SERIE         INTEGER,
    MODELO        VARCHAR(15),
    ID_EMPRESA    INTEGER,
    TIPOAMB       INTEGER,
    VERSAOXML     VARCHAR(10),
    CERTIFICADO   VARCHAR(50),
    TIPODAMDFE    INTEGER,
    VISUALIZAR    CHAR(5)
);



CREATE TABLE MDFE_DADOS (
    ID                          INTEGER NOT NULL,
    ID_NFE                      NUMERIC(9,0),
    MODELO                      INTEGER,
    SERIE                       INTEGER,
    NUMERO                      INTEGER,
    CODMDF                      INTEGER,
    DATA                        DATE,
    D_ENCERRA                   TIMESTAMP,
    HORA                        TIME,
    UF                          VARCHAR(2),
    TIPO_EMITENTE               VARCHAR(25),
    UF_EMIT                     INTEGER,
    MODALIDADE                  VARCHAR(25),
    FORMA_EMISSAO               VARCHAR(25),
    UF_DESCARREGAMENTO          VARCHAR(2),
    CHAVE                       VARCHAR(80),
    VEI_UF                      VARCHAR(2),
    VEI_RNTRC                   VARCHAR(15),
    VEI_CIOT                    VARCHAR(8),
    COD_AG_PORTO                VARCHAR(20),
    COD_INT_VEIUC               VARCHAR(40),
    VEI_TIPO_CARROCERIA         VARCHAR(30),
    VEI_TIPO_RODADO             VARCHAR(30),
    VEI_PLACA                   VARCHAR(9),
    VEI_RENAVAN                 VARCHAR(50),
    VEI_TARA                    NUMERIC(15,2),
    VEI_CAPACIDADE              NUMERIC(15,2),
    VEI_CAPC_M3                 NUMERIC(15,2),
    TOT_QNT_NFE_REL_MANIFESTRO  INTEGER,
    TOT_VALOR_TOTAL_MERCADORIA  DOUBLE PRECISION,
    TOT_CODUNIDADE              VARCHAR(5),
    TOT_PESO_BRUTO              DOUBLE PRECISION,
    UF_CARREGAMENTO             VARCHAR(2),
    STATUS                      INTEGER,
    MDF_PROTOCOLO               VARCHAR(50),
    MDF_D_ENVIO                 TIMESTAMP,
    OBS                         VARCHAR(500),
    OBS2                        VARCHAR(500),
    ID_EMPRESA                  INTEGER,
    TIPO_EMISSOR                INTEGER,
    CNPJ_TOMADOR                VARCHAR(20),
    PRODPRED_TPCARGA            INTEGER,
    PRODPRED_CEAN               VARCHAR(40),
    PRODPRED_NCM                VARCHAR(20),
    PRODPRED_CEPCARRE           VARCHAR(8),
    PRODPRED_CEPDESCARRE        VARCHAR(8)

);





CREATE TABLE MDFE_L_CARREGAMENTO (
    ID         INTEGER NOT NULL,
    ID_MDFE    INTEGER,
    UF         VARCHAR(2),
    COD_MUN    INTEGER,
    MUNICIPIO  VARCHAR(50)
);



CREATE TABLE MDFE_L_DESCARREGAMENTO (
    ID         INTEGER NOT NULL,
    ID_MDFE    INTEGER,
    UF         VARCHAR(2),
    COD_MUN    INTEGER,
    MUNICIPIO  VARCHAR(50)
);




CREATE TABLE MDFE_UF_PERCURSO (
    ID       INTEGER NOT NULL,
    ID_MDFE  INTEGER,
    UF       VARCHAR(2)
);


CREATE TABLE MDFE_VEICULO (
    ID                INTEGER NOT NULL,
    COD_INT_VEIC      VARCHAR(40),
    RENAVAM           VARCHAR(50),
    TIPO_CARROCERIA   VARCHAR(30),
    PLACA             VARCHAR(9),
    TARA              NUMERIC(15,2),
    TIPO_RODADO       VARCHAR(30),
    UF_LICENCIAMENTO  VARCHAR(2),
    CAPACIDADE        NUMERIC(15,2),
    CAPM3             NUMERIC(15,2),
    RNTRC             VARCHAR(8)
);

CREATE TABLE MDFE_V_REBOQUE (
    ID                INTEGER NOT NULL,
    ID_MDFE           INTEGER,
    COD_INT_VEIUC     VARCHAR(40),
    PLACA             VARCHAR(9),
    RENAVAN           VARCHAR(30),
    UF_LICENCIAMENTO  VARCHAR(2),
    TARA              NUMERIC(15,2),
    CAPACIDADE        NUMERIC(15,2),
    CAPC_M3           NUMERIC(15,2),
    CARROCERIA        VARCHAR(20)
);



CREATE TABLE MDF_CAD_SEGURAD (
    ID          INTEGER NOT NULL,
    RESPSEGURO  VARCHAR(20),
    SEGURADORA  VARCHAR(30),
    CPFCNPJ     VARCHAR(20),
    NAPOLICE    VARCHAR(20),
    CNPJ        VARCHAR(20)
);


CREATE TABLE MDF_DOCCTE (
    ID         INTEGER NOT NULL,
    ID_MDFE    INTEGER,
    CHAVE_CTE  VARCHAR(80),
    VALOR      DOUBLE PRECISION,
    PESO       DOUBLE PRECISION,
    COD_IBGE   INTEGER
);



CREATE TABLE MDF_LOG (
    ID_USER     INTEGER NOT NULL,
    DATA        DATE,
    HORA        TIME,
    PROCESSO    VARCHAR(100),
    DOC         INTEGER,
    COMPUTADOR  VARCHAR(50),
    DADOS       BLOB SUB_TYPE 1 SEGMENT SIZE 300,
    ID          INTEGER NOT NULL,
    NOME        VARCHAR(50),
    MDF_CTE     INTEGER,
    ID_EMPRESA  INTEGER
);

CREATE TABLE MDF_SEGURO (
    ID          INTEGER NOT NULL,
    ID_MDF      INTEGER,
    RESPSEGURO  VARCHAR(20),
    SEGURADORA  VARCHAR(30),
    CPFCNPJ     VARCHAR(20),
    NAPOLICE    VARCHAR(20),
    CNPJ        VARCHAR(20)
);


CREATE TABLE MDF_SEGURO_AVERB (
    ID         INTEGER NOT NULL,
    ID_SEGURO  INTEGER,
    AVERBA     VARCHAR(40)
);

CREATE TABLE MDF_USUARIO (
    ID              INTEGER NOT NULL,
    ID_FUNCIONARIO  INTEGER,
    NOME            VARCHAR(50),
    SENHA           VARCHAR(50),
    STATUS          INTEGER
);


CREATE TABLE NFE_MDF (
    ID              INTEGER NOT NULL,
    ID_MDFE         INTEGER,
    CHAVE_NFE       VARCHAR(80),
    QNT_UN_TRANSP   NUMERIC(15,2),
    N_DA_NFE        NUMERIC(15,0),
    PESO            DOUBLE PRECISION,
    COD_MUN         INTEGER,
    VALOR           DOUBLE PRECISION,
    ID_REGIAO       INTEGER,
    CHAVE_REF       varchar(44)
);




CREATE TABLE MDF_TEMP (
    CHAVE      VARCHAR(50),
    PROTOCOLO  VARCHAR(50),
    NUMERO     VARCHAR(9),
    BT         INTEGER
);

CREATE TABLE MDF_SEGURADORA (
    ID      INTEGER NOT NULL,
    NOME    VARCHAR(30),
    CNPJ    VARCHAR(20),
    PADRAO  INTEGER
);


		CREATE TABLE MDF_SEGURADORA (
			ID      INTEGER NOT NULL,
			NOME    VARCHAR(30),
			CNPJ    VARCHAR(20),
			PADRAO  INTEGER
		);




CREATE TABLE CTE_CARGA (
    ID            INTEGER NOT NULL,
    ID_CTE        INTEGER,
    COD_UNIDADE   VARCHAR(10),
    TIPO_UNIDADE  VARCHAR(10),
    QNT           NUMERIC(9,0)
);



CREATE TABLE CTE_CCORRECAO (
    ID         INTEGER NOT NULL,
    CHAVE      VARCHAR(80),
    EVENTO     DATE,
    CPF_CNPJ   VARCHAR(20),
    SEQUENCIA  INTEGER
);



CREATE TABLE CTE_CONDUTOR (
    ID      INTEGER NOT NULL,
    ID_CTE  INTEGER,
    NOME    VARCHAR(70),
    CPF     VARCHAR(20)
);



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

CREATE TABLE MDFE_CIOT (
    ID_CIOT    INTEGER NOT NULL,
    ID_MDFE    INTEGER,
    CIOT_CPF   VARCHAR(14),
    CIOT_CNPJ  VARCHAR(20),
    CIOT       VARCHAR(12)
);










