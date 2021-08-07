object Frm_CTE_EMISSOR: TFrm_CTE_EMISSOR
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'CTE EMISSOR'
  ClientHeight = 742
  ClientWidth = 1362
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1362
    742)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel15: TPanel
    Left = 0
    Top = 695
    Width = 1362
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Button6: TButton
      Left = 1134
      Top = 0
      Width = 145
      Height = 47
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Gerar, Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 31
      ImageMargins.Top = 5
      Images = ImageList1
      ParentFont = False
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button17: TButton
      Left = 1279
      Top = 0
      Width = 83
      Height = 47
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Sair'
      ImageIndex = 30
      ImageMargins.Top = 5
      Images = ImageList1
      TabOrder = 1
      OnClick = Button17Click
    end
    object RzPanel3: TRzPanel
      Left = 0
      Top = 0
      Width = 1134
      Height = 47
      Align = alClient
      BorderOuter = fsNone
      BorderShadow = clSilver
      Color = clGradientActiveCaption
      GradientColorStart = clGray
      GradientColorStop = 11201205
      TabOrder = 2
      VisualStyle = vsGradient
    end
  end
  object DBMemo2: TDBMemo
    Left = 771
    Top = 708
    Width = 185
    Height = 89
    DataField = 'DADOS'
    DataSource = DM.DS_Cad_Log
    TabOrder = 1
    Visible = False
  end
  object Panel5: TPanel
    Left = 21
    Top = 316
    Width = 1294
    Height = 139
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clTeal
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object RzLabel3: TRzLabel
      Left = 1
      Top = 1
      Width = 824
      Height = 137
      Alignment = taCenter
      AutoSize = False
      Caption = 'AGUARDE FINALIZANDO O PROCESSO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      TextStyle = tsShadow
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1362
    Height = 695
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1362
      Height = 695
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 695
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 0
        object PageControl1: TPageControl
          Left = 0
          Top = 55
          Width = 1362
          Height = 640
          ActivePage = TabSheet7
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          MultiLine = True
          ParentFont = False
          ScrollOpposite = True
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'Dados'
            object RzGroupBox2: TRzGroupBox
              Left = 0
              Top = 0
              Width = 1354
              Height = 113
              Align = alTop
              Caption = 'Cabe'#231'alho'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 5511957
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 0
              Transparent = True
              VisualStyle = vsClassic
              object Label15: TLabel
                Left = 23
                Top = 58
                Width = 18
                Height = 15
                Caption = 'N'#186':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Layout = tlCenter
              end
              object Label16: TLabel
                Left = 123
                Top = 58
                Width = 49
                Height = 15
                Caption = 'Modelo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 250
                Top = 56
                Width = 34
                Height = 15
                Caption = 'S'#233'rie:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 380
                Top = 56
                Width = 33
                Height = 15
                Caption = 'Data:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 508
                Top = 56
                Width = 33
                Height = 15
                Caption = 'Hora:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 633
                Top = 56
                Width = 41
                Height = 15
                Caption = 'Chave:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label33: TLabel
                Left = 1077
                Top = 56
                Width = 64
                Height = 15
                Caption = 'Protocolo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 22
                Top = 73
                Width = 95
                Height = 25
                Color = clWhite
                DataField = 'NUMCTE'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 250
                Top = 73
                Width = 121
                Height = 25
                Color = clWhite
                DataField = 'SERIE'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit7: TDBEdit
                Left = 379
                Top = 73
                Width = 121
                Height = 25
                Color = clWhite
                DataField = 'DATA_EMISSAO'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit6: TDBEdit
                Left = 506
                Top = 73
                Width = 121
                Height = 25
                Color = clWhite
                DataField = 'HORA'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit8: TDBEdit
                Left = 633
                Top = 73
                Width = 433
                Height = 25
                Color = clWhite
                DataField = 'CHAVE'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object RzDBComboBox3: TRzDBComboBox
                Left = 0
                Top = 31
                Width = 1354
                Height = 21
                DataField = 'STATUS'
                DataSource = CDM.DS_CD_Emissor_CTE
                ReadOnly = True
                Style = csSimple
                Align = alTop
                Color = clInfoBk
                Ctl3D = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                FocusColor = clWhite
                FramingPreference = fpCustomFraming
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
                Items.Strings = (
                  'Em Edi'#231#227'o'
                  'Autorizado'
                  'Cancelado / Inutilizado')
                Values.Strings = (
                  '0'
                  '1'
                  '9')
              end
              object DBEdit4: TDBEdit
                Left = 123
                Top = 73
                Width = 121
                Height = 25
                Color = clWhite
                DataField = 'MODELO'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
              end
              object DBEdit20: TDBEdit
                Left = 1077
                Top = 73
                Width = 198
                Height = 25
                Color = clWhite
                DataField = 'PROTOCOLO'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Arial Rounded MT Bold'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 7
              end
            end
            object RzGroupBox3: TRzGroupBox
              Left = 0
              Top = 113
              Width = 1354
              Height = 131
              Align = alTop
              Caption = 'Dados'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Color = 5511957
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 1
              Transparent = True
              VisualStyle = vsGradient
              object RzGroupBox14: TRzGroupBox
                Left = 0
                Top = 31
                Width = 1354
                Height = 82
                Align = alTop
                BorderInner = fsBump
                BorderOuter = fsBump
                BorderWidth = 1
                CaptionFont.Charset = ANSI_CHARSET
                CaptionFont.Color = clBlue
                CaptionFont.Height = -16
                CaptionFont.Name = 'Arial'
                CaptionFont.Style = []
                Color = 10930928
                GradientColorStyle = gcsCustom
                GradientColorStart = clSilver
                GradientDirection = gdVerticalEnd
                TabOrder = 0
                Transparent = True
                VisualStyle = vsGradient
                object Label3: TLabel
                  Left = 146
                  Top = 16
                  Width = 150
                  Height = 16
                  Caption = 'Natureza de Opera'#231#227'o:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 592
                  Top = 20
                  Width = 43
                  Height = 16
                  Caption = 'Modal:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 714
                  Top = 21
                  Width = 103
                  Height = 16
                  Caption = 'Tipo de Servi'#231'o:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 875
                  Top = 20
                  Width = 143
                  Height = 16
                  Caption = 'Finalidade de Emiss'#227'o:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 1026
                  Top = 20
                  Width = 141
                  Height = 16
                  Caption = 'Forma de Pagamento:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 21
                  Top = 16
                  Width = 36
                  Height = 16
                  Caption = 'CFOP:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 1181
                  Top = 19
                  Width = 102
                  Height = 16
                  Caption = 'Ind Globalizado:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBLookupComboBox2: TDBLookupComboBox
                  Left = 148
                  Top = 38
                  Width = 437
                  Height = 24
                  Color = clWhite
                  DataField = 'CFOP'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = []
                  KeyField = 'CODIGO_FISCAL'
                  ListField = 'DESCRICAO_NOTA;CODIGO_FISCAL;'
                  ListFieldIndex = 2
                  ListSource = CDM.DS_Query_NOperacao
                  ParentFont = False
                  TabOrder = 1
                end
                object RzDBComboBox4: TRzDBComboBox
                  Left = 592
                  Top = 39
                  Width = 117
                  Height = 22
                  DataField = 'MODAL'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Style = csOwnerDrawVariable
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  Items.Strings = (
                    'Rodovi'#225'rio'
                    'Aquavi'#225'rio')
                  Values.Strings = (
                    '0'
                    '1')
                end
                object RzDBComboBox5: TRzDBComboBox
                  Left = 715
                  Top = 43
                  Width = 152
                  Height = 22
                  DataField = 'TIPO_SERV'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Style = csOwnerDrawVariable
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  Items.Strings = (
                    'Normal'
                    'Subcontrata'#231#227'o'
                    'Redespacho')
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8')
                end
                object RzDBComboBox6: TRzDBComboBox
                  Left = 875
                  Top = 37
                  Width = 147
                  Height = 22
                  DataField = 'DESCSERV'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Style = csOwnerDrawVariable
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  Items.Strings = (
                    'CTE-Normal'
                    'CTE-Complemento'
                    'CTE-Anulacao'
                    'CTE-Substituto')
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4')
                end
                object RzDBComboBox14: TRzDBComboBox
                  Left = 1027
                  Top = 37
                  Width = 150
                  Height = 22
                  DataField = 'FORMA_PAGA'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Style = csOwnerDrawVariable
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOnEnter = True
                  TabOrder = 5
                  Items.Strings = (
                    'PAGO'
                    'A PAGAR')
                  Values.Strings = (
                    '0'
                    '1')
                end
                object DBEdit12: TDBEdit
                  Left = 21
                  Top = 37
                  Width = 121
                  Height = 25
                  Color = clWhite
                  DataField = 'CFOP'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 4
                  ParentFont = False
                  TabOrder = 0
                  OnKeyPress = DBEdit12KeyPress
                end
                object RzDBComboBox7: TRzDBComboBox
                  Left = 1182
                  Top = 36
                  Width = 91
                  Height = 22
                  DataField = 'GLOBALIZADO'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Style = csOwnerDrawVariable
                  CharCase = ecUpperCase
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOnEnter = True
                  TabOrder = 6
                  Items.Strings = (
                    'N'#195'O'
                    'SIM')
                  Values.Strings = (
                    '1'
                    '2')
                end
              end
            end
            object RzGroupBox4: TRzGroupBox
              Left = 0
              Top = 244
              Width = 1354
              Height = 366
              Align = alClient
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = clGray
              GradientColorStop = clActiveCaption
              GroupStyle = gsCustom
              ParentFont = False
              TabOrder = 2
              Transparent = True
              VisualStyle = vsGradient
              object RzPanel7: TRzPanel
                Left = 2
                Top = 2
                Width = 1350
                Height = 362
                Align = alClient
                BorderOuter = fsNone
                TabOrder = 0
                Transparent = True
                object RzPanel4: TRzPanel
                  Left = 644
                  Top = 0
                  Width = 706
                  Height = 362
                  Align = alClient
                  BorderOuter = fsNone
                  TabOrder = 0
                  Transparent = True
                  object RzGroupBox15: TRzGroupBox
                    Left = 0
                    Top = 0
                    Width = 706
                    Height = 63
                    Align = alTop
                    Caption = 'Local de Inicio da Presta'#231#227'o de Servi'#231'o'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clBlack
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    GradientColorStyle = gcsCustom
                    GradientColorStart = clMedGray
                    GradientColorStop = clWhite
                    GradientDirection = gdVerticalEnd
                    ParentFont = False
                    TabOrder = 0
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzDBLabel2: TRzDBLabel
                      Left = 79
                      Top = 45
                      Width = 96
                      Height = 14
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      BlinkIntervalOff = 1000
                      BlinkIntervalOn = 1000
                      DataField = 'INICODIBGE'
                      DataSource = CDM.DS_CD_Emissor_CTE
                    end
                    object Label23: TLabel
                      Left = 19
                      Top = 45
                      Width = 55
                      Height = 13
                      Caption = 'C'#211'D IBGE:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RzToolButton17: TRzToolButton
                      Left = 607
                      Top = 14
                      Width = 35
                      Height = 35
                      Hint = 'Cadastro de Regi'#227'o'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton17Click
                    end
                    object DBComboBox1: TDBComboBox
                      Left = 18
                      Top = 19
                      Width = 96
                      Height = 22
                      Style = csOwnerDrawFixed
                      AutoDropDown = True
                      Color = clWhite
                      DataField = 'INIUF'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
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
                      TabOrder = 0
                      OnExit = DBComboBox1Exit
                    end
                    object RzDBComboBox15: TRzDBComboBox
                      Left = 120
                      Top = 19
                      Width = 481
                      Height = 22
                      DataField = 'INICODIBGE'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Style = csOwnerDrawVariable
                      CharCase = ecUpperCase
                      Color = clWhite
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      TabOnEnter = True
                      TabOrder = 1
                      Values.Strings = (
                        '0'
                        '1')
                    end
                  end
                  object RzGroupBox16: TRzGroupBox
                    Left = 0
                    Top = 63
                    Width = 706
                    Height = 74
                    Align = alTop
                    Caption = 'Local de Final da Presta'#231#227'o de Servi'#231'o'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clBlack
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    GradientColorStyle = gcsCustom
                    GradientColorStart = clMedGray
                    GradientColorStop = clWhite
                    GradientDirection = gdVerticalEnd
                    ParentFont = False
                    TabOrder = 1
                    Transparent = True
                    VisualStyle = vsGradient
                    OnExit = RzGroupBox16Exit
                    object Label7: TLabel
                      Left = 20
                      Top = 43
                      Width = 55
                      Height = 13
                      Caption = 'C'#211'D IBGE:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object RzDBLabel1: TRzDBLabel
                      Left = 79
                      Top = 43
                      Width = 96
                      Height = 14
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      BlinkIntervalOff = 1000
                      BlinkIntervalOn = 1000
                      DataField = 'FIMCODIBGE'
                      DataSource = CDM.DS_CD_Emissor_CTE
                    end
                    object DBComboBox2: TDBComboBox
                      Left = 19
                      Top = 16
                      Width = 92
                      Height = 22
                      Style = csOwnerDrawVariable
                      Color = clWhite
                      DataField = 'FIMUF'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
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
                      TabOrder = 0
                      OnExit = DBComboBox2Exit
                    end
                    object RzDBComboBox2: TRzDBComboBox
                      Left = 121
                      Top = 16
                      Width = 480
                      Height = 22
                      DataField = 'FIMCODIBGE'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Style = csOwnerDrawVariable
                      CharCase = ecUpperCase
                      Color = clWhite
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      TabOnEnter = True
                      TabOrder = 1
                      Values.Strings = (
                        '0'
                        '1')
                    end
                  end
                  object RzGroupBox10: TRzGroupBox
                    Left = 0
                    Top = 137
                    Width = 706
                    Height = 225
                    Align = alClient
                    Caption = 'Percurso'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clBlack
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    Visible = False
                    object DBGrid1: TDBGrid
                      Left = 1
                      Top = 82
                      Width = 704
                      Height = 142
                      Align = alBottom
                      DataSource = CDM.DS_CD_CTE_Percurso
                      DrawingStyle = gdsGradient
                      Options = [dgColumnResize, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clBlack
                      TitleFont.Height = -16
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = []
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'UF'
                          Width = 90
                          Visible = True
                        end>
                    end
                    object RzComboBox1: TRzComboBox
                      Left = 6
                      Top = 17
                      Width = 98
                      Height = 22
                      Style = csOwnerDrawFixed
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -13
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
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
                    end
                    object Button16: TButton
                      Left = 110
                      Top = 17
                      Width = 54
                      Height = 25
                      Caption = 'Inserir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                      OnClick = Button16Click
                    end
                    object Button21: TButton
                      Left = 166
                      Top = 17
                      Width = 54
                      Height = 25
                      Caption = 'Excluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                      OnClick = Button21Click
                    end
                  end
                end
                object Panel6: TPanel
                  Left = 0
                  Top = 0
                  Width = 644
                  Height = 362
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 1
                  object RzGroupBox5: TRzGroupBox
                    Left = 0
                    Top = 0
                    Width = 644
                    Height = 63
                    Hint = 
                      'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                      'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                      'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                      'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                      'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                      'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                    Align = alTop
                    BorderInner = fsBump
                    BorderOuter = fsBump
                    BorderWidth = 1
                    Caption = 'Tomador'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clWhite
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = 10930928
                    GradientColorStyle = gcsCustom
                    GradientColorStart = 5511957
                    GradientColorStop = 5511957
                    GradientDirection = gdVerticalEnd
                    GroupStyle = gsBanner
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzToolButton1: TRzToolButton
                      Left = 501
                      Top = 24
                      Width = 35
                      Height = 35
                      Hint = 
                        'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                        'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                        'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                        'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                        'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                        'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton1Click
                    end
                    object RzToolButton6: TRzToolButton
                      Left = 15
                      Top = 24
                      Width = 39
                      Height = 33
                      ImageIndex = 2
                      Images = ImageList1
                      OnClick = RzToolButton6Click
                    end
                    object RzToolButton12: TRzToolButton
                      Left = 545
                      Top = 24
                      Width = 35
                      Height = 35
                      Hint = 'Limpar dados do Tomador'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 42
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton12Click
                    end
                    object DBEdit9: TDBEdit
                      Left = 160
                      Top = 28
                      Width = 341
                      Height = 25
                      Hint = 
                        'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                        'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                        'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                        'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                        'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                        'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                      CharCase = ecUpperCase
                      DataField = 'NOME'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ReadOnly = True
                      ShowHint = False
                      TabOrder = 0
                    end
                    object RzDBComboBox11: TRzDBComboBox
                      Left = 57
                      Top = 29
                      Width = 97
                      Height = 24
                      DataField = 'ID_TOMADOR'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Style = csDropDownList
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnExit = RzDBComboBox11Exit
                      Items.Strings = (
                        'Remetente'
                        'Expeditor'
                        'Recebedor'
                        'Destinat'#225'rio'
                        'Outro')
                      Values.Strings = (
                        '1'
                        '2'
                        '3'
                        '4'
                        '5')
                    end
                  end
                  object RzGroupBox7: TRzGroupBox
                    Left = 0
                    Top = 63
                    Width = 644
                    Height = 68
                    Hint = 
                      'No CTe, o remetente na maior parte dos casos '#233' o emissor da nota' +
                      ' fiscal, independente de onde a mercadoria tenha sido coletada. ' +
                      'Ele encontra-se no ponto inicial do trajeto da carga e '#233' o respo' +
                      'ns'#225'vel por promover a sa'#237'da inicial dos produtos transportados. ' +
                      'Os dados do remetente s'#227'o de preenchimento obrigat'#243'rio, exceto q' +
                      'uando o tipo de servi'#231'o for Redespacho Intermedi'#225'rio.'
                    Align = alTop
                    BorderInner = fsBump
                    BorderOuter = fsBump
                    BorderWidth = 1
                    Caption = 'Remetente'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clWhite
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = 10930928
                    GradientColorStyle = gcsCustom
                    GradientColorStart = 5511957
                    GradientColorStop = 5511957
                    GradientDirection = gdVerticalEnd
                    GroupStyle = gsBanner
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzToolButton2: TRzToolButton
                      Left = 504
                      Top = 32
                      Width = 35
                      Height = 35
                      Hint = 
                        'O Destinat'#225'rio do CTe ser'#225', na maioria das vezes, o mesmo destin' +
                        'at'#225'rio da nota fiscal que est'#225' vinculada ao conhecimento de tran' +
                        'sporte. '#201' a pessoa f'#237'sica ou jur'#237'dica para quem a mercadoria tra' +
                        'nsportada ser'#225' entregue no final de todo o trajeto.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      OnClick = RzToolButton2Click
                    end
                    object RzToolButton8: TRzToolButton
                      Left = 16
                      Top = 29
                      Width = 39
                      Height = 33
                      ImageIndex = 2
                      Images = ImageList1
                      OnClick = RzToolButton8Click
                    end
                    object RzToolButton13: TRzToolButton
                      Left = 545
                      Top = 31
                      Width = 35
                      Height = 35
                      Hint = 'Limpar dados do Remetente'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 42
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton13Click
                    end
                    object DBEdit11: TDBEdit
                      Left = 160
                      Top = 37
                      Width = 341
                      Height = 25
                      Hint = 
                        'No CTe, o remetente na maior parte dos casos '#233' o emissor da nota' +
                        ' fiscal, independente de onde a mercadoria tenha sido coletada. ' +
                        'Ele encontra-se no ponto inicial do trajeto da carga e '#233' o respo' +
                        'ns'#225'vel por promover a sa'#237'da inicial dos produtos transportados. ' +
                        'Os dados do remetente s'#227'o de preenchimento obrigat'#243'rio, exceto q' +
                        'uando o tipo de servi'#231'o for Redespacho Intermedi'#225'rio.'
                      CharCase = ecUpperCase
                      DataField = 'REM_NOME'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      TabOrder = 0
                    end
                  end
                  object RzGroupBox6: TRzGroupBox
                    Left = 0
                    Top = 268
                    Width = 644
                    Height = 71
                    Hint = 
                      'O Destinat'#225'rio do CTe ser'#225', na maioria das vezes, o mesmo destin' +
                      'at'#225'rio da nota fiscal que est'#225' vinculada ao conhecimento de tran' +
                      'sporte. '#201' a pessoa f'#237'sica ou jur'#237'dica para quem a mercadoria tra' +
                      'nsportada ser'#225' entregue no final de todo o trajeto.'
                    Align = alTop
                    BorderInner = fsBump
                    BorderOuter = fsBump
                    BorderWidth = 1
                    Caption = 'Destinat'#225'rio'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clWhite
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = 10930928
                    GradientColorStyle = gcsCustom
                    GradientColorStart = 5511957
                    GradientColorStop = 5511957
                    GradientDirection = gdVerticalEnd
                    GroupStyle = gsBanner
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzToolButton4: TRzToolButton
                      Left = 504
                      Top = 31
                      Width = 35
                      Height = 35
                      Hint = 
                        'No CTe, o remetente na maior parte dos casos '#233' o emissor da nota' +
                        ' fiscal, independente de onde a mercadoria tenha sido coletada. ' +
                        'Ele encontra-se no ponto inicial do trajeto da carga e '#233' o respo' +
                        'ns'#225'vel por promover a sa'#237'da inicial dos produtos transportados. ' +
                        'Os dados do remetente s'#227'o de preenchimento obrigat'#243'rio, exceto q' +
                        'uando o tipo de servi'#231'o for Redespacho Intermedi'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      OnClick = RzToolButton4Click
                    end
                    object RzToolButton9: TRzToolButton
                      Left = 15
                      Top = 31
                      Width = 39
                      Height = 33
                      ImageIndex = 2
                      Images = ImageList1
                      OnClick = RzToolButton9Click
                    end
                    object RzToolButton16: TRzToolButton
                      Left = 545
                      Top = 30
                      Width = 35
                      Height = 35
                      Hint = 
                        'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                        'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                        'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                        'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                        'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                        'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 42
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton16Click
                    end
                    object DBEdit10: TDBEdit
                      Left = 160
                      Top = 40
                      Width = 341
                      Height = 25
                      Hint = 
                        'O Destinat'#225'rio do CTe ser'#225', na maioria das vezes, o mesmo destin' +
                        'at'#225'rio da nota fiscal que est'#225' vinculada ao conhecimento de tran' +
                        'sporte. '#201' a pessoa f'#237'sica ou jur'#237'dica para quem a mercadoria tra' +
                        'nsportada ser'#225' entregue no final de todo o trajeto.'
                      CharCase = ecUpperCase
                      DataField = 'DEST_NOME'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      TabOrder = 0
                    end
                  end
                  object RzGroupBox11: TRzGroupBox
                    Left = 0
                    Top = 193
                    Width = 644
                    Height = 75
                    Hint = 
                      'O Destinat'#225'rio do CTe ser'#225', na maioria das vezes, o mesmo destin' +
                      'at'#225'rio da nota fiscal que est'#225' vinculada ao conhecimento de tran' +
                      'sporte. '#201' a pessoa f'#237'sica ou jur'#237'dica para quem a mercadoria tra' +
                      'nsportada ser'#225' entregue no final de todo o trajeto.'
                    Align = alTop
                    BorderInner = fsBump
                    BorderOuter = fsBump
                    BorderWidth = 1
                    Caption = 'Recebedor'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clWhite
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = 10930928
                    GradientColorStyle = gcsCustom
                    GradientColorStart = 5511957
                    GradientColorStop = 5511957
                    GradientDirection = gdVerticalEnd
                    GroupStyle = gsBanner
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzToolButton3: TRzToolButton
                      Left = 501
                      Top = 34
                      Width = 35
                      Height = 35
                      Hint = 
                        'No CTe, o remetente na maior parte dos casos '#233' o emissor da nota' +
                        ' fiscal, independente de onde a mercadoria tenha sido coletada. ' +
                        'Ele encontra-se no ponto inicial do trajeto da carga e '#233' o respo' +
                        'ns'#225'vel por promover a sa'#237'da inicial dos produtos transportados. ' +
                        'Os dados do remetente s'#227'o de preenchimento obrigat'#243'rio, exceto q' +
                        'uando o tipo de servi'#231'o for Redespacho Intermedi'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      OnClick = RzToolButton3Click
                    end
                    object RzToolButton11: TRzToolButton
                      Left = 17
                      Top = 31
                      Width = 39
                      Height = 33
                      ImageIndex = 2
                      Images = ImageList1
                      OnClick = RzToolButton11Click
                    end
                    object RzToolButton15: TRzToolButton
                      Left = 542
                      Top = 31
                      Width = 35
                      Height = 35
                      Hint = 
                        'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                        'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                        'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                        'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                        'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                        'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 42
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton15Click
                    end
                    object DBEdit17: TDBEdit
                      Left = 160
                      Top = 36
                      Width = 341
                      Height = 25
                      Hint = 
                        #201' informado como recebedor a pessoa f'#237'sica ou jur'#237'dica que receb' +
                        'er'#225' a mercadoria, por'#233'm ainda sem ser o destinat'#225'rio final. Esta' +
                        ' situa'#231#227'o '#233' utilizada principalmente em CTes de Redespacho, onde' +
                        ' a transportadora que coletou o material no remetente ir'#225' entreg' +
                        'ar em outra transportadora. Neste caso o redespacho '#233' o recebedo' +
                        'r. Os dados do recebedor s'#227'o obrigat'#243'rios sempre que gerado CTe ' +
                        'com o tipo de servi'#231'o Redespacho Intermedi'#225'rio e Vinculado a Mul' +
                        'timodal.'
                      CharCase = ecUpperCase
                      DataField = 'REC_NOME'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      TabOrder = 0
                    end
                  end
                  object RzGroupBox17: TRzGroupBox
                    Left = 0
                    Top = 131
                    Width = 644
                    Height = 62
                    Hint = 
                      'O Destinat'#225'rio do CTe ser'#225', na maioria das vezes, o mesmo destin' +
                      'at'#225'rio da nota fiscal que est'#225' vinculada ao conhecimento de tran' +
                      'sporte. '#201' a pessoa f'#237'sica ou jur'#237'dica para quem a mercadoria tra' +
                      'nsportada ser'#225' entregue no final de todo o trajeto.'
                    Align = alTop
                    BorderInner = fsBump
                    BorderOuter = fsBump
                    BorderWidth = 1
                    Caption = 'Expeditor'
                    CaptionFont.Charset = ANSI_CHARSET
                    CaptionFont.Color = clWhite
                    CaptionFont.Height = -13
                    CaptionFont.Name = 'Tahoma'
                    CaptionFont.Style = [fsBold]
                    Color = 10930928
                    GradientColorStyle = gcsCustom
                    GradientColorStart = 5511957
                    GradientColorStop = 5511957
                    GradientDirection = gdVerticalEnd
                    GroupStyle = gsBanner
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Transparent = True
                    VisualStyle = vsGradient
                    object RzToolButton5: TRzToolButton
                      Left = 504
                      Top = 21
                      Width = 35
                      Height = 35
                      Hint = 
                        'No CTe, o remetente na maior parte dos casos '#233' o emissor da nota' +
                        ' fiscal, independente de onde a mercadoria tenha sido coletada. ' +
                        'Ele encontra-se no ponto inicial do trajeto da carga e '#233' o respo' +
                        'ns'#225'vel por promover a sa'#237'da inicial dos produtos transportados. ' +
                        'Os dados do remetente s'#227'o de preenchimento obrigat'#243'rio, exceto q' +
                        'uando o tipo de servi'#231'o for Redespacho Intermedi'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 35
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      OnClick = RzToolButton5Click
                    end
                    object RzToolButton10: TRzToolButton
                      Left = 15
                      Top = 23
                      Width = 39
                      Height = 33
                      ImageIndex = 2
                      Images = ImageList1
                      OnClick = RzToolButton10Click
                    end
                    object RzToolButton14: TRzToolButton
                      Left = 545
                      Top = 21
                      Width = 35
                      Height = 35
                      Hint = 
                        'No conhecimento de transporte, o tomador do frete '#233' a pessoa f'#237's' +
                        'ica ou jur'#237'dica que '#233' respons'#225'vel pelo pagamento. Na modalidade ' +
                        'CIF, o tomador '#233' o remetente, j'#225' na modalidade FOB, o tomador '#233' ' +
                        'o destinat'#225'rio. H'#225' ainda a possibilidade de nomear um tomador qu' +
                        'e n'#227'o esteja caracterizado em nenhuma das condi'#231#245'es acima. Para ' +
                        'esta '#250'ltima situa'#231#227'o, tamb'#233'm '#233' utilizado o termo Consignat'#225'rio.'
                      GradientColorStyle = gcsSystem
                      ImageIndex = 42
                      Images = ImageList1
                      UseToolbarButtonSize = False
                      UseToolbarVisualStyle = False
                      VisualStyle = vsGradient
                      ParentShowHint = False
                      ShowHint = True
                      OnClick = RzToolButton14Click
                    end
                    object DBEdit18: TDBEdit
                      Left = 160
                      Top = 27
                      Width = 341
                      Height = 25
                      Hint = 
                        'o expedidor '#233' utilizado para informar a origem da mercadoria, qu' +
                        'ando esta n'#227'o foi coletada diretamente no remetente. Neste caso,' +
                        ' a transportadora que coletou o material primeiramente no remete' +
                        'nte, ser'#225' caracterizada como expedidor.'
                      CharCase = ecUpperCase
                      Color = clWhite
                      DataField = 'EXP_NOME'
                      DataSource = CDM.DS_CD_Emissor_CTE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      TabOrder = 0
                    end
                  end
                end
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Documentos'
            ImageIndex = 1
            object RzGroupBox1: TRzGroupBox
              Left = 0
              Top = 0
              Width = 1354
              Height = 610
              Align = alClient
              Caption = 'Documentos'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              TabOrder = 0
              Transparent = True
              VisualStyle = vsGradient
              object RzPageControl1: TRzPageControl
                Left = 0
                Top = 23
                Width = 1354
                Height = 587
                Hint = ''
                ActivePage = TabSheet4
                Align = alClient
                Color = clWhite
                ParentColor = False
                ShowMenuButton = True
                TabColors.HighlightBar = clGradientActiveCaption
                TabColors.Shadow = clActiveCaption
                TabIndex = 1
                TabOrder = 0
                TabOrientation = toBottom
                TextColors.Disabled = clGradientInactiveCaption
                Transparent = True
                FixedDimension = 21
                object TabSheet9: TRzTabSheet
                  Color = clWhite
                  Caption = 'Informa'#231#245'es de Doc'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Arial Rounded MT Bold'
                  Font.Style = []
                  ParentFont = False
                  object Label30: TLabel
                    Left = 379
                    Top = 74
                    Width = 92
                    Height = 15
                    Caption = 'Chave CTE Ref.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = 15
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label6: TLabel
                    Left = 380
                    Top = 13
                    Width = 163
                    Height = 16
                    Caption = 'Produto Predominante: *'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 841
                    Top = 14
                    Width = 109
                    Height = 16
                    Caption = 'Valor da Carga:*'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label31: TLabel
                    Left = 635
                    Top = 126
                    Width = 177
                    Height = 16
                    Caption = 'Obrigat'#243'rio na SubContrata'#231#227'o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsItalic]
                    ParentFont = False
                  end
                  object RzGroupBox19: TRzGroupBox
                    Left = 0
                    Top = 0
                    Width = 329
                    Height = 564
                    Align = alLeft
                    Caption = 'UNIDADE (*)'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    GradientColorStyle = gcsCustom
                    GroupStyle = gsCustom
                    ParentFont = False
                    TabOrder = 0
                    Transparent = True
                    object DBGrid2: TDBGrid
                      Left = 2
                      Top = 44
                      Width = 325
                      Height = 518
                      Align = alClient
                      DataSource = CDM.DS_CTE_UN
                      DrawingStyle = gdsGradient
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'Tahoma'
                      TitleFont.Style = [fsBold]
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'UN'
                          Width = 158
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'QNT'
                          Visible = True
                        end>
                    end
                    object RzPanel15: TRzPanel
                      Left = 2
                      Top = 15
                      Width = 325
                      Height = 29
                      Align = alTop
                      BorderOuter = fsNone
                      Color = clWhite
                      TabOrder = 1
                      object BitBtn3: TRzBitBtn
                        Left = 0
                        Top = 0
                        Width = 47
                        Height = 29
                        Align = alLeft
                        TabOrder = 0
                        OnClick = BitBtn3Click
                        ImageIndex = 0
                        Images = ImageList1
                      end
                      object BitBtn4: TRzBitBtn
                        Left = 47
                        Top = 0
                        Width = 45
                        Height = 29
                        Align = alLeft
                        TabOrder = 1
                        OnClick = BitBtn4Click
                        ImageIndex = 23
                        Images = ImageList1
                      end
                      object BitBtn5: TRzBitBtn
                        Left = 92
                        Top = 0
                        Width = 45
                        Height = 29
                        Align = alLeft
                        TabOrder = 2
                        OnClick = BitBtn5Click
                        ImageIndex = 38
                        Images = ImageList1
                      end
                    end
                  end
                  object DBEdit19: TDBEdit
                    Left = 379
                    Top = 95
                    Width = 433
                    Height = 25
                    Color = clMoneyGreen
                    DataField = 'CTE_REFERENCIA'
                    DataSource = CDM.DS_CD_Emissor_CTE
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -15
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit2: TDBEdit
                    Left = 379
                    Top = 32
                    Width = 433
                    Height = 25
                    CharCase = ecUpperCase
                    Color = 12582911
                    DataField = 'PRODUTOS_PREDOMINANTE'
                    DataSource = CDM.DS_CD_Emissor_CTE
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'Arial'
                    Font.Style = []
                    MaxLength = 40
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBEdit1: TDBEdit
                    Left = 841
                    Top = 32
                    Width = 121
                    Height = 25
                    Color = 12582911
                    DataField = 'PRODUTO_VALOR_DACARGA'
                    DataSource = CDM.DS_CD_Emissor_CTE
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                  end
                end
                object TabSheet4: TRzTabSheet
                  Color = clWhite
                  Caption = 'NF-E'
                  object RzPanel8: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 1352
                    Height = 35
                    Align = alTop
                    BorderOuter = fsNone
                    TabOrder = 0
                    VisualStyle = vsGradient
                    object RzMenuButton1: TRzMenuButton
                      Left = 0
                      Top = 0
                      Width = 137
                      Height = 35
                      Align = alLeft
                      Caption = 'Inserir NF'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnClick = RzMenuButton1Click
                      ImageIndex = 1
                      Images = ImageList1
                    end
                    object Button12: TButton
                      Left = 231
                      Top = 0
                      Width = 88
                      Height = 35
                      Align = alLeft
                      Caption = 'Excluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 38
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 1
                      OnClick = Button12Click
                    end
                    object Button1: TButton
                      Left = 137
                      Top = 0
                      Width = 94
                      Height = 35
                      Align = alLeft
                      Caption = 'Alterar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 23
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 2
                      OnClick = Button1Click
                    end
                  end
                  object RzDBGrid2: TRzDBGrid
                    Left = 0
                    Top = 35
                    Width = 1352
                    Height = 529
                    Align = alClient
                    DataSource = CDM.DS_Prov_CTE_NFES
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = ANSI_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'Arial'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Arial'
                        Font.Style = []
                        Title.Caption = 'N'#218'MERO'
                        Title.Font.Charset = ANSI_CHARSET
                        Title.Font.Color = clBlack
                        Title.Font.Height = -13
                        Title.Font.Name = 'Arial'
                        Title.Font.Style = [fsBold]
                        Width = 125
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'CHAVE'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -13
                        Font.Name = 'Arial'
                        Font.Style = []
                        Title.Alignment = taCenter
                        Title.Font.Charset = ANSI_CHARSET
                        Title.Font.Color = clBlack
                        Title.Font.Height = -13
                        Title.Font.Name = 'Arial'
                        Title.Font.Style = [fsBold]
                        Width = 505
                        Visible = True
                      end>
                  end
                end
                object TabSheet5: TRzTabSheet
                  Color = clWhite
                  Caption = 'NF Avulsa'
                  object RzPanel9: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 1352
                    Height = 35
                    Align = alTop
                    BorderOuter = fsNone
                    TabOrder = 0
                    VisualStyle = vsGradient
                    object Button2: TButton
                      Left = 188
                      Top = 0
                      Width = 88
                      Height = 35
                      Align = alLeft
                      Caption = 'Excluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 36
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 0
                      OnClick = Button2Click
                    end
                    object Button3: TButton
                      Left = 0
                      Top = 0
                      Width = 94
                      Height = 35
                      Align = alLeft
                      Caption = 'Novo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 3
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 1
                      OnClick = Button3Click
                    end
                    object Button4: TButton
                      Left = 94
                      Top = 0
                      Width = 94
                      Height = 35
                      Align = alLeft
                      Caption = 'Alterar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 82
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 2
                      OnClick = Button4Click
                    end
                  end
                  object RzDBGrid1: TRzDBGrid
                    Left = 0
                    Top = 35
                    Width = 1352
                    Height = 529
                    Align = alClient
                    DataSource = CDM.DS_CTENFE
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = ANSI_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'Arial'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'MODELO_NF'
                        Title.Caption = 'MODELO'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUMERO'
                        Title.Caption = 'N'#218'MERO'
                        Width = 121
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EMISSAO'
                        Title.Caption = 'EMISS'#195'O'
                        Width = 193
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VALOR_DA_NOTA'
                        Title.Caption = 'VALOR DA NOTA'
                        Width = 143
                        Visible = True
                      end>
                  end
                end
                object TabSheet6: TRzTabSheet
                  Color = clWhite
                  Caption = 'Outros documentos'
                  object RzPanel11: TRzPanel
                    Left = 0
                    Top = 0
                    Width = 1352
                    Height = 35
                    Align = alTop
                    BorderOuter = fsNone
                    TabOrder = 0
                    VisualStyle = vsGradient
                    object Button7: TButton
                      Left = 188
                      Top = 0
                      Width = 88
                      Height = 35
                      Align = alLeft
                      Caption = 'Excluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 36
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 0
                      OnClick = Button7Click
                    end
                    object Button8: TButton
                      Left = 0
                      Top = 0
                      Width = 94
                      Height = 35
                      Align = alLeft
                      Caption = 'Novo'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 3
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 1
                      OnClick = Button8Click
                    end
                    object Button9: TButton
                      Left = 94
                      Top = 0
                      Width = 94
                      Height = 35
                      Align = alLeft
                      Caption = 'Alterar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGray
                      Font.Height = -13
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ImageIndex = 82
                      Images = ImageList1
                      ParentFont = False
                      TabOrder = 2
                      OnClick = Button9Click
                    end
                  end
                  object RzDBGrid5: TRzDBGrid
                    Left = 0
                    Top = 35
                    Width = 1352
                    Height = 529
                    Align = alClient
                    DataSource = CDM.DS_CTEOutroDoc
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                    ParentFont = False
                    TabOrder = 1
                    TitleFont.Charset = ANSI_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -13
                    TitleFont.Name = 'Arial'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'TIPO'
                        Width = 96
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Width = 333
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUMERO'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EMISSAO'
                        Width = 64
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VALOR'
                        Width = 135
                        Visible = True
                      end>
                  end
                end
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Rodovi'#225'rio'
            ImageIndex = 2
            OnShow = TabSheet3Show
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 1354
              Height = 60
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label19: TLabel
                Left = 9
                Top = 3
                Width = 36
                Height = 15
                Caption = 'RNTC:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 197
                Top = 3
                Width = 86
                Height = 15
                Caption = 'Data Prevista:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 329
                Top = 3
                Width = 190
                Height = 15
                Caption = 'ANTT(N'#186' Reg. Nasc. de Transp.)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = 15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RzDBEdit9: TRzDBEdit
                Left = 9
                Top = 21
                Width = 182
                Height = 24
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'RNTC'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 11
                ParentFont = False
                TabOrder = 0
                OnKeyPress = RzDBEdit9KeyPress
              end
              object RzDBDateTimeEdit1: TRzDBDateTimeEdit
                Left = 197
                Top = 21
                Width = 121
                Height = 24
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'DATA_PREV'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                EditType = etDate
              end
              object RzDBEdit3: TRzDBEdit
                Left = 329
                Top = 21
                Width = 224
                Height = 24
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'NROREGESTADUAL'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnKeyPress = RzDBEdit9KeyPress
              end
            end
            object RzGroupBox12: TRzGroupBox
              Left = 0
              Top = 211
              Width = 1354
              Height = 166
              Align = alTop
              Caption = 'Veiculos (M'#225'x 4)'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 1
              Transparent = True
              Visible = False
              VisualStyle = vsGradient
              object RzDBGrid3: TRzDBGrid
                Left = 0
                Top = 27
                Width = 1354
                Height = 105
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = CDM.DS_Veiculos
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PLACA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RENAVAN'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UF'
                    Width = 80
                    Visible = True
                  end>
              end
              object RzPanel12: TRzPanel
                Left = 0
                Top = 132
                Width = 1354
                Height = 34
                Align = alBottom
                BorderOuter = fsNone
                TabOrder = 1
                VisualStyle = vsGradient
                object Button10: TButton
                  Left = 188
                  Top = 0
                  Width = 88
                  Height = 34
                  Align = alLeft
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 38
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 0
                  OnClick = Button10Click
                end
                object Button11: TButton
                  Left = 0
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 0
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 1
                  OnClick = Button11Click
                end
                object Button13: TButton
                  Left = 94
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 23
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 2
                  OnClick = Button13Click
                end
              end
            end
            object RzGroupBox13: TRzGroupBox
              Left = 0
              Top = 377
              Width = 1354
              Height = 233
              Align = alClient
              Caption = 'Motorista'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              TabOrder = 2
              VisualStyle = vsGradient
              object RzDBGrid4: TRzDBGrid
                Left = 0
                Top = 23
                Width = 1354
                Height = 176
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = CDM.DS_CTE_condutorTable
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPF'
                    Width = 64
                    Visible = True
                  end>
              end
              object RzPanel13: TRzPanel
                Left = 0
                Top = 199
                Width = 1354
                Height = 34
                Align = alBottom
                BorderOuter = fsNone
                TabOrder = 1
                VisualStyle = vsGradient
                object Button14: TButton
                  Left = 188
                  Top = 0
                  Width = 88
                  Height = 34
                  Align = alLeft
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 38
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 0
                  OnClick = Button14Click
                end
                object Button15: TButton
                  Left = 0
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 0
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 1
                  OnClick = Button15Click
                end
                object Button18: TButton
                  Left = 94
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 23
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 2
                end
              end
            end
            object RzGroupBox18: TRzGroupBox
              Left = 0
              Top = 60
              Width = 1354
              Height = 151
              Align = alTop
              Caption = 'Ordem de Coleta Associados'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 3
              Transparent = True
              Visible = False
              VisualStyle = vsGradient
              object RzDBGrid7: TRzDBGrid
                Left = 0
                Top = 27
                Width = 1354
                Height = 90
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = CDM.DS_CD_CTE_OCC
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'SERIE'
                    Title.Caption = 'S'#233'rie'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCC'
                    Title.Caption = 'N'#186' Ordem de Coleta'
                    Width = 64
                    Visible = True
                  end>
              end
              object RzPanel14: TRzPanel
                Left = 0
                Top = 117
                Width = 1354
                Height = 34
                Align = alBottom
                BorderOuter = fsNone
                TabOrder = 1
                VisualStyle = vsGradient
                object Button23: TButton
                  Left = 188
                  Top = 0
                  Width = 88
                  Height = 34
                  Align = alLeft
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 38
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 0
                  OnClick = Button23Click
                end
                object Button24: TButton
                  Left = 0
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 0
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 1
                  OnClick = Button24Click
                end
                object Button25: TButton
                  Left = 94
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 23
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 2
                  OnClick = Button25Click
                end
              end
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Seguro'
            ImageIndex = 4
            object Label24: TLabel
              Left = 39
              Top = 41
              Width = 163
              Height = 16
              Caption = 'Respons'#225'vel pelo Seguro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 126
              Top = 77
              Width = 76
              Height = 16
              Caption = 'Seguradora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 82
              Top = 115
              Width = 120
              Height = 16
              Caption = 'N'#250'mero da Ap'#243'lice'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 131
              Top = 154
              Width = 71
              Height = 16
              Caption = 'Averba'#231#227'o'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzToolButton18: TRzToolButton
              Left = 474
              Top = 21
              Width = 35
              Height = 35
              Hint = 'Limpar dados do Tomador'
              GradientColorStyle = gcsSystem
              ImageIndex = 35
              Images = ImageList1
              UseToolbarButtonSize = False
              UseToolbarVisualStyle = False
              VisualStyle = vsGradient
              ParentShowHint = False
              ShowHint = True
              OnClick = RzToolButton18Click
            end
            object DBComboBox5: TRzDBComboBox
              Left = 230
              Top = 34
              Width = 238
              Height = 22
              DataField = 'RESPONSAVEL'
              DataSource = CDM.DS_CD_Emissor_CTE
              Style = csOwnerDrawFixed
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DBComboBox5Exit
              Items.Strings = (
                'EMITENTE'
                'TOMADOR'
                'REMETENTE'
                'DESTINATARIO')
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5')
            end
            object DBEdit14: TDBEdit
              Left = 230
              Top = 70
              Width = 324
              Height = 24
              CharCase = ecUpperCase
              DataField = 'SEGURADORA'
              DataSource = CDM.DS_CD_Emissor_CTE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit15: TDBEdit
              Left = 230
              Top = 108
              Width = 239
              Height = 24
              CharCase = ecUpperCase
              DataField = 'APOLICE'
              DataSource = CDM.DS_CD_Emissor_CTE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 230
              Top = 151
              Width = 289
              Height = 24
              CharCase = ecUpperCase
              DataField = 'AVERBACAO'
              DataSource = CDM.DS_CD_Emissor_CTE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Valores'
            ImageIndex = 3
            object RzGroupBox8: TRzGroupBox
              Left = 0
              Top = 0
              Width = 497
              Height = 610
              Align = alLeft
              Caption = 'Valor Adicional'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWhite
              CaptionFont.Height = -16
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              GradientColorStyle = gcsCustom
              GradientColorStart = 5511957
              GradientColorStop = 5511957
              GroupStyle = gsBanner
              ParentFont = False
              TabOrder = 0
              Transparent = True
              VisualStyle = vsGradient
              object RzDBGrid6: TRzDBGrid
                Left = 0
                Top = 27
                Width = 497
                Height = 549
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = CDM.DS_CTE_ValorAdicional
                DrawingStyle = gdsGradient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Width = 64
                    Visible = True
                  end>
              end
              object RzPanel1: TRzPanel
                Left = 0
                Top = 576
                Width = 497
                Height = 34
                Align = alBottom
                BorderOuter = fsNone
                TabOrder = 1
                VisualStyle = vsGradient
                object Button5: TButton
                  Left = 188
                  Top = 0
                  Width = 88
                  Height = 34
                  Align = alLeft
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 38
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 0
                  OnClick = Button5Click
                end
                object Button19: TButton
                  Left = 0
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 0
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 1
                  OnClick = Button19Click
                end
                object Button20: TButton
                  Left = 94
                  Top = 0
                  Width = 94
                  Height = 34
                  Align = alLeft
                  Caption = 'Alterar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ImageIndex = 23
                  Images = ImageList1
                  ParentFont = False
                  TabOrder = 2
                  OnClick = Button20Click
                end
              end
            end
            object RzPanel6: TRzPanel
              Left = 497
              Top = 0
              Width = 857
              Height = 610
              Align = alClient
              BorderOuter = fsNone
              TabOrder = 1
              Transparent = True
              object Label1: TLabel
                Left = 34
                Top = 200
                Width = 147
                Height = 16
                Caption = 'Valor Total do Servi'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 59
                Top = 57
                Width = 115
                Height = 16
                Caption = 'Outras Despesas:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 33
                Top = 90
                Width = 141
                Height = 16
                Caption = 'Base de C'#225'lculo ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 111
                Top = 128
                Width = 63
                Height = 16
                Caption = 'ICMS(%):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 99
                Top = 165
                Width = 75
                Height = 16
                Caption = 'Valor ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label27: TLabel
                Left = 74
                Top = 15
                Width = 107
                Height = 16
                Caption = 'Total a Receber:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RzDBEdit5: TRzDBEdit
                Left = 193
                Top = 194
                Width = 135
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'TOTAL_PREST'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 4
                OnChange = RzDBEdit5Change
              end
              object RzDBEdit13: TRzDBEdit
                Left = 192
                Top = 51
                Width = 135
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'OUTRASDESP'
                ReadOnly = True
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 5
              end
              object RzDBEdit14: TRzDBEdit
                Left = 192
                Top = 84
                Width = 135
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'BASECALCULO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 1
              end
              object RzDBEdit1: TRzDBEdit
                Left = 192
                Top = 122
                Width = 96
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'PERC_ICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 2
              end
              object RzDBEdit15: TRzDBEdit
                Left = 192
                Top = 159
                Width = 135
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'VALORICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 3
              end
              object RzDBEdit2: TRzDBEdit
                Left = 193
                Top = 9
                Width = 135
                Height = 27
                DataSource = CDM.DS_CD_Emissor_CTE
                DataField = 'VALOR_RECEBER'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxLength = 10
                ParentFont = False
                TabOrder = 0
              end
              object Button22: TButton
                Left = 294
                Top = 123
                Width = 99
                Height = 30
                Caption = 'Calcular Icms'
                TabOrder = 6
                OnClick = Button22Click
              end
            end
          end
          object TabSheet10: TTabSheet
            Caption = 'Observa'#231#245'es'
            ImageIndex = 6
            object RzGroupBox9: TRzGroupBox
              Left = 0
              Top = 0
              Width = 558
              Height = 610
              Align = alLeft
              Caption = 'Campo destinado ao Fisco'
              CaptionFont.Charset = DEFAULT_CHARSET
              CaptionFont.Color = clWindowText
              CaptionFont.Height = -13
              CaptionFont.Name = 'Tahoma'
              CaptionFont.Style = [fsBold]
              TabOrder = 0
              object DBMemo1: TDBMemo
                Left = 1
                Top = 57
                Width = 556
                Height = 552
                Align = alClient
                DataField = 'OBS'
                DataSource = CDM.DS_CD_Emissor_CTE
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object RzPanel5: TRzPanel
                Left = 1
                Top = 16
                Width = 556
                Height = 41
                Align = alTop
                BorderOuter = fsNone
                TabOrder = 1
                Transparent = True
                object DBEdit13: TDBEdit
                  Left = 24
                  Top = 0
                  Width = 473
                  Height = 24
                  DataField = 'INFADFISCO'
                  DataSource = CDM.DS_CD_Emissor_CTE
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
              end
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 55
          Width = 1362
          Height = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object RzDBComboBox1: TRzDBComboBox
            Left = 21
            Top = 40
            Width = 189
            Height = 21
            DataField = 'STATUS'
            DataSource = DM.DS_CD_Dados
            Style = csSimple
            Enabled = False
            TabOrder = 0
            Visible = False
            Items.Strings = (
              'Em Emiss'#227'o'
              'Ativo'
              'Finalizado'
              'Cancelado')
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
        end
        object RzPanel2: TRzPanel
          Left = 0
          Top = 0
          Width = 1362
          Height = 55
          Align = alTop
          BorderOuter = fsNone
          Color = 5511957
          GradientColorStyle = gcsCustom
          GradientColorStart = clLime
          GradientColorStop = clActiveCaption
          GridColor = clHighlightText
          GridStyle = gsSolidLines
          TabOrder = 2
          object RzLabel1: TRzLabel
            Left = 7
            Top = 12
            Width = 183
            Height = 38
            Caption = 'EMITIR CT-e'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -27
            Font.Name = 'Arial Black'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
            BorderColor = clBackground
            BorderHighlight = clBlack
            FlyByColor = clBlack
            HighlightColor = clBlack
            TextStyle = tsRaised
          end
          object RzLabel2: TRzLabel
            Left = 198
            Top = 4
            Width = 70
            Height = 55
            Caption = 'OS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clYellow
            Font.Height = -48
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
            Transparent = True
            BlinkIntervalOff = 1000
            BlinkIntervalOn = 1000
            BorderColor = clBackground
            BorderHighlight = clBlack
            FlyByColor = clBlack
            HighlightColor = clBlack
            TextStyle = tsRaised
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 984
    Top = 65521
    object Act_L_Car_Novo: TAction
      Caption = 'Act_L_Car_Novo'
      ImageIndex = 6
    end
    object Act_L_Car_Apagar: TAction
      Caption = 'Act_L_Car_Apagar'
      ImageIndex = 107
    end
    object Act_L_Car_Salvar: TAction
      Caption = 'Salvar'
      ImageIndex = 321
    end
    object Act_L_Car_Cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 2
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 595
    Top = 601
  end
  object Query_Total: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(valor)as valor from NFE_MDF')
    SQLConnection = DM.MdfeConnection
    Left = 414
    Top = 561
    object Query_TotalVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'select CIDADE, CODIGO_IBGE  from REGIOES  WHERE  CODIGO_IBGE is ' +
      'not null  GROUP BY  CODIGO_IBGE, CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 624
    Top = 441
  end
  object CIDADE: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select CIDADE, CODIGO_IBGE  from REGIOES  WHERE  CODIGO_IBGE is ' +
      'not null  GROUP BY  CODIGO_IBGE, CIDADE'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 328
    Top = 517
    object CIDADECIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object CIDADECODIGO_IBGE: TStringField
      FieldName = 'CODIGO_IBGE'
      Size = 10
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 309
    Top = 261
  end
  object PopupMenu2: TPopupMenu
    Left = 368
    Top = 384
    object MenuItem2: TMenuItem
      Caption = 'N'#227'o Registrada'
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 1204
    Top = 252
  end
  object ImageList1: TImageList
    Height = 25
    Width = 25
    Left = 614
    Top = 560
    Bitmap = {
      494C01012B005001080019001900FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000064000000130100000100200000000000B0AD
      0100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111100616161000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF00FDFEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000001F9CF2001F9CF2001F9CF2001F9C
      F200269FF2001F9CF200000000001F9CF200000000001F9CF2001F9CF2000000
      00001F9CF2000000000000000000000000001F9CF2001F9CF2001F9CF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000111111000000000000000000616161000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C2D24003C2D
      2400000000000000000000000000000000000000000000000000000000003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF00000000000000000000000000000000000000000000000000000000000000
      00001F9CF2001F9CF2001F9CF2001F9CF20000000000000000001F9CF2001F9C
      F2000000000000000000C5E5FC00000000001F9CF200000000001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF200000000000000000000000000000000000000
      00000000000000000000000000001111110008365E001692FF001692FF00010A
      1100616161000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003C2D24003C2D24000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF0000000000000000000000
      0000000000000000000000000000000000001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF200000000001F9CF2001F9CF2000000000000000000000000000000
      00001F9CF200000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2000000
      0000000000000000000000000000000000000000000000000000111111000000
      00001692FF001692FF001692FF001692FF001692FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000059493E005949
      3E00000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF0000000000000000000000000000000000000000000000
      00001F9CF2001F9CF2001F9CF2001F9CF20000000000000000001F9CF2001F9C
      F200000000001F9CF2001F9CF200000000001F9CF200000000001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF200000000000000000000000000000000000000
      000000000000E5E5E500000000001692FF001692FF001692FF001692FF001692
      FF001692FF0001090F0069696900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000059493E0059493E000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF000000
      0000000000000000000000000000000000001F9CF2001F9CF2001F9CF2001F9C
      F200219DF2001F9CF200000000001F9CF200000000001F9CF2001F9CF2000000
      00001F9CF200000000001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001692FF001692FF001692FF001692FF001692FF001692FF00000000008686
      8600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF0059493E005949
      3E00000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF00FDFEFF000000000000000000000000000000
      00001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF200000000000000000000000000000000000000
      000000000000000000001692FF001692FF001692FF001692FF001692FF001692
      FF001692FF001692FF001692FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF00000000003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF00000000000000000000000000000000001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2001F9CF2000000
      00000000000000000000111111000000000000000000000000001692FF001692
      FF001692FF001692FF001692FF001692FF001692FF001692FF00000000001692
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003D6EFF00000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000C59
      E8000C59E8001692FF00000000001692FF001692FF001692FF001692FF001692
      FF001692FF001692FF001692FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF000000
      00003B6DFF003B6DFF0000000000CCC61600CCC61600CCC61600000000003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF00000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9000000
      0000000000000000000000000000000000000C59E8000C59E8001692FF001692
      FF001692FF001692FF001692FF001692FF001692FF001692FF001692FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000CCC61600CCC6
      1600CCC61600CCC61600CCC6160000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF0000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000000
      0000000000000C59E8000C59E8001692FF001692FF001692FF001692FF001692
      FF001692FF001692FF001692FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF000000
      000000000000CCC61600CCC616003C2D24003C2D24003C2D2400CCC61600CCC6
      160000000000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF00000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9000000
      00000000000000000000000000000000000000000000000000000C59E8000C59
      E8001692FF001692FF001692FF001692FF001692FF001692FF001692FF000000
      0000000000008A8A8A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF00000000000000000000000000CCC61600CCC616003C2D
      24003C2D24003C2D2400CCC61600CCC616000000000000000000000000003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF0000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900C8DFEA001F9CF200E0E9
      E9001F9CF200E0E9E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000000
      00000000000000000000000000000C59E800020E2300000000001692FF001692
      FF001692FF001692FF00000000004F69FF004F69FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF000000
      000000000000CCC61600CCC61600000000003C2D24003C2D2400CCC61600CCC6
      160000000000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF00000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900C8DFEA001F9CF200E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9
      E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C59E8000C59E800000000000000000000000000000000004F69FF004F69
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000CCC61600CCC6
      1600CCC61600CCC61600CCC6160000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF0000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9
      E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9E900E0E9E9001F9CF200E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0000000000000000000000
      0000000000006728ED006728ED00000000004F548600606A9300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF0000000000CCC61600CCC61600CCC61600000000003B6D
      FF003B6DFF00000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF00000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E9001F9CF200E0E9E900E0E9E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9
      E900E0E9E9001F9CF200A5D1EC00E0E9E900E0E9E900E0E9E900E0E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      1100000000004F548600606A9300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF00000000003D6EFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9
      E900E0E9E9001F9CF200E0E9E900E0E9E9001F9CF200249EF200E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110019192F004F548600606A
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF00000000003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF0000000000000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9E9001F9CF200E0E9
      E900A5D1EC00E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111100000000004F548600606A930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF00688EFF000000000000000000000000000000000000000000000000000000
      0000000000003C2D24003C2D2400FDFEFF000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E9001F9CF200E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      64004F548600606A930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF0000000000000000000000
      000000000000000000000000000000000000000000003C2D24003C2D24000000
      000000000000000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011111100000000004F548600606A93000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF000000000000000000000000000000000000000000000000000000
      0000000000003C2D24003C2D2400000000000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900CAD7D900CAD7
      D900CAD7D900CAD7D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001111110019192F004F548600606A93000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF008DAAFF0000000000000000000000
      0000000000000000000000000000000000000000000059493E0059493E000000
      000000000000000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900CAD7D900CAD7D900CAD7D90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111100000000004F54
      8600606A93000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF0000000000000000000000000000000000000000000000
      00000000000059493E0059493E00000000000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900CAD7D900CAD7
      D900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001111110019192F004F548600606A9300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF00FDFEFF00000000000000000000000000000000000000
      000000000000000000000000000000000000E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900CAD7D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001111
      1100000000004748800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B6DFF003B6DFF003B6D
      FF003B6DFF003B6DFF003B6DFF003B6DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9
      E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900E0E9E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002626260000000000080808000000
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
      000000000000CCAA1900CCAA1900CCAA1900CCAA1900CCAA1900CCAA1900CCAA
      19009E7E07009E7E07009E7E07009E7E07000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003543F4003543F4003543F4003543F4003543
      F4003543F4003543F4003543F4003543F4003543F4002828C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCAA1900CCAA1900CCAA1900CCAA
      1900CCAA1900CCAA1900CCAA1900CCAA19009E7E07009E7E07009E7E07009E7E
      07009E7E07000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003543F4000000
      00002934BD00232CA0001C248300161C660010144A000A0C2D00040511000000
      000000000000000000002828C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCAA1900CCAA1900CCAA1900CCAA1900CCAA1900CCAA1900D8C135009E7E
      07009E7E07009E7E07009E7E07009E7E07009E7E070000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003543F400000000003543F4003543F4003543F4003543F4003543
      F4003543F4003543F4003543F4003543F4003543F4002828C500000000002828
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCAA1900CCAA1900D8C13500AD8A
      0B00CCAA1900CCAA1900D8C135009E7E07009E7E0700D8C13500AD8A0B009E7E
      07009E7E07000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003543F400000000003543F4003543
      F4003543F4000000000000000000000000000000000000000000000000000000
      00003340E9003543F4002828C500000000002828C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDCD6600CCAA1900D8C13500AD8A0B00CCAA1900CCAA1900D8C135009E7E
      07009E7E0700D8C13500AD8A0B009E7E07009E7E070000000000000000000000
      0000000000000000000000000000000000000000000000000000554646005546
      4600554646000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000554646005546
      4600554646000000000000000000000000000000000000000000000000003543
      F400000000003543F4003543F4003543F40000000000B3ECFF00B3ECFF00B3EC
      FF00B3ECFF00B3ECFF00B3ECFF00B2E0FF00000000003543F4003543F4002828
      C500000000002828C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDCD6600CCAA1900D8C13500AD8A
      0B00CCAA19009E7E0700D8C135009E7E07009E7E0700D8C13500AD8A0B009E7E
      07009E7E07000000000000000000000000000000000000000000000000000000
      00000000000055464600E2CFC700E2CFC700E2CFC70055464600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000055464600E2CFC700E2CFC700E2CFC70055464600000000000000
      000000000000000000003543F400000000003543F4003543F4003543F4003543
      F40098C9D900B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00000000003543F4003543F4003543F4002828C500000000002828C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCAA
      1900DDCD6600CCAA1900D8C13500AD8A0B009E7E07009E7E0700D8C135009E7E
      07009E7E0700D8C13500AD8A0B009E7E07009E7E07009E7E0700000000000000
      0000000000000000000000000000000000000000000055464600E2CFC700D2B9
      AF00E2CFC70055464600000000000000000000000000D2B9AF00D2B9AF00D2B9
      AF00B39C9500D2B9AF00DCC8C000000000000000000055464600E2CFC700D2B9
      AF00E2CFC700554646000000000000000000000000003543F400000000003543
      F4003543F4003543F4003543F40000000000B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B2E0FF003543F4003543F4003543
      F4003543F4002828C500000000002828C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCAA1900DDCD6600CCAA1900D8C13500AD8A
      0B009E7E07009E7E0700D8C135009E7E07009E7E0700D8C13500AD8A0B009E7E
      07009E7E07009E7E070000000000000000000000000000000000000000008774
      70008774700055464600E2CFC700E2CFC700E2CFC70055464600877470008774
      700087747000D2B9AF00D2B9AF00D2B9AF00B39C9500D2B9AF00C2AAA1007A9E
      BC008774700055464600E2CFC700E2CFC700E2CFC700554646006EC3FF006EC3
      FF00000000003543F400000000003543F4003543F4003543F4003543F4000000
      0000B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00B2E0FF00212A97003543F4003543F4003543F4003543F4002323AB002828
      C5000000000000000000000000005A4B50005A4B50005A4B5000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A4B50005A4B50005A4B50000000
      000000000000000000000000000000000000000000000000000000000000CCAA
      1900DDCD6600CCAA1900D8C13500AD8A0B009E7E07009E7E0700D8C135009E7E
      07009E7E0700D8C13500AD8A0B009E7E07009E7E07009E7E0700000000000000
      0000000000000000000000000000877470008774700087747000554646005546
      46005546460087747000877470008774700087747000BAA39B00D2B9AF00D2B9
      AF00D2B9AF00D2B9AF00877470006EC3FF006EC3FF0087747000554646005546
      460055464600877470006EC3FF006EC3FF00000000003543F400000000003543
      F4003543F4003543F4003341EC00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B2E0FF001F2890003543F4003543
      F4003543F4003543F4001E1E94002828C50000000000000000005A4B5000EEED
      ED00DEDBDC00EEEDED005A4B5000E3B62300E3B62300E3B62300E3B62300E3B6
      2300E3B62300E3B62300E3B62300E3B62300E3B62300E3B62300E3B623005A4B
      5000EEEDED00DEDBDC00EEEDED005A4B5000E3B62300E3B62300000000000000
      0000000000000000000000000000DDCD6600CCAA1900CCAA1900D8C13500AD8A
      0B009E7E07009E7E0700D8C135009E7E07009E7E0700D8C13500AD8A0B009E7E
      07009E7E07009E7E070000000000000000000000000000000000000000006E5D
      5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D
      5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006E5D5B006EC3
      FF006EC3FF006E5D5B006E5D5B006E5D5B006E5D5B006EC3FF006EC3FF006EC3
      FF00000000003543F400040511003543F4003543F4003543F40000000000B3EC
      FF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00B2E0FF001F2890003543F4003543F4003543F4003543F40019197C002828
      C50000000000DCAA00005A4B5000EEEDED00DEDBDC00EEEDED005A4B5000F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE64005A4B5000EEEDED00DEDBDC00EEEDED005A4B
      5000F0BE6400F0BE64000000000000000000000000000000000000000000DDCD
      6600CCAA1900CCAA1900D8C13500AD8A0B009E7E07009E7E0700D7BF34009E7E
      07009E7E0700D8C13500AD8A0B009E7E07009E7E07009E7E0700000000000000
      000000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF007EBDDC006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF006EC3FF006EC3FF006EC3FF006EC3FF00000000003543F4000A0C2D003543
      F4003543F4003543F40000000000B3ECFF0000000000B3ECFF00B3ECFF00B3EC
      FF00B3ECFF00B3ECFF00B3ECFF00B3ECFF00B2E0FF001F2890003543F4003543
      F4003543F4003543F400151565002828C50000000000F0BE6400F0BE64005A4B
      5000EEEDED005A4B50005A4B5000DCAA0100DCAA0000DCAA0000DCAA0000DCAA
      0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000DCAA0000F0BE
      64005A4B5000EEEDED005A4B5000F0BE6400F0BE6400DCAA0000000000000000
      00000000000000000000CCAA1900DDCD6600CCAA19009E7E0700D8C13500AD8A
      0B009E7E07009E7E0700D3BB30009E7E07009E7E0700D8C13500AD8A0B009E7E
      07009E7E07009E7E07009E7E07000000000000000000000000000000000082D7
      FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF007EBDDC006EC3
      FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3FF006EC3
      FF00000000003543F40010144A003543F4003543F40000000000B3ECFF00B3EC
      FF0000000000B3ECFF0000000000B3ECFF00B3ECFF00B3ECFF00B3ECFF00B3EC
      FF00B2E0FF001F2890003543F4003543F4003543F4003543F40010104F002828
      C50000000000F0BE6400F0BE6400F0BE6400745F5400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE
      6400F0BE6400F0BE6400F0BE6400F0BE6400F0BE64005C4C5000F0BE6400F0BE
      6400EEEDED000000000000000000000000000000000000000000CCAA1900DDCD
      66009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E
      07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07000000
      000000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF007EBDDC0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF00000000003543F400161C66003543
      F4003543F40000000000B3ECFF000000000000000000B3ECFF0000000000B3EC
      FF0000000000B3ECFF00B3ECFF00B3ECFF00B2E0FF001F2890003543F4003543
      F4003543F4003543F4000B0B37002828C500000000006464FF006464FF00FFD7
      8700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD7
      8700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD78700FFD7
      8700FFD78700FFD78700FFD78700FFD787000000000000000000000000000000
      00000000000000000000CCAA1900CCAA19009E7E07009E7E07009E7E07009E7E
      07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E
      07009E7E07009E7E07009E7E07000000000000000000000000000000000082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF007EBDDC0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF00D0F0
      FF00000000003543F4001C2483003543F4003543F40000000000000000003543
      F40000000000B3ECFF0000000000B3ECFF0000000000B3ECFF00B3ECFF00B3EC
      FF00B2E0FF001F2890003543F4003543F4003543F4003543F400070720002828
      C5000000000000000000FFD78700FFD78700FFD787005A4B50005A4B50006B5D
      62006B5D62006B5D62005E4F54006B5D62006B5D62006B5D62006B5D6200F0BE
      64006B5D62006B5D620000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCAA19009E7E
      07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E
      07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07009E7E07000000
      000000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF007EBDDC0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF00000000000000000000000000000000003543F400232CA0003543
      F4003543F4003543F4003543F4003543F40000000000B3ECFF0000000000B3EC
      FF0000000000B3ECFF00B3ECFF00B3ECFF00B2E0FF001F2890003543F4003543
      F4003543F4003543F400020208002828C500000000000000000000000000F0BE
      64006B5D62006B5D62005A4B50006B5D62006B5D62006B5D62005E4F54006B5D
      62006B5D62006B5D62006B5D6200766562006B5D620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F96E80066BDFF001F96E8001F96E8001F96E8001F96E8001F96
      E8001F96E8001F96E8001F96E8001F96E8001F96E8001075E5001075E5001075
      E5001075E5001075E5001075E5001075E50000000000000000000000000082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF007EBDDC0082D7
      FF00FAE1B400FAE1B400FAE1B400FAE1B40082D7FF0000000000000000000000
      0000000000003543F4002934BD003543F4003543F4003543F4003543F4003543
      F40000000000B3ECFF0000000000B3ECFF0000000000B3ECFF00B3ECFF00B3EC
      FF00B2E0FF00222B9E003543F4003543F4003543F4003543F400000000002828
      C50000000000000000000000000000000000F0BE64006B5D62005A4B50006B5D
      62006B5D62006B5D62005E4F54006B5D62006B5D62006B5D6200F0BE64006B5D
      6200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F96E80066BDFF001F96
      E8001F96E8001F96E8001F96E8001075E5001075E5001075E5001075E5001075
      E5001075E5001075E5001075E5001075E5001075E5001075E5001075E5001075
      E50000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF007EBDDC0082D7FF00FAE1B400FAE1B400FAE1B400FAE1
      B40082D7FF00000000000000000000000000000000003543F400000000003543
      F4003543F4003543F4003543F4003543F40000000000B3ECFF0000000000B3EC
      FF0000000000B3ECFF00B3ECFF0000000000000000003543F4003543F4003543
      F4003543F4002828C500000000002828C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF009DE0FF0082D7
      FF00FAE1B400FAE1B400FAE1B400FAE1B4000000000000000000000000000000
      000000000000000000003543F400000000003543F4003543F4003543F4003543
      F40000000000B3ECFF0000000000B3ECFF0000000000B3ECFF00B3ECFF003543
      F4003543F4003543F4003543F4003543F4002828C500000000002828C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF009DE0FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF00000000000000000000000000000000000000000000000000000000003543
      F400000000003543F4003543F4003543F4003543F4000000000000000000B3EC
      FF000000000000000000000000003543F4003543F4003543F4003543F4002828
      C500000000002828C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D4408006D4408006D4408006D4408006D4408006D4408006D44
      08006D4408006D4408006D4408006D4408006D4408006D4408006D4408006D44
      08006D4408006D4408003F2300003F23000000000000000000000000000082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF009DE0FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003543F400000000003543F4003543
      F4003543F4003543F40000000000B3ECFF00000000003543F4003543F4003543
      F4003543F4003543F4002828C500000000002828C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006D440800997117006D44
      08006D4408006D4408006D4408006D4408006D4408006D4408006D4408006D44
      08006D4408006D4408003F2300003F2300003F2300003F2300003F2300003F23
      000000000000000000000000000082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF009DE0FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003543F400000000003543F4003543F4003543F4003543F4000000
      0000161C65003543F4003543F4003543F4003543F4002828C500000000002828
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D440800997117006D4408006D4408006D4408006D4408006D44
      08006D440800402400003F2300003F2300003F2300003F2300003F2300003F23
      00003F2300003F2300003F2300003F2300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003543F4000000
      00000000000000000000040511000A0C2D0010144B00161C66001C248300232C
      A0001F1F9800000000002828C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D4408006D44
      08006D4408003F2300003F2300003F2300003F2300003F2300003F2300003F23
      00003F2300003F2300003F2300003F2300003F2300003F2300003F2300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003543F4003543F4003543F4003543F4003543
      F4003543F4003543F4003543F4003543F4003543F4002828C500000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F96E8001F96E8001F96E8001F96E8001887E7001075
      E5001075E5001075E5001075E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E0000000000000000000000000000000000000000000604A4200604A4200604A
      4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE7009A8C8500604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055008060
      5500000000000000000000000000000000006D646600E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E0006D64660000000000000000000000
      000000000000604A4200604A4200604A4200604A4200EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE7009A8C8500604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550080605500000000000000000000000000000000000000
      00006D646600E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E0006D64660000000000000000000000000000000000604A4200604A4200604A
      4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE7009A8C8500604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500000000000000
      0000E2E3E1009EA09C009EA09C00423B3C006D646600E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E0006D646600423B3C009EA09C009EA0
      9C00E2E3E100604A4200604A4200604A4200604A4200EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE7009A8C8500604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EEEA
      E800806055000000000000000000000000009EA09C009EA09C009EA09C00423B
      3C006D646600C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9
      C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9
      C3006D646600423B3C009EA09C009EA09C009EA09C00604A4200604A4200604A
      4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE7009A8C8500604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFD6D400806055000000000000000000000000000000
      00009EA09C009EA09C009EA09C00423B3C00423B3C00423B3C00423B3C00423B
      3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B
      3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C009EA09C009EA0
      9C009EA09C00604A4200604A4200604A4200604A420016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB00649FAF00604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000806055008060550080605500806055008060
      5500000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000009EA09C009EA09C009EA09C009EA0
      9C006A6766006A6766006A6766006A6766006A6766006A6766006A6766006A67
      66006A6766006A6766006A6766006A6766006A6766006A6766006A6766006A67
      66006A6766009EA09C009EA09C009EA09C009EA09C00604A4200604A4200604A
      4200604A420016BAEB0016BAEB00000000000000000000000000000000000000
      00000000000016BAEB000000000016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB00649FAF00604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000806055008060550080605500C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB57008060550080605500000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      00009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA0
      9C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA0
      9C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA0
      9C009EA09C00604A4200604A4200604A4200604A420016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB00649FAF00604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      550080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB570080605500806055008060550000000000000000000000
      0000000000000000000000000000000000009EA09C009EA09C009EA09C009EA0
      9C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA0
      9C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA09C009EA0
      9C007FDDC8009EA09C007FDDC8009EA09C009EA09C00604A4200604A4200604A
      4200604A420016BAEB0016BAEB003BC5EE00B7EAF900B7EAF900B7EAF90027BF
      EC0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB00649FAF00604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000373737000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB57008E70
      5500806055000000000000000000000000000000000000000000000000000000
      0000D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200604A4200604A4200604A4200604A420016BAEB0016BAEB000000
      00000000000000000000000000000000000016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB00649FAF00604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500D8CB7C00C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB57008060550080605500000000000000
      000000000000000000000000000000000000D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D2009EA09C00D5D6D200D5D6D200604A4200604A4200604A
      4200604A420016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BAEB0016BA
      EB0016BAEB00649FAF00604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080605500D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB57008060550000000000000000000000000000000000000000000000
      0000D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6D200D5D6
      D200D5D6D200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080605500D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700806055000000
      000000000000000000000000000000000000D5D6D200D5D6D200D5D6D200423B
      3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B
      3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B3C00423B
      3C00423B3C00423B3C00D5D6D200D5D6D200D5D6D200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080605500D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB570080605500000000000000000000000000000000000000
      0000D5D6D200D5D6D200D5D6D200423B3C006D646600E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E0006D646600423B3C00D5D6D200D5D6
      D200D5D6D200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080605500C1AB5700D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700806055000000
      000000000000000000000000000000000000D5D6D200D5D6D200D5D6D200423B
      3C006D646600E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E0006D646600423B3C00D5D6D200D5D6D200D5D6D200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008060
      5500C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB
      7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB570080605500000000000000000000000000000000000000
      000000000000D5D6D200D5D6D200423B3C006D646600E0E0E000E0E0E000C7C9
      C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9
      C300C7C9C300C7C9C300E0E0E000E0E0E0006D646600423B3C00D5D6D200D5D6
      D20000000000604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080605500C1AB5700C1AB5700C1AB5700C1AB
      5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006D646600E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E0006D64660000000000000000000000000000000000604A4200604A4200604A
      4200604A4200604A4200A2989300A2989300A2989300A2989300A2989300A298
      9300A2989300A298930080726C0080726C0080726C0080726C0080726C008072
      6C00604A4200604A4200604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080605500C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB570080605500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000E0E0E000C7C9
      C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9C300C7C9
      C300C7C9C300C7C9C300E0E0E000E0E0E0000000000000000000000000000000
      000000000000604A4200604A4200604A4200604A4200604A4200EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700DADBD700C7CAC700C7CA
      C700C7CAC700C7CAC700C7CAC700C7CAC700604A4200604A4200604A4200604A
      4200604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080605500C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E0000000000000000000000000000000000000000000604A4200604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700C7CAC700C7CAC700604A4200604A4200604A4200C7CAC700C7CA
      C700604A4200604A4200604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB570080605500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000ADAFAA000000000000000000000000000000
      000000000000604A4200604A4200604A4200604A4200604A4200EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EBEAE500C7CAC700C7CAC700604A
      4200C7CAC700604A4200C7CAC700C7CAC700604A4200604A4200604A4200604A
      4200604A4200604A420000000000F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAF9F80080605500C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB
      7C00D8CB7C00C1AB5700C1AB5700C1AB5700C1AB570080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000E0E0E000C7C9C300C7C9C300C7C9C300E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000F2F2F200F2F2F200F2F2
      F2000000000000000000000000000000000000000000604A4200604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700C7CAC700C7CAC700C7CAC700604A4200C7CAC700604A4200C7CAC700C7CA
      C700604A4200604A4200604A4200604A4200604A4200604A4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D3
      D300000000000000000000000000000000000000000000000000000000000000
      00000000000080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700D8CB7C00D8CB7C00D8CB7C00D8CB7C00D8CB7C00C1AB5700C1AB
      5700B59D57008060550000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000F2F2F200F2F2F200F2F2F200F2F2F2000000000000000000000000000000
      000000000000604A4200604A4200604A4200604A4200604A4200EDECE700EDEC
      E700EDECE700EDECE700EDECE700DADBD700C7CAC700C7CAC700C7CAC700604A
      4200C7CAC700604A4200C7CAC700C7CAC700604A4200604A4200604A4200604A
      4200604A42000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080605500C1AB
      5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB
      7C00D8CB7C00D8CB7C00D8CB7C00C1AB57008060550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000E0E0E000C7C9C300C7C9C300C7C9C300C7C9C300C7C9
      C300E0E0E000E0E0E000E0E0E000E0E0E000F2F2F200F2F2F200F2F2F200FEFE
      FE000000000000000000000000000000000000000000604A4200604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700EDECE700C7CA
      C700C7CAC700C7CAC700C7CAC700604A4200604A4200604A4200C7CAC700C7CA
      C700604A4200604A4200604A4200604A42000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080605500C1AB5700C1AB5700C1AB5700C1AB
      5700C1AB5700C1AB5700C1AB5700D8CB7C00D8CB7C00D8CB7C00806055008060
      5500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000F2F2F200F2F2F200FEFEFE00000000000000000000000000000000000000
      000000000000604A4200604A4200604A4200604A4200604A4200EDECE700EDEC
      E700EDECE700EDECE700EBEAE500C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700C7CAC700C7CAC700C7CAC700C7CAC700604A4200604A4200604A42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      0500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008060550080605500C1AB5700C1AB5700C1AB5700C1AB5700C1AB5700C1AB
      5700826256008060550080605500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000F2F2F200FEFEFE00000000000000
      00000000000000000000000000000000000000000000604A4200604A4200604A
      4200604A4200604A4200EDECE700EDECE700EDECE700EDECE700C7CAC700C7CA
      C700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CAC700C7CA
      C700604A4200604A420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055008060
      550080605500806055008060550080605500C0B0AB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6B9B30080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      550080605500806055008060550080605500C6B9B30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000318EFF00318EFF00318EFF00318E
      FF00318EFF002574ED002574ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF002574ED002574ED002574ED002574
      ED002574ED00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500A69088008060550080605500000000008060550000000000806055000000
      0000A69088008060550080605500806055008060550000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF002574
      ED002574ED002574ED002574ED002574ED002574ED002574ED002574ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055008060550080605500806055000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500806055008060
      5500806055000000000000000000000000000000000000000000EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000000000002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000000000318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF002574ED002574ED002574ED002574ED002574ED002574
      ED002574ED002574ED002574ED002574ED000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE7000000000000000000000000002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF00000000000000000000000000000000000000000000000000318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF002574ED002574ED002574
      ED002574ED002574ED002574ED002574ED002574ED002574ED002574ED002574
      ED002574ED000000000000000000000000000000000000000000000000000000
      0000806055008060550080605500806055008060550080605500000000000000
      0000000000000000000000000000806055008060550080605500806055008060
      55008060550000000000000000000000000000000000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700000000000000
      00002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF0000000000000000002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF0000000000000000000000
      000000000000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF002574ED002574ED002574ED002574ED002574ED002574ED002574ED002574
      ED002574ED002574ED002574ED002574ED002574ED002574ED00000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550000000000000000000000
      000000000000EDECE700EDECE700BF837300BF837300EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A
      4200604A42000000000000000000000000000000000000000000604A4200604A
      4200EDECE700EDECE70000000000FDFEFF002257FF002257FF002257FF002257
      FF002257FF0000000000000000000000000000000000000000002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF00FDFEFF000000000000000000FDFEFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF002574ED002574ED002574ED002574ED002574
      ED002574ED002574ED002574ED002574ED002574ED002574ED002574ED002574
      ED002574ED002574ED00FDFEFF00000000000000000000000000000000000000
      0000806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      55008060550000000000000000000000000000000000EDECE700EDECE700EDEC
      E700BF837300EDECE700BF837300BF837300BF837300BF837300BF837300BF83
      7300EDECE700EDECE700EDECE700604A4200604A4200604A4200604A42000000
      0000604A4200604A4200604A4200604A4200EDECE700EDECE700000000002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000092C0000092C0000092C002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF00000000000000
      0000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF002574ED005E49
      3400000000000000000000000000000000000000000000000000000000005E49
      34002574ED002574ED002574ED002574ED002574ED002574ED002574ED000000
      000000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700C9833000C9833000C9833000C9833000C9833000C9833000C983
      3000EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700BF837300EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A
      4200604A4200604A4200000000000000000000000000604A4200604A4200604A
      4200EDECE700EDECE700000000002257FF002257FF002257FF002257FF000000
      000000000000000000000000000000000000000000000000000000092C000009
      2C0000092C002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF000000000000000000318EFF00318EFF00318EFF00318E
      FF00318EFF003965AD003F5883005E4934000000000000000000000000000000
      00000000000000000000000000005E4934003F5883003965AD002574ED002574
      ED002574ED002574ED002574ED00000000000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700C983
      3000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE70000000000000000000000000000000000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200604A420000000000000000000000
      00000000000000000000604A4200604A4200EDECE700EDECE7002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000092C0000092C0000092C002257FF00B2C7FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF005E4934004D3A28004D3A
      2800000000000000000000000000000000000000000000000000000000004D3A
      28004D3A28005E4934002574ED002574ED002574ED002574ED002574ED00318E
      FF0000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700C9833000C9833000C9833000EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A
      4200604A42009D908B0000000000000000000000000000000000604A4200604A
      4200EDECE700EDECE7002257FF002257FF002257FF002257FF002257FF000000
      000000000000000000000000000000000000000000000000000000092C000009
      2C0000092C002257FF00B2C7FF00B2C7FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF005E4934004D3A28007E6D5D007E6D5D007E6D5D007E6D5D007E6D
      5D007E6D5D007E6D5D007E6D5D007E6D5D004D3A28005E4934002574ED002574
      ED002574ED002574ED00318EFF00318EFF000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700C9833000C983
      3000C9833000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE70000000000000000000000000000000000EDECE700EDECE700BBB6
      AF00EDECE700BBB6AF00DCD9D400EDECE700BBB6AF00EDECE700BBB6AF00EDEC
      E700BBB6AF00EDECE700EDECE700604A4200604A4200604A4200000000000000
      000000000000604A4200604A4200604A4200EDECE700EDECE7002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      00000000000000000000B2C7FF00B2C7FF00B2C7FF00B2C7FF00B2C7FF00B2C7
      FF00B2C7FF002257FF002257FF002257FF002257FF002257FF002257FF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF005E4934005E4934005E49
      34005E4934005E4934005E4934005E4934005E4934005E4934005E4934005E49
      34005E4934005E4934002574ED002574ED002574ED00318EFF00318EFF00318E
      FF0000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700C9833000C9833000C9833000C9833000C9833000C9833000C983
      3000EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A
      4200604A4200604A4200604A4200604A4200604A4200604A4200604A4200604A
      4200EDECE700EDECE7002257FF002257FF002257FF002257FF002257FF000000
      0000000000000000000000000000000000000000000000000000B2C7FF00B2C7
      FF00B2C7FF00B2C7FF00B2C7FF00B2C7FF00B2C7FF00B2C7FF002257FF002257
      FF002257FF002257FF002257FF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF005E4934005E4934005E4934005E4934005E4934005E4934005E49
      34005E4934005E4934005E4934005E4934005E4934005E4934002574ED002574
      ED00318EFF00318EFF00318EFF00318EFF000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700C9833000C9833000C983
      3000C9833000C9833000C9833000C9833000EDECE700EDECE700EDECE700EDEC
      E700EDECE70000000000000000000000000000000000EDECE700EDECE700BBB6
      AF00BBB6AF00BBB6AF00BBB6AF00EDECE700BBB6AF00BBB6AF00BBB6AF00BBB6
      AF00BBB6AF00EDECE700EDECE700604A4200604A4200604A4200604A4200604A
      4200604A4200604A4200604A4200604A4200EDECE700EDECE7002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000003557
      DE003557DE0000000000CAD0EC00DEE4FF00DEE4FF00DEE4FF00DEE4FF00DEE4
      FF00DEE4FF002257FF002257FF002257FF002257FF002257FF002257FF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF008E7A67008E7A67008E7A
      67008E7A67008E7A67007E6D5D008E7A67007E6D5D007E6D5D007E6D5D007E6D
      5D007E6D5D007E6D5D002574ED00318EFF00318EFF00318EFF00318EFF00318E
      FF0000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700C9833000C9833000C9833000C9833000C9833000EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE7002257FF002257FF002257FF002257FF002257FF000000
      000000000000000000000000000000000000000000000000000000092C000009
      2C0000092C002257FF00DEE4FF00DEE4FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF005E4934000000000000000000000000000000
      00000000000000000000000000005E4934002574ED002574ED00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700C9833000C983
      3000C9833000C9833000C9833000EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE70000000000000000000000000000000000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE7002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000092C0000092C0000092C002257FF00DEE4FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF005E49
      3400000000000000000000000000000000000000000000000000000000005E49
      34002574ED00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF0000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700C9833000C9833000C9833000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      0000000000004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F453800000000002257FF002257FF002257FF002257FF000000
      000000000000000000000000000000000000000000000000000000092C000009
      2C0000092C002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF000000000000000000318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF000000000000000000000000000000
      00000000000000000000000000002574ED00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00000000000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700000000000000000000000000000000004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F453800000000002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000092C0000092C0000092C002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF00000000000000
      0000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00000000000000000000000000000000000000000000000000E6D1B800318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF000000
      000000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      0000000000004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F4538004F4538004F4538004F4538004F4538004F4538004F45
      38004F4538004F45380000000000FDFEFF002257FF002257FF002257FF002257
      FF002257FF0000000000000000000000000000000000000000002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF00FDFEFF000000000000000000FDFEFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00FDFEFF00000000000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E70000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE70000000000000000000000000000000000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700000000000000
      00002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF0000000000000000002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF0000000000000000000000
      000000000000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00000000000000
      000000000000000000000000000000000000EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE70000000000604A420000000000EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE7000000000000000000000000002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF00000000000000000000000000000000000000000000000000318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF000000000000000000000000000000000000000000000000000000
      0000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700604A
      420000000000EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE7000000000000000000000000000000000000000000EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE700EDECE70000000000000000000000
      000000000000000000002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF00000000000000000000000000000000000000
      0000000000000000000000000000318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF000000000000000000000000000000
      00000000000000000000000000000000000000000000EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700604A4200EDECE700EDECE700EDECE700EDEC
      E700EDECE700EDECE700EDECE700EDECE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000604A42000000
      00000000000000000000604A4200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFF002257FF002257FF002257
      FF002257FF002257FF002257FF002257FF002257FF002257FF002257FF002257
      FF00FDFEFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318EFF00318E
      FF00318EFF00FDFEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000604A4200000000000000000000000000655048000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002257FF002257FF002257FF002257FF002257
      FF002257FF002257FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000318EFF00318EFF00318EFF00318E
      FF00318EFF00318EFF00318EFF00000000000000000000000000000000000000
      0000000000000000000000000000000000005CD1FF004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8005CD1FF0000000000000000000000
      000000000000000000000000000000000000152C6300152C6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8005CD1
      FF005CD1FF00000000000000000000000000162D6400152C6300152C6300152C
      6300152C6300152C630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF006E5D5B006E5D5B008774
      7000877470008774700087747000877470006E5D5B006E5D5B00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C630010244F008C61
      53008C61530010244F0010244F0010244F0010244F00824B4100824B41000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF006E5D5B008774700087747000877470006E5D5B00877470008774
      7000877470006E5D5B00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C6300000000008C6153008C61530000000000000000000000
      000010244F00824B4100824B4100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF0078E6C30046415A008774
      70006E5D5B0078AFE6006E5D5B00877470005055780078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000008C61
      53008C6153008C615300000000000000000010244F0000000000824B4100824B
      4100000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00C5C5F2004949FF009898EF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF0078E6C30046415A0046415A006E9BD20075A6DB0078AFE6004B4B
      69005055780078E6C300FAF2EF00FAF2EF00B39C9500FAF2EF00E2CFC700E2CF
      C700E2CFC700E2CFC700E2CFC700E2CFC700E2CFC700FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C630000000000000000008C6153008C615300000000000000
      000010244F0000000000824B4100824B41000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6CFF004949FF004949
      FF004949FF004949FF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF0078E6C30046415A005055
      720078AFE60087C0F00087C0F0004B4B69005055780078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF004CB6F8004CB6F8004CB6F8004CB6
      F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      0000F8F5F4008C6153008C6153000000000010244F0000000000824B4100824B
      4100C3A9A4000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED006C6CFF006C6C
      FF006C6CFF006C6CFF004949FF004949FF004949FF004949FF004949FF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF0078E6C30046415A0078AFE60087C0F00087C0F00087C0F00087C0
      F0004C4D6D0078E6C300FAF2EF00C2AFA800B39C9500FAF2EF00E2CFC700E2CF
      C700E2CFC700E2CFC700E2CFC700E2CFC700FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6F8004CB6
      F8005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C63000000000000000000000000008C6153008C6153000000
      000010244F000000000000000000824B41001B3980001B3980001B3980001B39
      80001B3980001B398000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED006C6CFF006C6CFF006C6CFF006C6CFF006C6CFF004949FF004949
      FF004949FF004949FF004949FF004949FF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF0078E6C30046415A0078AF
      E60087C0F00087C0F00087C0F00087C0F0004B4B690078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF004CB6F800F2F2
      F200F2F2F200F2F2F2004CB6F8005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      0000000000008C6153008C615300F7F4F30010244F0000000000824B4100824B
      41001B3980001B3980001B3980001B3980001B3980001B398000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6CFF006C6C
      FF00E8E9ED006C6CFF004949FF004949FF00D5D7DF004949FF004949FF004949
      FF004949FF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF0078E6C30046415A0078AFE60087C0F00087C0F00087C0F00087C0
      F0004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200E5E5
      E3005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      63001B398000152C6300000000000000000000000000000000008C6153008C61
      530010244F00824B4100824B4100824B41001B3980001B3980001B3980001B39
      80001B3980001B398000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED006C6CFF006C6CFF006C6CFF006C6CFF00E8E9ED00E8E9ED004949FF00D5D7
      DF00D5D7DF004949FF004949FF004949FF004949FF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF0078E6C30046415A004641
      5A0046415A004946620078AFE6004B4B69005055780078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005CD1FF005CD1FF005CD1
      FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C63001B398000152C6300000000000000
      000000000000000000008C6153008C61530010244F00824B41007D493F000000
      00001B3980001B3980001B3980001B3980001B3980001B398000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6CFF006C6C
      FF006C6CFF00E8E9ED00D5D7DF00D5D7DF004949FF004949FF004949FF004949
      FF004949FF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF0078E6C30078E6C3004B4B69004B4B69004B4B69004B4B69005055
      780078E6C30078E6C300FAF2EF00E3F0E70078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F2005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      63001B398000152C6300000000000000000000000000000000008C6153004A22
      1B004A221B004A221B004A221B004C241D000000000000000000DBD1CF000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED006C6CFF006C6CFF006C6CFF006C6CFF006C6CFF00E8E9ED00D5D7DF00D5D7
      DF004949FF004949FF004949FF004949FF004949FF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF0078E6C30078E6C3004641
      5A004B4B69004B4B69004B4B69005055780078E6C30078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF005CD1FF005CD1
      FF005CD1FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005870
      FF005870FF005870FF005870FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F2005CD1FF005CD1FF005CD1FF005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C63001B398000152C6300000000000000
      00000000000000000000977C76004A221B004A221B004A221B004A221B005C2D
      25005C2D25005C2D25005C2D25009EB6FF000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6CFF006C6C
      FF00E8E9ED00E8E9ED004949FF00D5D7DF00D5D7DF004949FF004949FF004949
      FF004949FF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF0078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300FAF2EF00FAF2EF0078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF005CD1FF005CD1FF005CD1FF00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F2005870FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005870
      FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005CD1FF005CD1FF005CD1
      FF005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      63001B3980009EB6FF00B9CAFF00000000000000000000000000000000004A22
      1B004A221B004A221B00582B23005C2D25005C2D25005C2D2500000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED006C6CFF006C6CFF006C6CFF006C6CFF00E8E9ED006C6CFF004949FF004949
      FF00D5D7DF004949FF004949FF004949FF004949FF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00000000005CD1FF005CD1FF0062A2B4006B59
      4000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005870FF005870FF005870
      FF005870FF005870FF005870FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F2006B59400062A2B4005CD1FF005CD1FF00152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C63005C2D25005C2D
      25005D2F270000000000000000004A221B004A221B004A221B005C2D25005C2D
      25004A221B000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6C
      FF006C6CFF006C6CFF004949FF004949FF004949FF004949FF004949FF004949
      FF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00E2CFC700E2CFC700E2CFC700FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      00005CD1FF006B5940006B5940006B594000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F2005870FF00F2F2F200F2F2F2005870FF00F2F2F2005870
      FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2006B5940006B5940006B59
      40005CD1FF00152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C6300000000005C2D25005C2D25005C2D2500000000000000
      00004A221B004A221B005C2D25005C2D25004A221B0000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED006C6CFF006C6CFF006C6CFF006C6CFF004949FF004949
      FF004949FF004949FF004949FF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF0000000000000000000000000000000000FFFEFE00FBF5F200FBF5F200FBF5
      F200FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200B39C9500B39C
      9500B39C9500FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200FBF5F200FBF5
      F200FBF5F200FBF5F200FFFEFE00000000006B5940006B5940006B5940006B59
      4000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005870FF00F2F2
      F200F2F2F2005870FF00F2F2F2007689FC00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F2006B5940006B5940006B5940006B594000152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      00005C2D25005C2D25005C2D25005C2D25004A221B005B2D25005C2D25004A22
      1B004A221B000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED006C6C
      FF006C6CFF006C6CFF004949FF004949FF004949FF004949FF00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2CFC700E2CFC700E2CFC70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B5940006B594000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F2005870FF00F2F2F2005870FF005870FF005870FF00EFEFF2005870
      FF00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2006B5940006B5940000000
      000000000000152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C63000000000000000000000000005C2D25005C2D25005C2D
      25004A221B005C2D25005C2D25004A221B004A221B0000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED006C6CFF004949FF004949
      FF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2CFC700E2CF
      C700E2CFC7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B59
      4000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F2005E75FE005870FF00F2F2
      F200F2F2F200F2F2F200F2F2F2005870FF00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F2006B594000000000000000000000000000152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      00000000000000000000000000000000000010244F004A221B004A221B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00D5D7DF00D5D7DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2CFC700E2CFC700E2CFC70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F2005870FF005870FF005870FF00EBECF300F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F20000000000000000000000
      000000000000152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C630000000000000000000000000000000000000000000000
      000010244F0000000000000000009EB6FF009EB6FF009EB6FF00000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00AFB3C400AFB3C400AFB3C400AFB3C400AFB3C400AFB3
      C400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2CFC700E2CF
      C700E2CFC7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F20000000000000000000000000000000000152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      00000000000000000000000000000000000010244F0000000000000000009EB6
      FF009EB6FF009EB6FF009EB6FF00000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00AFB3C400AFB3
      C400AFB3C400AFB3C400AFB3C400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006ED7A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200E0D6CD00E0D6CD00E0D6CD0000000000000000000000
      000000000000152C6300152C6300152C6300152C6300152C6300152C6300152C
      6300152C6300152C630000000000000000000000000000000000000000000000
      000010244F0000000000000000009EB6FF009EB6FF009EB6FF00AFC3FF000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00AFB3C400AFB3C400AFB3C400AFB3C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000078E6
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200E0D6CD00E0D6
      CD000000000000000000000000000000000000000000152C6300152C6300152C
      6300152C6300152C6300152C6300152C6300152C6300152C6300000000000000
      00000000000000000000000000000000000010244F0000000000000000000000
      00009EB6FF009EB6FF0000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00AFB3C400AFB3
      C400AFB3C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078E6C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200E0D6CD00000000000000000000000000000000000000
      000000000000152C6300152C6300152C6300152C6300152C6300152C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010244F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00D5D7DF00D5D7
      DF00D5D7DF00D5D7DF00AFB3C400AFB3C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000078E6
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B59
      40006B5940006B59400000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000152C6300152C63001024
      4F0010244F0010244F0010244F0010244F0010244F0010244F0010244F001024
      4F0010244F0010244F0010244F0010244F0010244F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9ED00E8E9
      ED00E8E9ED00E8E9ED00D5D7DF00D5D7DF00D5D7DF00D5D7DF00AFB3C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000078E6C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063432800634328000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004F4538009DCEFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006E513800D6CEC8004100C400D6CEC800D6CEC800000000000000
      0000000000000000000000000000000000000000000019C4F00019C4F00019C4
      F00019C4F00019C4F00019C4F0000000000000000000000000004FB1F5001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2004FB1F50000000000000000000000
      0000468DF100468DF100468DF100468DF100468DF100468DF100000000000000
      0000CB978600CB97860000000000000000000000000000000000000000000000
      000000000000886A600080605500886A60000000000000000000000000000000
      00000000000000000000000000004C323D004C323D0000000000000000009DCE
      FB004F4538009DCEFB009DCEFB009DCEFB009DCEFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0B1A500BCAC9F004100
      C4004100C4003438F400D6CEC800D6CEC8000000000000000000000000000000
      00000000000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F0000000
      000000000000000000004FB1F5001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2004FB1F500000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF10000000000CB978600CB978600CB978600CB9786000000
      0000000000000000000000000000000000008060550080605500806055008060
      55008060550000000000000000000000000000000000000000004C323D004C32
      3D004C323D004C323D0000000000FFFFFF009DCEFB009DCEFB009DCEFB009DCE
      FB009DCEFB009DCEFB0016BAEB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004100C40063432800634328004100C4004100C40000000000382921006868
      E600D6CEC8000000000000000000000000000000000019C4F00019C4F00019C4
      F00019C4F00019C4F00019C4F0000000000000000000000000004FB1F5001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2004FB1F50000000000000000000000
      0000468DF100468DF100468DF100468DF100468DF100468DF100CB978600CB97
      8600CB978600CB978600CB978600CB9786000000000000000000000000000000
      0000806055008060550080605500806055008060550000000000000000000000
      0000000000004C323D004C323D004C323D004C323D004C323D004C323D00FFFF
      FF009DCEFB009DCEFB009DCEFB009DCEFB009DCEFB009DCEFB0016BAEB00198A
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000004100C4004100C4004100C4004100C4004100C4004100
      C4004100C4003438F400382921003829210038292100D6CEC800D6CEC8000000
      00000000000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F0000000
      000000000000000000004FB1F5001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2004FB1F500000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF100CB978600CB978600CB978600CB978600CB978600CB97
      8600000000000000000000000000B6A49E008060550080605500806055008060
      550080605500B6A49E000000000000000000000000004C323D004C323D004C32
      3D004C323D004C323D004C323D00FFFFFF009DCEFB009DCEFB009DCEFB0016BA
      EB0016BAEB0016BAEB0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000B9AA9E000000000000000000000000004100C4004100C4004100C4004100
      C4004100C4004100C4004100C4003153FF003153FF003153FF003153FF003438
      F40038292100382921003438F400D6CEC8000000000019C4F00019C4F00019C4
      F00019C4F00019C4F00019C4F0000000000000000000000000004FB1F5001F9C
      F2001F9CF2001F9CF2001F9CF2001F9CF2004FB1F50000000000000000000000
      0000468DF100468DF100468DF100468DF100468DF100468DF100CB978600CB97
      8600CB978600CB978600CB978600CB9786000000000000000000000000000000
      0000806055008060550080605500806055008060550000000000000000000000
      0000000000004C323D004C323D004C323D004C323D004C323D004C323D00FFFF
      FF009DCEFB009DCEFB009DCEFB0016BAEB00198AED00198AED0047C4EF0016BA
      EB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000BBADA100C1B4AA0063432800B0AAA7004100
      C4004100C4004100C4004100C4004100C4004100C4004100C4003153FF003153
      FF003153FF003153FF003153FF003153FF003438F4003438F400372C4D003146
      F4000000000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F0000000
      000000000000000000004FB1F5001F9CF2001F9CF2001F9CF2001F9CF2001F9C
      F2004FB1F500000000000000000000000000468DF100468DF100468DF100468D
      F100468DF100468DF10000000000CB978600CB978600CB978600CB9786000000
      0000000000000000000000000000000000008060550080605500806055008060
      55008060550000000000000000000000000000000000000000004C323D004C32
      3D004C323D004C323D0000000000FFFFFF00FFFFFF009DCEFB009DCEFB0016BA
      EB00198AED00198AED00198AED0047C4EF0016BAEB00198AED00198AED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000006343
      2800D6CEC800634328004100C4004100C4004100C4004100C4004100C4004100
      C400FFBE5C003D45E400FFAE33003153FF003153FF003153FF003153FF003153
      FF003153FF003153FF003438F400999BF9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0016BAEB0016BAEB0016BAEB0047C4EF00198AED00198AED00198A
      ED0047C4EF0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000063432800D0C6BD00634328004100C4004100
      C4004100C4004100C400FFBE5C00FFBE5C00FFBE5C003D4CE800FFBE5C00FFAE
      3300FFBE5C003153FF003153FF003153FF003153FF003153FF003153FF003246
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00198AED00198A
      ED0016BAEB0047C4EF00198AED00198AED00198AED0047C4EF0016BAEB00198A
      ED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DBD8F9004100C400460A
      AC00634328004100C4004100C4004100C4004100C400FFBE5C00FFAE3300FFBE
      5C004100C400FFBE5C00FFBE5C00FFAE3300FFBE5C00FFBE5C00FFBE5C003153
      FF003153FF003153FF003153FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BAEB0047C4EF00198A
      ED00198AED00198AED0047C4EF0016BAEB00198AED00198AED00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000004100C4004100C4004100C4004100C4004100C4004100C40090BC
      FC004100C400FFBE5C00FFAE3300FFBE5C004100C400FFBE5C00FFBE5C00FFBE
      5A00FFAE3300FFBE5C00FFBE5C00FFAE3300FFAE330000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00198AED00198AED0016BAEB0047C4EF00198AED00198AED00198AED0047C4
      EF0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004100C4004100C4004100
      C4004100C40090BCFC0090BCFC0090BCFC004100C400FFBE5C00FFBE5C005414
      B8003D4CE800FFAF3700FFBE5C00FFBE5C00FFAE3300FFBE5C00FFBE5C00FFBE
      5C003D4CE8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BA
      EB0047C4EF00198AED00198AED00198AED0047C4EF0016BAEB00198AED00198A
      ED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000004100C4004100C400471DD20090BCFC0090BCFC0090BCFC0090BC
      FC004100C400FFAE33004100C4003153FF003153FF003153FF003D4CE800FFBE
      5C00FFAE3300FFBE5C00FFBE5C00FFBE5C000000000000000000000000000000
      0000000000000000000000000000000000008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      0000000000000000000000000000000000000000000080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00198AED00198AED0016BAEB001E8EED00198AED00198A
      ED00198AED0047C4EF0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004100C40090BCFC0090BC
      FC0090BCFC0090BCFC0090BCFC0090BCFC004100C4003153FF003153FF003153
      FF003153FF003153FF003153FF003153FF003D4CE800FFAE3300FFBE5C00FFBE
      5C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198A
      ED00198AED0016BAEB0047C4EF00198AED00198AED00198AED0047C4EF0016BA
      EB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000090BCFC0090BCFC0090BCFC0090BCFC0090BCFC0090BCFC0090BC
      FC00A6D2FF003153FF003153FF003153FF003153FF003153FF003153FF003153
      FF003153FF003D44E400FFBE5C00585CD4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BAEB001E8E
      ED00198AED00198AED00198AED0047C4EF0016BAEB00198AED00198AED00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000090BCFC0090BCFC0090BC
      FC0090BCFC0090BCFC0090BCFC0090BCFC00A6D2FF00A6D2FF00A6D2FF003153
      FF003153FF003153FF003153FF003153FF003153FF003153FF003153FF003D4C
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00198AED00198AED0016BAEB0047C4EF00198AED00198AED00198A
      ED0047C4EF0016BAEB00198AED00198AED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000090BCFC0090BCFC0090BCFC0090BCFC0090BCFC0090BCFC0090BC
      FC00A6D2FF00A6D2FF00A6D2FF00A6D2FF00A6D2FF003153FF003153FF003153
      FF003153FF003153FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198A
      ED0016BAEB0047C4EF00198AED00198AED00198AED0047C4EF0016BAEB00BFEC
      F200C7CAC700FFFFFF00FFFFFF00FFFFFF000000000090BCFC0090BCFC0090BC
      FC0090BCFC0090BCFC0090BCFC00C6E6FF00C6E6FF00C6E6FF00A6D2FF00A6D2
      FF00A6D2FF00A6D2FF0091BCFF003153FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080605500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BAEB0047C4EF00198A
      ED00198AED00198AED00BFECF200C7CAC700C7CAC700BFECF200FFFFFF00FFFF
      FF000000000090BCFC006343290090BCFC0090BCFC00D1EBFF00C6E6FF00C6E6
      FF00C6E6FF00C6E6FF00C6E6FF00A6D2FF00A6D2FF00A6D2FF00A6D2FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBAD3700E6960000E6960000E6960000E6960000E696
      0000EBAD37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD65000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00198AED00198AED0016BAEB0047C4EF00198AED00BFECF200C7CAC700C7CA
      C700BFECF200C7CAC700C7CAC700FFFFFF000000000090BCFC0090BCFC00D1EB
      FF00D1EBFF00B4C9D900D1EBFF00D1EBFF00C6E6FF00C6E6FF00C6E6FF00C6E6
      FF00C6E6FF00A6D2FF00A6D2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBAD3700E696
      0000E6960000E6960000E6960000E6960000EBAD370000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9DD6500B9DD6500B9DD6500B9DD6500B9DD650000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00198AED00198AED0016BA
      EB00BFECF200C7CAC700C7CAC700BFECF200C7CAC700C7CAC7004A5AD7004A5A
      D7000000000090BCFC00C6E6FF00C6E6FF00C6E6FF00D1EBFF00BDD4E500B4C9
      D900D1EBFF00C6E6FF00C6E6FF00C6E6FF00C6E6FF00C6E6FF00C6E6FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBAD3700E6960000E6960000E6960000E6960000E696
      0000EBAD37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7ECA700B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD6500D7ECA70000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00198AED00BFECF200C7CAC700C7CAC700BFECF200C7CA
      C700C7CAC7004A5AD7004A5AD7004A5AD7000000000000000000C6E6FF00C6E6
      FF00C6E6FF00C6E6FF00D1EBFF00D1EBFF00B4C9D900D1EBFF00D1EBFF00C6E6
      FF00C6E6FF00C6E6FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBAD3700E696
      0000E6960000E6960000E6960000E6960000EBAD370000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9DD6500B9DD6500B9DD6500B9DD6500B9DD650000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7CA
      C700C7CAC700BFECF200C7CAC700C7CAC7004A5AD7004A5AD7004A5AD7004A5A
      D70000000000000000000000000000000000C6E6FF00C6E6FF00C6E6FF00D9EE
      FF00D1EBFF00D1EBFF00B4C9D900D1EBFF00D2EBFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EBAD3700E6960000E6960000E6960000E6960000E696
      0000EBAD37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9DD6500B9DD6500B9DD6500B9DD
      6500B9DD65000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFECF200C7CAC700C7CAC7004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7000000000000000000000000000000
      00000000000000000000000000000000000000000000C6E6FF00D1EBFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBAD3700E696
      0000E6960000E6960000E6960000E6960000EBAD370000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDDF6F00B9DD6500BDDF6F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C7CAC7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD700FFFF
      FF0000000000000000000000000000000000000000000000000000000000C6E6
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A5AD7004A5A
      D7004A5AD7004A5AD700FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000096FF000096FF000096
      FF0000D2FF0000D2FF0000D2FF0000D2FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD9C9900AD9C
      9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C990000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      0000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000096
      FF000096FF000096FF000096FF000096FF0000D2FF0000D2FF0000D2FF0000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4DDC300AD9C9900AD9C9900F4DDC300F4DDC300AD9C9900F4DDC300F4DD
      C300AD9C9900AD9C9900F4DDC300000000000000000000000000000000000000
      00000000000000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000000000
      0000000000000096FF000096FF000096FF000096FF000096FF000098FF00E1DC
      D8006A545C00E1DCD80008D2FE0000D2FF0000D2FF0000D2FF0000D2FF0000D2
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD9C9900F4DDC300F4DDC300AD9C9900AD9C9900F4DD
      C300F4DDC300AD9C9900F4DDC300F4DDC300AD9C9900AD9C9900F4DDC300F4DD
      C300AD9C99000000000000000000000000000000000000000000D5D4CD00D5D4
      CD00D5D4CD00827F6800827F6800827F6800827F680058553600585536007EBA
      FF00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      0000000000000000000000000000000000000096FF000096FF000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD800DDD7D400E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000D2FF0000D2FF0000000000000000000000
      00000000000000000000000000000000000000000000AD9C9900AD9C9900AD9C
      9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C
      9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C9900AD9C9900000000000000
      00000000000000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00585536007EBAFF007EBAFF007EBAFF007EBAFF00336AFD00EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000000096
      FF000096FF000096FF00E1DCD80096898B00E1DCD800E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD80096898B00E1DCD80000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      000010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AF
      FF0010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AFFF0010AF
      FF0010AFFF0010AFFF0010AFFF00000000000000000000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD007EBAFF007EBAFF007EBA
      FF007EBAFF00336AFD00336AFD00336AFD00EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00E2CFC700E2CFC700E2CFC700FAF2
      EF00EDDED700EDDED700EDDED700EDDED700FAF2EF00EDDED700FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      000000000000000000000096FF000096FF000096FF00E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD8000000000000000000000000000000000000000000E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF000000
      0000000000000000000000000000EFBB5200EFBB5200894C2E00894C2E00EFBB
      5200EFBB5200894C2E00EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200EFBB5200894C2E00EFBB5200EFBB5200894C2E00894C2E00EFBB5200EFBB
      52000000000000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD007EBAFF007EBAFF007EBAFF00D9CF4A00D9CF4A00336AFD00336A
      FD00336AFD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF0000000000000000000000000000000000000000000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD8000000000000000000000000000000
      00000000000000000000000000000000000000000000E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000000000000000000000000000000000EFBB
      5200EFBB52000000000000000000000000000000000000000000FFFDFA00EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB5200FFFDFA0000000000000000000000
      00000000000000000000EFBB5200EFBB52000000000000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD007EBAFF00D9CF
      4A00D9CF4A00D9CF4A00D9CF4A00336AFD00336AFD00336AFD00EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      0000000000000096FF000096FF000096FF0096898B00E1DCD800E1DCD8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1DCD800E1DCD80096898B0000D2FF0000D2FF0000D2
      FF000000000000000000EFBB5200000000000000000000000000000000000000
      000000000000000000000000000000000000F6DBA300EFBB5200F6DBA3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFBB520000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00336AFD00336AFD00D9CF4A00D9CF4A00D9CF4A00D9CF
      4A00336AFD00336AFD00336AFD00EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2EF00EDDE
      D700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2
      EF00FAF2EF00000000000000000000000000000000000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1DC
      D800E1DCD800E1DCD80000D2FF0000D2FF000000000000000000EFBB52000000
      000000000000000000006D392900632B1A00632B1A0000000000000000000000
      000000000000EFBB520000000000000000000000000000000000632B1A00632B
      1A006D392900000000000000000000000000EFBB520000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00336A
      FD00336AFD00D9CF4A00D9CF4A00D9CF4A00D9CF4A00336AFD00336AFD00336A
      FD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      00000096FF000096FF000096FF00E1DCD800E1DCD800E1DCD800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1DCD800E1DCD800E1DCD80000D2FF0000D2
      FF0000D2FF0000000000EFBB5200000000000000000000000000632B1A00632B
      1A00632B1A00632B1A000000000000000000EFBB5200EFBB5200EFBB52000000
      000000000000632B1A00632B1A00632B1A00632B1A0000000000000000000000
      0000EFBB520000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00336AFD00336AFD00D9CF4A00D9CF
      4A00D9CF4A00D9CF4A00336AFD00336AFD00336AFD00EAEAE600EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00F5EAE600FAF2EF00FAF2EF00F7EEEA00F7EEEA00F7EEEA00F9F0
      EC00FAF2EF00F7EEEA00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000096FF000096FF000098FF00E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD80008D2FE0000D2FF0000D2FF0000000000EFBB52000000
      00000000000000000000632B1A00632B1A0000000000632B1A00000000000000
      000000000000EFBB5200000000000000000000000000632B1A0000000000632B
      1A00632B1A00000000000000000000000000EFBB520000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00336AFD00336AFD00D9CF4A00D9CF4A00D9CF4A00D9CF4A00336A
      FD00336AFD00336AFD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      00000096FF000096FF00E1DCD800E1DCD800E1DCD80000000000000000000000
      0000000000000000000000000000000000006A545C0000000000000000000000
      000000000000000000000000000000000000E1DCD800E1DCD800E1DCD80000D2
      FF0000D2FF0000000000EFBB520000000000000000008A4D3000632B1A00632B
      1A00632B1A00894C2E00000000000000000000000000EFBB5200000000000000
      000000000000894C2E00632B1A00632B1A00632B1A008A4D3000000000000000
      0000EFBB520000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00336AFD00336A
      FD00D9CF4A00D9CF4A00D9CF4A00D9CF4A00336AFD00336AFD00D5D4CD00EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2EF00EDDE
      D700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2
      EF00FAF2EF000000000000000000000000000096FF000096FF006A545C00DFD9
      D600E1DCD8000000000000000000000000000000000000000000000000006A54
      5C006A545C006A545C0096898B000096FF000096FF000096FF000096FF000000
      0000E1DCD800DDD7D4006A545C0000D2FF0000D2FF0000000000EFBB52000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFBB5200EFBB5200EFBB5200000000000000000000000000000000000000
      000000000000000000000000000000000000EFBB520000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00EAEAE600336AFD00336AFD00D9CF4A00D9CF4A00D9CF
      4A00D9CF4A00D5D4CD00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      00000096FF000096FF00E1DCD800E1DCD800E1DCD80000000000000000000000
      0000000000000000000000000000000000006A545C0000000000000000000000
      000000000000000000000000000000000000E1DCD800E1DCD800E1DCD80000D2
      FF0000D2FF0000000000EFBB5200EFBB5200EFBB520000000000000000000000
      0000000000000000000000000000EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200000000000000000000000000000000000000000000000000EFBB5200EFBB
      5200EFBB520000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00EAEAE600EAEA
      E600336AFD00336AFD00D9CF4A00D9CF4A00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00E2CFC700E2CFC700E2CFC700FAF2EF00EDDED700EDDED700EDDED700EDDE
      D700FAF2EF00EDDED700F7EEEA00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000096FF000096FF000098FF00E1DC
      D800E1DCD8000000000000000000000000000000000000000000000000000000
      000096898B000000000000000000000000000000000000000000000000000000
      0000E1DCD800E1DCD80008D2FE0000D2FF0000D2FF0000000000EFBB5200EFBB
      5200000000000000000000000000EFBB52000000000000000000EFBB5200EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB52000000000000000000EFBB
      52000000000000000000EFBB5200EFBB5200EFBB520000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE600336AFD00336AFD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D0D7E500EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      00000096FF000096FF000096FF00E1DCD800E1DCD800E1DCD800000000000000
      0000000000000000000000000000000000000096FF0000000000000000000000
      0000000000000000000000000000E1DCD800E1DCD800E1DCD80000D2FF0000D2
      FF0000D2FF0000000000EFBB5200EFBB5200EFBB5200EFBB5200F0BD5800F7DD
      A90000000000EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200EFBB520000000000D5D4CD00D5D4CD00D5D4CD00827F6800827F6800827F
      6800827F6800827F6800827F6800827F6800827F6800827F6800827F6800827F
      6800827F6800827F6800D5D4CD00D5D4CD0000000000D5D4CD00D5D4CD00D5D4
      CD00B4C1E100EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00E3ECDA00E3ECDA00E3ECDA00E3ECDA00E6E6CD00FAF2EF00FAF2
      EF00F7EEEA00F7EEEA00F7EEEA00F7EEEA00F7EEEA00F7EEEA00FAF2EF00FAF2
      EF00FAF2EF00000000000000000000000000000000000096FF000096FF00E1DC
      D800E1DCD800E1DCD80000000000000000000000000000000000000000000000
      00000096FF00000000000000000000000000000000000000000000000000E1DC
      D800E1DCD800E1DCD80000D2FF0000D2FF000000000000000000EFBB5200EFBB
      520010AFFF0010AFFF00A05E440010AFFF0010AFFF0010AFFF00A05E440010AF
      FF00EFBB5200EFBB5200EFBB5200EFBB5200A05E440016ABF70010AFFF0010AF
      FF0010AFFF0010AFFF00A05E4400EFBB5200EFBB520000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600D5D4
      CD0000000000D5D4CD00D5D4CD00B4C1E100EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF00F0D2A000FAE1B400F0D2A000FAE1
      B400FAE1B400FAE1B400FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      0000000000000096FF000096FF000096FF0096898B00E1DCD800E1DCD8000000
      0000000000000000000000000000000000000096FF0000000000000000000000
      00000000000000000000E1DCD800E1DCD80096898B0000D2FF0000D2FF0000D2
      FF00000000000000000000000000EFBB5200EFBB52007C3D2900894C2E00A5A5
      2800A5A52800894C2E00894C2E00EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      52007C3D2900894C2E0090930F00A5A52800A5A52800894C2E00894C2E00EFBB
      52000000000000000000D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00EAEAE600EAEA
      E600EAEAE600EAEAE600EAEAE600EAEAE600D5D4CD00D5D4CD00B4C1E100EAEA
      E600EAEAE600EAEAE600EAEAE600000000000000000000000000FAF2EF00FAF2
      EF0078E6C30078E6C3006E9BD2006E9BD200CDD8AB0078E6C300FAF2EF00FAF2
      EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2
      EF00FAF2EF0000000000000000000000000000000000000000000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD8000000000000000000000000000000
      00000096FF0000000000000000000000000000000000E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000000000000000000000000000000000EFBB
      5200EFBB52007C3D2900894C2E00894C2E00894C2E00894C2E00894C2E00EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB52007C3D2900894C2E00894C2E00894C
      2E00894C2E00894C2E00894C2E00EFBB52000000000000000000D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4CD00D5D4
      CD00D5D4CD00D5D4CD00EAEAE600EAEAE600EAEAE600EAEAE600EAEAE600EAEA
      E600EAEAE600B4C1E100EAEAE600EAEAE600EAEAE600EAEAE600EAEAE6000000
      00000000000000000000FAF2EF00FAF2EF0078E6C30078E6C30087C0F00087C0
      F00078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      000000000000000000000096FF000096FF000096FF00E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD80000000000000000000096FF000000000000000000E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD80000D2FF0000D2FF0000D2FF000000
      000000000000000000000000000000000000EFBB52007C3D2900894C2E00894C
      2E00894C2E00894C2E00EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200EFBB52007C3D2900894C2E00894C2E00894C2E00894C2E00EFBB52000000
      00000000000000000000827F6800827F6800827F6800827F6800827F6800827F
      6800827F6800827F6800827F6800827F6800827F6800827F6800ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00000000000000000000000000FAF2EF00FAF2
      EF0078E6C300566F7E0087C0F00087C0F00083B7E60078E6C300FAF2EF00FAF2
      EF00EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700EDDED700FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000000096
      FF000096FF000096FF00E1DCD80096898B00E1DCD800E1DCD800E1DCD800E1DC
      D800E1DCD800E1DCD800E1DCD800E1DCD800E1DCD80096898B00E1DCD80000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      000000000000EFBB5200894C2E007C3D2900894C2E00A7664500EFBB5200EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB52007C3D29008749
      2D0093543800EFBB520000000000000000000000000000000000827F6800827F
      6800827F68003D35F000423AE700827F6800827F68005685B200298CFF00827F
      6800827F6800827F6800D9CF4A00D9CF4A00ABAA9B00ABAA9B00ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B000000
      00000000000000000000FAF2EF00FAF2EF0078E6C3004B4B690087C0F00087C0
      F0004B4B690078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000000000
      0000000000000000000000000000000000000096FF000096FF000096FF000096
      FF00E1DCD800E1DCD800E1DCD800E1DCD800DFD9D600E1DCD800E1DCD800E1DC
      D800E1DCD80000D2FF0000D2FF0000D2FF0000D2FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000894C2E00894C
      2E00894C2E00A7664500EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB
      5200EFBB5200EFBB5200A05E4400894C2E00A05E440000000000000000000000
      00000000000000000000827F6800827F68003D35F0003D35F0003D35F000827F
      6800827F6800298CFF00298CFF00298CFF00827F6800D9CF4A00D9CF4A00D9CF
      4A00D9CF4A00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00000000000000000000000000FAF2EF00FAF2
      EF0078E6C30078E6C3004B4B69004B4B69004B4B690078E6C300FAF2EF00FAF2
      EF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF0082D7FF008BD9FE00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000000000
      0000000000000096FF000096FF000096FF000096FF000096FF000098FF00E1DC
      D8006A545C00E1DCD80008D2FE0000D2FF0000D2FF0000D2FF0000D2FF0000D2
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010AFFF00632B1A00EFBB5200EFBB5200EFBB
      5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200EFBB5200632B1A00894C
      2E00632B1A000000000000000000000000000000000000000000827F6800827F
      68003D35F0003D35F0003D35F000827F6800827F6800298CFF00298CFF00298C
      FF00827F6800D9CF4A00D9CF4A00D9CF4A00ABAA9B00ABAA9B00000000000000
      0000000000000000000000000000ABAA9B0000000000ABAA9B00ABAA9B000000
      00000000000000000000FAF2EF00FAF2EF0078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C300FAF2EF00FAF2EF0082D7FF0082D7FF0082D7FF0082D7
      FF0082D7FF0082D7FF0082D7FF00FAF2EF00FAF2EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000096
      FF000096FF000096FF000096FF000096FF0000D2FF0000D2FF0000D2FF0000D2
      FF0000D2FF0000D2FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000010AF
      FF0051CAFF0051CAFF0051CAFF0051CAFF0051CAFF0051CAFF0051CAFF0051CA
      FF00894C2E00894C2E00894C2E00894C2E00632B1A0000000000000000000000
      00000000000000000000827F6800827F6800827F68005B56B400827F6800827F
      6800827F6800827F68004788CB00827F6800827F6800827F6800ACAB9900ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00000000000000000000000000FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000096FF000096FF000096
      FF0000D2FF0000D2FF0000D2FF0000D2FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000632B1A00632B1A00632B1A00632B1A00632B
      1A00632B1A00632B1A00632B1A00632B1A00632B1A00632B1A00632B1A00632B
      1A00632B1A000000000000000000000000000000000000000000827F6800827F
      6800827F6800827F6800827F6800827F6800827F6800827F6800827F6800827F
      6800827F6800827F6800ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA
      9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B00ABAA9B000000
      0000000000000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550080605500000000000000000000000000000000000000
      00000000000000000000000000000000000080605500CABDB800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3DBD90080605500806055008060
      5500000000000000000000000000000000000000000000000000000000008060
      5500806055008060550000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A00FEFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550080605500806055000000000000000000000000000000
      0000000000000000000000000000806055008060550080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000886B6000806055000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000806055000000000000000000000000000000000000000000000000000000
      000000000000000000000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500A7918A00A791
      8A00A7918A00A7918A00A7918A00A7918A00A7918A00A7918A00A7918A00A791
      8A00A7918A00A7918A00A7918A00A7918A00A7918A00A7918A00A7918A00A791
      8A00CDC1BC00000000000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFE0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A00FEFFFE0000000000000000000000000000000000D3D2
      D100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000047433E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0000000000000000000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000047433E00A4A09B00E0D6CB0047433E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047433E0099979300544F4A000000
      000000000000000000000000000000000000867B7F005A4B5000000000005A4B
      50005C4D52000000000000000000000000000000000000000000000000000000
      00005A4B5000FAF9FA005C4D52005A4B50000000000000000000000000005A4B
      50005A4B50000000000000000000000000000000000080605500D1D4D100D1D4
      D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4
      D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100806055000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A00000000000000000000000000000000000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A00000000004B4BE10035322E00B2AAA000E0D6
      CB00E0D6CB0047433E004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004743
      3E0099979300E0D6CB009997930047433E000000000000000000948A8D00948A
      8D005A4B5000DEDBDC00685A5E00DEDBDC005A4B500000000000000000000000
      00000000000000000000000000005A4B5000DEDBDC005A4B50005A4B5000DEDB
      DC00B2ABAD00BDB7B900BDB7B900DEDBDC00A39B9D00BDB7B900000000000000
      00000000000080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4
      D10080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060550059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00000000000000
      0000000000000000000000000000000000000000000059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A004B4BE1004A4AD60047433E0099979300ACA8A20047433E004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE10035322E00605B550099979300E0D6CB003532
      2E004B4BE100ACA5A700ACA5A700ACA5A7005B4C51005A4B5000ACA5A7005A4B
      50005A4B5000ACA5A700ACA5A700ACA5A700ACA5A700ACA5A700000000000000
      00005A4B50009D9497005A4B50005A4B5000BDB7B900BDB7B900BDB7B9005A4B
      50005A4B50005A7DFF0000000000000000000000000080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      550080605500806055008060550059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0000000000000000000000000059C26A0059C26A00000000000000
      0000000000000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A004B4BE1004B4BE10035322E004743
      3E0047433E0035322E004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E10035322E0047433E0035322E004B4BE1004B4BE1007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF00000000006491FF006491FF006491FF006491FF00000000000000
      00000000000080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4
      D10080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060550059C2
      6A0059C26A0059C26A0059C26A0059C26A0000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A000000000000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A004B4BE1003BD8FF0040A9F5004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1007DB4FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF007DB4FF00000000006491FF006491
      FF006490FD006B5D620000000000000000000000000080605500D1D4D100D1D4
      D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4
      D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4D1008060
      5500D1D4D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A00000000007DCF8A0059C26A0059C26A0059C26A0059C26A0059C2
      6A000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0000000000000000004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E1004B4BE1004B4BE1004B4BE1003BD8FF0071C1F8007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF00000000006491FF005A7DFF006B5D62006B5D6200000000000000
      00000000000080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4
      D10080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060550059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A000000000000000000000000000000000000000000000000004B4BE1004B4B
      E10047433E00635F5A0047433E0047433E0047433E0047433E004B4BE100635F
      5A004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4BE1004B4B
      E100000000007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF00000000006491FF005A7D
      FF006B5D62006B5D620000000000000000000000000080605500D1D4D100D1D4
      D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4
      D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4D1008060
      5500D1D4D100D1D4D1008060550059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A000000000000000000000000000000
      0000000000000000000000000000000000004B4BE10047433E00635F5A00635F
      5A0047433E0047433E004B4BE10047433E00635F5A00635F5A0047433E004743
      3E0047433E004B4BE1004B4BE10000000000000000007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF00000000005A7DFF005A7DFF000000000000000000000000000000
      00000000000080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4
      D10080605500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100D1D4D10080605500D1D4D100D1D4D1008060550059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      000000000000000000000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A00000000000000000000000000000000000000000000000000000000000000
      000000000000CBCBF6004B4BE100635F5A00635F5A0047433E004B4BE1004743
      3E00635F5A00635F5A00635F5A0047433E004B4BE1004B4BE100000000000000
      0000000000007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4
      FF007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF0000000000FEFEFF000000
      0000000000000000000000000000000000000000000080605500D1D4D100D1D4
      D100D1D4D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4
      D10080605500D1D4D100D1D4D10080605500D1D4D100D1D4D100D1D4D1008060
      5500D1D4D100D1D4D100806055000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0000000000000000000000000059C2
      6A0059C26A0059C26A0059C26A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8E8FB006363E5004D4DE100BDBDF400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055008060
      5500806055008060550080605500806055008060550080605500806055000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080605500000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000CB978600CB97
      8600CB978600CB978600CB978600CB978600CB978600767BFB00767BFB00767B
      FB00767BFB00000000000000000000000000FEFFFE0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A00FEFFFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080605500000000000000000019C4F00019C4F00019C4F00019C4
      F00019C4F00019C4F000CB978600CB978600CB978600CB978600CB978600CB97
      8600CB978600767BFB00767BFB00767BFB00767BFB0000000000000000000000
      00000000000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005E62D8005E62D8000000000080605500000000000000
      000019C4F00019C4F00019C4F00019C4F00019C4F00019C4F000CB978600CB97
      8600CB978600CB978600CB978600CB978600CB978600767BFB00767BFB00767B
      FB00767BFB00000000000000000000000000000000000000000059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E62D8005E62
      D8005E62D8008060550000000000000000000000000000000000000000000000
      00000000000000000000CB978600CB978600CB978600CB978600CB978600CB97
      8600CB978600767BFB00767BFB00767BFB00767BFB0000000000000000000000
      000000000000000000000000000059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005E62D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB978600CB97
      8600CB978600CB978600CB978600CB978600CB978600767BFB00767BFB00767B
      FB00767BFB000000000000000000000000000000000000000000000000000000
      000059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CB978600CB978600CB978600CB978600CB978600CB97
      8600CB978600F2F3FF00F2F3FF00F2F3FF00F2F3FF0000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE0059C26A0059C2
      6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
      6A0059C26A00FEFFFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB978600CB97
      8600CB978600CB978600CB978600CB978600CB97860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C26A0059C26A0059C26A0059C2
      6A0059C26A0059C26A0059C26A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000096898B0096898B0096898B0096898B0096898B0096898B009689
      8B00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B9000000000000000000000000000000000000000000E2CFC700E2CFC700E2CF
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700000000000000
      0000FBFAF70085614100856141008E694A008E694A008E694A008E694A008561
      4100856141008E694A007F5A39008E694A0085614100856141008E694A008E69
      4A008E694A008E694A008561410085614100FDFCFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096898B0096898B0096898B009689
      8B0096898B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      000000000000E2CFC700E2CFC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000008E694A0085614100856141008E69
      4A008E694A008E694A008E694A0085614100856141008E694A007F5A39008E69
      4A0085614100856141008E694A008E694A008E694A008E694A00856141008561
      41008E694A000000000000000000000000000000000000000000000000000000
      000000000000FDFEFF002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F000FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000096898B0096898B0096898B0096898B0096898B0096898B0096898B009689
      8B00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB90000000000000000000000000000000000E2CFC70000000000E2CF
      C7000000000000000000000000000000000000000000F6EBE500F6EAE400F6EA
      E400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EBE500000000000000
      0000000000000000000000000000E2CFC70000000000E2CFC700000000000000
      00008E694A0085614100856141008E694A008E694A008E694A008E694A008561
      4100856141008E694A007F5A39008E694A0085614100856141008E694A008E69
      4A008E694A008E694A0085614100856141008E694A0000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      00000000000000000000000000000000000096898B0096898B0096898B009689
      8B0096898B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      000000000000000000000000000000000000E2CFC70000000000000000000000
      0000F6EAE400F6EAE400E2E8DC006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A500DAE7D800F6EAE400F6EAE400000000000000000000000000E2CFC7000000
      0000000000000000000000000000000000008E694A0085614100856141008E69
      4A008E694A008E694A008E694A0085614100856141007F5A39007B583A007F5A
      390085614100856141008E694A008E694A008E694A008E694A00856141008561
      41008E694A000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0002852F00000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      000096898B0096898B0096898B0096898B0096898B0096898B0096898B009689
      8B006A545C00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB9000000000000000000000000000000000000000000000000000000
      000000000000E2CFC700F6EAE400F6EAE4006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A500F6EA
      E400F6EAE400E2CFC70000000000000000000000000000000000000000000000
      00008E694A0085614100856141008E694A008E694A008E694A008E694A007F5A
      39007F5A39007F5A39004A3929007F5A39007F5A39007F5A39008E694A008E69
      4A008E694A008E694A0085614100856141008E694A0000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F00000000000000000000000
      00000000000000000000000000000000000096898B0096898B0096898B009689
      8B0096898B0096898B0096898B00C1BBB900E1DCD800E1DCD800C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      00000000000000000000000000000000000000000000F6EAE400F6EAE4006ED7
      A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A5006ED7A5006ED7A5006ED7A500F6EAE400F6EAE400000000000000
      0000000000000000000000000000000000008E694A0085614100856141008E69
      4A008E694A008E694A007F5A39007F5A39007F5A3900E2CDA2004A392900E2CD
      A2007F5A39007F5A39007F5A39008E694A008E694A008E694A00856141008561
      41008E694A00000000000000000000000000000000002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      000096898B0096898B0096898B0096898B0096898B0096898B0096898B00C1BB
      B900E1DCD800E1DCD800C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB9000000000000000000000000000000000000000000000000000000
      000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A50078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C300F6EAE40000000000000000000000000000000000000000000000
      00000000000085614100856141008E694A008E694A007F5A39007F5A39007F5A
      3900F0E0B500F0E0B5004A392900F0E0B500F0E0B5007F5A39007F5A39007F5A
      39008E694A008E694A0085614100856141000000000000000000000000000000
      0000FDFEFF002852F0002852F0002852F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0002852F0002852F000FDFEFF000000
      00000000000000000000000000000000000096898B0096898B0096898B009689
      8B0096898B0096898B0006D4FE0000D2FF0043EFFF0043EFFF004EEBF900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      000000000000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7
      A500F6EAE400F6EAE400F6EAE400F6EAE400FAF2EF006E5D5B00FAF2EF00FAF2
      EF00FAF2EF00F6EAE400F6EAE40078E6C30078E6C30078E6C300F6EAE4000000
      0000000000000000000000000000000000000000000085614100856141008E69
      4A007F5A39007F5A39007F5A3900F0E0B500F0E0B500F0E0B500A3D7FF00F0E0
      B500F0E0B500F0E0B5007F5A39007F5A39007F5A39008E694A00856141008561
      4100000000000000000000000000000000002852F0002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      000096898B0096898B0096898B0096898B0096898B0000D2FF0000D2FF0000D2
      FF0043EFFF0043EFFF0043EFFF0043EFFF00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900000000000000000000000000000000000000000000000000F6EB
      E500F6EAE4006ED7A5006ED7A5006ED7A500F6EAE400F6EAE400F6EAE400FAF2
      EF00F6EAE40064545300F6EAE400FAF2EF00FAF2EF00FAF2EF00F6EAE40078E6
      C30078E6C30078E6C300F6EAE400F6EBE5000000000000000000000000000000
      00000000000000000000856141007F5A39007F5A39007F5A3900F0E0B500F0E0
      B500F0E0B500A3D7FF00A3D7FF008EC8FD00F0E0B500F0E0B500F0E0B5007F5A
      39007F5A3900815C3B0085614100000000000000000000000000000000000000
      00002852F0002852F0002852F000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F0002852F0002852F00000000000000000002852F0002852F0002852F0000000
      00000000000000000000000000000000000096898B0096898B0096898B009689
      8B0000D2FF0000D2FF0000D2FF0000D2FF00194FFF0043EFFF0043EFFF0043EF
      FF0043EFFF00C1BBB900C1BBB900C1BBB900C1BBB90000000000000000000000
      0000000000000000000000000000F6EAE400E2E8DC006ED7A5006ED7A5006ED7
      A5006ED7A500F6EAE400FAF2EF00F6EAE400F6EAE40078AFE600F6EAE400F6EA
      E400FAF2EF00FAF2EF0078E6C30078E6C30078E6C30078E6C300ECEAE100F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000007F5A3900F0E0B500F0E0B500A3D7FF0091CAFD008EC8FD008EC8
      FD008EC8FD00F0E0B500F0E0B5007F5A39000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F00000000000000000000000
      00002852F0002852F0002852F0002852F0000000000000000000000000000000
      000096898B0096898B0096898B0096898B0000D2FF0000D2FF0000D2FF0000D2
      FF00194FFF0043EFFF0043EFFF0043EFFF0043EFFF00C1BBB900C1BBB900C1BB
      B900C1BBB900000000000000000000000000000000000000000000000000F6EA
      E4006ED7A5006ED7A5006ED7A5006ED7A5006ED7A50078E6C30078E6C300F6EA
      E4006E9BD2006E9BD20078AFE600F6EAE40078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300F6EAE4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0E0B500A3D7
      FF008EC8FD00B2E1FF00B2E1FF00B2E1FF008EC8FD008EC8FD00F0E0B5000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0002852
      F00000000000000000000000000000000000000000002852F0002852F0002852
      F00000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0000D2FF0000D2FF0000D2FF0000D2FF00194FFF00194FFF0043EFFF0043EF
      FF0043EFFF00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900000000000000
      0000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7
      A5006ED7A50078E6C30078E6C30078E6C30078AFE60087C0F00087C0F00078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF0000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F000000000000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0000000000000000000000000009689
      8B0096898B0096898B0096898B0096898B0000D2FF0000D2FF0000D2FF00194F
      FF00194FFF0043EFFF0043EFFF0043EFFF0043EFFF00C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB9000000000000000000000000000000000000000000F6EA
      E4006ED7A5006ED7A5006ED7A5006ED7A50078E6C30078E6C30078E6C30078AF
      E60087C0F00087C0F00087C0F00087C0F00078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300F6EAE4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0002852F0002852F000000000000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F00000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0000D2FF0000D2FF0000D2FF0000D2FF00194FFF0043EFFF0043EFFF0043EF
      FF0043EFFF00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900000000000000
      0000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30078E6C30078AFE60087C0F00087C0F00087C0F00087C0
      F00078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0000000000000000000000000000000000000000000000000000000
      0000000000002852F0002852F0002852F0000000000000000000000000009689
      8B0096898B0096898B0096898B0096898B0096898B0000D2FF0000D2FF0000D2
      FF0043EFFF0043EFFF0043EFFF0043EFFF00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB9000000000000000000000000000000000000000000F6EA
      E4006ED7A5006ED7A5006ED7A5006ED7A50078E6C30078E6C30078E6C30078AF
      E60087C0F00087C0F00087C0F00087C0F00078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C300F6EAE4000000000000000000000000000000
      000000000000000000000000000000000000E3F4FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F00000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0000000000000000000000000000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F00000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0000D2FF0000D2FF0043EFFF0043EFFF0043EFFF00C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900000000000000
      0000000000000000000000000000F6EAE400DAE7D8006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30046415A0078AFE60078AFE60087C0F00087C0F00087C0
      F0005055780078E6C30078E6C30078E6C30078E6C30078E6C300ECEAE100F6EA
      E400000000000000000000000000000000000000000000000000000000000000
      0000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF0000000000000000000000
      00000000000000000000000000002852F0002852F0002852F0002852F0000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0000000000000000000000000009689
      8B0096898B0096898B0096898B0096898B0096898B0096898B0096898B009689
      8B00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB9000000000000000000000000000000000000000000F6EB
      E500F6EAE4006ED7A5006ED7A5006ED7A50078E6C30078E6C30046415A004B4B
      69004B4B69004B4B69004B4B69004F5274005055780078E6C30078E6C30078E6
      C30078E6C30078E6C300F6EAE400F6EBE5000000000000000000000000000000
      00000000000000000000000000000000000000000000B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F00000000000000000002852F0002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0000000
      000000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900000000000000
      000000000000000000000000000000000000F6EAE4006ED7A5006ED7A5006ED7
      A50078E6C30078E6C30078E6C3004B4B69004B4B69004B4B69004B4B69004B4B
      690078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EAE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF000000000000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F000000000000000000000000000000000009689
      8B0096898B0096898B0096898B0096898B0096898B0096898B0096898B009689
      8B00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB90000000000000000000000000000000000000000000000
      000000000000F6EAE4006ED7A5006ED7A5006ED7A50078E6C30078E6C30078E6
      C30078E6C3004B4B690078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C300F6EAE40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065545400B2E1FF00B2E1
      FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF00B2E1FF006554
      5400000000000000000000000000000000000000000000000000000000000000
      0000FDFEFF002852F0002852F0002852F0002852F0002852F0002852F0002852
      F000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002852F0002852F0002852F000FDFEFF000000
      000000000000000000000000000096898B0096898B0096898B0096898B009689
      8B0096898B0096898B0096898B0096898B00C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900000000000000
      00000000000000000000000000000000000000000000F6EAE400F6EAE4006ED7
      A5006ED7A50078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C300F6EAE400F6EAE400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006554540065545400B2E1FF006554540065545400655454006554
      5400655454006554540065545400655454000000000000000000000000000000
      000000000000000000000000000000000000000000002852F0002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002852F0002852
      F0002852F0002852F00000000000000000000000000000000000000000009689
      8B0096898B0096898B0096898B0096898B0096898B0096898B0096898B009689
      8B00C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BBB900C1BB
      B900C1BBB900C1BBB90000000000000000000000000000000000000000000000
      000000000000E2CFC700F6EAE400F6EAE4006ED7A5006ED7A50078E6C30078E6
      C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C30078E6C300F6EA
      E400F6EAE400E2CFC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000065545400655454006554
      5400655454006554540065545400655454006554540065545400655454006554
      5400000000000000000000000000000000000000000000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F00000000000000000000000
      000000000000000000006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C000000
      000000000000000000000000000000000000E2CFC70000000000000000000000
      0000F6EAE400F6EAE400ECEAE10078E6C30078E6C30078E6C30078E6C30078E6
      C300ECEAE100F6EAE400F6EAE400000000000000000000000000E2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006554540065545400655454006554540065545400655454006554
      5400655454006554540065545400655454000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002852
      F0002852F0002852F0002852F0002852F0002852F00000000000000000000000
      000000000000000000002852F0002852F0002852F0002852F0002852F0002852
      F0000000000000000000000000000000000000000000000000006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C000000000000000000E2CFC70000000000E2CF
      C7000000000000000000000000000000000000000000F6EBE500F6EAE400F6EA
      E400F6EAE400F6EAE400F6EAE400F6EAE400F6EAE400F6EBE500000000000000
      0000000000000000000000000000E2CFC70000000000E2CFC700000000000000
      0000000000000000000000000000000000000000000065545400655454006554
      5400655454006554540065545400655454006554540065545400655454006554
      5400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F000000000000000000000000000000000000000
      00000000000000000000000000006A545C006A545C006A545C006A545C006A54
      5C006A545C006A545C006A545C006A545C007F645D007F645D007F645D007F64
      5D007F645D007F645D007F645D007F645D007F645D007F645D00000000000000
      000000000000E2CFC700E2CFC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2CFC700E2CFC70000000000000000000000000000000000000000000000
      0000000000000000000065545400655454006554540065545400655454006554
      5400655454006554540065545400655454000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFEFF002852F0002852F0002852F0002852F0002852F0002852
      F0002852F0002852F0002852F0002852F0002852F000FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006A545C006A545C006A545C006A545C006A545C006A545C006A545C006A54
      5C007F645D007F645D007F645D007F645D007F645D007F645D007F645D007F64
      5D007F645D0000000000000000000000000000000000E2CFC700E2CFC700E2CF
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E2CFC700E2CFC700E2CFC700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000655454006554540065545400655454006554540065545400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002852F0002852F0002852F0002852F0002852F0002852F0002852F0000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF000000
      0000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00EFF4F70000000000B8CDDB00B8CDDB00B8CD
      DB0000000000EFF4F700B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CD
      DB00B8CDDB00B8CDDB0000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8CD
      DB00B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB000000
      000000000000B8CDDB00B8CDDB00B8CDDB000000000000000000B8CDDB00B8CD
      DB00B8CDDB0000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0000000000FAF2
      EF00FAF2EF00FAF2EF00FAF2EF0078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00E2CFC700FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700EDDED700EDDED700EFE2DB00FAF2EF00FAF2EF00FAF2
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB000000
      00000000000000000000B8CDDB00B8CDDB00000000000000000000000000B8CD
      DB00B8CDDB000000000000000000FAF2EF00FAF2EF00FAF2EF0078E6C30078E6
      C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF000000000000000000000000005A4B
      50005A4B50000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A4B
      50005A4B50000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CDDB000000
      00000000000000000000B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB000000000000000000FAF2
      EF00FAF2EF00FAF2EF00E7F0E80078E6C300FAF2EF0078E6C300FAF2EF00FAF2
      EF00FAF2EF00E2CFC700FAF2EF00EDDED700EDDED700EDDED700EDDED700EDDE
      D700EDDED700EDDED700EDDED700EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2
      EF0000000000000000005A4B5000EEEDED00EEEDED005A4B5000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A4B5000EEEDED00EEEDED005A4B5000000000000000
      00000000000000000000000000005A4B50005A4B5000EEEDED005A4B50000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A4B5000EEEDED005A4B50005A4B
      500000000000000000000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB000000
      00000000000000000000B8CDDB00B8CDDB00000000000000000000000000B8CD
      DB00B8CDDB000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF0078E6
      C30078E6C30078E6C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0000000000000000005A4B5000DEDB
      DC00DEDBDC00EEEDED0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD
      8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C005A4B5000DEDB
      DC00DEDBDC00EEEDED0073CD8C0073CD8C0073CD8C0000000000000000005A4B
      5000EEEDED00DEDBDC00EEEDED005A4B50005A7DFF005A7DFF005A7DFF005A7D
      FF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A4B
      5000EEEDED00DEDBDC00EEEDED005A4B50005A7DFF005A7DFF00000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CDDB000000
      00000000000000000000B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB000000000000000000FAF2
      EF00FAF2EF00FAF2EF0078E6C30078E6C30083E7C700FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00F5EAE600FAF2EF008774700000000000EDDED700EDDED700F7EE
      EA00F7EEEA00F7EEEA00F7EEEA00F7EEEA00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF0073CD8C0073CD8C005A4B5000EEEDED00EEEDED005A4B500078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E196005A4B5000EEEDED00EEEDED005A4B500078E1960078E1
      960078E196005A7DFF005A7DFF005A4B5000EEEDED00DEDBDC00EEEDED005A4B
      50006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF005A4B5000EEEDED00DEDBDC00EEEDED005A4B
      50006491FF006491FF000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB000000
      00000000000000000000B8CDDB00B8CDDB00000000000000000000000000B8CD
      DB00B8CDDB000000000000000000FAF2EF00FAF2EF0078E6C30078E6C30078E6
      C300FAF2EF0078E6C300FAF2EF00FAF2EF00FAF2EF0078E6C30078E6C30078E6
      C300EDDED70082D7FF006ED7A5006ED7A50078E6C30078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0078E1960078E1960078E196005A4B
      50005A4B500078E1960078E1960073CD8C0073CD8C0073CD8C0073CD8C0073CD
      8C0073CD8C0073CD8C0073CD8C0073CD8C0073CD8C0078E1960078E196005A4B
      50005A4B500078E1960078E1960073CD8C0073CD8C006491FF006491FF005A4B
      5000EEEDED00EEEDED005A4B50006387E5006491FF005A7DFF005A7DFF005A7D
      FF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF005A7DFF006387
      E5005A4B5000EEEDED00EEEDED005A4B50006491FF005A7DFF00000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CDDB000000
      00000000000000000000B8CDDB00000000000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB000000000000000000FAF2
      EF00FAF2EF00FAF2EF0078E6C30078E6C30078E6C30078E6C300FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF007BC7FD006EC3FF0082D7FF00EDDE
      D700EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF0078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E19600EEED
      ED00EEEDED006491FF006491FF006491FF005A4B50005A4B50006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF005A4B50005A4B50006491
      FF00EEEDED00EAEBEE000000000000000000B8CDDB00B8CDDB00000000000000
      000000000000B8CDDB00B8CDDB00000000000000000000000000B8CDDB000000
      00000000000000000000B8CDDB00B8CDDB00000000000000000000000000B8CD
      DB00B8CDDB000000000000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF0078E6
      C300FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF0078E6C30078E6C30078E6
      C30078E6C3006FC6F9006EC3FF0082D7FF006ED7A5006ED7A50078E6C30078E6
      C30078E6C30078E6C30078E6C300FAF2EF0078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078F0AF0078F0AF0078F0AF0078F0AF00000000006464FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006491FF006491FF006491FF006491FF006491FF006491FF006491FF006491
      FF006492FF007DB4FF007DB4FF007DB4FF00C3DCFF0000000000000000000000
      0000B8CDDB00B8CDDB00000000000000000000000000B8CDDB00B8CDDB000000
      000000000000B8CDDB00B8CDDB00B8CDDB000000000000000000B8CDDB00B8CD
      DB00000000000000000000000000B8CDDB00B8CDDB000000000000000000FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF007BC7FD006EC3
      FF0082D7FF00EDDED700EDDED700FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00DFF1F60078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0
      AF0078F0AF0078F0AF0078F0AF0078F0AF0078F0AF0071997D006B5D620078E1
      96006B5D62000000000000000000000000000000000000000000000000000000
      000000000000000000007DB4FF007DB4FF007DB4FF007DB4FF007DB4FF006B5F
      67006B5D62005A4B50006B5D62006B5D62006B5D62006B5D62006B5D62006491
      FF006491FF006B5D620000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB000000
      0000B8CDDB00B8CDDB00B8CDDB00EFF4F70000000000B8CDDB00B8CDDB00B8CD
      DB0000000000EFF4F700B8CDDB00B8CDDB00B8CDDB0000000000B8CDDB00B8CD
      DB00B8CDDB00B8CDDB0000000000FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2EF00FAF2
      EF00FAF2EF00FAF2EF00FAF2EF007BC7FD006EC3FF0082D7FF00EDDED700EDDE
      D700FAF2EF00FAF2EF00FAF2EF00FAF2EF00000000006B5D62006B5D62006B5D
      620078E196006B5D62006B5D62006B5D62006B5D62005A4B50006B5D62006B5D
      62006B5D62006B5D620078E196006B5D62000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006491FF006491FF006B5D62006B5D62005A4B50006B5D62006B5D
      62006B5D62006B5D62006B5D62006491FF006B5D620000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFDFF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00FAFDFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CC9FF006EC3FF0082D7FF00000000000000000000000000000000000000
      000000000000000000006B5D62006B5D620078E196006B5D62006B5D62006B5D
      62006B5D62005A4B50006B5D62006B5D62006B5D620078DC94006B5D62006B5D
      6200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006491FF006491
      FF006B5D62005A4B50006B5D62006B5D62006B5D62006B5D62006491FF006B5D
      6200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007CC9FF006EC3FF0082D7
      FF000000000000000000000000000000000000000000000000000000000078E1
      960078E1960078E1960078E1960078E1960078E1960078E1960078E1960078E1
      960078E1960078E1960078E19600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8CDDB0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD00B8CDDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007CC9FF006EC3FF0082D7FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8CD
      DB00B8CDDB0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD0091AA
      BD0091AABD0091AABD0091AABD0091AABD00B8CDDB00B8CDDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007CC9
      FF006EC3FF0082D7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8CDDB00B8CDDB00B8CDDB00B8CDDB0091AA
      BD0091AABD0091AABD0091AABD0091AABD0091AABD0091AABD00B8CDDB00B8CD
      DB00B8CDDB00B8CDDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007CC9FF006EC3FF0082D7FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCF2FF00DCF2FF00DCF2FF00DCF2FF0091AABD0091AABD0091AABD0091AA
      BD0091AABD00DCF2FF00DCF2FF00DCF2FF00DCF2FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007CC9FF00EDDED700FAF2EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF0091AABD00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F9F2EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DCF2
      FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00DCF2FF00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E43FF000404
      DB000404DB000404DB000404DB000404DB000404DB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001646
      F900092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE00EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000FFFFFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FF002E43FF002E43FF000404DB000404DB000404DB000404DB000404DB000404
      DB000404DB000404DB000404DB00FDFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFEFF001646F9001646F900092CDB00092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB00092CDB00092CDB00FBFCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E43FF002E43FF002E43FF000404DB000404DB000404
      DB000404DB000404DB000404DB000404DB000404DB000404DB000404DB000404
      DB000404DB000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001646F9001646F9001646F900092CDB00092C
      DB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      000000000000000000000000000000000000000000002E43FF002E43FF002E43
      FF000404DB000404DB000404DB000404DB000404DB000404DB000404DB000404
      DB000404DB000404DB000404DB000404DB000404DB000404DB00000000000000
      00000000000000000000000000000000000000000000000000001646F9001646
      F9001646F900092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DADADA00000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB0000000000DADADA000000
      000000000000000000000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC8500000000000000000000000000000000000000000000000
      00002E43FF002E43FF002E43FF00000000000000000000000000000000000000
      000000000000FCF6F200FCF6F200FCF6F200FCF6F200FCF6F200FCF6F200FCF6
      F2000404DB000404DB000404DB00000000000000000000000000000000000000
      0000000000001646F9001646F9001646F900092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB00092CDB00092CDB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC0000000000000000000000
      00000000000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      00000000000000000000000000002E43FF002E43FF002E43FF002E43FF000000
      00000000000000000000000000000000000000000000FCF6F200FCF6F200FCF6
      F200FCF6F200FCF6F200FCF6F200FCF6F2000404DB000404DB000404DB000404
      DB00000000000000000000000000000000001646F9001646F9001646F900FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FADDBB00092C
      DB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092CDB00092C
      DB00092CDB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000016161600000000000000000000000000FFFFFE00EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000FFFFFE000000000000000000FDFEFF002E43
      FF002E43FF002E43FF002E43FF00000000000000000000000000000000000000
      000000000000FCF6F200FCF6F200FCF6F200FCF6F200FCF6F200FCF6F200FCF6
      F2000404DB000404DB000404DB000404DB00FBFCFF000000000000000000FDFE
      FF001646F9001646F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E200FCF1E200FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00092C
      DB00092CDB00092CDB00092CDB00092CDB00092CDB00FBFCFF00000000000000
      00000000000000000000FAFAFA00000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEB0000000000000000000000
      000000000000000000000000000000000000F2F2F20000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      500000000000000000002E43FF002E43FF002E43FF002E43FF002E43FF000000
      00000000000000000000FEFEF900C8C80000C8C80000B5AD1C00B5AD1C00B5AD
      1C00F9F3E700FCF6F200FCF6F200FCF6F2000404DB000404DB000404DB000404
      DB000404DB0000000000000000001646F9001646F9001646F9001646F9001646
      F900FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FADDBA00FADD
      BA00FADDBA00FADDBA00FADDBA00FADDBA00092CDB00092CDB00092CDB00092C
      DB00092CDB00092CDB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC8500000000000000000002E43FF002E43
      FF002E43FF002E43FF002E43FF000000000000000000C8C80000C8C80000C8C8
      0000C8C80000FFE1BF00B5AD1C00B5AD1C00B5AD1C00B5AD1C00FCF6F200FCF6
      F2000404DB000404DB000404DB000404DB000404DB0000000000000000001646
      F9001646F9001646F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E2009E491E007C380E007C380E00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00092CDB00092CDB00092CDB00092CDB00092CDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC850002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF000000
      000000000000C8C80000C8C80000C8C80000C8C80000FFE1BF00B5AD1C00B5AD
      1C00B5AD1C00B5AD1C00FCF6F200FCF6F2000404DB000404DB000404DB000404
      DB000404DB000404DB001646F9001646F9001646F9001646F9001646F900FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00092CDB00092C
      DB00092CDB00092CDB00092CDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000025252500EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC850002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF0000000000D8D84C00C8C80000C8C80000C8C8
      0000C8C80000FFE1BF00B5AD1C00B5AD1C00B5AD1C00B5AD1C00BFB92900FCF6
      F2000404DB000404DB000404DB000404DB000404DB000404DB001646F9001646
      F9001646F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E2009E491E007C380E007C380E00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00FADDBA00092CDB00092CDB00092CDB00092CDB00092CDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF000000
      0000C8C80000C8C80000FFEEDB00FFEEDB00FFEEDB00FFE1BF00FFE1BF00FFE1
      BF00FFE1BF00B5AD1C00B5AD1C00FCF6F2000404DB000404DB000404DB000404
      DB000404DB000404DB001646F9001646F9001646F9001646F9006A84F100FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA009F9FD000092C
      DB00092CDB00092CDB00092CDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC850002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF0000000000C8C80000C8C80000FFEEDB00FFEE
      DB00FFEEDB00FFE1BF00FFE1BF00FFE1BF00FFE1BF00B5AD1C00B5AD1C00FCF6
      F2000404DB000404DB000404DB000404DB000404DB002E43FF001646F9001646
      F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E2009E491E007C380E007C380E00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00FADDBA00FADDBA00092CDB00092CDB00092CDB00092CDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF000000
      000000000000C8C80000C8C80000C8C80000C8C80000FFE1BF00B5AD1C00B5AD
      1C00B5AD1C00B5AD1C00FCF6F200FCF6F2000404DB000404DB000404DB000404
      DB002E43FF002E43FF001646F9001646F9001646F9001646F900FCF1E200FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00092C
      DB00092CDB00092CDB00113DEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC850000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC850002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF000000000000000000C8C80000C8C80000C8C8
      0000C8C80000FFE1BF00B5AD1C00B5AD1C00B5AD1C00B5AD1C00FCF6F200FCF6
      F2000404DB000404DB000404DB002E43FF002E43FF002E43FF001646F9001646
      F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E2009E491E007C380E007C380E00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00FADDBA00FADDBA00092CDB00092CDB00113DEE001646F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC850002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF000000
      00000000000000000000C8C80000C8C80000C8C80000B5AD1C00B5AD1C00B5AD
      1C00B5AD1C00FCF6F200FCF6F200FCF6F2000404DB000404DB002E43FF002E43
      FF002E43FF002E43FF001646F9001646F9001646F9001646F900FCF1E200FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00092C
      DB00113DEE001646F9001646F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC8500000000000000000002E43FF002E43
      FF002E43FF002E43FF002E43FF0000000000000000000000000000000000DEDE
      6500C8C80000B5AD1C00B5AD1C00C5BF3700FCF6F200FCF6F200FCF6F200FCF6
      F2000404DB002E43FF002E43FF002E43FF002E43FF0000000000000000001646
      F9001646F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E200FCF1E200FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00FADDBA00092CDB00113CEE001646F9001646F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      500000000000000000002E43FF002E43FF002E43FF002E43FF002E43FF000000
      00000000000000000000000000000000000000000000FCF6F200FCF6F200FCF6
      F200F6EFEA00F6EFEA00F6EFEA00F6EFEA002E43FF002E43FF002E43FF002E43
      FF002E43FF0000000000000000001646F9001646F9001646F9001646F900FCF1
      E200FCF1E200FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00FADDBA00113CEE001646
      F9001646F9001646F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000000000000000
      0000000000000000000000000000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000FFFFFE000000000000000000FDFEFF002E43
      FF002E43FF002E43FF002E43FF00000000000000000000000000000000000000
      000000000000FCF6F200FCF6F200FCF6F200EBE1DC00EBE1DC00EBE1DC002E43
      FF002E43FF002E43FF002E43FF002E43FF00FDFEFF000000000000000000FDFE
      FF001646F9001646F9001646F9001646F900FCF1E200FCF1E200FCF1E200FCF1
      E200FCF1E2009E491E007C380E007C380E00FADDBA00FADDBA00FADDBA00FADD
      BA00FADDBA00113CEE001646F9001646F9001646F900FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC850000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC850000000
      00000000000000000000000000002E43FF002E43FF002E43FF002E43FF000000
      00000000000000000000000000000000000000000000FCF6F200FCF6F200FCF6
      F200EBE1DC00EBE1DC002E43FF002E43FF002E43FF002E43FF002E43FF002E43
      FF00000000000000000000000000000000001646F9001646F9001646F9001646
      F900B1B9E900FCF1E200FCF1E200FCF1E200FCF1E2009E491E007C380E007C38
      0E00FADDBA00FADDBA00FADDBA00FADDBA00E2D0C8001646F9001646F9001646
      F9001646F900000000000000000000000000000000002E2E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E100000000000000000000000000000000000000
      0000000000002E2E2E000000000000000000000000000000000000000000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC8500000000000000000000000000000000000000000000000
      00002E43FF002E43FF002E43FF00000000000000000000000000000000000000
      000000000000FCF6F200FCF6F200FCF6F200EBE1DC002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF00000000000000000000000000000000000000
      0000000000001646F9001646F9001646F9001646F9001646F900FCF1E200FCF1
      E200FCF1E200FCF1E200FADDBA00FADDBA00FADDBA00FADDBA00FADDBA001646
      F9001646F9001646F9001646F9001646F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC8500000000000000000000000
      000000000000000000000000000000000000000000002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF00000000000000
      00000000000000000000000000000000000000000000000000001646F9001646
      F9001646F9001646F9001646F900637FF100FCF1E200FCF1E200FADDBA00FADD
      BA00FADDBA00959EDF001646F9001646F9001646F9001646F9001646F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E43FF002E43FF002E43FF002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43
      FF002E43FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001646F9001646F9001646F9001646F9001646
      F9001646F9001646F9001646F9001646F9001646F9001646F9001646F9001646
      F9001646F9001646F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC000000000000000000000000000000000000000000FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFE00EFC8
      5000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC85000EFC8
      5000EFC85000EFC85000FFFFFE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43FF002E43
      FF002E43FF002E43FF002E43FF00FDFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFEFF001646F9001646F9001646F9001646F9001646F9001646F9001646
      F9001646F9001646F9001646F9001646F900FDFEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECECEC000000000000000000000000000000
      0000000000000000000000000000ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFC85000EFC85000EFC8
      5000EFC85000EFC85000EFC85000EFC850000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E43FF002E43
      FF002E43FF002E43FF002E43FF002E43FF002E43FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001646
      F9001646F9001646F9001646F9001646F9001646F9001646F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000640000001301000001000100
      00000000301100000000000000000000000000000000000000000000FFFFFF00
      FF80FFF00001FF9FFFE0000000000000FC001FF02971FF0FFFE0000000000000
      CFE00FF0CD41FE07FFE0000000000000CFF007F04F41FC07FFE0000000000000
      CFF003F0C941F801FFE0000000000000CFF001F02941F800FFE0000000000000
      8FF000F00001F800FFE0000000000000820000F00001C4007FE0000000000000
      810000F00001C0007FE0000000000000012200700001E0007FE0000000000000
      00C180700001F0007FE00000000000000180C0700001F8003FE0000000000000
      0380E0700001FC003FE00000000000000190C0700001FE003FE0000000000000
      00C180700001FF001FE0000000000000002240700001FFF80FE0000000000000
      800040F00001FFFF07E0000000000000800020F00001FFFF83E0000000000000
      8007F8F00001FFFFE1E0000000000000C007F9F00001FFFFE0E0000000000000
      E007F9F00003FFFFF060000000000000F007F9F00007FFFFF820000000000000
      F803F9F0000FFFFFFC00000000000000FC001FF0001FFFFFFE00000000000000
      FF80FFF0003FFFFFFF00000000000000FE003FFFFFFFFF800FFFFFFFF0000000
      FC001FFFFFFFFF0007FFFFFFF0000000F8000FFFFFFFFF0007FFFFFFF0000000
      F00007FFFFFFFF0007FFFFFFF0000000E00003FFFFFFFF0007FC7FFC70000000
      C00001FFFFFFFF0007F83FF830000000800000FFFFFFFE0003F8381830000000
      0000007FFFFFFE0003E000000000000000000063FFF1FE0003E0000000000000
      0000004000003E0003E00000000000000000000000003E0003E0000000000000
      0000000000003C0001E00000000000000000000000007C0001E0000000000000
      000000000000FC0001E000000000000000000040003FFC0001E0000070000000
      00000060007FF80000E00000700000000000007000FFF80000E0000070000000
      0000007FFFFFFFFFFFE00000F0000000800000FFFFFFFFFFFFE00000F0000000
      C00001FFFFFFF80000E0001FF0000000E00003FFFFFFF80000E0001FF0000000
      F00007FFFFFFF80000FFFFFFF0000000F8000FFFFFFFFC0001FFFFFFF0000000
      FC001FFFFFFFFFFFFFFFFFFFF0000000FE003FFFFFFFFFC01FFFFFFFF0000000
      F8000F8000003FFFFF9FFFFFC0000000F000078000003FFFFF3FFFFF90000000
      F000078000003FFFFE7FFFFF300000000000000000003FFFFCFFFFFE70000000
      0000000000003FFFF9FFFFFCF00000000000000000003FC1FBFFE0FDF0000000
      00000001FA003E3E77FF003BF00000000000000000003CFF8FFE0007F0000000
      0000000000003BFFCFFC0007F000000000000001F00037FFE7F80003F0000000
      00000000000037FFF7F80003F00000000000000000002FFFFBF00001F0000000
      0000000000002FFFFBF00001F00000000000000000002FFFFBF00001F0000000
      0000000000001FFFFBE00001F00000008000008000001FFFFBE00001F0000000
      F000078000002FFFFBF00001F0000000F8000F8000002FFFFBF00001F0000000
      F8000F8000002FFFFBF00001F0000000F8000F80000027FFF7F00003F0000000
      F8000F80000037FFE7F80003F0000000F8000F8000007BFFEFFC0007F0000000
      F8000F800000FDFF9FFE000FF0000000F8001F800001FE7E3FFF001FF0000000
      F8003F800003FF80FFFFC07FF0000000F00007FFFFFFFFE03FFFF01FF0000000
      F00007FFFFFFFF0007FF8003F0000000F01507FFFFFFFE0003FF0001F0000000
      F0FF87C000007C0001FE0000F0000000F00007800000380000FC000070000000
      F03E07800000300C0078000030000000F0000780007C207C0030000010000000
      F0000780001021FC00300FE010000000F0000780003821FC00300FE010000000
      F0000780007C01FC00000FE000000000F0000780003C01FC0000000000000000
      F0000780003801FC0000000000000000F0000780000001FC0000000000000000
      F0000780000001E40000000000000000F0000780000001FC00000FE000000000
      F0000780000001FC00000FE000000000F0000780000021FC00300FE010000000
      F0000780000021FC00300FC010000000F00007800000207C0030000010000000
      F00807800000300C0078000030000000F01407800000380000FC000070000000
      F00807C000007C0001FE0000F0000000F8000FFFFFFFFE0003FF0001F0000000
      FFDDFFFFFFFFFF0007FF8003F0000000FFDDFFFFFFFFFFE03FFFF01FF0000000
      0000007F3FFFF80000F0000010000000000000703FFFF80000F0000010000000
      00000000001FF80000F000001000000000000000271FF80000F0000010000000
      00000000234FF80000F000001000000000000000334FF80000F0000010000000
      000000003147F80000F0000010000000000000003960380000F0000010000000
      000000003840380000F0000010000000000000003C00380000F0000010000000
      000000003C10380000F0000010000000000000003C0DF80000F0000010000000
      000000003C00F80000F0000010000000000000001E03F80000F0000010000000
      000000000607F80000F0000010000000000000002307F80000F0000010000000
      000000003007F80000FFFC7FF0000000C00001803807F80000FFFC7FF0000000
      E00003803F1FF80000FFFC7FF0000000F00007803F63F80000FFFC7FF0000000
      F00007803F61F80001FFFEFFF0000000F00007803F61F80003FFFEFFF0000000
      F0000F803F73F80007FFFEFFF0000000F0001F81FF7FF8000FFFFEFFF0000000
      FFE3FF80007FF8001FFFFEFFF0000000FFF9FFFFFFFFFFFFFFE0000000000000
      FFF83F81C07033F8FE60000000000000FFF80F81C07021F07C20000000000000
      FFF04781C07000F07800000000000000FFC00181C07000E03800000000000000
      F7000081C07000F07800000000000000E0000081C07021F07C20000000000000
      E00000FFFBFFFFFDFFE0000000000000E00000FFFBFFFFFDFFE0000000000000
      800001FFFBFFFFFDFFE0000000000000800007FFFBFFFFFDFFE0000000000000
      800007FFFBFFFFFDFFE000000000000080000FF00001F80000E0000000000000
      80000FFFFBFFFFFDFFE000000000000080000FFFFBFFFFFDFFE0000000000000
      80000FFFFBFFFFFDFFE000000000000080003FFFFBFFFFFDFFE0000000000000
      8000FFFFFBFFFFFDFFE00000000000008001FFFFC07FFFF07FE0000000000000
      8001FFFFC07FFFF07FE00000000000008001FFFFC07FFFE03FE0000000000000
      C003FFFFC07FFFF07FE0000000000000F007FFFFC07FFFF07FE0000000000000
      FF9FFFFFC07FFFF8FFE0000000000000FEFFFFFFFFFFFFFFFFE0000000000000
      FF80FFFFC07FC000001E0000F0000000FE003FFF001FC000001C000070000000
      F8000FFC0007C000001C000070000000F00007F80003C000001C000070000000
      E00003F00001C000001C000070000000C03E01E00000C000001C000070000000
      C0FF81E7C07CC000001C00007000000081FFC0DFF1FF4000001C000070000000
      83FFE0DC7BC74000001C00007000000003FFE05C31874000001C000070000000
      07FFF05CBBA74000001C00007000000007F7F0583B834000001C000070000000
      07E0105FF1FF4000001C00007000000007F7F047E0FC4000001C000070000000
      07F7F04EC06C4000001C00007000000003F7E04080004000081C000070000000
      83F7E0C000004000081C00007000000081F7C0E00000C000001C000070000000
      C0F781E00000C000001C000070000000C03601F00001C000001C000070000000
      E00003F80003C000001C000070000000F00007FC0007C000001C000070000000
      F8000FFE0007C0003E9C000070000000FE003FFE0007C000001C000070000000
      FF80FFFE0007C000001E0000F0000000FFFFFFFFFFFFFF9FF3FFF01FF0000000
      FFFFFFFFFFFFFF0FE3FF8003F0000000FFFFFFFFFFFFFF8FE3FF0001F0000000
      FFFFFFFFFFFFFF9FF7FE0000F0000000FFFFFFFFFFFFF800007C000070000000
      FFFFFFFFFFFFFBFFFFF8000030000000FFFFFFFFFFFFFBFFFFF0040010000000
      EFFFFBFFFFFFF80000100E0010000000C3FFF1F27F0E780000101F0010000000
      000000C07E00380000003F80000000000000000003003800000073C000000000
      00000000000438000000E1E0000000000000000000043800000040F000000000
      C0000000000438000000007800000000FC000080000438000000003C00000000
      FF0001800004F8000000001E00000000FF8003800005F8000010000E10000000
      FFFC3FFFFFFFF8000010000410000000FFFFFFFFFFFFFB000070000010000000
      FFFFFFFFFFFFFB000078000030000000FFFFFFFFFFFFCB00007C000070000000
      FFFFFFFFFFFFC3FC007E0000F0000000FFFFFFFFFFFFEFFC007F0001F0000000
      FFFFFFFFFFFFFFFC007F8003F0000000FFFFFFFFFFFFFFFC07FFF01FF0000000
      F8000F8FFFFE3000007FF01FF0000000F000079FFFFF3000007F8003F0000000
      F00007AF803EB000007F0001F0000000F00007F7001DF000007E07C0F0000000
      F00007F80003F000007C1FF070000000F00007F80003F00000787FF030000000
      F00007F80003F80000F0FFE010000000F00007F00001F80000F0FFC010000000
      F00007E00000FC0001F1FF8310000000F00007E00000FF800FE1FF0700000000
      F00007E00000FFC01FE3FE0F80000000E00003E00000FFE03FE3FC1F80000000
      E00003E00000FFC01FE3F83F80000000E00003E00000FFC01FE3F07F80000000
      E00003E00000FF000FE3E0FF80000000E00003E00000FF0007E1C1FF00000000
      E00003E00000FF800FF183FF10000000E00003F00001FF800FF007FE10000000
      E00003F80003FF800FF00FFE10000000E00003F80003FF800FF81FFC30000000
      E00003F80003FF800FFC1FF070000000C00001F7001DFF800FFE07C0F0000000
      C00001AF803EBF800FFF0001F0000000E000039FFFFF3FC00FFF8003F0000000
      F000078FFFFE3FF03FFFF01FF0000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000
      FFFFFFFFFFFFC000001FFFFFF0000000FFFFFFFFFFFFC000001FFFFFF0000000
      FFFFFFFFFFFFC0000010000010000000FFFFFFFFFFFFE1088420000000000000
      FFFFFFFFFFFFE118C420000000000000FFFFFFFFFFFFF39DCE60000000000000
      E7FFE7FFFFFFF39DCE60000000000000C3FFC3E1FFF0F39DCE60000000000000
      C00000600000339DCE60008000000000000000000000339DCE60000000000000
      000000000000339DCE60000000000000000000000000339DCE60000000000000
      0000008000007398CE6000000000000000007FC0003FE1088420000000000000
      8000FFF8007FC000001FFFF1F0000000C000FFFC00FFE000003FFFF8F0000000
      E001FFFFFFFFFC0001FFFFFC70000000FFFFFFFFFFFFFE0003FFFFFE30000000
      FFFFFFFFFFFFFE0003FFFFFF10000000FFFFFFFFFFFFFF0007FFFFFF80000000
      FFFFFFFFFFFFFF0007FFFFFFD0000000FFFFFFFFFFFFFF800FFFFFFFF0000000
      FFFFFFFFFFFFFFE03FFFFFFFF0000000FFFFFFFFFFFFFFFFFFFFFFFFF0000000
      FF80FFFFC07FFFE03FFFFFFFF0000000FC001FFE000FFF0007FFF83F10000000
      F8000FFC0007FE0003FFC38430000000F00007F80003FC0001FF1FF1B0000000
      E00003F1F801F80000FE7CFF30000000C03E01E1F800F000007DF83F30000000
      803E00C1F80060000039F33F30000000803E00C1C00060000033F37F90000000
      803E00C1800060000037F33FD0000000003E0001800000000007FB3FC0000000
      07FFF00100000000000FFBBFE000000007FFF00100000000000FFBBFE0000000
      07FFF00100000000000FFBBFE000000007FFF00180000000000FF3BFE0000000
      07FFF00180000000000FF87FE0000000003E0001C00000000007FFFFC0000000
      803E00C1E00060000037FC3FD0000000803E00C1F80060000033F99F90000000
      803E00C1F8006000003BF9DFB0000000C03E01E1F800F0000079FC1F30000000
      E00003F1F801F80000FCFE7E70000000F00007F80003FC0001FF3FF9F0000000
      F8000FFC0007FE0003FF87C3F0000000FC001FFE000FFF0007FFE00FF0000000
      FF80FFFFC07FFFE03FFFFFFFF000000000000000000000000000000000000000
      000000000000}
  end
end
