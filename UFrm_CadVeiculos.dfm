object Frm_CadVeiculos: TFrm_CadVeiculos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 546
  ClientWidth = 580
  Color = cl3DDkShadow
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
    AlignWithMargins = True
    Left = 10
    Top = 52
    Width = 560
    Height = 229
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alTop
    BorderOuter = fsBump
    Color = clWhite
    GradientColorStyle = gcsCustom
    TabOrder = 0
    object Label17: TLabel
      Left = 44
      Top = 26
      Width = 116
      Height = 18
      Caption = 'Cod Int. do Veiculo'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 196
      Top = 26
      Width = 60
      Height = 18
      Caption = 'RENAVAN'
      FocusControl = DBEdit11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 402
      Top = 26
      Width = 112
      Height = 18
      Caption = 'Tipo de Carroceria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 42
      Top = 84
      Width = 32
      Height = 18
      Caption = 'Placa'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 195
      Top = 82
      Width = 61
      Height = 18
      Caption = 'UF Licenc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 285
      Top = 85
      Width = 77
      Height = 18
      Caption = 'Tipo Rodado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 417
      Top = 83
      Width = 50
      Height = 18
      Caption = 'Tara(Kg)'
      FocusControl = DBEdit12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 42
      Top = 144
      Width = 96
      Height = 18
      Caption = 'Capacidade(Kg)'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 195
      Top = 144
      Width = 98
      Height = 18
      Caption = 'Capacidade(M'#179')'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 346
      Top = 144
      Width = 41
      Height = 18
      Caption = 'RNTRC'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit10: TDBEdit
      Left = 46
      Top = 49
      Width = 127
      Height = 24
      CharCase = ecUpperCase
      DataField = 'COD_INT_VEIC'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 195
      Top = 49
      Width = 187
      Height = 24
      CharCase = ecUpperCase
      DataField = 'RENAVAM'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 402
      Top = 49
      Width = 117
      Height = 22
      DataField = 'TIPO_CARROCERIA'
      DataSource = DM.DS_Veiculos
      Style = csOwnerDrawVariable
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'N'#195'O APLICAVEL'
        'ABERTA'
        'FECHADA/BA'#218
        'GRANELERA'
        'PORTA-CONT'#202'INER'
        'SAIDER')
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6')
    end
    object DBEdit5: TDBEdit
      Left = 44
      Top = 108
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      DataField = 'PLACA'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 3
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
      OnKeyPress = DBEdit5KeyPress
    end
    object DBComboBox3: TDBComboBox
      Left = 195
      Top = 109
      Width = 64
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      DataField = 'UF_LICENCIAMENTO'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
    end
    object RzDBComboBox3: TRzDBComboBox
      Left = 285
      Top = 109
      Width = 108
      Height = 22
      DataField = 'TIPO_RODADO'
      DataSource = DM.DS_Veiculos
      Style = csOwnerDrawVariable
      CharCase = ecUpperCase
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'TRUCK'
        'TOCO'
        'CAVALO MEC'#194'NICO'
        'VAN'
        'UTILIT'#193'RIO'
        'OUTROS')
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6')
    end
    object DBEdit12: TDBEdit
      Left = 417
      Top = 108
      Width = 101
      Height = 24
      CharCase = ecUpperCase
      DataField = 'TARA'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 42
      Top = 166
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      DataField = 'CAPACIDADE'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 195
      Top = 166
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      DataField = 'CAPM3'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 346
      Top = 166
      Width = 87
      Height = 24
      CharCase = ecUpperCase
      DataField = 'RNTRC'
      DataSource = DM.DS_Veiculos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 9
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 495
    Width = 560
    Height = 46
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alBottom
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 1
    object Button1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 112
      Height = 40
      Action = Act_Novo
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 1
      WordWrap = True
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 121
      Top = 3
      Width = 112
      Height = 40
      Action = Act_Excluir
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 3
      WordWrap = True
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 480
      Top = 3
      Width = 77
      Height = 40
      Action = Act_Cancel
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 2
      WordWrap = True
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 397
      Top = 3
      Width = 77
      Height = 40
      Action = Act_Salvar
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 0
      WordWrap = True
    end
  end
  object RzGroupBox1: TRzGroupBox
    AlignWithMargins = True
    Left = 10
    Top = 291
    Width = 560
    Height = 196
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Align = alClient
    BorderInner = fsBump
    BorderOuter = fsBump
    Caption = 'Motorista'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clRed
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Color = clWhite
    GradientDirection = gdHorizontalBox
    GroupStyle = gsBanner
    TabOrder = 2
    Transparent = True
    VisualStyle = vsGradient
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 30
      Width = 552
      Height = 157
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = DM.DS_MOTORISTA
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      GradientEndColor = clBlue
      GradientStartColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgAlwaysShowEditor, dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 346
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Title.Caption = 'CPF'
          Width = 175
          Visible = True
        end>
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 42
    Align = alTop
    BorderOuter = fsFlatRounded
    Color = clGray
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
    TabOrder = 3
    VisualStyle = vsGradient
    object RzLabel1: TRzLabel
      Left = 8
      Top = 2
      Width = 248
      Height = 28
      BiDiMode = bdLeftToRight
      Caption = 'Cadastro de Ve'#237'culos'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = True
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderHighlight = clBlack
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 605
    Top = 32
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList1
    Left = 354
    Top = 90
    object Act_Novo: TAction
      Caption = 'Add Motorista (F2)'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = Act_NovoExecute
    end
    object Act_Excluir: TAction
      Caption = ' Excluir Motorista (Ctrl+X)'
      ImageIndex = 24
      ShortCut = 16472
      OnExecute = Act_ExcluirExecute
    end
    object Act_Salvar: TAction
      Caption = 'Salvar (Ctrl+S)'
      ImageIndex = 31
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancel: TAction
      Caption = 'Cancel (ESC)'
      ImageIndex = 9
      ShortCut = 27
      OnExecute = Act_CancelExecute
    end
  end
end
