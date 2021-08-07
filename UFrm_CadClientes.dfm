object Frm_CadClientes: TFrm_CadClientes
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSizeToolWin
  Caption = 'Pessoas'
  ClientHeight = 570
  ClientWidth = 527
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 76
    Width = 11
    Height = 15
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 123
    Top = 76
    Width = 37
    Height = 15
    Caption = 'Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 207
    Top = 76
    Width = 52
    Height = 15
    Caption = 'CPF/CNPJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 35
    Top = 135
    Width = 110
    Height = 15
    Caption = 'Nome / Raz'#227'o Social'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 35
    Top = 196
    Width = 127
    Height = 15
    Caption = 'Nome / Nome Fantasia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 35
    Top = 254
    Width = 51
    Height = 15
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 35
    Top = 321
    Width = 79
    Height = 15
    Caption = 'Complemento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 403
    Top = 254
    Width = 15
    Height = 15
    Caption = 'N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 282
    Top = 321
    Width = 33
    Height = 15
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 35
    Top = 456
    Width = 90
    Height = 15
    Caption = 'Fone Resid'#234'ncial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 282
    Top = 456
    Width = 20
    Height = 15
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 355
    Top = 76
    Width = 30
    Height = 15
    Caption = 'RG/IE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 35
    Top = 387
    Width = 36
    Height = 15
    Caption = 'Regi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 35
    Top = 101
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ID_CLIENTE'
    DataSource = DS_Clientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 207
    Top = 101
    Width = 138
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF_CNPJ'
    DataSource = DS_Clientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnEnter = DBEdit2Enter
    OnExit = DBEdit2Exit
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 35
    Top = 161
    Width = 457
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DS_Clientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 35
    Top = 220
    Width = 457
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_FANTASIA'
    DataSource = DS_Clientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 35
    Top = 284
    Width = 362
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 403
    Top = 284
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 35
    Top = 349
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMPLEMENTO'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 282
    Top = 349
    Width = 210
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 35
    Top = 481
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FONE_RES'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit10: TDBEdit
    Left = 282
    Top = 481
    Width = 210
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = DS_Endereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object RzDBComboBox1: TRzDBComboBox
    Left = 123
    Top = 101
    Width = 78
    Height = 22
    DataField = 'PESSOA'
    DataSource = DS_Clientes
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Items.Strings = (
      'F'#205'SICA'
      'JURIDICA')
    Values.Strings = (
      '1'
      '2')
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 42
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = 5449984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = clBlack
    GradientDirection = gdDiagonalDown
    GridColor = clSilver
    ParentFont = False
    TabOrder = 15
    VisualStyle = vsClassic
    ExplicitWidth = 525
    object RzLabel1: TRzLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 229
      Height = 32
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'Cadastro de Pessoas'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderHighlight = clBlack
      ExplicitHeight = 27
    end
  end
  object DBEdit11: TDBEdit
    Left = 355
    Top = 101
    Width = 138
    Height = 21
    CharCase = ecUpperCase
    DataField = 'IE'
    DataSource = DS_Clientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 439
    Top = 409
    Width = 53
    Height = 25
    Caption = 'Buscar'
    TabOrder = 9
    OnClick = Button1Click
  end
  object DBEdit12: TDBEdit
    Left = 35
    Top = 409
    Width = 398
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object DBNavigator1: TDBNavigator
    Left = 616
    Top = 512
    Width = 240
    Height = 25
    DataSource = DS_Clientes
    TabOrder = 16
  end
  object RzDBCheckBox1: TRzDBCheckBox
    Left = 40
    Top = 528
    Width = 73
    Height = 17
    DataField = 'MOTORISTA'
    DataSource = DS_Clientes
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'Motorista'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object RzCheckBox1: TRzCheckBox
    Left = 125
    Top = 529
    Width = 137
    Height = 17
    Caption = 'N'#227'o Visualizar Coliseu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbUnchecked
    TabOrder = 17
  end
  object RzBitBtn1: TRzBitBtn
    Left = 296
    Top = 520
    Width = 105
    Height = 42
    Action = Act_Salvar
    Caption = 'Salvar (Ctrl+S)'
    HotTrack = True
    TabOrder = 18
    ThemeAware = False
    ImageIndex = 21
    Images = ImageList1
  end
  object RzBitBtn2: TRzBitBtn
    Left = 404
    Top = 520
    Width = 105
    Height = 42
    Action = Act_Cancelar
    Caption = 'Cancelar (ESC)'
    HotTrack = True
    TabOrder = 19
    ThemeAware = False
    ImageIndex = 8
    Images = ImageList1
  end
  object Clientes: TSQLDataSet
    CommandText = 'select first 1   *   from clientes'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 676
    Top = 119
    object ClientesID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      Required = True
      Precision = 18
      Size = 0
    end
    object ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object ClientesID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object ClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object ClientesID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
    end
    object ClientesCLASSIFICACAO: TSmallintField
      FieldName = 'CLASSIFICACAO'
    end
    object ClientesLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object ClientesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object ClientesPESSOA: TSmallintField
      FieldName = 'PESSOA'
    end
    object ClientesIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object ClientesRG: TStringField
      FieldName = 'RG'
    end
    object ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 18
    end
    object ClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object ClientesULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ClientesENVIA_EMAIL: TSmallintField
      FieldName = 'ENVIA_EMAIL'
    end
    object ClientesENVIA_MALA: TSmallintField
      FieldName = 'ENVIA_MALA'
    end
    object ClientesVISITA: TSmallintField
      FieldName = 'VISITA'
    end
    object ClientesOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object ClientesSEXO: TSmallintField
      FieldName = 'SEXO'
    end
    object ClientesCODIGO_ANTERIOR: TIntegerField
      FieldName = 'CODIGO_ANTERIOR'
    end
    object ClientesTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object ClientesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object ClientesLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object ClientesSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object ClientesDIA_VENCIMENTO: TSmallintField
      FieldName = 'DIA_VENCIMENTO'
    end
    object ClientesDIAS_ANTES: TSmallintField
      FieldName = 'DIAS_ANTES'
    end
    object ClientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object ClientesID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ClientesSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object ClientesATUALIZADO: TSmallintField
      FieldName = 'ATUALIZADO'
    end
    object ClientesCLIENTE_ANTERIOR: TSmallintField
      FieldName = 'CLIENTE_ANTERIOR'
    end
    object ClientesIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object ClientesEMISSAO_RG: TDateField
      FieldName = 'EMISSAO_RG'
    end
    object ClientesID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ClientesUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object ClientesDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object ClientesSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object ClientesDATA_AF: TSQLTimeStampField
      FieldName = 'DATA_AF'
    end
    object ClientesAUT_CONDICIONAL: TSmallintField
      FieldName = 'AUT_CONDICIONAL'
    end
    object ClientesREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Size = 50
    end
    object ClientesID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object ClientesENVIA_RELATO: TSmallintField
      FieldName = 'ENVIA_RELATO'
    end
    object ClientesDATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object ClientesUSER_IN: TIntegerField
      FieldName = 'USER_IN'
    end
    object ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object ClientesSELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object ClientesID_EMISSOR: TIntegerField
      FieldName = 'ID_EMISSOR'
    end
    object ClientesTAG: TSmallintField
      FieldName = 'TAG'
    end
    object ClientesVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object ClientesVALIDADE_LIMITE: TDateField
      FieldName = 'VALIDADE_LIMITE'
    end
    object ClientesVENDA_VISTA: TSmallintField
      FieldName = 'VENDA_VISTA'
    end
    object ClientesVENDA_PRAZO: TSmallintField
      FieldName = 'VENDA_PRAZO'
    end
    object ClientesNUMERO_CONSULTA: TStringField
      FieldName = 'NUMERO_CONSULTA'
    end
    object ClientesEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 50
    end
    object ClientesCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object ClientesAN_DATA_HORA: TSQLTimeStampField
      FieldName = 'AN_DATA_HORA'
    end
    object ClientesAN_FATURAMENTO: TFMTBCDField
      FieldName = 'AN_FATURAMENTO'
      Precision = 18
      Size = 2
    end
    object ClientesAN_ATRASO: TIntegerField
      FieldName = 'AN_ATRASO'
    end
    object ClientesAN_CADASTRO: TIntegerField
      FieldName = 'AN_CADASTRO'
    end
    object ClientesAN_VENCIDO: TIntegerField
      FieldName = 'AN_VENCIDO'
    end
    object ClientesAN_INATIVO: TIntegerField
      FieldName = 'AN_INATIVO'
    end
    object ClientesID_TABELA: TIntegerField
      FieldName = 'ID_TABELA'
    end
    object ClientesENVIA_SMS: TSmallintField
      FieldName = 'ENVIA_SMS'
    end
    object ClientesSTATUS_ANTERIOR: TSmallintField
      FieldName = 'STATUS_ANTERIOR'
    end
    object ClientesEMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 50
    end
    object ClientesDESCONTO_ANT: TSingleField
      FieldName = 'DESCONTO_ANT'
    end
    object ClientesID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object ClientesCEC_CALCADO_TAM: TSmallintField
      FieldName = 'CEC_CALCADO_TAM'
    end
    object ClientesMOTORISTA: TIntegerField
      FieldName = 'MOTORISTA'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Clientes
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 672
    Top = 168
  end
  object DS_Clientes: TDataSource
    DataSet = CD_Table_Clientes
    Left = 680
    Top = 304
  end
  object CD_Table_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    BeforeInsert = CD_Table_ClientesBeforeInsert
    AfterInsert = CD_Table_ClientesAfterInsert
    AfterPost = CD_Table_ClientesAfterPost
    Left = 672
    Top = 232
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
    object CD_Table_ClientesID_CONVENIO: TIntegerField
      FieldName = 'ID_CONVENIO'
    end
    object CD_Table_ClientesNASCIMENTO: TDateField
      FieldName = 'NASCIMENTO'
    end
    object CD_Table_ClientesID_REGIAO: TIntegerField
      FieldName = 'ID_REGIAO'
    end
    object CD_Table_ClientesCLASSIFICACAO: TSmallintField
      FieldName = 'CLASSIFICACAO'
    end
    object CD_Table_ClientesLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
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
    object CD_Table_ClientesRG: TStringField
      FieldName = 'RG'
    end
    object CD_Table_ClientesORGAO_EMISSOR: TStringField
      FieldName = 'ORGAO_EMISSOR'
      Size = 18
    end
    object CD_Table_ClientesDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CD_Table_ClientesULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
    end
    object CD_Table_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object CD_Table_ClientesENVIA_EMAIL: TSmallintField
      FieldName = 'ENVIA_EMAIL'
    end
    object CD_Table_ClientesENVIA_MALA: TSmallintField
      FieldName = 'ENVIA_MALA'
    end
    object CD_Table_ClientesVISITA: TSmallintField
      FieldName = 'VISITA'
    end
    object CD_Table_ClientesOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object CD_Table_ClientesSEXO: TSmallintField
      FieldName = 'SEXO'
    end
    object CD_Table_ClientesCODIGO_ANTERIOR: TIntegerField
      FieldName = 'CODIGO_ANTERIOR'
    end
    object CD_Table_ClientesTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CD_Table_ClientesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
    object CD_Table_ClientesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 40
    end
    object CD_Table_ClientesLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object CD_Table_ClientesSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object CD_Table_ClientesDIA_VENCIMENTO: TSmallintField
      FieldName = 'DIA_VENCIMENTO'
    end
    object CD_Table_ClientesDIAS_ANTES: TSmallintField
      FieldName = 'DIAS_ANTES'
    end
    object CD_Table_ClientesNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 50
    end
    object CD_Table_ClientesID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CD_Table_ClientesSUBSTITUTO: TSmallintField
      FieldName = 'SUBSTITUTO'
    end
    object CD_Table_ClientesATUALIZADO: TSmallintField
      FieldName = 'ATUALIZADO'
    end
    object CD_Table_ClientesCLIENTE_ANTERIOR: TSmallintField
      FieldName = 'CLIENTE_ANTERIOR'
    end
    object CD_Table_ClientesIM: TStringField
      FieldName = 'IM'
      Size = 18
    end
    object CD_Table_ClientesEMISSAO_RG: TDateField
      FieldName = 'EMISSAO_RG'
    end
    object CD_Table_ClientesID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_Table_ClientesUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object CD_Table_ClientesDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object CD_Table_ClientesSITE: TStringField
      FieldName = 'SITE'
      Size = 50
    end
    object CD_Table_ClientesDATA_AF: TSQLTimeStampField
      FieldName = 'DATA_AF'
    end
    object CD_Table_ClientesAUT_CONDICIONAL: TSmallintField
      FieldName = 'AUT_CONDICIONAL'
    end
    object CD_Table_ClientesREGISTRO: TStringField
      FieldName = 'REGISTRO'
      Size = 50
    end
    object CD_Table_ClientesID_CLASSE: TIntegerField
      FieldName = 'ID_CLASSE'
    end
    object CD_Table_ClientesENVIA_RELATO: TSmallintField
      FieldName = 'ENVIA_RELATO'
    end
    object CD_Table_ClientesDATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object CD_Table_ClientesUSER_IN: TIntegerField
      FieldName = 'USER_IN'
    end
    object CD_Table_ClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CD_Table_ClientesSELECIONA: TSmallintField
      FieldName = 'SELECIONA'
    end
    object CD_Table_ClientesID_EMISSOR: TIntegerField
      FieldName = 'ID_EMISSOR'
    end
    object CD_Table_ClientesTAG: TSmallintField
      FieldName = 'TAG'
    end
    object CD_Table_ClientesVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object CD_Table_ClientesVALIDADE_LIMITE: TDateField
      FieldName = 'VALIDADE_LIMITE'
    end
    object CD_Table_ClientesVENDA_VISTA: TSmallintField
      FieldName = 'VENDA_VISTA'
    end
    object CD_Table_ClientesVENDA_PRAZO: TSmallintField
      FieldName = 'VENDA_PRAZO'
    end
    object CD_Table_ClientesNUMERO_CONSULTA: TStringField
      FieldName = 'NUMERO_CONSULTA'
    end
    object CD_Table_ClientesEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 50
    end
    object CD_Table_ClientesCODE: TStringField
      FieldName = 'CODE'
      Size = 32
    end
    object CD_Table_ClientesAN_DATA_HORA: TSQLTimeStampField
      FieldName = 'AN_DATA_HORA'
    end
    object CD_Table_ClientesAN_FATURAMENTO: TFMTBCDField
      FieldName = 'AN_FATURAMENTO'
      Precision = 18
      Size = 2
    end
    object CD_Table_ClientesAN_ATRASO: TIntegerField
      FieldName = 'AN_ATRASO'
    end
    object CD_Table_ClientesAN_CADASTRO: TIntegerField
      FieldName = 'AN_CADASTRO'
    end
    object CD_Table_ClientesAN_VENCIDO: TIntegerField
      FieldName = 'AN_VENCIDO'
    end
    object CD_Table_ClientesAN_INATIVO: TIntegerField
      FieldName = 'AN_INATIVO'
    end
    object CD_Table_ClientesID_TABELA: TIntegerField
      FieldName = 'ID_TABELA'
    end
    object CD_Table_ClientesENVIA_SMS: TSmallintField
      FieldName = 'ENVIA_SMS'
    end
    object CD_Table_ClientesSTATUS_ANTERIOR: TSmallintField
      FieldName = 'STATUS_ANTERIOR'
    end
    object CD_Table_ClientesEMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 50
    end
    object CD_Table_ClientesMOTORISTA: TIntegerField
      FieldName = 'MOTORISTA'
    end
  end
  object Regiao: TSQLDataSet
    CommandText = 'select * from Regioes'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = CDM.Conexao
    Left = 764
    Top = 127
  end
  object Prov_Regioes: TDataSetProvider
    DataSet = Regiao
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 760
    Top = 184
  end
  object CD_Regiao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_Regioes'
    Left = 760
    Top = 248
    object CD_RegiaoID_REGIAO: TFMTBCDField
      FieldName = 'ID_REGIAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_RegiaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CD_RegiaoDISTRITO: TStringField
      FieldName = 'DISTRITO'
      Size = 50
    end
    object CD_RegiaoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object CD_RegiaoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object CD_RegiaoUSER_UP: TIntegerField
      FieldName = 'USER_UP'
    end
    object CD_RegiaoDATA_UP: TSQLTimeStampField
      FieldName = 'DATA_UP'
    end
    object CD_RegiaoLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 50
    end
    object CD_RegiaoCODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
    object CD_RegiaoDATA_RP: TSQLTimeStampField
      FieldName = 'DATA_RP'
    end
    object CD_RegiaoID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object CD_RegiaoPAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object CD_RegiaoCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;1;_'
      Size = 9
    end
  end
  object DS_Regiao: TDataSource
    DataSet = CD_Regiao
    Left = 760
    Top = 296
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 488
    Top = 192
  end
  object Endereco: TSQLDataSet
    CommandText = 'select *  from clientes_dados'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = CDM.Conexao
    Left = 588
    Top = 127
  end
  object Prov_Endereco: TDataSetProvider
    DataSet = Endereco
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 592
    Top = 176
  end
  object CD_Endereco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CLIENTE'
    MasterFields = 'ID_CLIENTE'
    MasterSource = DS_Clientes
    PacketRecords = 0
    Params = <>
    ProviderName = 'Prov_Endereco'
    BeforeInsert = CD_EnderecoBeforeInsert
    AfterInsert = CD_EnderecoAfterInsert
    Left = 592
    Top = 232
    object CD_EnderecoID_CLIENTE: TFMTBCDField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 18
      Size = 0
    end
    object CD_EnderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CD_EnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CD_EnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object CD_EnderecoCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object CD_EnderecoPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
    end
    object CD_EnderecoFONE_COM: TStringField
      FieldName = 'FONE_COM'
      Size = 18
    end
    object CD_EnderecoFONE_RES: TStringField
      FieldName = 'FONE_RES'
      Size = 18
    end
    object CD_EnderecoFAX: TStringField
      FieldName = 'FAX'
      Size = 18
    end
    object CD_EnderecoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 18
    end
    object CD_EnderecoNOME_CONJUGE: TStringField
      FieldName = 'NOME_CONJUGE'
      Size = 50
    end
    object CD_EnderecoNASCIMENTO_CONJUGE: TDateField
      FieldName = 'NASCIMENTO_CONJUGE'
    end
    object CD_EnderecoRENDA_CONJUGE: TFMTBCDField
      FieldName = 'RENDA_CONJUGE'
      Precision = 18
      Size = 2
    end
    object CD_EnderecoESTADO_CIVIL: TSmallintField
      FieldName = 'ESTADO_CIVIL'
    end
    object CD_EnderecoLOCAL_TRABALHO_CONJUGE: TStringField
      FieldName = 'LOCAL_TRABALHO_CONJUGE'
      Size = 50
    end
    object CD_EnderecoLOCAL_TRABALHO: TStringField
      FieldName = 'LOCAL_TRABALHO'
      Size = 50
    end
    object CD_EnderecoFONE_COM_CONJUGE: TStringField
      FieldName = 'FONE_COM_CONJUGE'
      Size = 18
    end
    object CD_EnderecoENDERECO_COM: TStringField
      FieldName = 'ENDERECO_COM'
      Size = 50
    end
    object CD_EnderecoBAIRRO_COM: TStringField
      FieldName = 'BAIRRO_COM'
      Size = 30
    end
    object CD_EnderecoRENDA: TFMTBCDField
      FieldName = 'RENDA'
      Precision = 18
      Size = 2
    end
    object CD_EnderecoPAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object CD_EnderecoMAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object CD_EnderecoTIPO_ENDERECO: TSmallintField
      FieldName = 'TIPO_ENDERECO'
    end
    object CD_EnderecoENDERECO_2: TStringField
      FieldName = 'ENDERECO_2'
      Size = 50
    end
    object CD_EnderecoBAIRRO_2: TStringField
      FieldName = 'BAIRRO_2'
      Size = 30
    end
    object CD_EnderecoCOMPLEMENTO_2: TStringField
      FieldName = 'COMPLEMENTO_2'
      Size = 30
    end
    object CD_EnderecoCEP_2: TStringField
      FieldName = 'CEP_2'
      Size = 9
    end
    object CD_EnderecoCIDADE_2: TStringField
      FieldName = 'CIDADE_2'
      Size = 50
    end
    object CD_EnderecoUF_2: TStringField
      FieldName = 'UF_2'
      Size = 2
    end
    object CD_EnderecoTEMPO_SERVICO: TIntegerField
      FieldName = 'TEMPO_SERVICO'
    end
    object CD_EnderecoEMPREGO_ANTERIOR: TStringField
      FieldName = 'EMPREGO_ANTERIOR'
      Size = 50
    end
    object CD_EnderecoDATA_CASAMENTO: TDateField
      FieldName = 'DATA_CASAMENTO'
    end
    object CD_EnderecoFONE_SAC: TStringField
      FieldName = 'FONE_SAC'
      Size = 18
    end
    object CD_EnderecoCPF_CONJUGE: TStringField
      FieldName = 'CPF_CONJUGE'
    end
    object CD_EnderecoRG_CONJUGE: TStringField
      FieldName = 'RG_CONJUGE'
    end
    object CD_EnderecoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CD_EnderecoNUMERO_2: TStringField
      FieldName = 'NUMERO_2'
      Size = 8
    end
    object CD_EnderecoCODIGO_IBGE_2: TStringField
      FieldName = 'CODIGO_IBGE_2'
      Size = 10
    end
    object CD_EnderecoID_REGIAO_2: TIntegerField
      FieldName = 'ID_REGIAO_2'
    end
  end
  object DS_Endereco: TDataSource
    DataSet = CD_Endereco
    Left = 592
    Top = 304
  end
  object CIDADE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 496
    Top = 120
    object CIDADECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 461
    Top = 277
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 501
    Top = 441
  end
  object DataSource1: TDataSource
    DataSet = CIDADE
    Left = 368
    Top = 424
  end
  object ImageList1: TImageList
    Height = 26
    Width = 26
    Left = 360
    Top = 264
    Bitmap = {
      494C01011B0030003C001A001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000068000000B60000000100200000000000C027
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080605500EBE6E400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000806055008060550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000087695F0080605500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFC3BF008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000554646005546460055464600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F7F70055464600554646005A4B4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500806055008060
      5500F3EFEE00000000000000000000000000000000000000000000000000B3A0
      9900806055000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055464600E2CFC700E2CFC700E2CFC700554646000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000055464600E2CFC700E2CFC70055464600EAE8
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000806055008060550080605500B2995700C1AB5700C1AB
      5700806055008060550080605500000000000000000000000000000000008060
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000055464600E2CFC700D2B9AF00E2CFC700554646000000
      0000000000000000000000000000D2B9AF00B39C9500D2B9AF00B39C9500D2B9
      AF00000000000000000055464600E2CFC700D2B9AF00D2B9AF00E2CFC7005546
      4600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700806055008060550000000000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B1A5A2008774700055464600E2CFC700E2CFC700E2CFC700554646008774
      7000877470008774700087747000D2B9AF00B39C9500D2B9AF00B39C9500D2B9
      AF0087747000877470005C4C4C00E2CFC700E2CFC700E2CFC700E2CFC7005546
      460087747000B1A5A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      550080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB570080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A4B50005A4B50005A4B5000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A4B50005A4B50005A4B500000000000000000000000
      000087747000877470005748480055464600B6A59F0055464600877470008774
      7000877470008774700087747000D2B9AF00D2B9AF00D2B9AF00D2B9AF00D2B9
      AF00877470006EC3FF0087747000554646005546460055464600554646008774
      70006EC3FF006EC3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE008060
      5500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A4B5000EEEDED00EEEDED005A4B50000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A4B5000EEEDED00EEEDED005B4C51005A4B5000000000000000
      00006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D
      5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D
      5B006E5D5B006EC3FF006EC3FF006E5D5B006E5D5B006E5D5B006E5D5B006EC3
      FF006EC3FF006EC3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080605500D8CB
      7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700B49C57008060
      5500000000000000000000000000000000000000000000000000000000005A4B
      5000EEEDED00DEDBDC00DEDBDC005A4B5000DCAA0000DCAA0000DCAA0000DCAA
      0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA
      0000DCAA00005A4B5000DEDBDC00DEDBDC00EEEDED005A4B5000DCAA0000DCAA
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF006EC3FF006EC3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB57008060
      5500000000000000000000000000000000000000000000000000DCAA0000F0BE
      64005A4B5000EEEDED00EEEDED005A4B5000F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE64005A4B5000EEEDED00EEEDED009C9396005A4B5000F0BE6400F0BE
      640082D7FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF0082D7
      FF006E5D5B006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF006EC3FF006EC3FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700BEA7
      5700806055000000000000000000000000000000000000000000F0BE6400F0BE
      64005A4B50005A4B50005A4B5000F0BE6400F0BE6400DCAA0000DCAA0000DCAA
      0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA
      0000F0BE6400F0BE64005A4B50005A4B50005A4B5000F0BE6400F0BE6400DCAA
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700806055000000000000000000000000000000000000000000F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F6C87200FFD787000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500C1AB5700D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      57008060550000000000000000000000000000000000000000006464FF006464
      FF00FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD7
      8700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD7
      8700FFD78700FFD78700FFD78700FFDA91000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCBFBA00C0AA5700C1AB5700C1AB
      5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      570080605500000000000000000000000000000000000000000000000000F0BE
      6400F0BE64006B5D62006B5D62005A4B50006B5D62006B5D62006B5D62006B5D
      62005A4B50006B5D62006B5D62006B5D62006B5D6200E0B264006B5D62000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF00FAE1B400FAE1B400FAE1B400FAE1B40082D7FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000997D5600C1AB5700C1AB
      5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700806055000000000000000000000000000000000000000000000000000000
      0000F0BE6400F0BE64006B5D62005A4B50006B5D62006B5D62006B5D62006B5D
      62005A4B50006B5D62006B5D62006B5D6200F0BE64006B5D6200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF00FAE1B400FAE1B400FAE1B400FAE1B40082D7FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500C1AB5700C1AB
      5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB
      7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700806055000000000000000000000000000000000000000000000000000000
      000000000000F0BE6400F0BE6400CAA36300AA8A5E00CAA36300CAA36300CAA3
      6300AA8A5E00CAA36300CAA36300F0BE6400CAA3630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF006E5D5B0082D7FF00FAE1B400FAE1B400FAE1B40082D7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700806055000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF000000000082D7FF00FAE1B400FAE1B400FAE1B40082D7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB57008060
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080605500C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB57008060
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055008363
      5500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      5500BCA65700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C0080605500E7E0DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060550080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700D8CB7C00D8CB7C00D8CB7C00D8CB7C008060550094797000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000886B60008060550080605500C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700D8CB7C0080605500806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF727272FF8D8D8DFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFF727272FF3B3B3BFF2A2A2AFF8D8D8DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF7272
      72FF3C3C3CFFE5E5E5FF3B3B3BFF727272FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F00000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF3C3C
      3CFFE6E6E6FF3C3C3CFF727272FFFEFEFEFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F0000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF727272FF3C3C3CFFE5E5
      E5FF3C3C3CFF727272FFFEFEFEFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F20000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7F7F7FFC7C7C7FFAAAAAAFFA6A6A6FFBBBBBBFFE9E9E9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF727272FF3C3C3CFFE5E5E5FF3C3C
      3CFF717171FFFEFEFEFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700BF83
      7300EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A420000000000000000000000
      00000000000000000000604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9
      C9FF565656FF111111FF3A3A3AFF5B5B5BFF606060FF494949FF181818FF3636
      36FF9E9E9EFFFBFBFBFFFFFFFFFF717171FF3C3C3CFFE6E6E6FF3C3C3CFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700BF837300BF83
      7300EDECE700BF837300BF837300BF837300BF837300BF837300BF837300BF83
      7300EDECE700EDECE700EDECE700604A4200604A4200604A4200000000000000
      000000000000604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB000000000000000000000000000000
      000000000000000000000000000016BAEB000000000016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF646464FF2323
      23FF9C9C9CFFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFC2C2
      C2FF4D4D4DFF2E2E2EFF626262FF3C3C3CFFE5E5E5FF3C3C3CFF727272FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700BF837300EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200000000000000
      000000000000604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFEDEDEDFF343434FF686868FFF6F6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAEAEAEFF0F0F0FFFA0A0A0FF3C3C3CFF717171FFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700E3D4CD00EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A420000000000000000000000
      000000000000604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB000000000000000000000000000000
      00000000000016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      42000000000000000000FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFAFAFAFF3D3D3DFF7E7E7EFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCCCCCCFF0F0F0FFF626262FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A420000000000000000000000
      00000000000000000000604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCDCD00000000000000000000000000000000000000
      00000000000000000000FFFFFFFF848484FF525252FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEFF2E2E2EFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700BBB6AF00EDEC
      E700BBB6AF00BBB6AF00EDECE700BBB6AF00EDECE700BBB6AF00BBB6AF00EDEC
      E700D1CEC800EDECE700EDECE700604A4200604A420000000000000000000000
      000000000000604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB00604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECECECFF161616FFE5E5E5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DFF9E9E9EFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200000000000000
      0000604A4200604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3F3F3000000000000000000000000000000
      00000000000000000000919191FF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FF363636FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700BBB6AF00BBB6
      AF00BBB6AF00BBB6AF00EDECE700EDECE700BBB6AF00BBB6AF00BBB6AF00BBB6
      AF00EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000474747FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF181818FFE9E9E9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000171717FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494949FFBBBBBBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      420098989800FBFBFB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000080808FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060FFA6A6A6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200000000006161610000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0AFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5BFFAAAAAAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F453800604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000252525FFDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3A3AFFC8C8C8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F453800604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5FFF9E9E9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FF111111FFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F453800604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700C7CAC700C7CAC700C7CAC700604A4200604A4200604A
      4200C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B3B3B3FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CFF565656FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700C7CAC700C7CAC700C7CAC700604A4200C7CAC700604A
      4200C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A4200604A
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFF2A2A2AFFBBBBBBFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6FF232323FFC9C9C9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700C7CAC700C7CAC700C7CAC700C7CAC700604A4200C7CAC700604A
      4200C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A4200604A
      42000000000000000000000000000A0A0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFBEBEBEFF222222FFEBEBEBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF686868FF636363FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700C7CAC700C7CAC700C7CAC700C7CAC700604A4200C7CAC700604A
      4200C7CAC700C7CAC700604A4200604A4200604A4200604A4200604A42000000
      000000000000000000000000000000000000EDEDED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE00000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFF868686FF353535FFEBEBEBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF7E7E7EFF343434FFF4F4F4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700604A4200604A4200604A
      4200C7CAC700C7CAC700604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002828280000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF868686FF212121FFBBBB
      BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE5E5E5FF525252FF3D3D3DFFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDEC
      E700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700C7CAC700C7CAC700604A4200604A4200604A420000000000000000000000
      0000000000000000000000000000000000000000000011111100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBEFF2A2A
      2AFF3F3F3FFF9E9E9EFFDCDCDCFFFBFBFBFFFDFDFDFFECECECFFB8B8B8FF6666
      66FF161616FF848484FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A4200604A
      4200604A4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700C7CA
      C700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700C7CAC700C7CAC700604A4200604A42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFB3B3B3FF5F5F5FFF252525FF0A0A0AFF080808FF171717FF474747FF9191
      91FFECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4538009DCEFB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000152C6300152C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      0000000000000000000000000000000000009DCEFB004F4538009DCEFB009DCE
      FB009DCEFB009DCEFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000152C6300152C6300152C6300152C6300152C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAF2EF006E5D5B006E5D5B008774700087747000877470008774
      700087747000877470006E5D5B00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF009DCEFB009DCEFB009DCE
      FB009DCEFB009DCEFB009DCEFB0016BAEB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63001024
      4F008C6153008C61530010244F0010244F0010244F0010244F00FCFCFD00824B
      4100824B41000000000000000000000000000000000000000000000000000000
      000000000000FAF2EF006E5D5B008774700087747000877470006E5D5B008774
      700087747000877470006E5D5B00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500000000008060550000000000806055008060
      5500000000008060550000000000806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF009DCEFB009DCEFB009DCE
      FB009DCEFB009DCEFB009DCEFB0016BAEB00198AED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63001024
      4F008C6153008C6153008C61530010244F0010244F0010244F0010244F00824B
      4100824B41000000000000000000000000000000000000000000000000000000
      000000000000FAF2EF0078E6C30087747000877470006E5D5B006E5D5B006E5D
      5B00877470008774700078E6C300FAF2EF00FAF2EF00B39C9500B39C9500FAF2
      EF00E2CFC700E2CFC700E2CFC700E2CFC700FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF009DCEFB009DCEFB009DCE
      FB0016BAEB0016BAEB0016BAEB0016BAEB00198AED00198AED00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      0000000000008C6153008C61530000000000000000000000000010244F00824B
      4100824B41000000000000000000000000000000000000000000000000000000
      000000000000FAF2EF0078E6C30046415A0046415A006E9BD2006E9BD2006F9D
      D4006B5C5C005055780078E6C300FAF2EF00FAF2EF00C7B4AF00F3E8E500FAF2
      EF00E9D8D300E9D8D300E9D8D300E9D8D300E9D8D300E9D8D300E9D8D300FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF009DCEFB009DCEFB009DCE
      FB0016BAEB00198AED00198AED00198AED0016BAEB00198AED00198AED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      0000000000008C6153008C6153008C615300000000000000000010244F000000
      0000824B4100824B410000000000000000000000000000000000000000000000
      000000000000FAF2EF0078E6C30046415A0046415A0078AFE60087C0F00087C0
      F0004B4B69004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055000000000000000000000000000000
      0000000000000000000080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF00FFFFFF009DCEFB009DCE
      FB0016BAEB00198AED00198AED00198AED001E8EED0016BAEB00198AED00198A
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000008C6153008C615300000000000000000010244F000000
      0000824B4100824B410000000000000000000000000000000000000000000000
      000000000000FAF2EF0078E6C30046415A0078AFE60078AFE60087C0F00087C0
      F00087C0F0004B4B690078E6C300FAF2EF00FAF2EF00B39C9500B39C9500FAF2
      EF00E2CFC700E2CFC700E2CFC700E2CFC700E2CFC700E2CFC700FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0016BAEB0016BA
      EB0016BAEB00198AED00198AED00198AED00198AED001E8EED0016BAEB00198A
      ED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000008C6153008C6153008C6153000000000010244F000000
      0000824B4100824B41001B3980001B3980001B3980001B3980001B3980001B39
      800000000000FAF2EF0078E6C30046415A0078AFE60087C0F00087C0F00087C0
      F00087C0F0004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00198A
      ED00198AED0016BAEB00198AED00198AED00198AED00198AED00198AED0016BA
      EB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      00000000000000000000000000008C6153008C6153000000000010244F000000
      0000824B4100824B41001B3980001B3980001B3980001B3980001B3980001B39
      800000000000FAF2EF0078E6C30046415A0078AFE60087C0F00087C0F00087C0
      F00087C0F0004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700C9833000C9833000C9833000C9833000C983
      3000C9833000C9833000C9833000EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00198AED00198AED0016BAEB001E8EED00198AED00198AED00198AED00198A
      ED0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      00000000000000000000000000008C6153008C6153000000000010244F00824B
      4100824B4100824B41001B3980001B3980001B3980001B3980001B3980001B39
      800000000000FAF2EF0078E6C30046415A0046415A0046415A0078AFE60087C0
      F00087C0F0004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700CB883900C9833000C9833000C983
      3000C9833000D7AC7700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00198AED00198AED0016BAEB00198AED00198AED00198AED00198A
      ED001E8EED0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C63001B398000152C63000000
      00000000000000000000000000008C6153008C615300D0BFB90010244F00824B
      4100824B4100000000001B3980001B3980001B3980001B3980001B3980001B39
      800000000000FAF2EF0078E6C30078E6C3004B4B69004B4B69004B4B69004B4B
      69004B4B69005055780078E6C300FAF2EF00FAF2EF0078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700C9833000C983
      3000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00198AED00198AED0016BAEB00198AED00198AED00198A
      ED00198AED00198AED0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C63001B398000152C63000000
      0000000000000000000000000000000000008C6153004A221B004A221B004A22
      1B004A221B00000000001B3980001B3980001B3980001B3980001B3980001B39
      800000000000FAF2EF0078E6C30078E6C30046415A004B4B69004B4B69004B4B
      69005055780078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C983
      3000C9833000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BAEB001E8EED00198A
      ED00198AED00198AED00198AED0016BAEB00198AED00198AED00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C63001B398000152C63000000
      0000000000000000000000000000000000004A221B004A221B004A221B004A22
      1B004A221B00000000005C2D25005C2D2500000000009EB6FF00000000000000
      000000000000FAF2EF0078E6C30078E6C30078E6C30046415A004B4B69004B4B
      690078E6C30078E6C30078E6C300FAF2EF00FAF2EF0078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C9833000C983
      3000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BAEB00198A
      ED00198AED00198AED00198AED001E8EED0016BAEB00198AED00198AED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C63001B398000152C63009EB6
      FF00000000000000000000000000000000004A221B004A221B004A221B004A22
      1B005C2D25005C2D25005C2D25005C2D25005C2D2500D5D4E200000000000000
      000000000000FAF2EF0078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700CF934D00C9833000C9833000C9833000C983
      3000C9833000C9833000CF934D00EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BA
      EB00198AED00198AED00198AED00198AED00198AED0016BAEB00198AED00198A
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C6300FDFE
      FF005C2D2500000000000000000000000000000000004A221B004A221B004A22
      1B005C2D25005C2D250000000000000000000000000000000000000000000000
      000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C9833000C983
      3000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198A
      ED0016BAEB001E8EED00198AED00198AED00198AED00198AED0016BAEB00198A
      ED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      00005C2D25005C2D2500A78D890000000000000000004A221B004A221B004A22
      1B005C2D25005C2D25004A221B00000000000000000000000000000000000000
      000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00E2CFC700E2CFC700E2CFC700E2CFC700FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C9833000C983
      3000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198A
      ED00198AED0016BAEB00198AED00198AED00198AED00198AED001E8EED0016BA
      EB00198AED00BCE6F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      0000000000005C2D25005C2D25005C2D2500000000004A221B004A221B005C2D
      25005C2D25004A221B004A221B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700B39C9500B39C9500E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C9833000C983
      3000C9833000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00198AED00198AED0016BAEB00198AED00198AED00198AED00198AED001E8E
      ED00BDEBF400BFECF200C7CAC700FFFFFF00FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000005C2D25005C2D25005C2D25005C2D25004A221B005C2D
      25005C2D25004A221B004A221B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700CE914800EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00198AED00198AED0016BAEB001E8EED00198AED00198AED00BFEC
      F200BFECF200C7CAC700BFECF200BFECF200FFFFFF00FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000005C2D25004A221B005C2D
      25005C2D25004A221B004A221B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00198AED00198AED0016BAEB00198AED00BDE7F400BFEC
      F200C7CAC700BFECF200BFECF200C7CAC700C7CAC700FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000000000000010244F004A22
      1B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED00BDEBF400BFECF200C7CA
      C700BFECF200BFECF200C7CAC700C7CAC7004A5AD7004A5AD700152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000000000000010244F000000
      0000000000009EB6FF009EB6FF009EB6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCE6F400BFECF200C7CAC700BFEC
      F200BFECF200C7CAC700C7CAC7004A5AD7004A5AD7004A5AD700152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000000000000010244F000000
      00009EB6FF009EB6FF009EB6FF009EB6FF00ABC0FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070DBAD0070DBAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A42000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7CAC700BFECF200BFEC
      F200C7CAC700C7CAC7004A5AD7004A5AD7004A5AD7004A5AD700152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000000000000010244F000000
      0000000000009EB6FF009EB6FF009EB6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078E6C30078E6C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFECF200C7CA
      C700C7CAC7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD700152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300152C63000000
      000000000000000000000000000000000000000000000000000010244F000000
      000000000000000000009EB6FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078E6C30078E6C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700604A4200EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7CA
      C7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD700FFFFFF00152C6300152C
      6300152C6300152C6300152C6300152C63000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010244F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078E6C30078E6C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000604A4200000000000000
      0000604A42000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004A5AD7004A5AD7004A5AD7004A5AD700FFFFFF00FFFFFF00152C6300152C
      630010244F0010244F0010244F0010244F0010244F0010244F0010244F001024
      4F0010244F0010244F0010244F0010244F0010244F0010244F0010244F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078E6C30078E6C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000604A420000000000000000000000
      000000000000604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024B3FF000096FF000096
      FF000096FF0000D2FF0000D2FF0000D2FF0060E3FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000096FF000096FF000096FF000096FF000096
      FF000096FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF1000000000000000000CB978600CB978600000000000000
      0000000000000000000000000000000000000000000000000000806055008060
      5500000000000000000000000000000000000000000000000000000000000000
      00004C323D004C323D0000000000000000000000000000000000000000000000
      0000000000000096FF000096FF000096FF000096FF000096FF000096FF000096
      FF00E1DCD800E1DCD80000D2FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2
      FF0000D2FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF10000000000CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000000000000000000080605500806055008060
      55008060550000000000000000000000000000000000000000004C323D004C32
      3D004C323D004C323D004C323D00000000000000000000000000000000000000
      00000096FF000096FF000096FF000096FF00BBD5DF00E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD800CDDBDC0000D2FF0000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00F9F0ED00EDDED700EDDED700EDDED700EDDE
      D700EDDED700F6EBE700FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700F9F0ED00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF100CB978600CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000000000008060550080605500806055008060
      55008060550080605500000000000000000000000000000000004C323D004C32
      3D004C323D004C323D004C323D004C323D000000000000000000000000000096
      FF000096FF000096FF000096FF00E1DCD800BEB5B400E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD800BEB5B400E1DCD80000D2
      FF0000D2FF0000D2FF0000D2FF00000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00E9D8D300E9D8D300FAF2EF00F1E3
      DE00F1E3DE00F1E3DE00F1E3DE00FAF2EF00FAF2EF00F1E3DE00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF100CB978600CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000000000008060550080605500806055008060
      55008060550080605500000000000000000000000000000000004C323D004C32
      3D004C323D004C323D004C323D004C323D0000000000000000000096FF000096
      FF000096FF000096FF00E1DCD800E1DCD800E1DCD800E1DCD800E1DCD8000000
      0000000000000000000000000000E1DCD800E1DCD800E1DCD800E1DCD800E1DC
      D80000D2FF0000D2FF0000D2FF0000D2FF000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF100CB978600CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000000000008060550080605500806055008060
      55008060550080605500000000000000000000000000000000004C323D004C32
      3D004C323D004C323D004C323D004C323D0000000000000000000096FF000096
      FF000096FF00E1DCD800E1DCD800E1DCD800E1DCD80000000000000000000000
      00000000000000000000000000000000000000000000E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000D2FF000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF10000000000CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000000000000000000080605500806055008060
      55008060550000000000000000000000000000000000000000004C323D004C32
      3D004C323D004C323D004C323D0000000000000000000096FF000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1DCD800E1DC
      D800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF0000000000000000000000
      00000000000000000000FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700EDDED700FAF2EF000000000000000000000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000000000000000
      000000000000000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F20000000000000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF1000000000000000000CB978600CB978600000000000000
      0000000000000000000000000000000000000000000000000000806055008060
      5500000000000000000000000000000000000000000000000000000000000000
      00004C323D004C323D000000000000000000000000000096FF000096FF00BBD5
      DF00BEB5B400E1DCD800E1DCD800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1DC
      D800E1DCD800BEB5B400CDDBDC0000D2FF0000D2FF0000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060550000000000000000000000000024B3FF000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0060E3FF00000000000000
      00000000000000000000FAF2EF00E2CFC700E2CFC700E2CFC700FAF2EF00EDDE
      D700EDDED700EDDED700EDDED700FAF2EF00EDDED700EDDED700FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000096FF000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000096FF000096FF000096FF00E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1DCD800E1DCD80000D2FF0000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000096FF000096FF00E1DCD800E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      00006A545C006A545C0000000000000000000096FF000096FF000096FF000096
      FF0000000000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00EDDED700EDDED700EDDED700EDDE
      D700EDDED700FAF2EF00FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000096FF000096FF00E1DCD800E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      00006A545C006A545C0000000000000000000096FF000096FF000096FF000096
      FF0000000000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00E2CFC700E2CFC700FAF2EF00EDDE
      D700EDDED700EDDED700EDDED700FAF2EF00FAF2EF00EDDED700FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000096FF000096FF000096FF00E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1DCD800E1DCD80000D2FF0000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000096FF000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF00000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024B3FF000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      00000096FF000096FF0000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0060E3FF00000000000000
      00000000000000000000FAF2EF00F0D2A000FAE1B400FAE1B4006E5D5B00FAE1
      B400FAE1B400F0D2A000FAF2EF00F0E3DD00EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700EDDED700FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000096FF000096FF00BBD5
      DF00BEB5B400E1DCD800E1DCD800000000000000000000000000000000000000
      00000096FF000096FF000000000000000000000000000000000000000000E1DC
      D800E1DCD800BEB5B400CDDBDC0000D2FF0000D2FF0000000000000000000000
      00000000000000000000FAF2EF00F0D2A000FAE1B400F0D2A0006E9BD200F0D2
      A000FAE1B400F2D5A400FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000096FF000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD8000000000000000000000000000000
      00000096FF000096FF0000000000000000000000000000000000E1DCD800E1DC
      D800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF0000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C3006E9BD20087C0F0006E9B
      D20078E6C30078E6C300FAF2EF00F1E5DF00EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700EDDED700FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9DD6500B9DD
      6500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000096FF000096
      FF000096FF00E1DCD800E1DCD800E1DCD800E1DCD80000000000000000000000
      00000096FF000096FF00000000000000000000000000E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000D2FF000000000000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C30087C0F00087C0F00087C0
      F00078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9DD6500B9DD6500B9DD
      6500B9DD65000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000096FF000096
      FF000096FF000096FF00E1DCD800E1DCD800E1DCD800E1DCD800E1DCD8000000
      00000096FF000096FF0000000000E1DCD800E1DCD800E1DCD800E1DCD800E1DC
      D80000D2FF0000D2FF0000D2FF0000D2FF000000000000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C30087C0F00087C0F00087C0
      F00078E6C30078E6C300FAF2EF00FAF2EF00EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700F5EBE600FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD6500B9DD650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000096
      FF000096FF000096FF000096FF00E1DCD800BEB5B400E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD800BEB5B400E1DCD80000D2
      FF0000D2FF0000D2FF0000D2FF00000000000000000000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C3004B4B69004B4B69004B4B
      690078E6C30078E6C300FAF2EF00FAF2EF00D8EBF400D8EBF400D8EBF400D8EB
      F400D8EBF400D8EBF400FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD6500B9DD650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000096FF000096FF000096FF000096FF00BBD5DF00E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD800CDDBDC0000D2FF0000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C3004B4B69004B4B69004B4B
      690078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD6500B9DD650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000096FF000096FF000096FF000096FF000096FF000096FF000096
      FF00E1DCD800E1DCD80000D2FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2
      FF0000D2FF000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF0078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300FAF2EF00FAF2EF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0089D8FE00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B9DD6500B9DD6500B9DD
      6500B9DD65000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000096FF000096FF000096FF000096FF000096
      FF000096FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2FF0000D2FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6960000E6960000E6960000E6960000E6960000E696
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9DD6500B9DD
      6500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024B3FF000096FF000096
      FF000096FF0000D2FF0000D2FF0000D2FF0060E3FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000728EF5002852F0002852
      F0002852F0002852F0002852F0002852F000728EF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500806055000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000092D79D0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0092D79D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      5500806055008060550000000000000000000000000000000000000000000000
      0000000000000000000080605500806055008060550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      5500806055008060550000000000000000000000000000000000000000000000
      0000000000000000000080605500806055008060550000000000000000000000
      00000000000000000000000000000000000000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B19E
      9700806055008E72680000000000000000000000000000000000000000000000
      0000000000000000000080605500806055000000000000000000000000000000
      000000000000000000000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A00000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500000000000000000000000000000000000000000059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBD2CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A00000000000000000000000000000000002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBD2CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A00E8F6EA0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A000000000000000000000000002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      550080605500806055000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0000000000000000002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F00000000000000000002852F0002852F0002852F00000000000000000000000
      000047433E0047433E0047433E0047433E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000047433E00968F860047433E00000000000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D100806055000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A00000000000000000000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0000000000728EF5002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0000000
      000000000000000000002852F0002852F0002852F000728EF500000000003532
      2E0047433E00E0D6CB00E0D6CB0047433E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000047433E0099979300E0D6CB00ACA8A20047433E000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550092D79D0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000000000000000000000000000000000000000000000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0092D79D002852F0002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0002852F0002852F000000000000000
      000000000000000000002852F0002852F0002852F0002852F0004B4BE1003532
      2E0047433E00E0D6CB00E0D6CB0047433E0035322E004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE10047433E0099979300E0D6CB00E0D6CB003F3B37004B4B
      E10000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A000000000000000000000000000000000059C26A0000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F00000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0004B4BE1004B4B
      E1003E3A360047433E0047433E0047433E004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE10035322E0047433E0047433E0047433E0035322E004B4B
      E10000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C26A000000
      000000000000000000000000000059C26A0059C26A0059C26A00000000000000
      0000000000000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0003EBAF9003BD6
      FF004B4BE10035322E0035322E004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE10035322E004B4BE1004B4BE1004B4B
      E10000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000059C26A0059C26A0059C26A0059C26A0059C26A000000
      000000000000000000000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A002852F0002852F0002852F0000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F000000000004B4B
      E1003BD8FF004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1003BD8FF000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A002852F0002852F0002852F0000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F000000000000000
      000000000000000000004B4BE1004B4BE1004B4BE1004B4BE10047433E005552
      7B004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1003BD8FF000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000000000000000000000000000059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A002852F0002852F0002852F0002852
      F000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F000000000000000
      000000000000000000000000000000000000000000004B4BE1004B4BE1004743
      3E00635F5A0047433E0047433E0047433E004B4BE10047433E00635F5A004743
      3E0047433E0047433E0047433E0047433E004B4BE1004B4BE1004B4BE1000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A00728EF5002852F0002852F0002852
      F0000000000000000000000000002852F0002852F0002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F000728EF500000000000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      E100635F5A00635F5A00635F5A0047433E004B4BE10047433F0047433E00635F
      5A00635F5A0047433E0047433E004B4BE1004B4BE1004B4BE100000000000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D1008060550092D79D0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A000000000000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A0092D79D00000000002852F0002852F0002852
      F00000000000000000002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004B4BE1004B4BE10049478A0047433E004B4BE10047433E00635F
      5A00504D9B004B4BE1004B4BE1004B4BE1000000000000000000000000000000
      000000000000000000000000000000000000BAB3AE00D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4
      D100D1D4D100D1D4D10080605500D1D4D100D1D4D100BAB3AE00D1D4D100D1D4
      D100D1D4D100806055000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A00000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0000000000000000002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0002852F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      550080605500806055000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A000000000000000000000000002852F0002852
      F0002852F0002852F0002852F0002852F0002852F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBD2CF000000000019C4F00019C4
      F00019C4F00019C4F00019C4F00019C4F00019C4F000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB978600767BFB00767BFB00767BFB00767B
      FB000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A00000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBD2CF000000000019C4F00019C4
      F00019C4F00019C4F00019C4F00019C4F00019C4F000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB978600767BFB00767BFB00767BFB00767B
      FB000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005E62D8005E62D800E3E4F80000000000DBD2CF000000000019C4F00019C4
      F00019C4F00019C4F00019C4F00019C4F00019C4F000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB978600767BFB00767BFB00767BFB00767B
      FB00000000000000000000000000000000000000000059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005E62D8005E62D8005E62D800806055000000000000000000000000000000
      00000000000000000000000000000000000000000000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB978600767BFB00767BFB00767BFB00767B
      FB0000000000000000000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A00000000000000000000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E62D80000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB978600767BFB00767BFB00767BFB00767B
      FB000000000000000000000000000000000000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB9786000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000728EF5002852F0002852
      F0002852F0002852F0002852F0002852F000728EF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB978600CB978600CB97
      8600CB978600CB978600CB978600CB9786000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000092D79D0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0092D79D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900000000000000000000000000000000000000
      0000E2CFC700E2CFC700E2CFC700E2CFC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2CFC700E2CF
      C700E2CFC700E2CFC700000000000000000000000000856141008E694A008E69
      4A008E694A0089654500856141008E694A008E694A008E694A00856141008561
      41008E694A008E694A008E694A0085614100896545008E694A008E694A008E69
      4A00856141000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000008E694A00856141008E694A008E69
      4A008E694A0089654500856141008E694A008E694A008E694A00856141008561
      41008E694A008E694A008E694A0085614100896545008E694A008E694A008E69
      4A00856141008E694A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      0000E2CFC70000000000E2CFC700000000000000000000000000000000000000
      000000000000F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EA
      E400F6EAE400000000000000000000000000000000000000000000000000E2CF
      C70000000000E2CFC70000000000000000008E694A00856141008E694A008E69
      4A008E694A0089654500856141008E694A008E694A008E694A00815C3C008460
      3F008E694A008E694A008E694A0085614100896545008E694A008E694A008E69
      4A00856141008E694A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      0000E2CFC7000000000000000000E2CFC700000000000000000000000000F6EA
      E400F6EAE400F6EAE40089DEB8006ED7A5006ED7A5006ED7A5006ED7A5007FDB
      B100F6EAE400F6EAE400F6EAE400000000000000000000000000E2CFC7000000
      000000000000E2CFC70000000000000000008E694A00856141008E694A008E69
      4A008E694A0089654500856141008E694A008E694A007F5A39007F5A39007F5A
      39007F5A39008E694A008E694A0085614100896545008E694A008E694A008E69
      4A00856141008E694A000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      000000000000000000000000000000000000E2CFC70000000000F6EAE400F6EA
      E4006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A5006ED7A500F6EAE400F6EAE40000000000E2CFC700000000000000
      0000000000000000000000000000000000008E694A00856141008E694A008E69
      4A008E694A0089654500856141008E694A007F5A39007F5A39004A3929004A39
      29007F5A39007F5A39008E694A0085614100896545008E694A008E694A008E69
      4A00856141008E694A000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00E3D0C900E9DA
      D400FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B00C4BEBC00C1BBB900E1DCD800DAD5D200C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      00000000000000000000000000000000000000000000F6EAE400F6EAE4006ED7
      A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A5006ED7A5006ED7A500F6EAE400F6EAE40000000000000000000000
      0000000000000000000000000000000000008E694A00856141008E694A008E69
      4A008E694A00896545007F5A39007F5A39007F5A3900E2CDA2004A3929004A39
      2900DCC69B007F5A39007F5A39007F5A3900896545008E694A008E694A008E69
      4A00856141008E694A000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6
      C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B00C1BBB900C1BBB900E1DCD800E1DCD800C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      000000000000000000000000000000000000F6EAE400F6EAE4006ED7A5006ED7
      A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED8A60078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C300F6EAE400F6EAE400000000000000
      00000000000000000000000000000000000000000000856141008E694A008E69
      4A008E694A007F5A39007F5A39007F5A39007F5A3900F0E0B5004A3929004A39
      2900F0E0B5007F5A39007F5A39007F5A3900815D3C008E694A008E694A008E69
      4A0085614100000000000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6
      C300FAF2EF00FAF2EF0078E6C30078E6C300FAF2EF00FAF2EF00E2CFC700E2CF
      C700FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700F9F0ED00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0096898B00C1BBB90000D2FF0043EFFF00E1DCD800C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      0000000000000000000000000000F6EAE400F6EAE4006ED7A5006ED7A5006ED7
      A500F6EAE400F6EAE400F6EAE400F6EAE4008373710083737100F6EAE400F6EA
      E400FAF2EF00F6EAE40078E6C30078E6C30078E6C300F6EAE400F6EAE4000000
      00000000000000000000000000000000000000000000856141008E694A008E69
      4A008E694A007F5A39007F5A39007F5A3900F0E0B500F0E0B500F0E0B500F0E0
      B500F0E0B500F0E0B5007F5A39007F5A39007F5A39008E694A008E694A008E69
      4A0085614100000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF0078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B009689
      8B0000D2FF0000D2FF0000D2FF0043EFFF0043EFFF0043EFFF00C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      0000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7
      A500F6EAE400F6EAE400FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00F6EAE40078E6C30078E6C30078E6C30078E6C300F6EAE4000000
      00000000000000000000000000000000000000000000000000008E694A008E69
      4A007F5A39007F5A39007F5A3900F0E0B500F0E0B500F0E0B500A3D7FF00A3D7
      FF00F0E0B500F0E0B500F0E0B5007F5A39007F5A39007F5A39008E694A008E69
      4A0000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6
      C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00E2CFC700E2CF
      C700FAF2EF0087747000EDDED700EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0096898B0000D2
      FF0000D2FF0000D2FF0000D2FF0043EFFF0043EFFF0043EFFF0043EFFF00C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      00000000000000000000F6EAE400F6EAE4006ED7A5006ED7A5006ED7A5006ED7
      A500F6EAE400FAF2EF00FAF2EF00F6EAE400F6EAE400F6EAE400F6EAE400FAF2
      EF00FAF2EF00FAF2EF0078E6C30078E6C30078E6C30078E6C300F6EAE400F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      00007F5A39007F5A3900F0E0B500F0E0B500F0E0B500A3D7FF0090CAFD008EC8
      FD008EC8FD00F0E0B500F0E0B500F0E0B5007F5A39007F5A3900000000000000
      000000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6
      C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00EDDED7000000000082D7FF00EDDED700FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0000D2FF0000D2
      FF0000D2FF0000D2FF0000D2FF00194FFF0043EFFF0043EFFF0043EFFF0043EF
      FF00C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      00000000000000000000F6EAE40089DEB8006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A50078E6C300FAF2EF00F6EAE4006E9BD20078AFE600F6EAE400FAF2
      EF0078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300AEE8D100F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0E0B500F0E0B500A3D7FF008EC8FD008EC8FD008EC8
      FD008EC8FD008EC8FD00F0E0B500F0E0B5000000000000000000000000000000
      000000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6
      C300FAF2EF00FAF2EF0078E6C300FAF2EF00FAF2EF00FAF2EF0078E6C30078E6
      C30078E6C30078E6C3006EC3FF0082D7FF0082D7FF006ED7A50078E6C30078E6
      C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0000D2FF0000D2
      FF0000D2FF0000D2FF0000D2FF00194FFF0043EFFF0043EFFF0043EFFF0043EF
      FF00C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      00000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30078E6C3006E9BD20087C0F00087C0F0006F9DD40078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A3D7FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF008EC8FD00000000000000000000000000000000000000
      000000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF0078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF006EC3FF0082D7FF0082D7FF00EDDED700FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      0000000000000000000096898B0096898B0096898B0096898B0000D2FF0000D2
      FF0000D2FF00194FFF00194FFF00194FFF00194FFF0043EFFF0043EFFF0043EF
      FF00C1BBB900C1BBB900C1BBB900C1BBB9000000000000000000000000000000
      00000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30078E6C30078AFE60087C0F00087C0F00087C0F00078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00E4EBF2006EC3FF0082D7FF0082D7FF00EDDE
      D700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      000000000000BEB6B70096898B0096898B0096898B0096898B0000D2FF0000D2
      FF0000D2FF0000D2FF00194FFF0043EFFF0043EFFF0043EFFF0043EFFF0043EF
      FF00C1BBB900C1BBB900C1BBB900C1BBB900E2DFDE0000000000000000000000
      00000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7A50078E6
      C30078E6C30078E6C30078AFE60078AFE60087C0F00087C0F00087C0F00087C0
      F00078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF000000000000000000000000000000
      000000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF006EC3FF0082D7FF0082D7
      FF00EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B0000D2
      FF0000D2FF0000D2FF0000D2FF0043EFFF0043EFFF0043EFFF0043EFFF00C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      00000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7A50078E6
      C30078E6C30078E6C30078AFE60078AFE60087C0F00087C0F00087C0F00087C0
      F00078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006EC3FF0082D7
      FF0082D7FF000000000000000000000000000000000000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B0000D2
      FF0000D2FF0000D2FF0000D2FF0043EFFF0043EFFF0043EFFF0043EFFF00C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      00000000000000000000F6EAE40083DCB3006ED7A5006ED7A5006ED7A50078E6
      C30078E6C30078E6C30046415A0078AFE60087C0F00087C0F00087C0F0005055
      780078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300AEE8D100F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8F6FF006EC3
      FF0082D7FF0082D7FF0000000000000000000000000000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0000D2FF0000D2FF0043EFFF0043EFFF00C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      00000000000000000000F6EAE400F6EAE4006ED7A5006ED7A5006ED7A50078E6
      C30078E6C30078E6C30046415A0078AFE60078AFE60078AFE60087C0F0005055
      780078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EAE400F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000CBEBFF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8F6
      FF006EC3FF0082D7FF0082D7FF00000000000000000000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      0000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7A50078E6
      C30078E6C30078E6C3004B4B69004B4B69004B4B69004B4B69004B4B69005055
      780078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EAE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006EC3FF0082D7FF0082D7FF000000000000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      0000000000000000000000000000F6EAE400F6EAE4006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30078E6C3004B4B69004B4B69004B4B69004B4B690078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EAE400F6EAE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065545400B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8F6FF006EC3FF0082D7FF0082D7FF0000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      000000000000000000000000000000000000F6EAE400F6EAE4006ED7A5006ED7
      A50078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C300F6EAE400F6EAE400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065545400B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF0093A7B900B2E1FF00B2E1FF00B2E1FF006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8F6FF006EC3FF0082D7FF00FAF2EF00000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      00000000000000000000000000000000000000000000F6EAE400F6EAE4006ED7
      A50078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300F6EAE400F6EAE40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006554540065545400B2E1FF006554540065545400655454006554
      5400655454006554540065545400655454006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDDED700FAF2EF00000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      000000000000000000000000000000000000E2CFC70000000000F6EAE400F6EA
      E4006ED7A50078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300F6EAE400F6EAE40000000000E2CFC700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006554540065545400655454006554540065545400655454006554
      5400655454006554540065545400655454006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C00000000000000
      0000E2CFC7000000000000000000E2CFC700000000000000000000000000F6EA
      E400F6EAE400F6EAE400AEE8D10078E6C30078E6C30078E6C30078E6C300AEE8
      D100F6EAE400F6EAE400F6EAE400000000000000000000000000E2CFC7000000
      000000000000E2CFC70000000000000000000000000000000000000000000000
      0000000000006554540065545400655454006554540065545400655454006554
      5400655454006554540065545400655454006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A79A9E006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C00A79A9E00000000000000
      0000E2CFC70000000000E2CFC700000000000000000000000000000000000000
      000000000000F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EA
      E400F6EAE400000000000000000000000000000000000000000000000000E2CF
      C70000000000E2CFC70000000000000000000000000000000000000000000000
      0000000000006554540065545400655454006554540065545400655454006554
      5400655454006554540065545400655454006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C007F645D007F645D007F645D007F645D007F64
      5D007F645D007F645D007F645D007F645D000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000000000000000000000000000000000
      00000000000000000000DBD7D700655454006554540065545400655454006554
      5400655454006554540065545400655454006554540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C007F645D007F645D007F645D007F645D007F64
      5D007F645D007F645D007F645D007F645D000000000000000000000000000000
      0000E2CFC700E2CFC700E2CFC700E2CFC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2CFC700E2CF
      C700E2CFC700E2CFC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065545400655454006554
      5400655454006554540000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5DB8C00EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000F5DB8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC8500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CDDB00B8CD
      DB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00000000000000000000000000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CDDB00B8CD
      DB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00000000000000000000000000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      000000000000000000005A4B5000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A4B5000C7C2C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      00005A4B50009B929500EEEDED005A4B50000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A4B5000EEEDED00EEEDED005A4B500000000000000000000000
      00000000000000000000000000005A4B50005A4B50005A4B5000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A4B50005A4B50005A4B50000000
      000000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000F5DB8C00EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000F5DB8C00000000000000
      00005A4B5000DEDBDC00DEDBDC00EEEDED005A4B500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A4B5000EEEDED00DEDBDC00DEDBDC005A4B500000000000000000000000
      000000000000000000005A4B5000EEEDED00EEEDED00EEEDED005A4B50000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A4B5000EEEDED00EEEDED00EEEDED005A4B
      500000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000000073CD
      8C005A4B5000EEEDED00DEDBDC00EEEDED005A4B500073CD8C0073CD8C0073CD
      8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD
      8C005A4B5000EEEDED00DEDBDC00EBEAEA005A4B500073CD8C0073CD8C0073CD
      8C00000000005A7DFF005A4B5000EEEDED00DEDBDC00EEEDED005A4B50005A7D
      FF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7D
      FF005A7DFF005A7DFF005A7DFF005A4B5000EEEDED00DEDBDC00EEEDED005A4B
      50005A7DFF005A7DFF000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC8500078E1960078E1
      96005A4B50005A4B50005A4B50005A4B500078E1960073CD8C0073CD8C0073CD
      8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD
      8C0078E196005A4B50005A4B50005A4B50005A4B500078E1960073CD8C0073CD
      8C006491FF006491FF005A4B5000EEEDED00EEEDED00EEEDED005A4B50006491
      FF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7D
      FF005A7DFF005A7DFF006491FF005A4B5000EEEDED00EEEDED00EEEDED005A4B
      50006491FF005A7DFF000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC8500078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      96006491FF006491FF006491FF005A4B50005A4B50005A4B50006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF005A4B50005A4B50005A4B50006491
      FF006491FF006B9BFF000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC8500078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E19600EEEDED000000
      00006464FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF00EEEDED00000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB0000000000000000000000
      0000B8CDDB00B8CDDB000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC850006464FF006464
      FF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0
      AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0
      AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF00000000000000
      00007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CDDB00B8CD
      DB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CD
      DB00B8CDDB00B8CDDB00B8CDDB0000000000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000000000006B5D
      62006B5D620078E1960078E196006B5D62006B5D62006B5D62006B5D62005A4B
      50006B5D62006B5D62006B5D62006B5D62006B5D620078E196006B5D62007086
      7700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006491FF006491FF006B5D62006B5D
      62005A4B50006B5D62006B5D62006B5D62006B5D62006B5D62006B5D62006491
      FF006B5D62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CDDB00B8CD
      DB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000B8CD
      DB00B8CDDB00B8CDDB00B8CDDB0000000000F5DB8C00EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000F5DB8C00000000000000
      00006B5D62006B5D620078E196006B5D62006B5D62006B5D62006B5D62005A4B
      50006B5D62006B5D62006B5D62006B5D62006D756C006B5D62006B5D62000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006491FF006491FF006B5D
      62006B5D62005A4B50006B5D62006B5D62006B5D62006B5D62006491FF006B5D
      6200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      0000729581006B5D620078E196006B5D62006B5D62006B5D62006B5D62005A4B
      50006B5D62006B5D62006B5D62006B5D620078E196006B5D6200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006491FF006491
      FF006B5D62005A4B50006B5D62006B5D62006B5D62006491FF006B5D62000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      0000000000000000000078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8CD
      DB0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD00B8CDDB000000
      0000000000000000000000000000000000000000000000000000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8CD
      DB00B8CDDB00BCD0DD0091AABD0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD0091AABD0091AABD00BCD0DD00B8CDDB00B8CDDB000000
      0000000000000000000000000000000000000000000000000000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCF2FF00DCF2FF00DCF2FF0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD0091AABD00DCF2FF00DCF2FF00DCF2FF00000000000000
      000000000000000000000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF0091AABD0091AABD0091AA
      BD0091AABD00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC8500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5DB8C00EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000F5DB8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000068000000B60000000100010000000000600B00000000000000000000
      000000000000000000000000FFFFFF00FFFFFF3FFFFFFFFFFFFC000000000000
      FFFFFE7FFFFFFFFFFFFC000000000000FFFFFCFFFFFFFFFFFFFC000000000000
      FFFFF9FFFFFFFFFFFFFC000000000000FFFFF3FFFFFFFE3FFE1C000000000000
      FF87E7FFFFFFFC1FFE0C000000000000FC01EFFFFFFFFC1E0C0C000000000000
      F8005FFFFFFFF0000000000000000000E0003FF1FFFC70000000000000000000
      C0001FF0FFF830000000000000000000C0000FE0000000000000000000000000
      80000FC0000000000000000000000000800007C0000000000000000000000000
      800007C0000010000000000000000000800007C00000F0000004000000000000
      000007E0001FF000001C000000000000800007F0003FF000001C000000000000
      800007F8007FF000003C000000000000800007FFFFFFF000083C000000000000
      80000FFFFFFFF000083C000000000000C0000FFFFFFFF0000FFC000000000000
      C0001FFFFFFFF0000FFC000000000000E0001FFFFFFFFFFFFFFC000000000000
      F0003FFFFFFFFFFFFFFC000000000000F800FFFFFFFFFFFFFFFC000000000000
      FF03FFFFFFFFFFFFFFFC000000000000FFFFFFC000000FFFFFF0000000000000
      FFFFFFC000000FFFFFE4000000000000FFFFFFC000000FFFFFCC000000000000
      FFFFFFC000000FFFFF9C0000000000000000000000000FFFFF3C000000000000
      0000000000000FF87E7C00000000000000007C0000000FC31EFC000000000000
      00003800FE800FBFE5FC0000000000000000380000000E7FFBFC000000000000
      00007800F8000CFFFDFC00000000000000007C0000000DFFFCFC000000000000
      0000780000000BFFFEFC0000000000000000300000000BFFFE7C000000000000
      0000000000000BFFFF7C0000000000000000000000000BFFFF7C000000000000
      00000000000003FFFF7C0000000000000000000000000BFFFF7C000000000000
      0000000000000BFFFF7C0000000000000000000000000BFFFF7C000000000000
      0000000000000BFFFEFC0000000000000000000000000DFFFEFC000000000000
      0000000000000CFFFDFC000000000000FFFFFFC000001E7FF9FC000000000000
      FFFFFFC000003F3FF3FC000000000000FFFFFFC000007F8FCFFC000000000000
      FFFFFFC00000FFF03FFC0000000000000000003F9FFFF8000007E0001F000000
      0000003C1FFFF8000007E0001F000000000000000007F8000007E14A1F000000
      000000000007F8000007E0001F0000000000000019C7F8000007E0001F000000
      0000000018D3F8000007E0FC1F000000000000001CD3F8000007E0001F000000
      000000001C5008000007E0001F000000000000001E5008000007E0001F000000
      000000001E4008000007E0001F000000000000001E0408000007E0001F000000
      000000001F0408000007E0001F000000000000001F04B8000007E0001F000000
      000000000F0038000007E0001F000000000000000783F8000007E0001F000000
      000000001181F8000007E0001F000000000000001881FFFE1FFFE0001F000000
      000000001C01FFFE1FFFE0001F000000000000001F81FFFE1FFFE0001F000000
      000000001FCFFFFE1FFFE0001F000000000000001FD8FFFE1FFFE0301F000000
      000000001FD07FFF3FFFE0101F000000000000001FD8FFFF3FFFE0001F000000
      000000001FDDFFFF3FFFE0001F00000000000000FFDFFFFF3FFFFFB7FF000000
      00000000001FFFFF3FFFFF7BFF000000FF807FFC0000FFFFFFFFFFFFFF000000
      FE001FFC0000F03C0F033FCFF3000000F80007FC0000F03C0F020F87C1000000
      F00003FC0000F03C0F000F03C0000000E00001FC0000F03C0F000F03C0000000
      C01E00FC0000F03C0F000F03C0000000C07F80FC0000F03C0F020F87C1000000
      80FFC07C0000F03C0F033FCFF300000081FFE07C0000FEFFFFDFBFFFF7000000
      03FFF03C0000FEFFFFDFBFFFF700000003FFF03C0000FEFFFFDFBFFFF7000000
      07FFF83C0000FEFFFFDFBFFFF700000007F3083C0000FEFFFFDFBFFFF7000000
      07F3083C0000FFFFFFFFFFFFFF00000007FFF83C0000FFFFFFFFFFFFFF000000
      03FFF03C0000FFFFFFFFFFFFFF00000003F3F03C0000FFFFFFFFFFFFFF000000
      81F3E07C0000FFFFFFFFFFFFFF00000080F3C07C0000FFFC0FFFFFCFFF000000
      C07380FC0000FFFC0FFFFF87FF000000C01200FC0000FFFC0FFFFF03FF000000
      E00001FC0000FFFC0FFFFF03FF000000F00003FC0000FFFC0FFFFF03FF000000
      F80007FC0000FFFC0FFFFF87FF000000FE001FFC0000FFFC0FFFFFCFFF000000
      FF807FFC0000FFFFFFFFFFFFFF000000FF807FFFFFFFFFF7FCFFFE01FF000000
      FE001FFFFFFFFFE3FC7FF8007F000000F80007FFFFFFFFE3FC7FE0001F000000
      F01E03FFFFFFFFE3FCFFC0000F000000E0FFC1FFFFFFFF00000F800007000000
      C1FFC0FFFFFFFF7FFFFF000003000000C3FF80FFFFFFFF7FFFFF000003000000
      87FF007FFFFFFF00000201C0010000008FFE0C70FFFE3F00000203E001000000
      0FFC1C20FFFC1F00000007F0000000000FF83C0000000F0000000F7800000000
      1FF07E0000000F0000001E3C000000001FE0FE0000000F0000001C1E00000000
      1FC1FE2000001F000000080F000000001F83FE3C00001F000000000780000000
      0F07FC3F80001F0000000003C00000000E0FFC3FE0003F0000000001E0000000
      8C1FFC7FF800FF0000020000C1000000803FF87FFFFFFF000002000001000000
      C07FF0FFFFFFFF40000F000003000000C0FFE0FFFFFFFF40000F000003000000
      E0FFC1FFFFFFF140000F800007000000F01E03FFFFFFF0FF800FC0000F000000
      F80007FFFFFFFBFF800FE0001F000000FE001FFFFFFFFFFF80FFF8007F000000
      FF807FFFFFFFFFFF80FFFE01FF000000FFFFFFFE0001F0FFFFC3800007000000
      FFFFFFFC0000F3FFFFF3000003000000FFFFFFFC0000F5F807EB000003000000
      FFFFFFFC0000F6E001DB0000030000000000003C0000FF4000BF000003000000
      0000003C0000FF80007F0000030000000000003C0000FF00003F800007000000
      0000003C0000FE00001F8000070000000000003C0000FE00001FC0000F000000
      0000003C0000FC00000FF0003F0000000002003C0000FC00000FFC00FF000000
      0000003C0000FC00000FFE01FF0000000000003C0000FC00000FFE01FF000000
      0000003800007C00000FFC00FF0000000000003800007C00000FF8007F000000
      FFFFC7F800007C00000FF8007F000000FFFFC3F800007C00000FF0007F000000
      FFFFE1F800007E00001FF8007F000000FFFFF8F800007E00001FF8007F000000
      FFFFF87800007F00003FF8007F000000FFFFFC3800007F80007FF8007F000000
      FFFFFF3800007F4000BFF8007F000000FFFFFFF0000036E001DBF8007F000000
      FFFFFFF0000035F807EBF8007F000000FFFFFFFC0000F3FFFFF3FC007F000000
      FFFFFFFC0000F0FFFFC3FF83FF000000FF807FFFFFFFFFFFFFFFFFFFFF000000
      FE001FFFFFFFFFFFFFFC000000000000F80007FFFFFFFFFFFFFC000000000000
      F00003FFFFFFFFFFFFFC000000000000E00001FFFFFFFFFFFFFE108421000000
      C01E00FFFFFFFFFFFFFE108421000000C01E00FFFFFFFFFFFFFF39CE73000000
      801E007DFFFCFFFFFFFF39CE73000000801E0070FFF87E3FFF1F39CE73000000
      001E00307FF07C1FFE0F39CE73000000001E002000000800000339CE73000000
      07FFF80000000000000339CE7300000007FFF80000000000000339CE73000000
      07FFF80000001000000739CE7300000007FFF80000003000001E108421000000
      001E0020000FFF0007FE108421000000001E0030001FFF800FFE000001000000
      801E0070003FFFC01FFE000001000000801E007C007FFFFFFFFFE0001F000000
      C01E00FFFFFFFFFFFFFFE0001F000000C01E00FFFFFFFFFFFFFFF0003F000000
      E00001FFFFFFFFFFFFFFF0003F000000F00003FFFFFFFFFFFFFFF8007F000000
      F80007FFFFFFFFFFFFFFFC00FF000000FE001FFFFFFFFFFFFFFFFE01FF000000
      FF807FFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 360
    Top = 192
    object Act_Salvar: TAction
      Caption = 'Salvar (Ctrl+S)'
      ImageIndex = 21
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar (ESC)'
      ImageIndex = 8
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
end
