object Frm_ConfigSistema: TFrm_ConfigSistema
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o do Sistema'
  ClientHeight = 512
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 516
    Height = 471
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    Color = clHighlightText
    ParentColor = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clHighlightText
      Caption = 'EMPRESA'
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 304
        Align = alClient
        Caption = 'DADOS'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clBlue
        CaptionFont.Height = -13
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        GroupStyle = gsTopLine
        TabOrder = 0
        Transparent = True
        VisualStyle = vsGradient
        object Label1: TLabel
          Left = 43
          Top = 21
          Width = 64
          Height = 13
          Caption = 'ID EMPRESA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 28
          Top = 220
          Width = 79
          Height = 13
          Caption = 'COMPLEMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 84
          Top = 249
          Width = 23
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 304
          Top = 249
          Width = 31
          Height = 13
          Caption = 'FONE:'
        end
        object Label2: TLabel
          Left = 21
          Top = 48
          Width = 86
          Height = 13
          Caption = 'NOME FANTASIA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 28
          Top = 75
          Width = 79
          Height = 13
          Caption = 'RAZ'#195'O SOCIAL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 78
          Top = 99
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 321
          Top = 102
          Width = 14
          Height = 13
          Caption = 'IE:'
        end
        object Label7: TLabel
          Left = 49
          Top = 159
          Width = 58
          Height = 13
          Caption = 'ENDERE'#199'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 391
          Top = 159
          Width = 16
          Height = 13
          Caption = 'N'#186':'
        end
        object Label9: TLabel
          Left = 64
          Top = 189
          Width = 43
          Height = 13
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 64
          Top = 128
          Width = 44
          Height = 16
          Caption = 'Regi'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 128
          Top = 18
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ID_EMPRESA'
          DataSource = DS_Empresa
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 129
          Top = 246
          Width = 136
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DS_Empresa
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 341
          Top = 246
          Width = 136
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE1'
          DataSource = DS_Empresa
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 128
          Top = 45
          Width = 349
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME_EMPRESA'
          DataSource = DS_Empresa
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 128
          Top = 72
          Width = 349
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAO_SOCIAL'
          DataSource = DS_Empresa
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 128
          Top = 99
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = DS_Empresa
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 340
          Top = 99
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = DS_Empresa
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 129
          Top = 156
          Width = 255
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = DS_Empresa
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 412
          Top = 156
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_Empresa
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 129
          Top = 186
          Width = 348
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_Empresa
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 129
          Top = 217
          Width = 349
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DS_Empresa
          TabOrder = 10
        end
        object Button1: TButton
          Left = 423
          Top = 126
          Width = 53
          Height = 25
          Caption = 'Buscar'
          TabOrder = 11
          OnClick = Button1Click
        end
        object DBEdit16: TDBEdit
          Left = 126
          Top = 126
          Width = 291
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 304
        Width = 512
        Height = 144
        Align = alBottom
        Caption = 'CONFIG ENVIO DE EMAIL'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clBlue
        CaptionFont.Height = -13
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        GroupStyle = gsTopLine
        TabOrder = 1
        Transparent = True
        VisualStyle = vsGradient
        object Label13: TLabel
          Left = 43
          Top = 42
          Width = 73
          Height = 13
          Caption = 'Servidor SMTP:'
        end
        object Label14: TLabel
          Left = 76
          Top = 68
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object Label15: TLabel
          Left = 301
          Top = 68
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label16: TLabel
          Left = 77
          Top = 99
          Width = 30
          Height = 13
          Caption = 'Porta:'
        end
        object DBEdit12: TDBEdit
          Left = 128
          Top = 39
          Width = 349
          Height = 21
          DataField = 'SMTP_ENDERECO'
          DataSource = DS_Empresa
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 128
          Top = 66
          Width = 136
          Height = 21
          DataField = 'SMTP_USUARIO'
          DataSource = DS_Empresa
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 342
          Top = 66
          Width = 136
          Height = 21
          DataField = 'SMTP_SENHA'
          DataSource = DS_Empresa
          PasswordChar = '*'
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 129
          Top = 97
          Width = 136
          Height = 21
          DataField = 'SMTP_PORTA'
          DataSource = DS_Empresa
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clHighlightText
      Caption = 'SISTEMA'
      object RzGroupBox3: TRzGroupBox
        Left = 0
        Top = 0
        Width = 512
        Height = 122
        Align = alTop
        Caption = 'DADOS DO SISTEMA'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clBlue
        CaptionFont.Height = -13
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        GroupStyle = gsTopLine
        TabOrder = 0
        Transparent = True
        VisualStyle = vsGradient
        object Label17: TLabel
          Left = 107
          Top = 34
          Width = 42
          Height = 13
          Caption = 'Vers'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 105
          Top = 60
          Width = 44
          Height = 13
          Caption = 'M'#243'dulo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RzVersionInfoStatus1: TRzVersionInfoStatus
          Left = 155
          Top = 31
          Width = 241
          Height = 21
          BlinkIntervalOff = 1000
          BlinkIntervalOn = 1000
          Field = vifFileVersion
          VersionInfo = RzVersionInfo1
        end
        object RzDBComboBox1: TRzDBComboBox
          Left = 155
          Top = 58
          Width = 241
          Height = 21
          DataField = 'MODULO'
          DataSource = DM.DS_CD_CTE_MDF
          TabOrder = 0
          Items.Strings = (
            'MDFe'
            'CTe'
            'CTeOS'
            'MDFe e CTe'
            'MDFe e CTeOS'
            'CTe e CTeOS'
            'MDFe, CTE e CTeOS')
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7')
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 471
    Width = 516
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 1
    VisualStyle = vsGradient
    object RzBitBtn1: TRzBitBtn
      Left = 0
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = RzBitBtn1Click
      ImageIndex = 0
      Images = Frm_Principal.ImageList1
    end
    object RzBitBtn3: TRzBitBtn
      Left = 106
      Top = 0
      Width = 94
      Height = 41
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = RzBitBtn3Click
      ImageIndex = 9
      Images = Frm_Principal.ImageList1
    end
    object RzBitBtn4: TRzBitBtn
      Left = 200
      Top = 0
      Width = 103
      Height = 41
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = RzBitBtn4Click
      ImageIndex = 31
      Images = Frm_Principal.ImageList1
    end
    object RzBitBtn5: TRzBitBtn
      Left = 430
      Top = 0
      Width = 86
      Height = 41
      Align = alRight
      Caption = 'Sair'
      TabOrder = 3
      OnClick = RzBitBtn5Click
      ImageIndex = 29
      Images = Frm_Principal.ImageList1
    end
    object RzBitBtn6: TRzBitBtn
      Left = 388
      Top = 0
      Width = 42
      Height = 41
      Align = alRight
      TabOrder = 4
      OnClick = RzBitBtn6Click
      ImageIndex = 33
      Images = Frm_Principal.ImageList1
    end
  end
  object Regiao: TSQLDataSet
    CommandText = 'select * from Regioes'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = CDM.Conexao
    Left = 639
    Top = 47
    object RegiaoID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Required = True
      Precision = 18
      Size = 0
    end
    object RegiaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object RegiaoDISTRITO: TStringField
      FieldName = 'DISTRITO'
      Size = 50
    end
    object RegiaoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object RegiaoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object RegiaoUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object RegiaoDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object RegiaoLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 50
    end
    object RegiaoCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object RegiaoDATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object RegiaoID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object RegiaoPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
  end
  object RzVersionInfo1: TRzVersionInfo
    Left = 762
    Top = 208
  end
  object Empresa: TSQLDataSet
    CommandText = 'select *  from Empresa'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 560
    Top = 56
  end
  object Prov_Empresa: TDataSetProvider
    DataSet = Empresa
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 560
    Top = 112
  end
  object CD_Empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Empresa'
    AfterOpen = CD_EmpresaAfterOpen
    BeforeInsert = CD_EmpresaBeforeInsert
    AfterInsert = CD_EmpresaAfterInsert
    Left = 560
    Top = 176
    object CD_EmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CD_EmpresaTIPO_ATIVIDADE: TSmallintField
      FieldName = 'TIPO_ATIVIDADE'
    end
    object CD_EmpresaNOME_EMPRESA: TStringField
      FieldName = 'NOME_EMPRESA'
      Size = 70
    end
    object CD_EmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 50
    end
    object CD_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_EmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_EmpresaID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      Precision = 18
      Size = 0
    end
    object CD_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 18
    end
    object CD_EmpresaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000-000;1;_'
      Size = 9
    end
    object CD_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CD_EmpresaWEB: TStringField
      FieldName = 'WEB'
      Size = 50
    end
    object CD_EmpresaFONE1: TStringField
      FieldName = 'FONE1'
      Size = 18
    end
    object CD_EmpresaFONE2: TStringField
      FieldName = 'FONE2'
      Size = 18
    end
    object CD_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 18
    end
    object CD_EmpresaPRACA: TStringField
      FieldName = 'PRACA'
      Size = 50
    end
    object CD_EmpresaLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
      Size = 1
    end
    object CD_EmpresaCHAVE1: TStringField
      FieldName = 'CHAVE1'
      Size = 14
    end
    object CD_EmpresaCHAVE2: TStringField
      FieldName = 'CHAVE2'
      Size = 14
    end
    object CD_EmpresaIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object CD_EmpresaTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object CD_EmpresaSMTP_ENDERECO: TStringField
      FieldName = 'SMTP_ENDERECO'
      Size = 100
    end
    object CD_EmpresaSMTP_USUARIO: TStringField
      FieldName = 'SMTP_USUARIO'
      Size = 100
    end
    object CD_EmpresaSMTP_SENHA: TStringField
      FieldName = 'SMTP_SENHA'
    end
    object CD_EmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object CD_EmpresaSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object CD_EmpresaCONTRIB_IPI: TSmallintField
      FieldName = 'CONTRIB_IPI'
    end
    object CD_EmpresaTIPO_MF: TSmallintField
      FieldName = 'TIPO_MF'
    end
    object CD_EmpresaSMTP_PORTA: TIntegerField
      FieldName = 'SMTP_PORTA'
    end
    object CD_EmpresaREG_TRIBUTARIO: TSmallintField
      FieldName = 'REG_TRIBUTARIO'
    end
    object CD_EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_EmpresaIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object CD_EmpresaSMTP_SSL: TSmallintField
      FieldName = 'SMTP_SSL'
    end
    object CD_EmpresaCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
  end
  object DS_Empresa: TDataSource
    DataSet = CD_Empresa
    Left = 560
    Top = 224
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
    SQLConnection = DM.MdfeConnection
    Left = 488
    Top = 56
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select ID_EMPRESA  from Empresa'#13#10'order by id_empresa'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 744
    Top = 40
    object SQLDataSet1ID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
  end
  object CIDADE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 96
    Top = 364
    object CIDADECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = CIDADE
    Left = 256
    Top = 304
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 387
    Top = 321
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 461
    Top = 277
  end
end
