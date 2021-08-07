object Frm_EncerraMDF: TFrm_EncerraMDF
  Left = 0
  Top = 0
  Caption = 'Frm_EncerraMDF'
  ClientHeight = 471
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 471
    Align = alClient
    BorderOuter = fsNone
    Color = clInactiveBorder
    GradientColorStyle = gcsCustom
    GradientColorStart = clSkyBlue
    GradientColorStop = clGradientInactiveCaption
    TabOrder = 0
    ExplicitWidth = 661
    ExplicitHeight = 532
    object RzSpacer1: TRzSpacer
      Left = 0
      Top = 0
      Width = 548
      Height = 17
      Align = alTop
      ExplicitWidth = 564
    end
    object GroupBox1: TGroupBox
      Left = 106
      Top = 63
      Width = 367
      Height = 170
      TabOrder = 0
      object Label1: TLabel
        Left = 23
        Top = 13
        Width = 35
        Height = 13
        Caption = 'Chave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 23
        Top = 51
        Width = 54
        Height = 13
        Caption = 'Protocolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 23
        Top = 112
        Width = 14
        Height = 13
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 120
        Top = 112
        Width = 38
        Height = 13
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 96
        Width = 126
        Height = 13
        Caption = '*Local de Descarregamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Calibri Light'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 23
        Top = 28
        Width = 319
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 23
        Top = 65
        Width = 319
        Height = 21
        TabOrder = 1
      end
      object RzComboBox1: TRzComboBox
        Left = 23
        Top = 126
        Width = 91
        Height = 21
        TabOrder = 2
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RR'
          'RO'
          'RJ'
          'RN'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
        Values.Strings = (
          '12'
          '27'
          '16'
          '13'
          '29'
          '23'
          '53'
          '32'
          '52'
          '21'
          '51'
          '50'
          '31'
          '15'
          '25'
          '41'
          '26'
          '22'
          '14'
          '11'
          '33'
          '24'
          '43'
          '42'
          '35'
          '28'
          '17')
      end
      object RzComboBox2: TRzComboBox
        Left = 120
        Top = 126
        Width = 225
        Height = 21
        TabOrder = 3
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RR'
          'RO'
          'RJ'
          'RN'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
        Values.Strings = (
          '12'
          '27'
          '16'
          '13'
          '29'
          '23'
          '53'
          '32'
          '52'
          '21'
          '51'
          '50'
          '31'
          '15'
          '25'
          '41'
          '26'
          '22'
          '14'
          '11'
          '33'
          '24'
          '43'
          '42'
          '35'
          '28'
          '17')
      end
    end
    object GroupBox2: TGroupBox
      Left = 106
      Top = 239
      Width = 367
      Height = 63
      Enabled = False
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 319
        Top = 23
        Width = 23
        Height = 22
        Caption = '...'
      end
      object Label3: TLabel
        Left = 23
        Top = 8
        Width = 92
        Height = 13
        Caption = 'Caminho do XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 23
        Top = 23
        Width = 296
        Height = 21
        TabOrder = 0
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 26
      Top = 63
      Width = 74
      Height = 239
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'CHAVE'
        'XML')
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 152
      Top = 372
      Width = 107
      Height = 44
      Caption = 'Cancelar CTe'
      ImageIndex = 34
      Images = Frm_Principal.ImageList1
      TabOrder = 3
    end
    object Button2: TButton
      Left = 373
      Top = 372
      Width = 75
      Height = 44
      Caption = 'Sair'
      ImageIndex = 29
      Images = Frm_Principal.ImageList1
      TabOrder = 4
    end
    object RzPanel2: TRzPanel
      Left = 0
      Top = 17
      Width = 548
      Height = 40
      Align = alTop
      BorderOuter = fsNone
      Caption = 'ENCERRAR MDF-E'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ExplicitWidth = 661
    end
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select mdfe_dados.*,mdfe_l_descarregamento.* from mdfe_dados'
      
        'join  mdfe_l_descarregamento on mdfe_l_descarregamento.id_mdfe =' +
        ' mdfe_dados.id'
      'where mdfe_dados.chave =:f')
    Left = 560
    Top = 152
    ParamData = <
      item
        Name = 'F'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1ID_NFE: TIntegerField
      FieldName = 'ID_NFE'
      Origin = 'ID_NFE'
    end
    object FDQuery1MODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'MODELO'
    end
    object FDQuery1SERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object FDQuery1NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object FDQuery1CODMDF: TIntegerField
      FieldName = 'CODMDF'
      Origin = 'CODMDF'
    end
    object FDQuery1DATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQuery1D_ENCERRA: TSQLTimeStampField
      FieldName = 'D_ENCERRA'
      Origin = 'D_ENCERRA'
    end
    object FDQuery1HORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object FDQuery1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery1TIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      Origin = 'TIPO_EMITENTE'
      Size = 25
    end
    object FDQuery1UF_EMIT: TIntegerField
      FieldName = 'UF_EMIT'
      Origin = 'UF_EMIT'
    end
    object FDQuery1MODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Origin = 'MODALIDADE'
      Size = 25
    end
    object FDQuery1FORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      Origin = 'FORMA_EMISSAO'
      Size = 25
    end
    object FDQuery1UF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Origin = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object FDQuery1CHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 80
    end
    object FDQuery1VEI_UF: TStringField
      FieldName = 'VEI_UF'
      Origin = 'VEI_UF'
      Size = 2
    end
    object FDQuery1VEI_RNTRC: TStringField
      FieldName = 'VEI_RNTRC'
      Origin = 'VEI_RNTRC'
      Size = 8
    end
    object FDQuery1VEI_CIOT: TStringField
      FieldName = 'VEI_CIOT'
      Origin = 'VEI_CIOT'
      Size = 8
    end
    object FDQuery1COD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
      Origin = 'COD_AG_PORTO'
    end
    object FDQuery1COD_INT_VEIUC: TStringField
      FieldName = 'COD_INT_VEIUC'
      Origin = 'COD_INT_VEIUC'
      Size = 40
    end
    object FDQuery1VEI_TIPO_CARROCERIA: TStringField
      FieldName = 'VEI_TIPO_CARROCERIA'
      Origin = 'VEI_TIPO_CARROCERIA'
      Size = 30
    end
    object FDQuery1VEI_TIPO_RODADO: TStringField
      FieldName = 'VEI_TIPO_RODADO'
      Origin = 'VEI_TIPO_RODADO'
      Size = 30
    end
    object FDQuery1VEI_PLACA: TStringField
      FieldName = 'VEI_PLACA'
      Origin = 'VEI_PLACA'
      Size = 9
    end
    object FDQuery1VEI_RENAVAN: TStringField
      FieldName = 'VEI_RENAVAN'
      Origin = 'VEI_RENAVAN'
      Size = 50
    end
    object FDQuery1VEI_TARA: TBCDField
      FieldName = 'VEI_TARA'
      Origin = 'VEI_TARA'
      Precision = 18
      Size = 2
    end
    object FDQuery1VEI_CAPACIDADE: TBCDField
      FieldName = 'VEI_CAPACIDADE'
      Origin = 'VEI_CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object FDQuery1VEI_CAPC_M3: TBCDField
      FieldName = 'VEI_CAPC_M3'
      Origin = 'VEI_CAPC_M3'
      Precision = 18
      Size = 2
    end
    object FDQuery1TOT_QNT_NFE_REL_MANIFESTRO: TIntegerField
      FieldName = 'TOT_QNT_NFE_REL_MANIFESTRO'
      Origin = 'TOT_QNT_NFE_REL_MANIFESTRO'
    end
    object FDQuery1TOT_VALOR_TOTAL_MERCADORIA: TFloatField
      FieldName = 'TOT_VALOR_TOTAL_MERCADORIA'
      Origin = 'TOT_VALOR_TOTAL_MERCADORIA'
    end
    object FDQuery1TOT_CODUNIDADE: TStringField
      FieldName = 'TOT_CODUNIDADE'
      Origin = 'TOT_CODUNIDADE'
      Size = 5
    end
    object FDQuery1TOT_PESO_BRUTO: TFloatField
      FieldName = 'TOT_PESO_BRUTO'
      Origin = 'TOT_PESO_BRUTO'
    end
    object FDQuery1UF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Origin = 'UF_CARREGAMENTO'
      Size = 2
    end
    object FDQuery1STATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FDQuery1MDF_PROTOCOLO: TStringField
      FieldName = 'MDF_PROTOCOLO'
      Origin = 'MDF_PROTOCOLO'
      Size = 50
    end
    object FDQuery1MDF_D_ENVIO: TSQLTimeStampField
      FieldName = 'MDF_D_ENVIO'
      Origin = 'MDF_D_ENVIO'
    end
    object FDQuery1OBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 500
    end
    object FDQuery1OBS2: TStringField
      FieldName = 'OBS2'
      Origin = 'OBS2'
      Size = 500
    end
    object FDQuery1ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object FDQuery1CNPJ_TOMADOR: TStringField
      FieldName = 'CNPJ_TOMADOR'
      Origin = 'CNPJ_TOMADOR'
    end
    object FDQuery1TIPO_EMISSOR: TIntegerField
      FieldName = 'TIPO_EMISSOR'
      Origin = 'TIPO_EMISSOR'
    end
    object FDQuery1ID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1ID_MDFE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MDFE'
      Origin = 'ID_MDFE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1UF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object FDQuery1COD_MUN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_MUN'
      Origin = 'COD_MUN'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
