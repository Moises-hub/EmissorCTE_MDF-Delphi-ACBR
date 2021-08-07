object FrmCad_NOperacao: TFrmCad_NOperacao
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Natureza de Opera'#231#227'o'
  ClientHeight = 411
  ClientWidth = 597
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 35
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStart = clGray
    GradientColorStop = clSilver
    GradientDirection = gdDiagonalDown
    GridColor = clSilver
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 626
    object RzLabel2: TRzLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 587
      Height = 25
      Align = alClient
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = 'Natureza de Opera'#231#227'o'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderHighlight = clBlack
      ExplicitWidth = 223
      ExplicitHeight = 29
    end
  end
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 38
    Width = 591
    Height = 192
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 620
    object Label1: TLabel
      Left = 79
      Top = 72
      Width = 78
      Height = 16
      Caption = 'DESCRI'#199#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 52
      Top = 104
      Width = 104
      Height = 16
      Caption = 'DESCRI'#199#195'O CTE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 116
      Top = 45
      Width = 36
      Height = 16
      Caption = 'CFOP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 95
      Top = 132
      Width = 58
      Height = 16
      Caption = 'DESTINO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 417
      Top = 132
      Width = 73
      Height = 16
      Caption = 'CALC. ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 172
      Top = 69
      Width = 393
      Height = 24
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = CDM.DS_Query_NOperacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RzDBComboBox2: TRzDBComboBox
      AlignWithMargins = True
      Left = 172
      Top = 42
      Width = 82
      Height = 22
      DataField = 'CODIGO_FISCAL'
      DataSource = CDM.DS_Query_NOperacao
      Style = csOwnerDrawFixed
      AllowEdit = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        '1206'
        '2206'
        '3206'
        '5206'
        '5351'
        '5352'
        '5353'
        '5354'
        '5355'
        '5356'
        '5357'
        '5359'
        '5360'
        '5601'
        '5602'
        '5603'
        '5605'
        '5606'
        '5932'
        '5949'
        '6152'
        '6206'
        '6351'
        '6352'
        '6353'
        '6354'
        '6355'
        '6356'
        '6357'
        '6359'
        '6360'
        '6603'
        '6932'
        '6949'
        '7206'
        '7358'
        '7949')
    end
    object DBEdit2: TDBEdit
      Left = 172
      Top = 99
      Width = 393
      Height = 24
      CharCase = ecUpperCase
      DataField = 'DESCRICAO_NOTA'
      DataSource = CDM.DS_Query_NOperacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 172
      Top = 129
      Width = 229
      Height = 24
      DataField = 'TIPO_DESTINO'
      DataSource = CDM.DS_Query_NOperacao
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'DENTRO DO ESTADO'
        'FORA DO ESTADO')
      Values.Strings = (
        '1'
        '2')
    end
    object RzDBComboBox4: TRzDBComboBox
      Left = 496
      Top = 129
      Width = 69
      Height = 22
      DataField = 'CALC_ICMS'
      DataSource = CDM.DS_Query_NOperacao
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'N'#227'o'
        'Sim')
      Values.Strings = (
        '0'
        '1')
    end
  end
  object RzGroupBox2: TRzGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 236
    Width = 591
    Height = 125
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -29
    ExplicitWidth = 847
    object Label5: TLabel
      Left = 20
      Top = 34
      Width = 139
      Height = 16
      Caption = 'TIPO DE TRIBUTA'#199#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 31
      Top = 72
      Width = 121
      Height = 16
      Alignment = taRightJustify
      Caption = 'Aliquota ICMS(%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 343
      Top = 72
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Caption = 'Redu'#231#227'o(%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBComboBox3: TRzDBComboBox
      Left = 172
      Top = 31
      Width = 393
      Height = 22
      DataField = 'TRIBUTACAO'
      DataSource = CDM.DS_Query_NOperacao
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        '00-TRIBUTADO INTEGRALMENTE'
        '20-TRIBUTA'#199#195'O COM BC REDUZIDA DO ICMS '
        '40-ISENTO SEM PIS/COFINS'
        '41-N'#195'O TRIBUTADA'
        '51-DIFERIMENTO '
        '60- ICMS COBRADO POR SUBSTITUI'#199#195'O'
        '90-OUTROS')
      Values.Strings = (
        '00'
        '20'
        '40'
        '41'
        '51'
        '60'
        '90')
    end
    object DBEdit3: TDBEdit
      Left = 172
      Top = 69
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ICMS'
      DataSource = CDM.DS_Query_NOperacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 451
      Top = 69
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      DataField = 'REDUCAO_ICMS'
      DataSource = CDM.DS_Query_NOperacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 367
    Width = 591
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 3
    ExplicitWidth = 620
    object Button2: TButton
      AlignWithMargins = True
      Left = 484
      Top = 3
      Width = 97
      Height = 35
      Margins.Right = 10
      Action = Act_Cancelar
      Align = alRight
      Images = Frm_Principal.ImageList1
      TabOrder = 0
      WordWrap = True
      ExplicitLeft = 513
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 381
      Top = 3
      Width = 97
      Height = 35
      Action = Act_Salvar
      Align = alRight
      Images = Frm_Principal.ImageList1
      TabOrder = 1
      WordWrap = True
      ExplicitLeft = 410
    end
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList1
    Left = 528
    Top = 185
    object Act_Salvar: TAction
      Caption = 'Salvar (Ctrl+S)'
      ImageIndex = 31
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar (ESC)'
      ImageIndex = 9
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 336
    Top = 177
  end
end
