object CDM: TCDM
  OldCreateOrder = False
  Height = 806
  Width = 1235
  object Conexao: TSQLConnection
    DriverName = 'Firebird'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'Database=database.fdb'
      'ServerCharSet='
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver240.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver240.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'Trim Char=False')
    AfterConnect = ConexaoAfterConnect
    Left = 24
    Top = 16
  end
  object SQL_CTE_CONFIG: TSQLDataSet
    CommandText = 'select * from CTE_CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 136
    Top = 16
  end
  object Prov_CTE_CONFIG: TDataSetProvider
    DataSet = SQL_CTE_CONFIG
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 128
    Top = 72
  end
  object CD_CTE_CONFIG: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE_CONFIG'
    BeforePost = CD_CTE_CONFIGBeforePost
    Left = 128
    Top = 128
    object CD_CTE_CONFIGID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_CTE_CONFIGCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 50
    end
    object CD_CTE_CONFIGLOGO: TStringField
      FieldName = 'LOGO'
      Size = 300
    end
    object CD_CTE_CONFIGPATCH: TStringField
      FieldName = 'PATCH'
      Size = 300
    end
    object CD_CTE_CONFIGUF: TIntegerField
      FieldName = 'UF'
    end
    object CD_CTE_CONFIGMODODACTE: TIntegerField
      FieldName = 'MODODACTE'
    end
    object CD_CTE_CONFIGAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object CD_CTE_CONFIGFORMAEMISSAO: TIntegerField
      FieldName = 'FORMAEMISSAO'
    end
    object CD_CTE_CONFIGMODELO: TStringField
      FieldName = 'MODELO'
      Size = 15
    end
    object CD_CTE_CONFIGSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object CD_CTE_CONFIGNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CD_CTE_CONFIGVXML: TStringField
      FieldName = 'VXML'
      Size = 10
    end
    object CD_CTE_CONFIGESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 5
    end
    object CD_CTE_CONFIGID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_CTE_CONFIGSERIE_OS: TIntegerField
      FieldName = 'SERIE_OS'
    end
    object CD_CTE_CONFIGNUMERO_OS: TStringField
      FieldName = 'NUMERO_OS'
      Size = 15
    end
  end
  object DS_CTE_CONFIG: TDataSource
    DataSet = CD_CTE_CONFIG
    Left = 128
    Top = 192
  end
  object SQL_Emissor_CTE: TSQLDataSet
    CommandText = 'select * from CTE_DADOS'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 240
    Top = 16
  end
  object Prov_Emissor_CTE: TDataSetProvider
    DataSet = SQL_Emissor_CTE
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 72
  end
  object CD_Emissor_CTE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Emissor_CTE'
    AfterOpen = CD_Emissor_CTEAfterOpen
    BeforeInsert = CD_Emissor_CTEBeforeInsert
    AfterInsert = CD_Emissor_CTEAfterInsert
    BeforePost = CD_Emissor_CTEBeforePost
    Left = 240
    Top = 128
    object CD_Emissor_CTEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_Emissor_CTENUMCTE: TFMTBCDField
      FieldName = 'NUMCTE'
      Precision = 18
      Size = 0
    end
    object CD_Emissor_CTESTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object CD_Emissor_CTEID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object CD_Emissor_CTEDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CD_Emissor_CTEMODAL: TStringField
      FieldName = 'MODAL'
      Size = 15
    end
    object CD_Emissor_CTETIPO_SERV: TStringField
      FieldName = 'TIPO_SERV'
    end
    object CD_Emissor_CTEINDIETOMA: TStringField
      FieldName = 'INDIETOMA'
    end
    object CD_Emissor_CTEINICODIBGE: TIntegerField
      FieldName = 'INICODIBGE'
    end
    object CD_Emissor_CTEFIMCODIBGE: TIntegerField
      FieldName = 'FIMCODIBGE'
    end
    object CD_Emissor_CTEID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
    end
    object CD_Emissor_CTETOTAL_PREST: TFloatField
      FieldName = 'TOTAL_PREST'
      currency = True
    end
    object CD_Emissor_CTEVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      currency = True
    end
    object CD_Emissor_CTEVAL_TOT_TRIB: TFloatField
      FieldName = 'VAL_TOT_TRIB'
      currency = True
    end
    object CD_Emissor_CTECST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object CD_Emissor_CTEREDBC: TFloatField
      FieldName = 'REDBC'
    end
    object CD_Emissor_CTEBASECALCULO: TFloatField
      FieldName = 'BASECALCULO'
      currency = True
    end
    object CD_Emissor_CTEPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object CD_Emissor_CTEINFADFISCO: TStringField
      FieldName = 'INFADFISCO'
      Size = 100
    end
    object CD_Emissor_CTEPIS: TFloatField
      FieldName = 'PIS'
    end
    object CD_Emissor_CTECOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object CD_Emissor_CTEIR: TFloatField
      FieldName = 'IR'
    end
    object CD_Emissor_CTEINSS: TFloatField
      FieldName = 'INSS'
    end
    object CD_Emissor_CTECSLL: TFloatField
      FieldName = 'CSLL'
    end
    object CD_Emissor_CTEDESCSERV: TStringField
      FieldName = 'DESCSERV'
      Size = 30
    end
    object CD_Emissor_CTECARGA: TFloatField
      FieldName = 'CARGA'
    end
    object CD_Emissor_CTEID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CD_Emissor_CTESERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object CD_Emissor_CTEMODELO: TStringField
      FieldName = 'MODELO'
      Size = 15
    end
    object CD_Emissor_CTENUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CD_Emissor_CTECHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object CD_Emissor_CTEINIUF: TStringField
      FieldName = 'INIUF'
      Size = 10
    end
    object CD_Emissor_CTEINICIDADE: TStringField
      FieldName = 'INICIDADE'
      Size = 50
    end
    object CD_Emissor_CTEFIMUF: TStringField
      FieldName = 'FIMUF'
      Size = 10
    end
    object CD_Emissor_CTEFIMCIDADE: TStringField
      FieldName = 'FIMCIDADE'
      Size = 50
    end
    object CD_Emissor_CTECFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object CD_Emissor_CTEPESSOA: TIntegerField
      FieldName = 'PESSOA'
    end
    object CD_Emissor_CTECPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CD_Emissor_CTEIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object CD_Emissor_CTENOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_Emissor_CTENOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object CD_Emissor_CTEENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_Emissor_CTEBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_Emissor_CTECOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_Emissor_CTECEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_Emissor_CTEUF: TStringField
      FieldName = 'UF'
      Size = 5
    end
    object CD_Emissor_CTECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_Emissor_CTEFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_Emissor_CTEN_ENDERECO: TStringField
      FieldName = 'N_ENDERECO'
      Size = 8
    end
    object CD_Emissor_CTEREMETENTE: TIntegerField
      FieldName = 'REMETENTE'
    end
    object CD_Emissor_CTEREM_PESSOA: TIntegerField
      FieldName = 'REM_PESSOA'
    end
    object CD_Emissor_CTEREM_CPF_CNPJ: TStringField
      FieldName = 'REM_CPF_CNPJ'
    end
    object CD_Emissor_CTEREM_IE: TStringField
      FieldName = 'REM_IE'
      Size = 18
    end
    object CD_Emissor_CTEREM_NOME: TStringField
      FieldName = 'REM_NOME'
      Size = 70
    end
    object CD_Emissor_CTEREM_NOME_FANTASIA: TStringField
      FieldName = 'REM_NOME_FANTASIA'
      Size = 50
    end
    object CD_Emissor_CTEREM_ENDERECO: TStringField
      FieldName = 'REM_ENDERECO'
      Size = 50
    end
    object CD_Emissor_CTEREM_BAIRRO: TStringField
      FieldName = 'REM_BAIRRO'
      Size = 30
    end
    object CD_Emissor_CTEREM_COMPLEMENTO: TStringField
      FieldName = 'REM_COMPLEMENTO'
      Size = 30
    end
    object CD_Emissor_CTEREM_CEP: TStringField
      FieldName = 'REM_CEP'
      Size = 9
    end
    object CD_Emissor_CTEREM_UF: TStringField
      FieldName = 'REM_UF'
      Size = 5
    end
    object CD_Emissor_CTEREM_COD_IBGE: TIntegerField
      FieldName = 'REM_COD_IBGE'
    end
    object CD_Emissor_CTEREM_CIDADE: TStringField
      FieldName = 'REM_CIDADE'
      Size = 50
    end
    object CD_Emissor_CTEREM_FONE_RES: TStringField
      FieldName = 'REM_FONE_RES'
      Size = 18
    end
    object CD_Emissor_CTEFORMA_PAGA: TStringField
      FieldName = 'FORMA_PAGA'
      Size = 10
    end
    object CD_Emissor_CTECTE_REFERENCIA: TStringField
      FieldName = 'CTE_REFERENCIA'
      Size = 80
    end
    object CD_Emissor_CTECTE_COMPLEMENTAR: TStringField
      FieldName = 'CTE_COMPLEMENTAR'
      Size = 80
    end
    object CD_Emissor_CTEPRODUTOS_PREDOMINANTE: TStringField
      FieldName = 'PRODUTOS_PREDOMINANTE'
      Size = 60
    end
    object CD_Emissor_CTEPRODUTO_VALOR_DACARGA: TFloatField
      FieldName = 'PRODUTO_VALOR_DACARGA'
    end
    object CD_Emissor_CTEPRODUTO_OUTRA_CARACTER: TStringField
      FieldName = 'PRODUTO_OUTRA_CARACTER'
      Size = 60
    end
    object CD_Emissor_CTERNTC: TStringField
      FieldName = 'RNTC'
      Size = 8
    end
    object CD_Emissor_CTECIOT: TStringField
      FieldName = 'CIOT'
      Size = 8
    end
    object CD_Emissor_CTEINDIC_LOTA: TStringField
      FieldName = 'INDIC_LOTA'
      Size = 5
    end
    object CD_Emissor_CTEDATA_PREV: TDateField
      FieldName = 'DATA_PREV'
    end
    object CD_Emissor_CTEDESTINATARIO: TIntegerField
      FieldName = 'DESTINATARIO'
    end
    object CD_Emissor_CTEDEST_PESSOA: TIntegerField
      FieldName = 'DEST_PESSOA'
    end
    object CD_Emissor_CTEDEST_CPF_CNPJ: TStringField
      FieldName = 'DEST_CPF_CNPJ'
    end
    object CD_Emissor_CTEDEST_IE: TStringField
      FieldName = 'DEST_IE'
      Size = 18
    end
    object CD_Emissor_CTEDEST_NOME: TStringField
      FieldName = 'DEST_NOME'
      Size = 70
    end
    object CD_Emissor_CTEDEST_NOME_FANTASIA: TStringField
      FieldName = 'DEST_NOME_FANTASIA'
      Size = 50
    end
    object CD_Emissor_CTEDEST_ENDERECO: TStringField
      FieldName = 'DEST_ENDERECO'
      Size = 50
    end
    object CD_Emissor_CTEDEST_BAIRRO: TStringField
      FieldName = 'DEST_BAIRRO'
      Size = 30
    end
    object CD_Emissor_CTEDEST_COMPLEMENTO: TStringField
      FieldName = 'DEST_COMPLEMENTO'
      Size = 30
    end
    object CD_Emissor_CTEDEST_CEP: TStringField
      FieldName = 'DEST_CEP'
      Size = 9
    end
    object CD_Emissor_CTEDEST_UF: TStringField
      FieldName = 'DEST_UF'
      Size = 5
    end
    object CD_Emissor_CTEDEST_CIDADE: TStringField
      FieldName = 'DEST_CIDADE'
      Size = 50
    end
    object CD_Emissor_CTEDEST_FONE_RES: TStringField
      FieldName = 'DEST_FONE_RES'
      Size = 18
    end
    object CD_Emissor_CTEDEST_COD_IBGE: TIntegerField
      FieldName = 'DEST_COD_IBGE'
    end
    object CD_Emissor_CTEHORA: TTimeField
      FieldName = 'HORA'
    end
    object CD_Emissor_CTENATUREZA_OPERACAO: TStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 50
    end
    object CD_Emissor_CTETOMCOD_IBGE: TIntegerField
      FieldName = 'TOMCOD_IBGE'
    end
    object CD_Emissor_CTEVALORICMS: TFloatField
      FieldName = 'VALORICMS'
      currency = True
    end
    object CD_Emissor_CTECREDBC: TFloatField
      FieldName = 'CREDBC'
    end
    object CD_Emissor_CTECONTRIBNOME: TStringField
      FieldName = 'CONTRIBNOME'
      Size = 50
    end
    object CD_Emissor_CTECONTRBTEXT: TStringField
      FieldName = 'CONTRBTEXT'
      Size = 50
    end
    object CD_Emissor_CTEFISCOCAMPO: TStringField
      FieldName = 'FISCOCAMPO'
      Size = 50
    end
    object CD_Emissor_CTEFISCOTEXT: TStringField
      FieldName = 'FISCOTEXT'
      Size = 50
    end
    object CD_Emissor_CTESUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object CD_Emissor_CTEADVALOREM: TFloatField
      FieldName = 'ADVALOREM'
    end
    object CD_Emissor_CTEPEDAGIO: TFloatField
      FieldName = 'PEDAGIO'
    end
    object CD_Emissor_CTEOUTRASDESP: TFloatField
      FieldName = 'OUTRASDESP'
      currency = True
    end
    object CD_Emissor_CTEDEST_NUMERO: TStringField
      FieldName = 'DEST_NUMERO'
      Size = 10
    end
    object CD_Emissor_CTEREM_NUMERO: TStringField
      FieldName = 'REM_NUMERO'
      Size = 10
    end
    object CD_Emissor_CTEPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Size = 50
    end
    object CD_Emissor_CTEID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_Emissor_CTEOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object CD_Emissor_CTESEGURADORA: TStringField
      FieldName = 'SEGURADORA'
      Size = 30
    end
    object CD_Emissor_CTEAPOLICE: TStringField
      FieldName = 'APOLICE'
    end
    object CD_Emissor_CTEAVERBACAO: TStringField
      FieldName = 'AVERBACAO'
      Size = 40
    end
    object CD_Emissor_CTERESPONSAVEL: TIntegerField
      FieldName = 'RESPONSAVEL'
    end
    object CD_Emissor_CTENROREGESTADUAL: TStringField
      FieldName = 'NROREGESTADUAL'
      Size = 25
    end
    object CD_Emissor_CTEGLOBALIZADO: TIntegerField
      FieldName = 'GLOBALIZADO'
    end
    object CD_Emissor_CTEEXP_PESSOA: TIntegerField
      FieldName = 'EXP_PESSOA'
    end
    object CD_Emissor_CTEEXP_CPF_CNPJ: TStringField
      FieldName = 'EXP_CPF_CNPJ'
    end
    object CD_Emissor_CTEEXP_IE: TStringField
      FieldName = 'EXP_IE'
      Size = 18
    end
    object CD_Emissor_CTEEXP_NOME: TStringField
      FieldName = 'EXP_NOME'
      Size = 70
    end
    object CD_Emissor_CTEEXP_NOME_FANTASIA: TStringField
      FieldName = 'EXP_NOME_FANTASIA'
      Size = 50
    end
    object CD_Emissor_CTEEXP_ENDERECO: TStringField
      FieldName = 'EXP_ENDERECO'
      Size = 50
    end
    object CD_Emissor_CTEEXP_BAIRRO: TStringField
      FieldName = 'EXP_BAIRRO'
      Size = 30
    end
    object CD_Emissor_CTEEXP_COMPLEMENTO: TStringField
      FieldName = 'EXP_COMPLEMENTO'
      Size = 30
    end
    object CD_Emissor_CTEEXP_CEP: TStringField
      FieldName = 'EXP_CEP'
      Size = 9
    end
    object CD_Emissor_CTEEXP_UF: TStringField
      FieldName = 'EXP_UF'
      Size = 5
    end
    object CD_Emissor_CTEEXP_COD_IBGE: TIntegerField
      FieldName = 'EXP_COD_IBGE'
    end
    object CD_Emissor_CTEEXP_CIDADE: TStringField
      FieldName = 'EXP_CIDADE'
      Size = 50
    end
    object CD_Emissor_CTEREC_PESSOA: TIntegerField
      FieldName = 'REC_PESSOA'
    end
    object CD_Emissor_CTEREC_CPF_CNPJ: TStringField
      FieldName = 'REC_CPF_CNPJ'
    end
    object CD_Emissor_CTEREC_IE: TStringField
      FieldName = 'REC_IE'
      Size = 18
    end
    object CD_Emissor_CTEREC_NOME: TStringField
      FieldName = 'REC_NOME'
      Size = 70
    end
    object CD_Emissor_CTEREC_NOME_FANTASIA: TStringField
      FieldName = 'REC_NOME_FANTASIA'
      Size = 50
    end
    object CD_Emissor_CTEREC_ENDERECO: TStringField
      FieldName = 'REC_ENDERECO'
      Size = 50
    end
    object CD_Emissor_CTEREC_BAIRRO: TStringField
      FieldName = 'REC_BAIRRO'
      Size = 30
    end
    object CD_Emissor_CTEREC_COMPLEMENTO: TStringField
      FieldName = 'REC_COMPLEMENTO'
      Size = 30
    end
    object CD_Emissor_CTEREC_CEP: TStringField
      FieldName = 'REC_CEP'
      Size = 9
    end
    object CD_Emissor_CTEREC_UF: TStringField
      FieldName = 'REC_UF'
      Size = 5
    end
    object CD_Emissor_CTEREC_COD_IBGE: TIntegerField
      FieldName = 'REC_COD_IBGE'
    end
    object CD_Emissor_CTEREC_CIDADE: TStringField
      FieldName = 'REC_CIDADE'
      Size = 50
    end
    object CD_Emissor_CTEREC_NUMERO: TFMTBCDField
      FieldName = 'REC_NUMERO'
      Precision = 18
      Size = 2
    end
    object CD_Emissor_CTEEXP_NUMERO: TFMTBCDField
      FieldName = 'EXP_NUMERO'
      Precision = 18
      Size = 2
    end
    object CD_Emissor_CTEREC_ENUM: TStringField
      FieldName = 'REC_ENUM'
      Size = 8
    end
    object CD_Emissor_CTEEXP_ENUM: TStringField
      FieldName = 'EXP_ENUM'
      Size = 8
    end
  end
  object DS_CD_Emissor_CTE: TDataSource
    DataSet = CD_Emissor_CTE
    Left = 240
    Top = 192
  end
  object DS_Query_NOperacao: TDataSource
    DataSet = CD_N_Operacao
    Left = 360
    Top = 192
  end
  object Query_NOperacao: TSQLDataSet
    CommandText = 'select *  from NATUREZA_OPERACAO'#13#10'where operacao = 11'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 360
    Top = 16
  end
  object Prov_NOperacao: TDataSetProvider
    DataSet = Query_NOperacao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 72
  end
  object CD_N_Operacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_NOperacao'
    BeforeInsert = CD_N_OperacaoBeforeInsert
    AfterInsert = CD_N_OperacaoAfterInsert
    Left = 360
    Top = 128
    object CD_N_OperacaoID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_N_OperacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CD_N_OperacaoDESCRICAO_NOTA: TStringField
      FieldName = 'DESCRICAO_NOTA'
      Size = 50
    end
    object CD_N_OperacaoCODIGO_FISCAL: TStringField
      FieldName = 'CODIGO_FISCAL'
      Size = 10
    end
    object CD_N_OperacaoES: TSmallintField
      FieldName = 'ES'
    end
    object CD_N_OperacaoESTOQUE_FISICO: TSmallintField
      FieldName = 'ESTOQUE_FISICO'
    end
    object CD_N_OperacaoESTOQUE_FISCAL: TSmallintField
      FieldName = 'ESTOQUE_FISCAL'
    end
    object CD_N_OperacaoFINANCEIRO: TSmallintField
      FieldName = 'FINANCEIRO'
    end
    object CD_N_OperacaoCALC_ICMS: TSmallintField
      FieldName = 'CALC_ICMS'
    end
    object CD_N_OperacaoCALC_IPI: TSmallintField
      FieldName = 'CALC_IPI'
    end
    object CD_N_OperacaoCALC_ISS: TSmallintField
      FieldName = 'CALC_ISS'
    end
    object CD_N_OperacaoREDUCAO_ICMS: TSingleField
      FieldName = 'REDUCAO_ICMS'
    end
    object CD_N_OperacaoREDUCAO_IPI: TSingleField
      FieldName = 'REDUCAO_IPI'
    end
    object CD_N_OperacaoTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_N_OperacaoPROCESSO: TSmallintField
      FieldName = 'PROCESSO'
    end
    object CD_N_OperacaoCALC_COMISSAO: TSmallintField
      FieldName = 'CALC_COMISSAO'
    end
    object CD_N_OperacaoICMS_ATIVO: TSmallintField
      FieldName = 'ICMS_ATIVO'
    end
    object CD_N_OperacaoICMS: TSingleField
      FieldName = 'ICMS'
    end
    object CD_N_OperacaoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_N_OperacaoTRIBUTACAO: TSmallintField
      FieldName = 'TRIBUTACAO'
    end
    object CD_N_OperacaoOPERACAO: TSmallintField
      FieldName = 'OPERACAO'
    end
    object CD_N_OperacaoID_TERMO_OBS: TIntegerField
      FieldName = 'ID_TERMO_OBS'
    end
    object CD_N_OperacaoTIPO_ENTREGA: TSmallintField
      FieldName = 'TIPO_ENTREGA'
    end
    object CD_N_OperacaoTIPO_DESTINO: TSmallintField
      FieldName = 'TIPO_DESTINO'
    end
    object CD_N_OperacaoIPI_CST: TStringField
      FieldName = 'IPI_CST'
      Size = 6
    end
    object CD_N_OperacaoPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Size = 6
    end
    object CD_N_OperacaoCOFINS_CST: TStringField
      FieldName = 'COFINS_CST'
      Size = 6
    end
    object CD_N_OperacaoPIS: TSingleField
      FieldName = 'PIS'
    end
    object CD_N_OperacaoIPI: TSingleField
      FieldName = 'IPI'
    end
    object CD_N_OperacaoCOFINS: TSingleField
      FieldName = 'COFINS'
    end
    object CD_N_OperacaoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 6
    end
    object CD_N_OperacaoCFOP_ATIVO: TSmallintField
      FieldName = 'CFOP_ATIVO'
    end
    object CD_N_OperacaoICMS_SUB: TSingleField
      FieldName = 'ICMS_SUB'
    end
    object CD_N_OperacaoORIGEM_MERCADORIA: TSmallintField
      FieldName = 'ORIGEM_MERCADORIA'
    end
    object CD_N_OperacaoIPI_ENQLEG: TStringField
      FieldName = 'IPI_ENQLEG'
      Size = 6
    end
    object CD_N_OperacaoACOBERTAMENTO: TSmallintField
      FieldName = 'ACOBERTAMENTO'
    end
  end
  object Clientes: TSQLDataSet
    CommandText = 
      'select first 50 '#13#10'                                          clie' +
      'ntes.id_cliente, '#13#10'                                          cli' +
      'entes.cpf_cnpj, '#13#10'                                          clie' +
      'ntes.pessoa, '#13#10'                                          cliente' +
      's.ie, '#13#10'                                          clientes.nome,' +
      ' '#13#10'                                          clientes.nome_fanta' +
      'sia, '#13#10'                                          clientes.tipo,'#13 +
      #10'                                          clientes_dados.endere' +
      'co, '#13#10'                                          clientes_dados.n' +
      'umero, '#13#10'                                          clientes_dado' +
      's.bairro, '#13#10'                                          clientes_d' +
      'ados.complemento, '#13#10'                                          cl' +
      'ientes_dados.cep, '#13#10'                                          cl' +
      'ientes_dados.fone_res, '#13#10'                                       ' +
      '   regioes.CODIGO_IBGE, '#13#10'                                      ' +
      '    regioes.cidade, '#13#10'                                          ' +
      'regioes.uf '#13#10'                                          from clie' +
      'ntes '#13#10'                                          left join clien' +
      'tes_dados on(clientes_dados.id_cliente = clientes.id_cliente) '#13#10 +
      '                                          left join regioes on(r' +
      'egioes.id_regiao = clientes.id_regiao)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 468
    Top = 23
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Clientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 80
  end
  object DS_Clientes: TDataSource
    DataSet = CD_Table_Clientes
    Left = 464
    Top = 192
  end
  object CD_Table_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 472
    Top = 136
    object CD_Table_ClientesTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_Table_ClientesID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_Table_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CD_Table_ClientesPESSOA: TSmallintField
      FieldName = 'PESSOA'
    end
    object CD_Table_ClientesIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object CD_Table_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_Table_ClientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object CD_Table_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_Table_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_Table_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_Table_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_Table_ClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_Table_ClientesFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_Table_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_Table_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_Table_ClientesCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
  end
  object Prov_Clientes: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 584
    Top = 80
  end
  object DS_Clientes_2: TDataSource
    DataSet = CD_Clientes
    Left = 584
    Top = 192
  end
  object CD_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Clientes'
    Left = 584
    Top = 136
    object CD_ClientesTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_ClientesID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CD_ClientesIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object CD_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_ClientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object CD_ClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_ClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_ClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_ClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_ClientesFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_ClientesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_ClientesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_ClientesUF_1: TStringField
      FieldName = 'UF_1'
      Size = 2
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select  clientes.tipo, '#13#10'                                       ' +
      ' clientes.id_cliente, '#13#10'                                        ' +
      'clientes.pessoa, '#13#10'                                        clien' +
      'tes.cpf_cnpj, '#13#10'                                        clientes' +
      '.ie, '#13#10'                                        clientes.nome, '#13#10 +
      '                                        clientes.nome_fantasia, ' +
      #13#10'                                        clientes_dados.enderec' +
      'o, '#13#10'                                        clientes_dados.nume' +
      'ro, '#13#10'                                        clientes_dados.bai' +
      'rro, '#13#10'                                        clientes_dados.co' +
      'mplemento, '#13#10'                                        clientes_da' +
      'dos.cep, '#13#10'                                        clientes_dado' +
      's.fone_res, '#13#10'                                        regioes.uf' +
      ', '#13#10'                                        regioes.cidade, '#13#10'  ' +
      '                                      regioes.uf '#13#10'             ' +
      '                           from clientes'#13#10'                      ' +
      '                  left join clientes_dados on(clientes_dados.id_' +
      'cliente = clientes.id_cliente)'#13#10'                                ' +
      '        left join regioes on(regioes.id_regiao = clientes.id_reg' +
      'iao)'#13#10'                                        where clientes.id_' +
      'cliente != 1 and clientes.tipo !=4'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 588
    Top = 23
  end
  object Prov_Carga: TDataSetProvider
    DataSet = Query_Carga
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 688
    Top = 80
  end
  object DS_Carga: TDataSource
    DataSet = Cd_Carga
    Left = 688
    Top = 192
  end
  object Cd_Carga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Carga'
    Left = 688
    Top = 144
    object Cd_CargaID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object Cd_CargaCOD_UNIDADE: TStringField
      FieldName = 'COD_UNIDADE'
      Size = 10
    end
    object Cd_CargaTIPO_UNIDADE: TStringField
      FieldName = 'TIPO_UNIDADE'
      Size = 10
    end
    object Cd_CargaQNT: TFMTBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 0
    end
    object Cd_CargaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object Query_Carga: TSQLDataSet
    CommandText = 'select * from cte_carga'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 692
    Top = 31
  end
  object Prov_CTENFE: TDataSetProvider
    DataSet = Query_CTENFE
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 784
    Top = 84
  end
  object DS_CTENFE: TDataSource
    DataSet = CD_CTENFE
    Left = 784
    Top = 196
  end
  object CD_CTENFE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_CTENFE'
    BeforeInsert = CD_CTENFEBeforeInsert
    AfterInsert = CD_CTENFEAfterInsert
    AfterPost = CD_CTENFEAfterPost
    Left = 784
    Top = 140
    object CD_CTENFEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_CTENFESERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object CD_CTENFENUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 25
    end
    object CD_CTENFEEMISSAO: TStringField
      FieldName = 'EMISSAO'
      EditMask = '99/99/9999 99:99;1;_'
    end
    object CD_CTENFECFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object CD_CTENFEBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      currency = True
    end
    object CD_CTENFEVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      OnChange = CD_CTENFEVALOR_ICMSChange
      currency = True
    end
    object CD_CTENFEBASE_CALCULO_SUBICMS: TFloatField
      FieldName = 'BASE_CALCULO_SUBICMS'
      currency = True
    end
    object CD_CTENFEVALOR_SUBICMS: TFloatField
      FieldName = 'VALOR_SUBICMS'
      OnChange = CD_CTENFEVALOR_ICMSChange
      currency = True
    end
    object CD_CTENFEVALOR_DOS_PRODUTOS: TFloatField
      FieldName = 'VALOR_DOS_PRODUTOS'
      OnChange = CD_CTENFEVALOR_ICMSChange
      currency = True
    end
    object CD_CTENFEVALOR_DA_NOTA: TFloatField
      FieldName = 'VALOR_DA_NOTA'
      currency = True
    end
    object CD_CTENFEID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTENFEMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
    end
  end
  object Query_CTENFE: TSQLDataSet
    CommandText = 'select * from CTE_NF'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 784
    Top = 30
  end
  object Query_Veiculos: TSQLDataSet
    CommandText = 'select * from CTE_VEIC'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 900
    Top = 31
  end
  object Prov_veiculos: TDataSetProvider
    DataSet = Query_Veiculos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 901
    Top = 85
  end
  object DS_Veiculos: TDataSource
    DataSet = CD_veiculos
    Left = 901
    Top = 197
  end
  object CD_veiculos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_veiculos'
    BeforeInsert = CD_veiculosBeforeInsert
    AfterInsert = CD_veiculosAfterInsert
    Left = 901
    Top = 141
    object CD_veiculosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_veiculosID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_veiculosPLACA: TStringField
      FieldName = 'PLACA'
      EditMask = 'LLL-9999;1;_'
      Size = 8
    end
    object CD_veiculosRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 30
    end
    object CD_veiculosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_veiculosTARA: TFMTBCDField
      FieldName = 'TARA'
      Precision = 18
      Size = 2
    end
    object CD_veiculosCAPACIDADE: TFMTBCDField
      FieldName = 'CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object CD_veiculosVEI_CAPC_M3: TFMTBCDField
      FieldName = 'VEI_CAPC_M3'
      Precision = 18
      Size = 2
    end
    object CD_veiculosPROPRI_DO_VEIC: TStringField
      FieldName = 'PROPRI_DO_VEIC'
      FixedChar = True
      Size = 10
    end
    object CD_veiculosTIPO_RODADO: TStringField
      FieldName = 'TIPO_RODADO'
      Size = 30
    end
    object CD_veiculosTIPO_CARROCERIA: TStringField
      FieldName = 'TIPO_CARROCERIA'
      Size = 30
    end
    object CD_veiculosTIPO_VEICULO: TStringField
      FieldName = 'TIPO_VEICULO'
      Size = 30
    end
  end
  object Query_Info_NF: TSQLDataSet
    CommandText = 
      'select  nota_fiscal.*, '#13#10'natureza_operacao.codigo_fiscal'#13#10'      ' +
      ' from nota_fiscal'#13#10'       left join natureza_operacao on (nature' +
      'za_operacao.id_natureza = nota_fiscal.id_natureza)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 1012
    Top = 31
  end
  object Prov_Info_NF: TDataSetProvider
    DataSet = Query_Info_NF
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1008
    Top = 85
  end
  object DS_CD_Info_NF: TDataSource
    DataSet = CD_Info_NF
    Left = 1008
    Top = 197
  end
  object CD_Info_NF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Info_NF'
    Left = 1008
    Top = 141
    object CD_Info_NFID_NOTA: TFMTBCDField
      FieldName = 'ID_NOTA'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_Info_NFID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CD_Info_NFID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object CD_Info_NFID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object CD_Info_NFNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 18
    end
    object CD_Info_NFDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CD_Info_NFDATA_ES: TDateField
      FieldName = 'DATA_ES'
    end
    object CD_Info_NFHORA: TTimeField
      FieldName = 'HORA'
    end
    object CD_Info_NFTR_NOME: TStringField
      FieldName = 'TR_NOME'
      Size = 40
    end
    object CD_Info_NFTR_ENDERECO: TStringField
      FieldName = 'TR_ENDERECO'
      Size = 40
    end
    object CD_Info_NFQUANTIDADE: TSingleField
      FieldName = 'QUANTIDADE'
    end
    object CD_Info_NFESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object CD_Info_NFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object CD_Info_NFFPC: TSmallintField
      FieldName = 'FPC'
    end
    object CD_Info_NFVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Size = 15
    end
    object CD_Info_NFVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      Size = 2
    end
    object CD_Info_NFTR_CIDADE: TStringField
      FieldName = 'TR_CIDADE'
      Size = 50
    end
    object CD_Info_NFTR_UF: TStringField
      FieldName = 'TR_UF'
      Size = 2
    end
    object CD_Info_NFNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 25
    end
    object CD_Info_NFPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
    end
    object CD_Info_NFPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
    end
    object CD_Info_NFTR_CPF_CNPJ: TStringField
      FieldName = 'TR_CPF_CNPJ'
    end
    object CD_Info_NFTR_IE: TStringField
      FieldName = 'TR_IE'
      Size = 18
    end
    object CD_Info_NFSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object CD_Info_NFTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_Info_NFOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CD_Info_NFBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFBASE_ICMS_SUB: TFMTBCDField
      FieldName = 'BASE_ICMS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_ICMS_SUB: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
    end
    object CD_Info_NFPERCENTUAL1: TSingleField
      FieldName = 'PERCENTUAL1'
    end
    object CD_Info_NFPERCENTUAL2: TSingleField
      FieldName = 'PERCENTUAL2'
    end
    object CD_Info_NFID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
    end
    object CD_Info_NFDESCONTO: TSingleField
      FieldName = 'DESCONTO'
    end
    object CD_Info_NFACRESCIMO: TSingleField
      FieldName = 'ACRESCIMO'
    end
    object CD_Info_NFDADOS: TMemoField
      FieldName = 'DADOS'
      BlobType = ftMemo
      Size = 1
    end
    object CD_Info_NFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object CD_Info_NFTIPO_NOTA: TSmallintField
      FieldName = 'TIPO_NOTA'
    end
    object CD_Info_NFID_ENTREGA: TIntegerField
      FieldName = 'ID_ENTREGA'
    end
    object CD_Info_NFTIPO_NF: TSmallintField
      FieldName = 'TIPO_NF'
    end
    object CD_Info_NFTIPO_DESCONTO: TSmallintField
      FieldName = 'TIPO_DESCONTO'
    end
    object CD_Info_NFTIPO_BASE: TSmallintField
      FieldName = 'TIPO_BASE'
    end
    object CD_Info_NFNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Size = 50
    end
    object CD_Info_NFNFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
      Size = 50
    end
    object CD_Info_NFNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Size = 80
    end
    object CD_Info_NFNFE_DATA_ENVIO: TDateField
      FieldName = 'NFE_DATA_ENVIO'
    end
    object CD_Info_NFNFE_CHAVE_REF: TStringField
      FieldName = 'NFE_CHAVE_REF'
      Size = 80
    end
    object CD_Info_NFMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object CD_Info_NFEXP_UF: TStringField
      FieldName = 'EXP_UF'
      Size = 2
    end
    object CD_Info_NFEXP_LOCAL: TStringField
      FieldName = 'EXP_LOCAL'
      Size = 50
    end
    object CD_Info_NFTIPO_EMISSAO: TSmallintField
      FieldName = 'TIPO_EMISSAO'
    end
    object CD_Info_NFVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object CD_Info_NFVALOR_PIS_SUB: TFMTBCDField
      FieldName = 'VALOR_PIS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_COFINS_SUB: TFMTBCDField
      FieldName = 'VALOR_COFINS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFCARTA_CORRECAO: TSmallintField
      FieldName = 'CARTA_CORRECAO'
    end
    object CD_Info_NFIMPOSTOS: TSingleField
      FieldName = 'IMPOSTOS'
    end
    object CD_Info_NFVALOR_IMPOSTOS: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFNFE_RETORNO: TSmallintField
      FieldName = 'NFE_RETORNO'
    end
    object CD_Info_NFVINCULADO: TStringField
      FieldName = 'VINCULADO'
    end
    object CD_Info_NFNFE_TIPO_DESCRICAO: TSmallintField
      FieldName = 'NFE_TIPO_DESCRICAO'
    end
    object CD_Info_NFEXP_NDRAW: TStringField
      FieldName = 'EXP_NDRAW'
    end
    object CD_Info_NFEXP_CHAVE_NFE: TStringField
      FieldName = 'EXP_CHAVE_NFE'
      Size = 80
    end
    object CD_Info_NFVALOR_ICMS_FCP: TFMTBCDField
      FieldName = 'VALOR_ICMS_FCP'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_ICMS_DST: TFMTBCDField
      FieldName = 'VALOR_ICMS_DST'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_ICMS_REM: TFMTBCDField
      FieldName = 'VALOR_ICMS_REM'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_IMPOSTOSF: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSF'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_IMPOSTOSE: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSE'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFVALOR_IMPOSTOSM: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSM'
      Precision = 18
      Size = 2
    end
    object CD_Info_NFNFE_DATA_HORA_NULA: TSmallintField
      FieldName = 'NFE_DATA_HORA_NULA'
    end
    object CD_Info_NFNFE_TIPO_CR: TSmallintField
      FieldName = 'NFE_TIPO_CR'
    end
    object CD_Info_NFNFP_UF: TStringField
      FieldName = 'NFP_UF'
      Size = 2
    end
    object CD_Info_NFNFP_AAMM: TStringField
      FieldName = 'NFP_AAMM'
      Size = 4
    end
    object CD_Info_NFNFP_CPF_CNPJ: TStringField
      FieldName = 'NFP_CPF_CNPJ'
    end
    object CD_Info_NFNFP_MOD: TStringField
      FieldName = 'NFP_MOD'
      Size = 2
    end
    object CD_Info_NFNFP_SERIE: TStringField
      FieldName = 'NFP_SERIE'
      Size = 3
    end
    object CD_Info_NFNFP_NF: TStringField
      FieldName = 'NFP_NF'
      Size = 18
    end
    object CD_Info_NFNFP_IE: TStringField
      FieldName = 'NFP_IE'
      Size = 18
    end
    object CD_Info_NFCODIGO_FISCAL: TStringField
      FieldName = 'CODIGO_FISCAL'
      Size = 10
    end
  end
  object ID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id(GEN_CTE_DADOS_ID,1) from rdb$database')
    SQLConnection = Conexao
    Left = 24
    Top = 192
    object IDGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      Required = True
    end
  end
  object CTE_condutorTable: TSQLDataSet
    CommandText = 'CTE_CONDUTOR'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 1120
    Top = 30
  end
  object prov_CTE_condutorTable: TDataSetProvider
    DataSet = CTE_condutorTable
    Left = 1120
    Top = 88
  end
  object CD_CTE_condutorTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'prov_CTE_condutorTable'
    BeforeInsert = CD_CTE_condutorTableBeforeInsert
    AfterInsert = CD_CTE_condutorTableAfterInsert
    Left = 1122
    Top = 136
    object CD_CTE_condutorTableID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_CTE_condutorTableID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_condutorTableNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_CTE_condutorTableCPF: TStringField
      FieldName = 'CPF'
    end
  end
  object DS_CTE_condutorTable: TDataSource
    DataSet = CD_CTE_condutorTable
    Left = 1120
    Top = 192
  end
  object CTE_VALOR_ADICIONAL: TSQLDataSet
    CommandText = 'CTE_VALORADICIONAL'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 32
    Top = 285
  end
  object PROV_CTE_ValorAdicional: TDataSetProvider
    DataSet = CTE_VALOR_ADICIONAL
    Left = 32
    Top = 343
  end
  object CD_CTE_ValorAdicional: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'PROV_CTE_ValorAdicional'
    BeforeInsert = CD_CTE_ValorAdicionalBeforeInsert
    AfterInsert = CD_CTE_ValorAdicionalAfterInsert
    AfterPost = CD_CTE_ValorAdicionalAfterPost
    AfterDelete = CD_CTE_ValorAdicionalAfterDelete
    Left = 34
    Top = 391
    object CD_CTE_ValorAdicionalNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CD_CTE_ValorAdicionalVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object CD_CTE_ValorAdicionalID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_ValorAdicionalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DS_CTE_ValorAdicional: TDataSource
    DataSet = CD_CTE_ValorAdicional
    Left = 32
    Top = 455
  end
  object Query_Partilha: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'u'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  ICMS2 from CONFIG_PARTILHA_ICMS'
      'where uf_destino =:u')
    SQLConnection = Conexao
    Left = 32
    Top = 80
    object Query_PartilhaICMS2: TSingleField
      FieldName = 'ICMS2'
    end
  end
  object Prov_CTE_NFES: TDataSetProvider
    DataSet = Query_NFES
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1104
    Top = 344
  end
  object DS_Prov_CTE_NFES: TDataSource
    DataSet = CD_CTE_NFES
    Left = 1104
    Top = 456
  end
  object CD_CTE_NFES: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_CTE_NFES'
    BeforeInsert = CD_CTENFEBeforeInsert
    Left = 1104
    Top = 400
    object CD_CTE_NFESID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_NFESCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 48
    end
    object CD_CTE_NFESNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object Query_NFES: TSQLDataSet
    CommandText = 'select * from cte_nfees'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 1100
    Top = 287
  end
  object Prov_CTEOutroDoc: TDataSetProvider
    DataSet = Query_CTEOutroDoc
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1000
    Top = 344
  end
  object DS_CTEOutroDoc: TDataSource
    DataSet = CD_CTEOutroDoc
    Left = 1000
    Top = 456
  end
  object CD_CTEOutroDoc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Emissor_CTE
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_CTEOutroDoc'
    BeforeInsert = CD_CTENFEBeforeInsert
    AfterInsert = CD_CTEOutroDocAfterInsert
    Left = 1000
    Top = 400
    object CD_CTEOutroDocID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTEOutroDocTIPO: TStringField
      FieldName = 'TIPO'
    end
    object CD_CTEOutroDocDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO'
    end
    object CD_CTEOutroDocNUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'NUMERO'
    end
    object CD_CTEOutroDocEMISSAO: TStringField
      DisplayLabel = 'EMISS'#195'O'
      FieldName = 'EMISSAO'
      EditMask = '99/99/9999 99:99;1;_'
    end
    object CD_CTEOutroDocVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
  end
  object Query_CTEOutroDoc: TSQLDataSet
    CommandText = 'select * from CTE_OUTRODOC'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 996
    Top = 287
  end
  object Query_NF_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(pedido_itens.qtde), pedido_itens.unidade'
      '       from pedido_itens'
      '            group by pedido_itens.unidade')
    SQLConnection = Conexao
    Left = 24
    Top = 128
    object Query_NF_ItensSUM: TFloatField
      FieldName = 'SUM'
    end
    object Query_NF_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
  end
  object DS_CTE_UNIDADE: TDataSource
    DataSet = CD_CTE_UNIDADE
    Left = 576
    Top = 455
  end
  object CD_CTE_UNIDADE: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select cte_uni.un,sum(CTE_UNI.qnt)as qnt from cte_uni group by  ' +
      'cte_uni.un '
    Params = <>
    ProviderName = 'Prov_CTE_UN'
    Left = 576
    Top = 400
    object CD_CTE_UNIDADEUN: TStringField
      FieldName = 'UN'
      Size = 10
    end
    object CD_CTE_UNIDADEQNT: TLargeintField
      FieldName = 'QNT'
      EditFormat = '#,000'
    end
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'select * from cte_uni'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 580
    Top = 287
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 576
    Top = 344
  end
  object SQL_CD_CTE_UNNFA: TSQLDataSet
    CommandText = 'select * from cte_uni'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 468
    Top = 286
  end
  object Prov_CD_CTE_UNNFA: TDataSetProvider
    DataSet = SQL_CD_CTE_UNNFA
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 464
    Top = 343
  end
  object DS_CD_CTE_UNNFA: TDataSource
    DataSet = CD_CTE_UNNFA
    Left = 464
    Top = 454
  end
  object CD_CTE_UNNFA: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CTE;CHAVE_NFE'
    MasterFields = 'ID_CTE;ID'
    MasterSource = DS_CTENFE
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_CTE_UN'
    Left = 464
    Top = 399
    object CD_CTE_UNNFAID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_UNNFACHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 90
    end
    object CD_CTE_UNNFAUN: TStringField
      FieldName = 'UN'
      Size = 10
    end
    object CD_CTE_UNNFAQNT: TFMTBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 0
    end
  end
  object SQL_CTE_UN: TSQLDataSet
    CommandText = 'select * from CTE_UNI'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 668
    Top = 287
  end
  object Prov_CTE_UN: TDataSetProvider
    DataSet = SQL_CTE_UN
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 664
    Top = 344
  end
  object DS_CTE_UN: TDataSource
    DataSet = CD_CTE_UN
    Left = 664
    Top = 455
  end
  object CD_CTE_UN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE_UN'
    BeforePost = CD_CTE_UNBeforePost
    Left = 664
    Top = 400
    object CD_CTE_UNUN: TStringField
      FieldName = 'UN'
      Size = 10
    end
    object CD_CTE_UNID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_UNCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 90
    end
    object CD_CTE_UNQNT: TFMTBCDField
      FieldName = 'QNT'
      Precision = 18
      Size = 3
    end
  end
  object DS_regioes: TDataSource
    DataSet = CD_Regioes
    Left = 136
    Top = 447
  end
  object Regioes: TSQLDataSet
    CommandText = 'select first 50 *  from regioes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 136
    Top = 287
  end
  object Prov_Regioes: TDataSetProvider
    DataSet = Regioes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 343
  end
  object CD_Regioes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Regioes'
    BeforeInsert = CD_RegioesBeforeInsert
    AfterInsert = CD_RegioesAfterInsert
    Left = 136
    Top = 399
    object CD_RegioesID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_RegioesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_RegioesDISTRITO: TStringField
      FieldName = 'DISTRITO'
      Size = 50
    end
    object CD_RegioesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_RegioesID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_RegioesUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object CD_RegioesDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object CD_RegioesLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 50
    end
    object CD_RegioesCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object CD_RegioesDATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object CD_RegioesID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object CD_RegioesPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object CD_Carta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE_Carta_Correcao'
    BeforeInsert = CD_CartaBeforeInsert
    AfterInsert = CD_CartaAfterInsert
    Left = 224
    Top = 391
    object CD_CartaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_CartaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object CD_CartaEVENTO: TDateField
      FieldName = 'EVENTO'
    end
    object CD_CartaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object CD_CartaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
  end
  object SQL_Carta_Correcao: TSQLDataSet
    CommandText = 'select * from cte_ccorrecao'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 228
    Top = 286
  end
  object Prov_CTE_Carta_Correcao: TDataSetProvider
    DataSet = SQL_Carta_Correcao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 335
  end
  object DS_CD_CartaCorrecao: TDataSource
    DataSet = CD_Carta
    Left = 224
    Top = 447
  end
  object SQL_GCarta_Correcao: TSQLDataSet
    CommandText = 'select * from cte_corgrupo'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = Conexao
    Left = 348
    Top = 286
  end
  object DS_CD_GCarta_Correcao: TDataSource
    DataSet = CD_GCarta_Correcao
    Left = 344
    Top = 447
  end
  object Prov_GCarta_Correcao: TDataSetProvider
    DataSet = SQL_GCarta_Correcao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 344
    Top = 335
  end
  object CD_GCarta_Correcao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CCORRACAO'
    MasterFields = 'ID'
    MasterSource = DS_CD_CartaCorrecao
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_GCarta_Correcao'
    Left = 344
    Top = 391
    object CD_GCarta_CorrecaoID_CCORRACAO: TIntegerField
      FieldName = 'ID_CCORRACAO'
    end
    object CD_GCarta_CorrecaoGRUPOALTERADO: TStringField
      DisplayLabel = 'GRUPO'
      FieldName = 'GRUPOALTERADO'
      Size = 30
    end
    object CD_GCarta_CorrecaoCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 30
    end
    object CD_GCarta_CorrecaoVALOR: TStringField
      DisplayLabel = 'NOVO VALOR'
      FieldName = 'VALOR'
      Size = 30
    end
    object CD_GCarta_CorrecaoITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object Tab_CTE_Percurso: TSQLTable
    IndexFieldNames = 'ID'
    MaxBlobSize = -1
    SQLConnection = Conexao
    TableName = 'CTE_UF_PERCURSO'
    Left = 43
    Top = 544
    object Tab_CTE_PercursoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Tab_CTE_PercursoID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object Tab_CTE_PercursoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object DS_CD_CTE_Percurso: TDataSource
    DataSet = CD_CTE_Percurso
    Left = 40
    Top = 720
  end
  object PROV_CTE_Percurso: TDataSetProvider
    DataSet = Tab_CTE_Percurso
    Left = 40
    Top = 600
  end
  object CD_CTE_Percurso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'PROV_CTE_Percurso'
    BeforeInsert = CD_CTE_PercursoBeforeInsert
    AfterInsert = CD_CTE_PercursoAfterInsert
    Left = 40
    Top = 656
    object CD_CTE_PercursoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_CTE_PercursoID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_PercursoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object Tab_CTE_OCC: TSQLTable
    MaxBlobSize = -1
    SQLConnection = Conexao
    TableName = 'CTE_OCC'
    Left = 160
    Top = 544
  end
  object Prov_CTE_OCC: TDataSetProvider
    DataSet = Tab_CTE_OCC
    Left = 160
    Top = 608
  end
  object CD_CTE_OCC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE_OCC'
    BeforeInsert = CD_CTE_OCCBeforeInsert
    AfterInsert = CD_CTE_OCCAfterInsert
    Left = 160
    Top = 664
    object CD_CTE_OCCID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_CTE_OCCID_CTE: TIntegerField
      FieldName = 'ID_CTE'
    end
    object CD_CTE_OCCSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object CD_CTE_OCCNOCC: TIntegerField
      FieldName = 'NOCC'
    end
    object CD_CTE_OCCDEMI: TDateField
      FieldName = 'DEMI'
    end
  end
  object DS_CD_CTE_OCC: TDataSource
    DataSet = CD_CTE_OCC
    Left = 160
    Top = 720
  end
end
