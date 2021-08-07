object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 541
  Width = 1163
  object Mdfe_dadosTable: TSQLDataSet
    CommandText = 'MDFE_DADOS'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 53
    Top = 75
  end
  object CD_Mdf_Dados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_dadosTable'
    BeforeInsert = CD_Mdf_DadosBeforeInsert
    AfterInsert = CD_Mdf_DadosAfterInsert
    Left = 50
    Top = 184
    object CD_Mdf_DadosID: TIntegerField
      FieldName = 'ID'
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
      Size = 8
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
    object CD_Mdf_DadosVEI_PLACA: TStringField
      FieldName = 'VEI_PLACA'
      Size = 7
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
    Left = 146
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
    Left = 147
    Top = 74
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
    Top = 70
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
    Left = 578
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
    Left = 715
    Top = 75
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
    Left = 714
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
    object CD_Mdfe_v_reboqueTablePLACA: TStringField
      FieldName = 'PLACA'
      Size = 7
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
    Left = 295
    Top = 76
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
    Left = 453
    Top = 77
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
    Left = 298
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
    Left = 450
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
    CommandText = 'select * from NFE_MDF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 844
    Top = 77
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
    Left = 850
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
      EditFormat = '##.###,###Kg'
    end
    object CD_Nfe_mdfTableVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
  end
  object DS_Nfe_mdfTable: TDataSource
    DataSet = CD_Nfe_mdfTable
    Left = 848
    Top = 248
  end
  object cd_PRO_Nota_fiscalTable: TSQLDataSet
    CommandText = 'select * from NOTA_FISCAL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 940
    Top = 79
  end
  object PRO_Nota_fiscalTable: TDataSetProvider
    DataSet = cd_PRO_Nota_fiscalTable
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 936
    Top = 136
  end
  object DS_Nota_fiscalTable: TDataSource
    DataSet = CD_Nota_FiscalTable
    Left = 936
    Top = 248
  end
  object CD_Nota_FiscalTable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRO_Nota_fiscalTable'
    Left = 936
    Top = 192
    object CD_Nota_FiscalTableID_NOTA: TFMTBCDField
      FieldName = 'ID_NOTA'
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_Nota_FiscalTableID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CD_Nota_FiscalTableID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object CD_Nota_FiscalTableID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object CD_Nota_FiscalTableNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 18
    end
    object CD_Nota_FiscalTableDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CD_Nota_FiscalTableDATA_ES: TDateField
      FieldName = 'DATA_ES'
    end
    object CD_Nota_FiscalTableHORA: TTimeField
      FieldName = 'HORA'
    end
    object CD_Nota_FiscalTableTR_NOME: TStringField
      FieldName = 'TR_NOME'
      Size = 40
    end
    object CD_Nota_FiscalTableTR_ENDERECO: TStringField
      FieldName = 'TR_ENDERECO'
      Size = 40
    end
    object CD_Nota_FiscalTableQUANTIDADE: TSingleField
      FieldName = 'QUANTIDADE'
    end
    object CD_Nota_FiscalTableESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 25
    end
    object CD_Nota_FiscalTableMARCA: TStringField
      FieldName = 'MARCA'
      Size = 25
    end
    object CD_Nota_FiscalTableFPC: TSmallintField
      FieldName = 'FPC'
    end
    object CD_Nota_FiscalTableVEICULO_PLACA: TStringField
      FieldName = 'VEICULO_PLACA'
      Size = 15
    end
    object CD_Nota_FiscalTableVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      Size = 2
    end
    object CD_Nota_FiscalTableTR_CIDADE: TStringField
      FieldName = 'TR_CIDADE'
      Size = 50
    end
    object CD_Nota_FiscalTableTR_UF: TStringField
      FieldName = 'TR_UF'
      Size = 2
    end
    object CD_Nota_FiscalTableNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 25
    end
    object CD_Nota_FiscalTablePESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
    end
    object CD_Nota_FiscalTablePESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
    end
    object CD_Nota_FiscalTableTR_CPF_CNPJ: TStringField
      FieldName = 'TR_CPF_CNPJ'
    end
    object CD_Nota_FiscalTableTR_IE: TStringField
      FieldName = 'TR_IE'
      Size = 18
    end
    object CD_Nota_FiscalTableSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object CD_Nota_FiscalTableTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_Nota_FiscalTableOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CD_Nota_FiscalTableBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_FRETE: TFMTBCDField
      FieldName = 'VALOR_FRETE'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_SEGURO: TFMTBCDField
      FieldName = 'VALOR_SEGURO'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableBASE_ICMS_SUB: TFMTBCDField
      FieldName = 'BASE_ICMS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_ICMS_SUB: TFMTBCDField
      FieldName = 'VALOR_ICMS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
    end
    object CD_Nota_FiscalTablePERCENTUAL1: TSingleField
      FieldName = 'PERCENTUAL1'
    end
    object CD_Nota_FiscalTablePERCENTUAL2: TSingleField
      FieldName = 'PERCENTUAL2'
    end
    object CD_Nota_FiscalTableID_PROPRIEDADE: TIntegerField
      FieldName = 'ID_PROPRIEDADE'
    end
    object CD_Nota_FiscalTableDESCONTO: TSingleField
      FieldName = 'DESCONTO'
    end
    object CD_Nota_FiscalTableACRESCIMO: TSingleField
      FieldName = 'ACRESCIMO'
    end
    object CD_Nota_FiscalTableDADOS: TMemoField
      FieldName = 'DADOS'
      BlobType = ftMemo
      Size = 1
    end
    object CD_Nota_FiscalTableSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object CD_Nota_FiscalTableTIPO_NOTA: TSmallintField
      FieldName = 'TIPO_NOTA'
    end
    object CD_Nota_FiscalTableID_ENTREGA: TIntegerField
      FieldName = 'ID_ENTREGA'
    end
    object CD_Nota_FiscalTableTIPO_NF: TSmallintField
      FieldName = 'TIPO_NF'
    end
    object CD_Nota_FiscalTableTIPO_DESCONTO: TSmallintField
      FieldName = 'TIPO_DESCONTO'
    end
    object CD_Nota_FiscalTableTIPO_BASE: TSmallintField
      FieldName = 'TIPO_BASE'
    end
    object CD_Nota_FiscalTableNFE_RECIBO: TStringField
      FieldName = 'NFE_RECIBO'
      Size = 50
    end
    object CD_Nota_FiscalTableNFE_PROTOCOLO: TStringField
      FieldName = 'NFE_PROTOCOLO'
      Size = 50
    end
    object CD_Nota_FiscalTableNFE_CHAVE: TStringField
      FieldName = 'NFE_CHAVE'
      Size = 80
    end
    object CD_Nota_FiscalTableNFE_DATA_ENVIO: TDateField
      FieldName = 'NFE_DATA_ENVIO'
    end
    object CD_Nota_FiscalTableNFE_CHAVE_REF: TStringField
      FieldName = 'NFE_CHAVE_REF'
      Size = 80
    end
    object CD_Nota_FiscalTableMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object CD_Nota_FiscalTableEXP_UF: TStringField
      FieldName = 'EXP_UF'
      Size = 2
    end
    object CD_Nota_FiscalTableEXP_LOCAL: TStringField
      FieldName = 'EXP_LOCAL'
      Size = 50
    end
    object CD_Nota_FiscalTableTIPO_EMISSAO: TSmallintField
      FieldName = 'TIPO_EMISSAO'
    end
    object CD_Nota_FiscalTableVALOR_PIS: TFMTBCDField
      FieldName = 'VALOR_PIS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_COFINS: TFMTBCDField
      FieldName = 'VALOR_COFINS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object CD_Nota_FiscalTableVALOR_PIS_SUB: TFMTBCDField
      FieldName = 'VALOR_PIS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_COFINS_SUB: TFMTBCDField
      FieldName = 'VALOR_COFINS_SUB'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableCARTA_CORRECAO: TSmallintField
      FieldName = 'CARTA_CORRECAO'
    end
    object CD_Nota_FiscalTableIMPOSTOS: TSingleField
      FieldName = 'IMPOSTOS'
    end
    object CD_Nota_FiscalTableVALOR_IMPOSTOS: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableNFE_RETORNO: TSmallintField
      FieldName = 'NFE_RETORNO'
    end
    object CD_Nota_FiscalTableVINCULADO: TStringField
      FieldName = 'VINCULADO'
    end
    object CD_Nota_FiscalTableNFE_TIPO_DESCRICAO: TSmallintField
      FieldName = 'NFE_TIPO_DESCRICAO'
    end
    object CD_Nota_FiscalTableEXP_NDRAW: TStringField
      FieldName = 'EXP_NDRAW'
    end
    object CD_Nota_FiscalTableEXP_CHAVE_NFE: TStringField
      FieldName = 'EXP_CHAVE_NFE'
      Size = 80
    end
    object CD_Nota_FiscalTableVALOR_ICMS_FCP: TFMTBCDField
      FieldName = 'VALOR_ICMS_FCP'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_ICMS_DST: TFMTBCDField
      FieldName = 'VALOR_ICMS_DST'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_ICMS_REM: TFMTBCDField
      FieldName = 'VALOR_ICMS_REM'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_IMPOSTOSF: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSF'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_IMPOSTOSE: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSE'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableVALOR_IMPOSTOSM: TFMTBCDField
      FieldName = 'VALOR_IMPOSTOSM'
      Precision = 18
      Size = 2
    end
    object CD_Nota_FiscalTableNFE_DATA_HORA_NULA: TSmallintField
      FieldName = 'NFE_DATA_HORA_NULA'
    end
  end
  object Emitente: TSQLDataSet
    CommandText = 'EMPRESA'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 256
    Top = 9
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
    Left = 1060
    Top = 80
  end
  object Pro_MdfeConfig: TDataSetProvider
    DataSet = MDFe_Config
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1056
    Top = 137
  end
  object DS_Mdfe_Config: TDataSource
    DataSet = CD_MDFe_Config
    Left = 1056
    Top = 249
  end
  object CD_MDFe_Config: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pro_MdfeConfig'
    Left = 1056
    Top = 193
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
  end
  object Clientes: TSQLDataSet
    CommandText = 
      'select id_cliente, nome, cpf_cnpj from  CLIENTES'#13#10'where pessoa =' +
      '1'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = MdfeConnection
    Left = 52
    Top = 311
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
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
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
      'ServerCharSet='
      'Trim Char=False')
    Left = 56
    Top = 24
  end
  object Prov_dadosTable: TDataSetProvider
    DataSet = Mdfe_dadosTable
    Left = 48
    Top = 128
  end
end
