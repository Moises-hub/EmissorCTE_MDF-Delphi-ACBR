object DM: TDM
  OldCreateOrder = False
  Height = 710
  Width = 1416
  object Mdfe_dadosTable: TSQLDataSet
    CommandText = 'select * from MDFE_DADOS'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 56
    Top = 72
  end
  object Prov_dadosTable: TDataSetProvider
    DataSet = Mdfe_dadosTable
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 48
    Top = 128
  end
  object CD_Mdf_Dados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_dadosTable'
    AfterOpen = CD_Mdf_DadosAfterOpen
    BeforeInsert = CD_Mdf_DadosBeforeInsert
    AfterInsert = CD_Mdf_DadosAfterInsert
    BeforeDelete = CD_Mdf_DadosBeforeDelete
    BeforeApplyUpdates = CD_Mdf_DadosBeforeApplyUpdates
    Left = 48
    Top = 184
    object CD_Mdf_DadosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_Mdf_DadosID_NFE: TFMTBCDField
      FieldName = 'ID_NFE'
      Precision = 18
      Size = 0
    end
    object CD_Mdf_DadosMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object CD_Mdf_DadosSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object CD_Mdf_DadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CD_Mdf_DadosCODMDF: TIntegerField
      FieldName = 'CODMDF'
    end
    object CD_Mdf_DadosDATA: TDateField
      FieldName = 'DATA'
    end
    object CD_Mdf_DadosHORA: TTimeField
      FieldName = 'HORA'
    end
    object CD_Mdf_DadosUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_Mdf_DadosTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      Size = 25
    end
    object CD_Mdf_DadosUF_EMIT: TIntegerField
      FieldName = 'UF_EMIT'
    end
    object CD_Mdf_DadosMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 25
    end
    object CD_Mdf_DadosFORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      Size = 25
    end
    object CD_Mdf_DadosUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object CD_Mdf_DadosCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object CD_Mdf_DadosVEI_UF: TStringField
      FieldName = 'VEI_UF'
      Size = 2
    end
    object CD_Mdf_DadosVEI_RNTRC: TStringField
      FieldName = 'VEI_RNTRC'
      Size = 15
    end
    object CD_Mdf_DadosVEI_CIOT: TStringField
      FieldName = 'VEI_CIOT'
      Size = 8
    end
    object CD_Mdf_DadosCOD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
    end
    object CD_Mdf_DadosCOD_INT_VEIUC: TStringField
      FieldName = 'COD_INT_VEIUC'
      Size = 40
    end
    object CD_Mdf_DadosVEI_TIPO_CARROCERIA: TStringField
      FieldName = 'VEI_TIPO_CARROCERIA'
      Size = 30
    end
    object CD_Mdf_DadosVEI_TIPO_RODADO: TStringField
      FieldName = 'VEI_TIPO_RODADO'
      Size = 30
    end
    object CD_Mdf_DadosVEI_RENAVAN: TStringField
      FieldName = 'VEI_RENAVAN'
      Size = 50
    end
    object CD_Mdf_DadosVEI_TARA: TFMTBCDField
      FieldName = 'VEI_TARA'
      Precision = 18
      Size = 2
    end
    object CD_Mdf_DadosVEI_CAPACIDADE: TFMTBCDField
      FieldName = 'VEI_CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object CD_Mdf_DadosVEI_CAPC_M3: TFMTBCDField
      FieldName = 'VEI_CAPC_M3'
      Precision = 18
      Size = 2
    end
    object CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO: TIntegerField
      FieldName = 'TOT_QNT_NFE_REL_MANIFESTRO'
    end
    object CD_Mdf_DadosTOT_VALOR_TOTAL_MERCADORIA: TFloatField
      FieldName = 'TOT_VALOR_TOTAL_MERCADORIA'
      currency = True
    end
    object CD_Mdf_DadosTOT_CODUNIDADE: TStringField
      FieldName = 'TOT_CODUNIDADE'
      Size = 5
    end
    object CD_Mdf_DadosTOT_PESO_BRUTO: TFloatField
      FieldName = 'TOT_PESO_BRUTO'
    end
    object CD_Mdf_DadosUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Size = 2
    end
    object CD_Mdf_DadosSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object CD_Mdf_DadosMDF_PROTOCOLO: TStringField
      FieldName = 'MDF_PROTOCOLO'
      Size = 50
    end
    object CD_Mdf_DadosMDF_D_ENVIO: TSQLTimeStampField
      FieldName = 'MDF_D_ENVIO'
    end
    object CD_Mdf_DadosOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object CD_Mdf_DadosOBS2: TStringField
      FieldName = 'OBS2'
      Size = 500
    end
    object CD_Mdf_DadosD_ENCERRA: TSQLTimeStampField
      FieldName = 'D_ENCERRA'
    end
    object CD_Mdf_DadosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_Mdf_DadosVEI_PLACA: TStringField
      FieldName = 'VEI_PLACA'
      Size = 9
    end
    object CD_Mdf_DadosTIPO_EMISSOR: TIntegerField
      FieldName = 'TIPO_EMISSOR'
    end
    object CD_Mdf_DadosCNPJ_TOMADOR: TStringField
      FieldName = 'CNPJ_TOMADOR'
    end
    object CD_Mdf_DadosPRODPRED_TPCARGA: TIntegerField
      FieldName = 'PRODPRED_TPCARGA'
    end
    object CD_Mdf_DadosPRODPRED_DESCRICAO: TStringField
      FieldName = 'PRODPRED_DESCRICAO'
      Size = 50
    end
    object CD_Mdf_DadosPRODPRED_CEAN: TStringField
      FieldName = 'PRODPRED_CEAN'
      Size = 40
    end
    object CD_Mdf_DadosPRODPRED_NCM: TStringField
      FieldName = 'PRODPRED_NCM'
    end
    object CD_Mdf_DadosPRODPRED_CEPCARRE: TStringField
      FieldName = 'PRODPRED_CEPCARRE'
      EditMask = '99999-999;1;_'
      Size = 8
    end
    object CD_Mdf_DadosPRODPRED_CEPDESCARRE: TStringField
      FieldName = 'PRODPRED_CEPDESCARRE'
      EditMask = '99999-999;1;_'
      Size = 8
    end
  end
  object DS_CD_Dados: TDataSource
    DataSet = CD_Mdf_Dados
    Left = 48
    Top = 248
  end
  object PROV_Mdfe_l_carregamentoTable: TDataSetProvider
    DataSet = Mdfe_l_carregamentoTable
    Left = 144
    Top = 136
  end
  object CD_Mdfe_l_carregamentoTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'PROV_Mdfe_l_carregamentoTable'
    BeforeInsert = CD_Mdfe_l_carregamentoTableBeforeInsert
    AfterInsert = CD_Mdfe_l_carregamentoTableAfterInsert
    Left = 144
    Top = 184
    object CD_Mdfe_l_carregamentoTableID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CD_Mdfe_l_carregamentoTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Mdfe_l_carregamentoTableUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_Mdfe_l_carregamentoTableMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object CD_Mdfe_l_carregamentoTableCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
  end
  object DS_Mdfe_l_carregamentoTable: TDataSource
    DataSet = CD_Mdfe_l_carregamentoTable
    Left = 144
    Top = 248
  end
  object Mdfe_l_carregamentoTable: TSQLDataSet
    CommandText = 'MDFE_L_CARREGAMENTO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 144
    Top = 72
  end
  object Mdfe_condutorTable: TSQLDataSet
    CommandText = 'MDFE_CONDUTOR'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MDFE'
        ParamType = ptInput
        Value = 61
      end>
    SQLConnection = MdfeConnection
    Left = 576
    Top = 72
  end
  object prov_Mdfe_condutorTable: TDataSetProvider
    DataSet = Mdfe_condutorTable
    Left = 576
    Top = 136
  end
  object CD_Mdfe_condutorTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'prov_Mdfe_condutorTable'
    BeforeInsert = CD_Mdfe_condutorTableBeforeInsert
    AfterInsert = CD_Mdfe_condutorTableAfterInsert
    Left = 576
    Top = 184
    object CD_Mdfe_condutorTableID: TIntegerField
      FieldName = 'ID'
    end
    object CD_Mdfe_condutorTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Mdfe_condutorTableNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_Mdfe_condutorTableCPF: TStringField
      FieldName = 'CPF'
    end
  end
  object DS_Mdfe_condutorTable: TDataSource
    DataSet = CD_Mdfe_condutorTable
    Left = 576
    Top = 248
  end
  object Mdfe_v_reboqueTable: TSQLDataSet
    CommandText = 'MDFE_V_REBOQUE'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MDFE'
        ParamType = ptInput
        Value = 61
      end>
    SQLConnection = MdfeConnection
    Left = 712
    Top = 72
  end
  object PROV_Mdfe_v_reboqueTable: TDataSetProvider
    DataSet = Mdfe_v_reboqueTable
    Left = 712
    Top = 136
  end
  object CD_Mdfe_v_reboqueTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'PROV_Mdfe_v_reboqueTable'
    BeforeInsert = CD_Mdfe_v_reboqueTableBeforeInsert
    AfterInsert = CD_Mdfe_v_reboqueTableAfterInsert
    BeforePost = CD_Mdfe_v_reboqueTableBeforePost
    Left = 712
    Top = 184
    object CD_Mdfe_v_reboqueTableID: TIntegerField
      FieldName = 'ID'
    end
    object CD_Mdfe_v_reboqueTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Mdfe_v_reboqueTableCOD_INT_VEIUC: TStringField
      FieldName = 'COD_INT_VEIUC'
      Size = 40
    end
    object CD_Mdfe_v_reboqueTableRENAVAN: TStringField
      FieldName = 'RENAVAN'
      Size = 30
    end
    object CD_Mdfe_v_reboqueTableUF_LICENCIAMENTO: TStringField
      FieldName = 'UF_LICENCIAMENTO'
      Size = 2
    end
    object CD_Mdfe_v_reboqueTableTARA: TFMTBCDField
      FieldName = 'TARA'
      Precision = 18
      Size = 2
    end
    object CD_Mdfe_v_reboqueTableCAPACIDADE: TFMTBCDField
      FieldName = 'CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object CD_Mdfe_v_reboqueTableCAPC_M3: TFMTBCDField
      FieldName = 'CAPC_M3'
      Precision = 18
      Size = 2
    end
    object CD_Mdfe_v_reboqueTableCARROCERIA: TStringField
      FieldName = 'CARROCERIA'
    end
    object CD_Mdfe_v_reboqueTablePLACA: TStringField
      FieldName = 'PLACA'
      Size = 9
    end
  end
  object DS_Mdfe_v_reboqueTable: TDataSource
    DataSet = CD_Mdfe_v_reboqueTable
    Left = 712
    Top = 248
  end
  object Mdfe_uf_percursoTable: TSQLDataSet
    CommandText = 'MDFE_UF_PERCURSO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MDFE'
        ParamType = ptInput
        Value = 61
      end>
    SQLConnection = MdfeConnection
    Left = 296
    Top = 80
  end
  object Mdfe_l_descarregamentoTable: TSQLDataSet
    CommandText = 'MDFE_L_DESCARREGAMENTO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MDFE'
        ParamType = ptInput
        Value = 61
      end>
    SQLConnection = MdfeConnection
    Left = 456
    Top = 80
  end
  object Prov_Mdfe_uf_percursoTable: TDataSetProvider
    DataSet = Mdfe_uf_percursoTable
    Left = 296
    Top = 136
  end
  object CD_Mdfe_uf_percursoTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_Mdfe_uf_percursoTable'
    BeforeInsert = CD_Mdfe_uf_percursoTableBeforeInsert
    AfterInsert = CD_Mdfe_uf_percursoTableAfterInsert
    Left = 296
    Top = 184
    object CD_Mdfe_uf_percursoTableID: TIntegerField
      FieldName = 'ID'
    end
    object CD_Mdfe_uf_percursoTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Mdfe_uf_percursoTableUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object DS_Mdfe_uf_percursoTable: TDataSource
    DataSet = CD_Mdfe_uf_percursoTable
    Left = 296
    Top = 248
  end
  object Prov_Mdfe_l_descarregamentoTable: TDataSetProvider
    DataSet = Mdfe_l_descarregamentoTable
    Left = 448
    Top = 144
  end
  object CD_Mdfe_l_descarregamentoTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_Mdfe_l_descarregamentoTable'
    BeforeInsert = CD_Mdfe_l_descarregamentoTableBeforeInsert
    AfterInsert = CD_Mdfe_l_descarregamentoTableAfterInsert
    Left = 448
    Top = 192
    object CD_Mdfe_l_descarregamentoTableID: TIntegerField
      FieldName = 'ID'
    end
    object CD_Mdfe_l_descarregamentoTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Mdfe_l_descarregamentoTableUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_Mdfe_l_descarregamentoTableMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object CD_Mdfe_l_descarregamentoTableCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
  end
  object DS_Mdfe_l_descarregamentoTable: TDataSource
    DataSet = CD_Mdfe_l_descarregamentoTable
    Left = 448
    Top = 248
  end
  object ID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id(GEN_MDFE_L_CARREGAMENTO_ID,1) from rdb$database')
    SQLConnection = MdfeConnection
    Left = 160
    Top = 8
    object IDGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      Required = True
    end
  end
  object Nfe_mdfTable: TSQLDataSet
    CommandText = 'SELECT * FROM NFE_MDF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 856
    Top = 80
  end
  object PROV_Nfe_mdfTable: TDataSetProvider
    DataSet = Nfe_mdfTable
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 848
    Top = 136
  end
  object CD_Nfe_mdfTable: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'PROV_Nfe_mdfTable'
    BeforeInsert = CD_Nfe_mdfTableBeforeInsert
    AfterInsert = CD_Nfe_mdfTableAfterInsert
    AfterDelete = CD_Nfe_mdfTableAfterDelete
    Left = 848
    Top = 184
    object CD_Nfe_mdfTableID: TIntegerField
      FieldName = 'ID'
    end
    object CD_Nfe_mdfTableID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_Nfe_mdfTableCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 80
    end
    object CD_Nfe_mdfTableQNT_UN_TRANSP: TFMTBCDField
      FieldName = 'QNT_UN_TRANSP'
      Precision = 18
      Size = 2
    end
    object CD_Nfe_mdfTableN_DA_NFE: TLargeintField
      FieldName = 'N_DA_NFE'
    end
    object CD_Nfe_mdfTablePESO: TFloatField
      FieldName = 'PESO'
    end
    object CD_Nfe_mdfTableVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object CD_Nfe_mdfTableCOD_MUN: TIntegerField
      FieldName = 'COD_MUN'
    end
    object CD_Nfe_mdfTableID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
    end
    object CD_Nfe_mdfTableCHAVE_REF: TStringField
      FieldName = 'CHAVE_REF'
      Size = 44
    end
  end
  object DS_Nfe_mdfTable: TDataSource
    DataSet = CD_Nfe_mdfTable
    Left = 848
    Top = 248
  end
  object cd_PRO_Nota_fiscalTable: TSQLDataSet
    CommandText = 
      'select'#13#10'nota_fiscal.nfe_chave,'#13#10'nota_fiscal.quantidade,'#13#10'nota_fi' +
      'scal.nota_fiscal,'#13#10'nota_fiscal.peso_bruto,'#13#10'nota_fiscal.valor_pr' +
      'odutos,'#13#10'clientes.nome,'#13#10'(CASE   when (nota_fiscal.id_propriedad' +
      'e IS NOT NULL) THEN  r2.cidade||'#39'-'#39'||R2.uf||'#39' IBGE '#39'||R2.codigo_' +
      'ibge'#13#10'        WHEN (nota_fiscal.id_propriedade IS NULL) THEN r1.' +
      'cidade||'#39'-'#39'||R1.uf||'#39' IBGE '#39'||R1.codigo_ibge END) AS CIDADE,'#13#10#13#10 +
      '(CASE   when (nota_fiscal.id_propriedade IS NOT NULL) THEN  R2.c' +
      'odigo_ibge'#13#10'        WHEN (nota_fiscal.id_propriedade IS NULL) TH' +
      'EN R1.codigo_ibge END) AS IBGE,'#13#10#13#10'(CASE   when (nota_fiscal.id_' +
      'propriedade IS NOT NULL) THEN  r2.id_regiao'#13#10'        WHEN (nota_' +
      'fiscal.id_propriedade IS NULL) THEN r1.id_regiao END) AS id_regi' +
      'ao'#13#10'from nota_fiscal'#13#10'inner join clientes on(clientes.id_cliente' +
      ' = nota_fiscal.id_cliente)'#13#10'left join clientes_propriedades on(c' +
      'lientes.id_cliente = clientes_propriedades.id_cliente) and (clie' +
      'ntes_propriedades.id_propriedade = nota_fiscal.id_propriedade)'#13#10 +
      'left join regioes r1 on(r1.id_regiao = clientes.id_regiao)'#13#10'left' +
      ' join regioes r2 on(r2.id_regiao = clientes_propriedades.id_regi' +
      'ao)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 944
    Top = 80
  end
  object PRO_Nota_fiscalTable: TDataSetProvider
    DataSet = cd_PRO_Nota_fiscalTable
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 936
    Top = 136
  end
  object DS_Nota_fiscalTable: TDataSource
    Left = 952
    Top = 248
  end
  object Emitente: TSQLDataSet
    CommandText = 
      'select  EMPRESA.*,  REGIOES.CODIGO_IBGE, regioes.cidade, regioes' +
      '.uf from empresa'#13#10'inner join regioes on(regioes.id_regiao = empr' +
      'esa.id_regiao)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 256
    Top = 8
    object EmitenteID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object EmitenteTIPO_ATIVIDADE: TSmallintField
      FieldName = 'TIPO_ATIVIDADE'
    end
    object EmitenteNOME_EMPRESA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object EmitenteRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object EmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object EmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object EmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object EmitenteID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Precision = 18
      Size = 0
    end
    object EmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object EmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object EmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object EmitenteWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object EmitenteFONE1: TStringField
      FieldName = 'FONE1'
      Size = 18
    end
    object EmitenteFONE2: TStringField
      FieldName = 'FONE2'
      Size = 18
    end
    object EmitenteFAX: TStringField
      FieldName = 'FAX'
      Size = 18
    end
    object EmitentePRACA: TStringField
      FieldName = 'PRACA'
      Size = 50
    end
    object EmitenteLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object EmitenteCHAVE1: TStringField
      FieldName = 'CHAVE1'
      Size = 14
    end
    object EmitenteCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 14
    end
    object EmitenteIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object EmitenteTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object EmitenteSMTP_ENDERECO: TStringField
      FieldName = 'SMTP_ENDERECO'
      Size = 100
    end
    object EmitenteSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object EmitenteSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
    end
    object EmitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object EmitenteSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object EmitenteCONTRIB_IPI: TSmallintField
      FieldName = 'CONTRIB_IPI'
    end
    object EmitenteTIPO_MF: TSmallintField
      FieldName = 'TIPO_MF'
    end
    object EmitenteSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object EmitenteREG_TRIBUTARIO: TSmallintField
      FieldName = 'REG_TRIBUTARIO'
    end
    object EmitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object EmitenteIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object EmitenteSMTP_SSL: TSmallintField
      FieldName = 'SMTP_SSL'
    end
    object EmitenteCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object EmitenteCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object EmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object EmitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object DS_Emitente: TDataSource
    DataSet = Emitente
    Left = 320
    Top = 8
  end
  object REGIAO: TSQLTable
    IndexFieldNames = 'ID_REGIAO'
    MasterFields = 'ID_REGIAO'
    MasterSource = DS_Emitente
    MaxBlobSize = -1
    SQLConnection = MdfeConnection
    TableName = 'REGIOES'
    Left = 392
    Top = 8
    object REGIAOID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Required = True
      Precision = 18
      Size = 0
    end
    object REGIAOCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object REGIAODISTRITO: TStringField
      FieldName = 'DISTRITO'
      Size = 50
    end
    object REGIAOUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object REGIAOID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object REGIAOUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object REGIAODATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object REGIAOLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 50
    end
    object REGIAOCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object REGIAODATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object REGIAOID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object REGIAOPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object MDFe_Config: TSQLDataSet
    CommandText = 'select *  from MDFE_CONFIG'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 1064
    Top = 80
  end
  object Pro_MdfeConfig: TDataSetProvider
    DataSet = MDFe_Config
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1056
    Top = 136
  end
  object DS_Mdfe_Config: TDataSource
    DataSet = CD_MDFe_Config
    Left = 1056
    Top = 248
  end
  object Clientes: TSQLDataSet
    CommandText = 
      'select id_cliente, nome, cpf_cnpj, MOTORISTA from  CLIENTES'#13#10'whe' +
      're pessoa =1 and id_cliente <> 1'#13#10' rows 30'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 56
    Top = 312
  end
  object Prov_Clientes: TDataSetProvider
    DataSet = Clientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 48
    Top = 368
  end
  object DS_Clientes: TDataSource
    DataSet = CD_Table_Clientes
    Left = 48
    Top = 480
  end
  object CD_Table_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Clientes'
    Left = 48
    Top = 424
    object CD_Table_ClientesID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_Table_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_Table_ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
  end
  object MdfeConnection: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'Database=database.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
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
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    TableScope = []
    AfterConnect = MdfeConnectionAfterConnect
    Left = 56
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from nfe_mdf where ID_MDFE =:i AND cod_mun =:C'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'i'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C'
        ParamType = ptInput
      end>
    SQLConnection = MdfeConnection
    Left = 216
    Top = 312
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 208
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = Query_UF
    Left = 208
    Top = 480
  end
  object Query_UF: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from nfe_mdf where ID_MDFE =:i '
    Params = <
      item
        DataType = ftInteger
        Name = 'i'
        ParamType = ptInput
      end>
    ProviderName = 'DataSetProvider1'
    Left = 208
    Top = 424
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'CLIENTES'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 320
    Top = 312
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 312
    Top = 368
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 312
    Top = 424
    object ClientDataSet1ID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object ClientDataSet1ID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object ClientDataSet1NASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object ClientDataSet1ID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
    end
    object ClientDataSet1CLASSIFICACAO: TSmallintField
      FieldName = 'CLASSIFICACAO'
    end
    object ClientDataSet1LIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object ClientDataSet1PESSOA: TSmallintField
      FieldName = 'PESSOA'
    end
    object ClientDataSet1IE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object ClientDataSet1RG: TStringField
      FieldName = 'RG'
    end
    object ClientDataSet1ORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 18
    end
    object ClientDataSet1DATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object ClientDataSet1ULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object ClientDataSet1EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ClientDataSet1ENVIA_EMAIL: TSmallintField
      FieldName = 'ENVIA_EMAIL'
    end
    object ClientDataSet1ENVIA_MALA: TSmallintField
      FieldName = 'ENVIA_MALA'
    end
    object ClientDataSet1VISITA: TSmallintField
      FieldName = 'VISITA'
    end
    object ClientDataSet1OBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object ClientDataSet1SEXO: TSmallintField
      FieldName = 'SEXO'
    end
    object ClientDataSet1CODIGO_ANTERIOR: TIntegerField
      FieldName = 'CODIGO_ANTERIOR'
    end
    object ClientDataSet1TIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ClientDataSet1SALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1NATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object ClientDataSet1LOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object ClientDataSet1SENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object ClientDataSet1DIA_VENCIMENTO: TSmallintField
      FieldName = 'DIA_VENCIMENTO'
    end
    object ClientDataSet1DIAS_ANTES: TSmallintField
      FieldName = 'DIAS_ANTES'
    end
    object ClientDataSet1NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object ClientDataSet1ID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ClientDataSet1SUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object ClientDataSet1ATUALIZADO: TSmallintField
      FieldName = 'ATUALIZADO'
    end
    object ClientDataSet1CLIENTE_ANTERIOR: TSmallintField
      FieldName = 'CLIENTE_ANTERIOR'
    end
    object ClientDataSet1IM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object ClientDataSet1EMISSAO_RG: TDateField
      FieldName = 'EMISSAO_RG'
    end
    object ClientDataSet1SITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object ClientDataSet1ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ClientDataSet1USER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object ClientDataSet1DATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object ClientDataSet1DATA_AF: TSQLTimeStampField
      FieldName = 'DATA_AF'
    end
    object ClientDataSet1AUT_CONDICIONAL: TSmallintField
      FieldName = 'AUT_CONDICIONAL'
    end
    object ClientDataSet1REGISTRO: TStringField
      FieldName = 'REGISTRO'
      Size = 50
    end
    object ClientDataSet1ID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object ClientDataSet1ENVIA_RELATO: TSmallintField
      FieldName = 'ENVIA_RELATO'
    end
    object ClientDataSet1DATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object ClientDataSet1USER_IN: TIntegerField
      FieldName = 'USER_IN'
    end
    object ClientDataSet1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ClientDataSet1SELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object ClientDataSet1ID_EMISSOR: TIntegerField
      FieldName = 'ID_EMISSOR'
    end
    object ClientDataSet1TAG: TSmallintField
      FieldName = 'TAG'
    end
    object ClientDataSet1VALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object ClientDataSet1VALIDADE_LIMITE: TDateField
      FieldName = 'VALIDADE_LIMITE'
    end
    object ClientDataSet1VENDA_VISTA: TSmallintField
      FieldName = 'VENDA_VISTA'
    end
    object ClientDataSet1VENDA_PRAZO: TSmallintField
      FieldName = 'VENDA_PRAZO'
    end
    object ClientDataSet1NUMERO_CONSULTA: TStringField
      FieldName = 'NUMERO_CONSULTA'
    end
    object ClientDataSet1EMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 50
    end
    object ClientDataSet1CODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object ClientDataSet1AN_DATA_HORA: TSQLTimeStampField
      FieldName = 'AN_DATA_HORA'
    end
    object ClientDataSet1AN_FATURAMENTO: TFMTBCDField
      FieldName = 'AN_FATURAMENTO'
      Precision = 18
      Size = 2
    end
    object ClientDataSet1AN_ATRASO: TIntegerField
      FieldName = 'AN_ATRASO'
    end
    object ClientDataSet1AN_CADASTRO: TIntegerField
      FieldName = 'AN_CADASTRO'
    end
    object ClientDataSet1AN_VENCIDO: TIntegerField
      FieldName = 'AN_VENCIDO'
    end
    object ClientDataSet1AN_INATIVO: TIntegerField
      FieldName = 'AN_INATIVO'
    end
    object ClientDataSet1ID_TABELA: TIntegerField
      FieldName = 'ID_TABELA'
    end
    object ClientDataSet1ENVIA_SMS: TSmallintField
      FieldName = 'ENVIA_SMS'
    end
    object ClientDataSet1STATUS_ANTERIOR: TSmallintField
      FieldName = 'STATUS_ANTERIOR'
    end
    object ClientDataSet1EMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 312
    Top = 488
  end
  object MDF_Cad_Usu: TSQLDataSet
    CommandText = 'select *  from  FUNCIONARIOS'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 1176
    Top = 80
  end
  object Prov_Cad_Usu: TDataSetProvider
    DataSet = MDF_Cad_Usu
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1176
    Top = 136
  end
  object DS_Cli_Cad_Usu: TDataSource
    DataSet = Cli_Cad_Usu
    Left = 1176
    Top = 248
  end
  object Cli_Cad_Usu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Cad_Usu'
    BeforeInsert = Cli_Cad_UsuBeforeInsert
    AfterInsert = Cli_Cad_UsuAfterInsert
    AfterPost = Cli_Cad_UsuAfterPost
    AfterDelete = Cli_Cad_UsuAfterDelete
    Left = 1176
    Top = 192
    object Cli_Cad_UsuID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object Cli_Cad_UsuNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cli_Cad_UsuENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object Cli_Cad_UsuBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Cli_Cad_UsuCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object Cli_Cad_UsuCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Cli_Cad_UsuCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object Cli_Cad_UsuID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
    end
    object Cli_Cad_UsuCARGO: TStringField
      FieldName = 'CARGO'
      Size = 40
    end
    object Cli_Cad_UsuID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object Cli_Cad_UsuSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object Cli_Cad_UsuTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object Cli_Cad_UsuRG: TStringField
      FieldName = 'RG'
    end
    object Cli_Cad_UsuCNH: TStringField
      FieldName = 'CNH'
    end
    object Cli_Cad_UsuNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object Cli_Cad_UsuDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
    object Cli_Cad_UsuDATA_DEMISSAO: TDateField
      FieldName = 'DATA_DEMISSAO'
    end
    object Cli_Cad_UsuFORMACAO: TSmallintField
      FieldName = 'FORMACAO'
    end
    object Cli_Cad_UsuESTADO_CIVIL: TSmallintField
      FieldName = 'ESTADO_CIVIL'
    end
    object Cli_Cad_UsuFONE: TStringField
      FieldName = 'FONE'
      Size = 18
    end
    object Cli_Cad_UsuCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 18
    end
    object Cli_Cad_UsuOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object Cli_Cad_UsuSENHA: TStringField
      FieldName = 'SENHA'
      Size = 25
    end
    object Cli_Cad_UsuCOMISSAO: TSingleField
      FieldName = 'COMISSAO'
    end
    object Cli_Cad_UsuCOM_PEDIDO: TSmallintField
      FieldName = 'COM_PEDIDO'
    end
    object Cli_Cad_UsuCOM_VENDEDOR: TSmallintField
      FieldName = 'COM_VENDEDOR'
    end
    object Cli_Cad_UsuCOM_CATEGORIA: TSmallintField
      FieldName = 'COM_CATEGORIA'
    end
    object Cli_Cad_UsuCOM_PRODUTO: TSmallintField
      FieldName = 'COM_PRODUTO'
    end
    object Cli_Cad_UsuMETA_DIARIA: TFMTBCDField
      FieldName = 'META_DIARIA'
      Precision = 18
      Size = 2
    end
    object Cli_Cad_UsuMETA_MENSAL: TFMTBCDField
      FieldName = 'META_MENSAL'
      Precision = 18
      Size = 2
    end
    object Cli_Cad_UsuSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object Cli_Cad_UsuID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
    end
    object Cli_Cad_UsuCOMISSAO2: TSingleField
      FieldName = 'COMISSAO2'
    end
    object Cli_Cad_UsuPESSOA: TSmallintField
      FieldName = 'PESSOA'
    end
    object Cli_Cad_UsuREGISTRO: TStringField
      FieldName = 'REGISTRO'
    end
    object Cli_Cad_UsuREGISTRO_CR: TStringField
      FieldName = 'REGISTRO_CR'
      Size = 2
    end
    object Cli_Cad_UsuREGISTRO_VT: TStringField
      FieldName = 'REGISTRO_VT'
    end
    object Cli_Cad_UsuEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Cli_Cad_UsuCOM_PEDIDOI: TSmallintField
      FieldName = 'COM_PEDIDOI'
    end
    object Cli_Cad_UsuID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object Cli_Cad_UsuCOMISSAOS: TSingleField
      FieldName = 'COMISSAOS'
    end
    object Cli_Cad_UsuAPELIDO: TStringField
      FieldName = 'APELIDO'
    end
    object Cli_Cad_UsuID_MOBILE: TIntegerField
      FieldName = 'ID_MOBILE'
    end
  end
  object MDF_Log: TSQLDataSet
    CommandText = 'select * from MDF_LOG'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 136
    Top = 312
  end
  object Prov_MDF_Log: TDataSetProvider
    DataSet = MDF_Log
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 368
  end
  object DS_Cad_Log: TDataSource
    DataSet = Cli_Cad_Log
    Left = 136
    Top = 480
  end
  object Cli_Cad_Log: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_MDF_Log'
    AfterInsert = Cli_Cad_LogAfterInsert
    Left = 136
    Top = 424
    object Cli_Cad_LogDATA: TDateField
      FieldName = 'DATA'
    end
    object Cli_Cad_LogHORA: TTimeField
      FieldName = 'HORA'
    end
    object Cli_Cad_LogPROCESSO: TStringField
      FieldName = 'PROCESSO'
      Size = 100
    end
    object Cli_Cad_LogDOC: TIntegerField
      FieldName = 'DOC'
    end
    object Cli_Cad_LogCOMPUTADOR: TStringField
      FieldName = 'COMPUTADOR'
      Size = 50
    end
    object Cli_Cad_LogDADOS: TMemoField
      FieldName = 'DADOS'
      BlobType = ftMemo
      Size = 1
    end
    object Cli_Cad_LogID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cli_Cad_LogNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cli_Cad_LogID_USER: TIntegerField
      FieldName = 'ID_USER'
    end
    object Cli_Cad_LogID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object Cli_Cad_LogMDF_CTE: TIntegerField
      FieldName = 'MDF_CTE'
    end
  end
  object SQL_MDF_Seguro: TSQLDataSet
    CommandText = 'select * from mdf_seguro'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 416
    Top = 320
  end
  object Prov_Seguro: TDataSetProvider
    DataSet = SQL_MDF_Seguro
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 408
    Top = 376
  end
  object DS_MDF_Seguro: TDataSource
    DataSet = CD_MDF_Seguro
    Left = 408
    Top = 488
  end
  object CD_MDF_Seguro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDF'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_Seguro'
    BeforeInsert = CD_MDF_SeguroBeforeInsert
    AfterInsert = CD_MDF_SeguroAfterInsert
    BeforeDelete = CD_MDF_SeguroBeforeDelete
    Left = 408
    Top = 432
    object CD_MDF_SeguroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_MDF_SeguroID_MDF: TIntegerField
      FieldName = 'ID_MDF'
    end
    object CD_MDF_SeguroRESPSEGURO: TStringField
      FieldName = 'RESPSEGURO'
    end
    object CD_MDF_SeguroSEGURADORA: TStringField
      FieldName = 'SEGURADORA'
      Size = 30
    end
    object CD_MDF_SeguroCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
    end
    object CD_MDF_SeguroNAPOLICE: TStringField
      FieldName = 'NAPOLICE'
    end
    object CD_MDF_SeguroCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object SQL_MDF_Averbacao: TSQLDataSet
    CommandText = 'select * from MDF_SEGURO_AVERB'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 536
    Top = 320
  end
  object Prov_MDF_Averb: TDataSetProvider
    DataSet = SQL_MDF_Averbacao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 528
    Top = 376
  end
  object DS_Seguro_Averbacao: TDataSource
    DataSet = CD_MDF_Averbacao
    Left = 528
    Top = 488
  end
  object CD_MDF_Averbacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_MDF_Averb'
    BeforeInsert = CD_MDF_AverbacaoBeforeInsert
    AfterInsert = CD_MDF_AverbacaoAfterInsert
    Left = 528
    Top = 432
    object CD_MDF_AverbacaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_MDF_AverbacaoID_SEGURO: TIntegerField
      FieldName = 'ID_SEGURO'
    end
    object CD_MDF_AverbacaoAVERBA: TStringField
      FieldName = 'AVERBA'
      Size = 40
    end
  end
  object Query_Delete: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id(GEN_MDFE_L_CARREGAMENTO_ID,1) from rdb$database')
    SQLConnection = MdfeConnection
    Left = 512
    Top = 8
  end
  object DS_Script: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 856
    Top = 8
  end
  object Query: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select first 1 CTE_MDF_CONFIG.versao from CTE_MDF_CONFIG')
    SQLConnection = MdfeConnection
    Left = 120
    Top = 8
  end
  object SQL_CTE: TSQLDataSet
    CommandText = 'select *  from MDF_DOCCTE'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 656
    Top = 320
  end
  object Prov_SQL_CTE: TDataSetProvider
    DataSet = SQL_CTE
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 648
    Top = 376
  end
  object DS_CDMDF_CTE: TDataSource
    DataSet = CD_MDF_CTE
    Left = 648
    Top = 488
  end
  object CD_MDF_CTE: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MDFE'
    MasterFields = 'ID'
    MasterSource = DS_CD_Dados
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_SQL_CTE'
    BeforeInsert = CD_MDF_CTEBeforeInsert
    AfterInsert = CD_MDF_CTEAfterInsert
    Left = 648
    Top = 432
    object CD_MDF_CTEID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_MDF_CTEID_MDFE: TIntegerField
      FieldName = 'ID_MDFE'
    end
    object CD_MDF_CTECHAVE_CTE: TStringField
      FieldName = 'CHAVE_CTE'
      Size = 80
    end
    object CD_MDF_CTEVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object CD_MDF_CTEPESO: TFloatField
      FieldName = 'PESO'
    end
    object CD_MDF_CTECOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
    end
  end
  object CTE_MDF: TSQLDataSet
    CommandText = 'select  * from CTE_MDF_CONFIG'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_EMPRESA'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = MdfeConnection
    Left = 1280
    Top = 80
  end
  object DS_CD_CTE_MDF: TDataSource
    DataSet = CD_CTE_MDF
    Left = 1280
    Top = 248
  end
  object Prov_CTE_MDF: TDataSetProvider
    DataSet = CTE_MDF
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1280
    Top = 128
  end
  object CD_CTE_MDF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE_MDF'
    Left = 1280
    Top = 192
    object CD_CTE_MDFMODULO: TIntegerField
      FieldName = 'MODULO'
    end
    object CD_CTE_MDFID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_CTE_MDFCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object CD_CTE_MDFULTIMA_ATUALIZA: TSQLTimeStampField
      FieldName = 'ULTIMA_ATUALIZA'
    end
    object CD_CTE_MDFVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
  end
  object SQL_Veiculos: TSQLDataSet
    CommandText = 'select * from MDFE_VEICULO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 760
    Top = 320
  end
  object Prov_Veiculos: TDataSetProvider
    DataSet = SQL_Veiculos
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 368
  end
  object CD_Veiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Veiculos'
    BeforeInsert = CD_VeiculosBeforeInsert
    AfterInsert = CD_VeiculosAfterInsert
    Left = 760
    Top = 424
    object CD_VeiculosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_VeiculosCOD_INT_VEIC: TStringField
      DisplayLabel = 'Cod Int. do Veiculo'
      FieldName = 'COD_INT_VEIC'
      Size = 40
    end
    object CD_VeiculosRENAVAM: TStringField
      DisplayLabel = 'Renavam'
      FieldName = 'RENAVAM'
      Size = 50
    end
    object CD_VeiculosTIPO_CARROCERIA: TStringField
      DisplayLabel = 'Tipo de Carroceria'
      FieldName = 'TIPO_CARROCERIA'
      Size = 30
    end
    object CD_VeiculosPLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Size = 9
    end
    object CD_VeiculosTARA: TFMTBCDField
      DisplayLabel = 'Tara'
      FieldName = 'TARA'
      Precision = 18
      Size = 2
    end
    object CD_VeiculosTIPO_RODADO: TStringField
      DisplayLabel = 'Tipo de Rodado'
      FieldName = 'TIPO_RODADO'
      Size = 30
    end
    object CD_VeiculosUF_LICENCIAMENTO: TStringField
      FieldName = 'UF_LICENCIAMENTO'
      Size = 2
    end
    object CD_VeiculosCAPACIDADE: TFMTBCDField
      FieldName = 'CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object CD_VeiculosCAPM3: TFMTBCDField
      FieldName = 'CAPM3'
      Precision = 18
      Size = 2
    end
    object CD_VeiculosRNTRC: TStringField
      FieldName = 'RNTRC'
      Size = 8
    end
  end
  object DS_Veiculos: TDataSource
    DataSet = CD_Veiculos
    Left = 760
    Top = 480
  end
  object SQL_CADMOTORISTA: TSQLDataSet
    CommandText = 
      'select MDFE_CADMOTORISTA.*,'#13#10'          clientes.nome,'#13#10'         ' +
      ' clientes.cpf_cnpj'#13#10'          from MDFE_CADMOTORISTA'#13#10'         l' +
      'eft join clientes on(clientes.id_cliente = MDFE_CADMOTORISTA.id_' +
      'motorista)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 864
    Top = 320
  end
  object PROV_CADMOTORISTA: TDataSetProvider
    DataSet = SQL_CADMOTORISTA
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 864
    Top = 368
  end
  object CD_CADMOTORISTA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROV_CADMOTORISTA'
    BeforeInsert = CD_CADMOTORISTABeforeInsert
    AfterInsert = CD_CADMOTORISTAAfterInsert
    AfterDelete = CD_CADMOTORISTAAfterDelete
    Left = 864
    Top = 424
    object CD_CADMOTORISTAID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_CADMOTORISTAID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object CD_CADMOTORISTAID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
    end
    object CD_CADMOTORISTANOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object CD_CADMOTORISTACPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
  end
  object DS_MOTORISTA: TDataSource
    DataSet = CD_CADMOTORISTA
    Left = 864
    Top = 480
  end
  object Query_Motorista: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  * from MDFE_CADMOTORISTA'
      'where id_veiculo =:p')
    SQLConnection = MdfeConnection
    Left = 976
    Top = 320
    object Query_MotoristaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Query_MotoristaID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object Query_MotoristaID_MOTORISTA: TIntegerField
      FieldName = 'ID_MOTORISTA'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 577
  end
  object Proc_MDF_CIOT: TFDStoredProc
    Connection = FDConnection1
    StoredProcName = 'MDFE_INSERE_CIOT'
    Left = 128
    Top = 576
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_MDFE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CNPJ'
        DataType = ftString
        ParamType = ptInput
        Size = 18
      end
      item
        Position = 4
        Name = 'CIOT'
        DataType = ftString
        ParamType = ptInput
        Size = 12
      end>
  end
  object Query_MDFE_Ciot: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select ciot,ciot_cnpj,'#39#39'as x from mdfe_ciot'
      'where id_mdfe =:f')
    Left = 240
    Top = 576
    ParamData = <
      item
        Name = 'F'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Query_MDFE_CiotCIOT: TStringField
      FieldName = 'CIOT'
      Origin = 'CIOT'
      Size = 12
    end
    object Query_MDFE_CiotCIOT_CNPJ: TStringField
      FieldName = 'CIOT_CNPJ'
      Origin = 'CIOT_CNPJ'
    end
    object Query_MDFE_CiotX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'X'
      Origin = 'X'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 0
    end
  end
  object DS_Query_MDFE_Ciot: TDataSource
    DataSet = Query_MDFE_Ciot
    Left = 240
    Top = 640
  end
  object CD_MDFe_Config: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pro_MdfeConfig'
    AfterInsert = CD_MDFe_ConfigAfterInsert
    AfterPost = CD_MDFe_ConfigAfterPost
    Left = 1056
    Top = 192
    object CD_MDFe_ConfigFORM_EMISSAO: TIntegerField
      FieldName = 'FORM_EMISSAO'
    end
    object CD_MDFe_ConfigLOGO: TStringField
      FieldName = 'LOGO'
      Size = 500
    end
    object CD_MDFe_ConfigPATHSALVAR: TStringField
      DisplayLabel = 'Caminho dos Arquivos'
      FieldName = 'PATHSALVAR'
      Size = 500
    end
    object CD_MDFe_ConfigIDUF: TIntegerField
      FieldName = 'IDUF'
    end
    object CD_MDFe_ConfigNUMERO: TIntegerField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'NUMERO'
    end
    object CD_MDFe_ConfigSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object CD_MDFe_ConfigMODELO: TStringField
      FieldName = 'MODELO'
      Size = 15
    end
    object CD_MDFe_ConfigTIPOAMB: TIntegerField
      FieldName = 'TIPOAMB'
    end
    object CD_MDFe_ConfigVERSAOXML: TStringField
      FieldName = 'VERSAOXML'
      Size = 10
    end
    object CD_MDFe_ConfigCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 50
    end
    object CD_MDFe_ConfigTIPODAMDFE: TIntegerField
      FieldName = 'TIPODAMDFE'
    end
    object CD_MDFe_ConfigVISUALIZAR: TStringField
      FieldName = 'VISUALIZAR'
      FixedChar = True
      Size = 10
    end
    object CD_MDFe_ConfigID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
  end
  object CD_Nota_FiscalTable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRO_Nota_fiscalTable'
    Left = 944
    Top = 192
  end
  object Query_Log: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'insert into MDF_LOG(id,'
      '                   id_user,'
      '                   data,'
      '                   hora,'
      '                   processo,'
      '                   doc,'
      '                   computador,'
      '                   nome)'
      
        '                   values((select gen_id(GEN_MDF_LOG_ID,1) from ' +
        'rdb$database),'
      '                          :id,'
      '                          current_date,'
      '                          current_time,'
      '                          :pro,'
      '                          :doc,'
      '                          :pc,'
      '                          :nome'
      '                          )')
    Left = 384
    Top = 568
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'PRO'
        ParamType = ptInput
      end
      item
        Name = 'DOC'
        ParamType = ptInput
      end
      item
        Name = 'PC'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object Rel_NF: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select count(*)as n_nf,sum(nfe_mdf.valor)as valor,cast(sum(nfe_m' +
        'df.peso) as numeric(15,2))as peso from nfe_mdf'
      'where id_mdfe =:m')
    Left = 464
    Top = 584
    ParamData = <
      item
        Name = 'M'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Rel_NFN_NF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_NF'
      Origin = 'N_NF'
      ProviderFlags = []
      ReadOnly = True
    end
    object Rel_NFPESO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO'
      Origin = 'PESO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Rel_NFVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
