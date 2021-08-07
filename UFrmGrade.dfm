object FrmGrade: TFrmGrade
  Left = 0
  Top = 0
  Caption = 'InfoTransporte -Registros'
  ClientHeight = 678
  ClientWidth = 1508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 1508
    Height = 482
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DM.DS_CD_Dados
    GradientEndColor = clHighlight
    GradientStartColor = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    StyleElements = [seClient, seBorder]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'N'#250'mero'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Emiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MDF_D_ENVIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Data de Envio'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D_ENCERRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Data de Encer.'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Chave'
        Width = 348
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_QNT_NFE_REL_MANIFESTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'N'#186' de NFe'#39's Relac.'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_VALOR_TOTAL_MERCADORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Valor Total Relacionado'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_CARREGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Carreg.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_DESCARREGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Caption = 'Descarreg.'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_PESO_BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taRightJustify
        Title.Caption = 'Kg'
        Width = 89
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 800
    Top = 232
    Width = 185
    Height = 89
    TabOrder = 2
    Visible = False
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 33
    Width = 1508
    Height = 64
    Align = alTop
    BorderOuter = fsNone
    Color = 8279083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStart = clHotLight
    GradientColorStop = clMenuHighlight
    ParentFont = False
    TabOrder = 0
    object RzRadioGroup1: TRzRadioGroup
      AlignWithMargins = True
      Left = 887
      Top = 3
      Width = 242
      Height = 58
      Align = alLeft
      Caption = 'Status'
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clInfoBk
      CaptionFont.Height = -13
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      GroupStyle = gsCustom
      Items.Strings = (
        'Em Edi'#231#227'o'
        'Emitido'
        'Encerrado'
        'Cancelado'
        'Todos')
      ParentFont = False
      TabOrder = 0
      Transparent = True
      VisualStyle = vsGradient
      OnClick = RzRadioGroup1Click
    end
    object RzGroupBox1: TRzGroupBox
      AlignWithMargins = True
      Left = 351
      Top = 3
      Width = 530
      Height = 58
      Align = alLeft
      Caption = 'Buscar por'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWhite
      CaptionFont.Height = -13
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GroupStyle = gsCustom
      ParentFont = False
      TabOrder = 1
      Transparent = True
      VisualStyle = vsGradient
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 12
        Top = 26
        Width = 126
        Height = 22
        Margins.Left = 10
        Margins.Top = 11
        Margins.Right = 5
        Margins.Bottom = 10
        Align = alLeft
        Style = csOwnerDrawFixed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ItemIndex = 2
        ParentFont = False
        TabOrder = 0
        Text = 'Chave MDFe'
        Items.Strings = (
          'ID'
          'N'#250'mero do MDFe'
          'Chave MDFe'
          'N'#250'mero da NFe'
          'Placa do Veiculo')
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 153
        Top = 25
        Width = 344
        Height = 25
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 6
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 44
        ParentFont = False
        TabOrder = 1
        OnChange = Edit1Change
        OnKeyPress = Edit1KeyPress
        ExplicitHeight = 23
      end
    end
    object RzGroupBox2: TRzGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 342
      Height = 58
      Align = alLeft
      Caption = 'Per'#237'odo'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWhite
      CaptionFont.Height = -13
      CaptionFont.Name = 'Calibri'
      CaptionFont.Style = [fsBold]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GroupStyle = gsCustom
      ParentFont = False
      TabOrder = 2
      Transparent = True
      VisualStyle = vsGradient
      OnExit = RzGroupBox2Exit
      object Label8: TLabel
        AlignWithMargins = True
        Left = 180
        Top = 29
        Width = 6
        Height = 15
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 5
        Margins.Bottom = 10
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 17
        Top = 29
        Width = 14
        Height = 15
        Margins.Left = 15
        Margins.Top = 10
        Margins.Bottom = 10
        Caption = 'de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzDateTimeEdit4: TRzDateTimeEdit
        AlignWithMargins = True
        Left = 201
        Top = 27
        Width = 121
        Height = 21
        Margins.Left = 10
        Margins.Top = 8
        Margins.Right = 5
        Margins.Bottom = 12
        EditType = etDate
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 1
        OnKeyPress = RzDateTimeEdit4KeyPress
      end
      object RzDateTimeEdit3: TRzDateTimeEdit
        AlignWithMargins = True
        Left = 44
        Top = 27
        Width = 121
        Height = 21
        Margins.Left = 10
        Margins.Top = 8
        Margins.Right = 5
        Margins.Bottom = 12
        EditType = etDate
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 0
        OnKeyPress = RzDateTimeEdit3KeyPress
      end
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 1508
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    Color = 8279083
    GradientColorStyle = gcsCustom
    GradientColorStart = clMenuHighlight
    GradientColorStop = clMenuHighlight
    GradientDirection = gdHorizontalCenter
    TabOrder = 3
    object RzLabel1: TRzLabel
      Left = 0
      Top = 0
      Width = 1508
      Height = 33
      Align = alClient
      Alignment = taCenter
      Caption = 'MDFE - REGISTROS'
      Color = clMenuHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Lucida Sans Typewriter'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      BorderColor = clBackground
      BorderHighlight = clBlack
      FlyByColor = clBlack
      HighlightColor = clBlack
      TextStyle = tsRaised
      ExplicitWidth = 256
      ExplicitHeight = 31
    end
  end
  object ProgressBar1: TProgressBar
    Left = 183
    Top = 337
    Width = 1015
    Height = 39
    TabOrder = 4
    Visible = False
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 611
    Width = 1508
    Height = 67
    Align = alBottom
    BorderOuter = fsNone
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStart = clMenuHighlight
    GradientColorStop = clHotLight
    TabOrder = 5
    VisualStyle = vsClassic
    object RzBitBtn1: TRzBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Novo
      Align = alLeft
      Caption = 'Novo (F2)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 0
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 0
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn2: TRzBitBtn
      AlignWithMargins = True
      Left = 215
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Clonar
      Align = alLeft
      Caption = 'Clonar (Ctrl+F2)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 1
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 1
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn3: TRzBitBtn
      AlignWithMargins = True
      Left = 109
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Visualizar
      Align = alLeft
      Caption = 'Visualizar (F3)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 2
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 2
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn4: TRzBitBtn
      AlignWithMargins = True
      Left = 321
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Encerrar
      Align = alLeft
      Caption = 'Encerrar (Ctrl+N)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 3
      TextStyle = tsShadow
      ThemeAware = False
      Visible = False
      ImageIndex = 3
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn5: TRzBitBtn
      AlignWithMargins = True
      Left = 427
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Consultar
      Align = alLeft
      Caption = 'Status (Shift+T)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 4
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 4
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn6: TRzBitBtn
      AlignWithMargins = True
      Left = 533
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Cancelar
      Align = alLeft
      Caption = 'Cancelar (Ctrl+M)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 5
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 5
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn7: TRzBitBtn
      AlignWithMargins = True
      Left = 745
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Trajeto
      Align = alLeft
      Caption = 'Trajeto (Ctrl+T)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 6
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 8
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn8: TRzBitBtn
      AlignWithMargins = True
      Left = 639
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = ActConsNaoencerrado
      Align = alLeft
      Caption = 'N'#227'o Encerrados (Shift+C)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 7
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 7
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn9: TRzBitBtn
      AlignWithMargins = True
      Left = 1087
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Reimprimir
      Align = alRight
      Caption = 'Reimprimir (Ctrl+P)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 8
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 9
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn10: TRzBitBtn
      AlignWithMargins = True
      Left = 1193
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Enviar
      Align = alRight
      Caption = 'Enviar (Ctrl+E)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 9
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 10
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn11: TRzBitBtn
      AlignWithMargins = True
      Left = 1299
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_EXPXML
      Align = alRight
      Caption = 'Exportar XML (Shift+X)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 10
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 11
      Images = ImageList1
      Layout = blGlyphTop
    end
    object RzBitBtn12: TRzBitBtn
      AlignWithMargins = True
      Left = 1405
      Top = 3
      Width = 100
      Height = 61
      Cursor = crHandPoint
      FrameColor = clSilver
      Action = Act_Sair
      Align = alRight
      Caption = 'Sair (Esc)'
      Color = 14408667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      HotTrack = True
      HotTrackColor = 13602864
      ParentFont = False
      TextShadowColor = clActiveBorder
      TabOrder = 11
      TextStyle = tsShadow
      ThemeAware = False
      ImageIndex = 12
      Images = ImageList1
      Layout = blGlyphTop
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 579
    Width = 1508
    Height = 32
    Align = alBottom
    TabOrder = 6
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 1504
      Height = 28
      Align = alClient
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000043B
        0000006208060000005E7DD80E0000000467414D410000B18F0BFC6105000000
        0970485973000017120000171201679FD2520000001974455874536F66747761
        7265004D6963726F736F6674204F66666963657FED35710000359F4944415478
        5EEDDD07981445DA07F05371890B48962420922548948CA8E889A2624251D133
        80E0A907720A788A82279FF94ECE538C673C0C18B8C3082A782020398A8A2219
        04090A2C0BEF57FF616AE69D9E9AE999DD59D899FDD7F3FC9EDDED7ABB3ACC76
        6FD7BBD5DDBF1B3D7A341111111111111151C6704E24222222222222224A57CE
        894444444444444444E9CA399188888888888888285D39271211111111111111
        A52BE74422222222222222A274E59C484444444444444494AE9C1389888888E2
        31E528222222A223C9758D62392712111111B9A80B8CA3838E212222223ACCEC
        7548CCA447D4042222222297E005854D708C338488288FFE653CE8994644948C
        170D9BF8884A7844FCE08519A054A952034A9428F19CF13C1151329AF61D3DBF
        CBA899CF751BF9E5F34494DEBADEF9C50B9DEFF8ECC58EC33F4627C575D14144
        4444743815378A1951098F88E486178231535656D68BC58A15938A152B121125
        2C3B3B5B1A9C376AFFD98FFE28173DFB2B11A5AB67764BDF677649DF093BE5C2
        A7B6C9F9FFD814BAC858B972251191AF152B56C8F2E5CB65D9B265BA9312B075
        EB5622A2A4A8734819C399F0884A70042606931C0686846499F2D251471D2515
        2A5490366DDA1011F96AD8B0A11C7BECB1D2B0CF5DFB5B0D7A4BAE9BB84D6E9F
        2644948EA61E9461530FC8D08F73E4D629BB65C8BBE18B0C57A78688C8CB263B
        962E5DAA3B29015BB66C21224A8A3A8754344A1B594652C90ECC503A2B2BEB15
        243BCCF752A74E1DB9E0820B888862EADCB9B3942A552A70CEB0C98EF6C3A6C9
        C8CF77CAE3DF0811A599C7561E944797E7CA438BF7C8035FFF22F7CE5817BAC8
        70756A8888BC90ECC0A88E458B1685CE1FD6E6CD9B898892A2CE21D58DF24609
        0383357C931D487460184849A37C5656D66B36D901356BD69433CF3C9388284A
        DBB66D43890EC06D2C36D9D171E41C19F6C92E193B4F88288D8C997B40EE9BB3
        5FEE99F99B8C9CB655864D5E1D3AC667CF9E4D44E46BD6AC593273E64C993E7D
        7AE8FC616DDAB489882829EA1C52C7C0E88E5246E05696505E43273902130E8D
        EA08DCBE62641B55B3B2B226EA6407BEAF5AB5AAB46FDF9E8828A469D3A652B2
        64C9C039C29E2F1A9C3B2AB7D5A037A5FDB0A9D271E46CE97CF73C19F4CE2E19
        3E5588284DDCFEE90119F6518EDCF6DFDD32E4EDCD72FD4BAB42C7F8C71F7F4C
        44E4EBA38F3E922953A6C8FBEFBF1F3A7F58AE8E0C11513CEA1C52DFA862E056
        96638D84921D78C84739A346B162C5DEF4263B8E3EFAE8C0333C1A356A444424
        279C708294285122706E884C768CCC3D65D01BD27ED8A7D269E46CE972F73CE9
        76EF22B9FA955F65E02421A23470E3DB07E4863773E4BAD776CBD5CF6F947EE3
        57868EF137DE788388C8D7C48913E5F5D75F97975F7E3974FEB0366EDC484494
        14750E69605435F0A052DF6487BD8505F7BCE0DE97DAC58A157BDB95EC38E698
        63A45CB97281E7781051D155AD5A35295EBC78E0BC1095ECE8AD931D5F4997BB
        BF966EF72E94EE6396C865CF6E97AB5FDE434485DC552FFD2A57BEB853AE7866
        8B5C32FE0739FFC185A163FC99679E2122F23561C20479EAA9A764FCF8F1A1F3
        87B561C30622A2A4A8734843A39A9154B203CFEBA8609C102FD98157D2962953
        26D0D921A2A207AF98CDCACA0A9C0F62263B064E94F6433F914E23BE922E7FF9
        5ABA8D5E28DDEF5B223DC62C950BFFB1512E79FA67222AC42E7E6A8B5CF4E446
        B9F0EF6BE4BC8796CBD9F7CE0A1DE30F3DF4101191AF071F7C50C68D1B2763C7
        8E0D9D3FACF5EBD7131125459D431A19794A76E0411F75FC921D80FBF4CB972F
        4F444548767676604407CE0189253B664997BFCC956EA31748F7FB164B8F314B
        E434A3F7A33FC8798F9B4E1411154AE73EF683F47EE47BF9FDFF2D975EF77D2D
        A78D98163AC6478D1A4544E46BE4C8913262C408193E7C78E8FC61B93A324444
        F1A87348C1273B8E3DF6D840A707F7EC1351D180111DF61C909F6407F47A6005
        11155267FE75999C3976899C7EEF3CE93E7286741EFADFD0317EF3CD371311F9
        1A3264880C1E3C58060E1C183A7F58EBD6AD23224A8A3A871C9E640711153D7E
        C98E86BD47E4B61EF86FE930F463E93C629674FDCB5CE93E7A81F4B86F7120C9
        D1D31ABB94880AA9D3C698E315CFDAB97B8E74B9E373E970EBE4D0317EE59557
        1211F9EADFBFBF5C71C515D2AF5FBFD0F9C37275648888E251E710263B88A860
        F8253B1A9C332230B2A3C3D04FA4F38899D2F5AE39D2FD9EF9D2E3BE45810E54
        4F6B2C121E4454189D36C61CAFF72E90EE77CF962E777C261D6E0DBF3A121D17
        22223F975D76995C7AE9A572F1C51787CE1FD6DAB56B898892A2CE214C761051
        C1F04B769C74F6A8DC56D7BF21ED6EFD543AFD799674193157BADD854ED312E9
        718FE944052C95D346135161D5E39EC5D2E32F0BA5DBC839D2F9F6CFA5C3CDE1
        911DAE4E0D119157BC64C74F3FFD44449414750E61B283880A865FB2A37EAF51
        B92DAF7D4BDA0E992AA70E9D2D9DFE3C4FBA8C58245D472D936E772D93EE01CB
        89A810EB366AA9741BB958BAFCF96BE978DB746937E83FA163DCD5A92122F28A
        97EC58B3660D115152D43984C90E222A187EC98E13CFB82BB7F9D56F4BEB419F
        49FB5BE7CAA9431748A7E14BA4CB9DCB8D15D27504AC24A2C20CC7EB1D4BA5D3
        B0F9D2E1962FA5CD8D5342C7B8AB534344E4152FD9F1E38F3F121125459D4398
        ECA023AF6FDFBEF2D9679F05E07B570CA51FBF6447BD9E7FC93DB9FF246975FD
        E7D276C83C697FCB2239F54FCB4CA7696540E7DBBF21A2C26ED80AE93474999C
        7ACB026977D397D2FA0F1F848E7157A7862813BDF9E69BB274E9D2803FFEF18F
        CE188A8DC90E3ADC162F5E2C1D3A7408C003725D31470A8E03AC57AF5EBD02EB
        E98AA1F8D43984C90E3AF2EEBDF75EB105DFBB624E3FFDF440DDD0A143A572E5
        CACE9854E8DCB9B3FCF0C30FC1B591400206CBD631767D9F7AEAA988E914C92F
        D951B7C7DDB94DFBBD2B2DAF9D2EAD072D90B6439648FB5B56C8A9B7AD928EF0
        A76FA5131D71373CBE56868C5FE7AC4BB5B1AF6D92673FDC16F8EAAAA742E8B6
        6FA4E3AD2BA4C3CD8BA4ED8D33E594011F868E7157A786281321C961CB7DF7DD
        E78CA1D8E2253B704D56D4CD9933475E7FFDF510FCEC8AA3C4CD983123F43B56
        B3664D67CC91A27FFFB19EAE188A4FED43263B9251AB562DD9B06143F0CF5962
        E5DD77DF75B655581D896D4C24D9A1D729564C7E656767C7DCF671E3C685E266
        CD9A1598F6F8E38F47CC4F91FC921D75BADE9DDBF8A2F7A4F99533A4D5750BA5
        F58D4BA5EDA095D26EF0B7D27EC877C6F7A60345474AD73FAD96AD3B7203BFEB
        28FB720ECA950FAC75C6A6C2750FAF0B2EE950B974CC4FCE382A648698E375F0
        37D276E01269FD87AFA445FF8F43C7B8AB5393A91E78E001C9C9C909FEF62656
        9E7DF659675B947E98ECC89F78C98ED5AB571749B367CF0EBC8E171D71EF3E81
        264D9AC8F0E1C365E1C285CEF929BEE9D3A787F625F6B12BE648D19F33D6D315
        43F1A97DC864473270D249B6606480ABADC2EA486CA35FB2032339F6ECD9138C
        1079F1C517A36252E10F7FF843A07D2C6BF0E0C1817DB162C58AC03414244290
        2DB485B7DCC4E797EC38A1F3BDB98D2E9C2CCD2EFF9FB4B866B1B4BA6EB9B4BE
        6195B419F8BDB41DB4DAF821A0DD4D74248C7C764BF0373D5CDEFA62A7333696
        FEF7AF97818F6E94CEB7FCE8ACD7BCCBC3CFAE382A640699E375E0B7D2FAFAA5
        D26AC01C69DEEFD3D031EEEAD464AA8F3FFE38F89B9B78C1AD0FAEB628FD30D9
        913FF1921DDF7FFF7D91F3FCF3CF4BD9B265A3F6850BE2F0CF37573B14DB175F
        7C11DA874876B8628E14FDF9623D5D31149FDA874C7624C3768651D0E945C7DC
        0F3ACCAEB60AAB23B18D68C3167CEF8AC12D2328483EF4EEDDDB19935FF86381
        A247AA20D1F2C1071F04A6EB926E49AC23C12FD951BBD3BDB90DFB4C96A697CE
        94E6572D91960356C8297F40A769B5B4B9E107E3C780B67444FC6F4938C168CB
        CE5F0F48A7C16B9CF15E232784931768CB15A39D76EB4FB272CDBE40FCDC957B
        E4AC616B9D7154C8E078BDEE3B697DCD3269D97FAE9C7CC9D4D031EEEAD464AA
        CF3FFF3CF0BB8B828E2F12197EEEB8E30E675B947E98ECC89F78C98EEFBEFBAE
        C858B66C990C1C38306A1FA0337EC61967049E0783AFEDDBB78F8A993F7FBEB3
        4D72C339DBEE3BEC5F57CC91A23F57ACA72B86E253FB90C98E64E84440A67676
        8FC4362692EC381CEC83525DC914D42119825125786E88B79EA2F9253B6A75B8
        2FF7A4DE53A4F1455F49B3CB9749F3FEDF488BABBF9756D7FC28A75CBBC6F829
        A0351D7667DEB63E70DB0ACAEAF5FB03490E5B86FE7DAB731EAF7B9EDD169C43
        64EE8ABDCE18CA00385E07AC965657AE90E6FDE649D3BED342C7B8AB5393A974
        B203890C570C652E263BF287C98E43AEB9E69A886DC7AD2AB13ABB98AEE3D929
        4E0EF697DD774C76641EB50F99EC4806931D05A3B0243B28B5FC921D35DB8DCD
        3DF1EC0FA4E105B3A5C9A5CBA559BF557272FFD5D2E2CA35D2F2EAB5115AD161
        F5E02BBF048F48917F4EDA296F4CDD1DFC49E48359BF39E7F1BA7B4238D93167
        F95E670C6580ABCCF17AE50FD2E28A95D2EC92F9D2F8FCCF42C7B8AB5393A970
        416A0B931D450F931DF9132FD9F1EDB7DF16093367CE94E2C58B87B61B2338F0
        7BE58AD570BE493496C2D0C7B1FB1AC90E57CC9162D70BB09EAE188A4FED4326
        3B92C16447C160B22333F9253B6AB41E9B5BEFCC0FA5C1B973A571DF95D2F4E2
        EFA4D9653F4AF3CBD7498BCBD79BCE53584B3AAC16AD0A3F68F1F7B76E92EBC6
        6C0DFE74E841A55DAEDFE89C4FFBCB53DB837388CC59B6CF194319E0F2B5D2A2
        9F396E2F5D254D2F5C208DCE0DDF07EDEAD4642A263B8A36263BF2275EB263D5
        AA554502F683DD66DC42BD64C912671CA5864E76D4A851C31973A4D8F502ACA7
        2B86E253FB90C98E64A43211804E3DDAD0CF87C09B50708B847D46049E4FF1EF
        7FFF5BDAB46913312F346BD62C704B051E9A89076AA22DBC31A47EFDFA51B1C9
        28886407B609EBBA60C182D0BA62FBB1BDA84F24D961F71724B28D78852CF607
        E2B76FDFEE5C6E2C7806099E1182785BB0EE767EBCB5C5359F8BFD4C757BF85C
        F1B9A32D7C8EAEF932815FB2A37AABFB73EBF4FC58EAFF7E9E34ECF38D34BAE0
        7B6972D11A6976F17A39F9920D875C6A6DA4C3E4BCDBC2898D85DFE484A66FD9
        1EBE95E5BE677644CC63F5B871B34CF9728FCC5EBA4FBE5FB73F182DB273F7C1
        C0346DE0FDDB22E66DD37F937C3A7B6FA00E6DE8BA5E43B684E67BE7B3DF22EA
        62B976F4B6D03CB1D617AE18F5B3FCE38DDD8165DB75B6CB79ECD55DD2F1DA4D
        CEF928E892F5E698FD499AF6FD4E1AF759240DCE0EBFCECFDBA1C964A94C76E0
        B592E83CEB76F077043FDB4E35BEFEF7BFFF4DBA63FDB7BFFD2DF03055DB0EFE
        3EE2EF1BDE0C73D5555739E7D11E7EF8E1C0DF2FCCFFEBAFBFCAE6CD9B03F363
        DDEEBAEB2EE73C9A77DBB04CB487B650D0DE934F3E99EF79702DF3AF7FFD2BF4
        8A4E5BD00E603FE8F878D016968DB6B02CEC337C8FF6ED3E439BB624F299D8CF
        F37FFFFB5F68FD70818EDFA3D75E7B2DB04CD77C992A5EB2E39B6FBEC978F87D
        D6DB3C62C408675CB2A64D9B16F85DEBDAB56BA0438FB6317A04CFFCC0B4975E
        7AC9399F3577EEDC401CE2F1C6293B7DE2C48972E38D374AE3C68D43EDE167F4
        5FF4FCF12C5EBC38B09DE79C734EA01DAC1BD6113FEB65C583B801030604968F
        F5A857AF9E9C7EFAE972F3CD37FBAE0BF68DDDDF58AE2BC6CAEF7ED4D016D60F
        F321A965B7D9F4B5433176BD00F17A7E97679E7926D426DAB3EB86630BFB18FB
        DA355F2653FB90C98E64A43211A03BD2F8196DE30F68AC827A3BEFC8912323DE
        4EA20B921FAEE448A252B98D480A205913AB607B715242A7DF167CEF6A4BEF2F
        CCE38A012C13498E7805FB0E272DEFBC4872C47AF5AC2EB8304132C53BBF179E
        F311EF3345C1BAE0F374CD9FEEFC921DC7B77C20F7841E9F48BD5E0BE4A4DEDF
        4AC3F37E9046E7AF9526176E341DA74D875C049BE9301A3FF1500702E5D19777
        87A64F98149E3E7B494EC43CD680BBE3FFBEEB3269DA9E8879CF1CF473B0E650
        D175DDAE0B2760502E1FB13DA2DE65FAFC430F3B45C13679EB4FE9B725629B62
        1524796E1CF34BD4FC14D477A33966D749E3F3574BC3DE4BA47EAF2F43C7B8B7
        4393C95299ECB0051D68FC8C8E50AC82D7DD26F20ADB418306059212F10AFE5E
        C5EAA8A353EFF7C619AC0B1200AEF92D5BB06D685327096CB1DB9DD779B0BF12
        790D30E6C17ED1CBF2C2032175B2C45B508718BD4E7EC90EFC7EF8157C16E8C8
        B9E6CF44F1921D2B57AECC7843860C096D6FA54A9564D1A245CEB84461FE0B2F
        BC30623FC682B858CB9B3A35FCC0691B17AF5DBC1966FCF8F1CEB6B42953A684
        121CB12071F1CE3BEF38E747B2117D01D77C16D6E591471E71CE0F7ADB902070
        C5A46A3F5AE813C57BCB4EBB76ED02DBA6A7613D5D6D41A2EB877D8965BBDAC8
        546AFB99EC484641253B74671F7FE050E7BD2841A718231A3042C216FC9145AC
        7E3D2A0A3AECC98C3ED052B58D58FEAC59B3822D1D2A76DBF4B6A3E8F5CF6FB2
        C3BB4CEC231CE0B8F8F1EE27EF080F9D40C23EC432B13E7684882E682BDE3ED6
        9F932D6803D3BD6DA1609AAB9D74E697ECA876F203B9B53B4F95BA3D174AFDB3
        BE97937EBFC674963648E3F3364BE33E5BA48975FE563A8CD66E0A8FE0E83A60
        5B687ABFE1E1E778A09C7143B8CE6A7FC5CF327B714EC0F76B738391C1911DC1
        E9D6B0877645CC8BF674D175307D5EB8F3F2E27B7BA2EA35ACC7DEE0035651CE
        19BC3DA21EDBB5606578E4090AD611CB98F4E95E59FE7D641DCA23FFFA35A20D
        0AEA638ED7F33648A3DE3F4A83B396C9893D67868E7157A726531554B243B78B
        BFA198861100DE12AF838D0EBD1D05610BDAB0233CD0AE2DEBD6AD8B9A1F0906
        DDE1473C4624603B4177F451F0F7D6DB86650BE6411BAE82BABCCE83D125BA60
        7BECBA627BBD890BEC5FBD2C0DFF14D1FB0605233BB02CDD0EF6AD8E8BF559E0
        73F07E769817ED613DBCEB8692DFDFA57451D4931DF8CFBEDD5E745E5D31C9F8
        EB5FFF1AB10F5BB66C19681749152CCB8E4EB0F0DF7F573B3A2180F9BA74E912
        FA196DA0738E8EB49D66C5EBA023818191073A1EEDE0F7005F753200CBF3CE8F
        440912423606EB61B7ED861B6E884AA2DC73CF3D516D4022C98E54ED47C0E80F
        EF7663DF79F7A1B7CD58FB12FBC1BBEFB15FD047C2BAB93E9778C99F4CA3B69B
        C98E641454B2C316748431A4C9C6E01756FF01D5DFA303AE3BDB1895A03BEB83
        070F0ED5252355DBA8DB41F1AE0F1237DEC4044A7E921DD807B6605F601DBC31
        186D61931EDEDB61300F924C68474FB7309A23917D8C65E882B7B8B8E2ECAB6E
        6DC17CAEB874E597ECA8DA645C6EAD8ED3A44EF7C552EF8CD552BFD75A39E9EC
        8DD2F09CADD2B0F756D379829FA5D1B974B85C356267F0B751E4AB453951F5DF
        FD144E603CFCE2AF51F5DA9D8F851F6AEA6ACBABE71F223B15DE7ADDDE966D07
        A2EA351DBBFCBBDCA8FA17DF0D1FC748720C1EBB2B2AA6ED65DB02F3DAB277DF
        41E97CD5F6A8B822AFF71673CC6E940667AF91FA672E977A3D66858E716F8726
        931544B24317DCDA606F9900BCB6161D6F5BF0DF40DD86A61304B88EF0BEF216
        ED6244063ADE6853D701B6C71674D65DA321300AC18EA6C057240ABC31608B1E
        7981DB71ECB6613EEFBCB624328F4D76607FC4BAAD06DBAA4BAC75D59F29F68D
        B73D2435BCC9109458C90EACB32DD816D7AD34B86ED10911C4F98D3EC904F192
        1DB866CB742D5AB4086D2F3AD2AE9864DC79E79D818EF5D5575F2D9F7EFA6954
        FDC2850B03FBDC2E130986D9B36747C5615E1B63A15D241074DC840913229214
        58AEAED77432021D72EFFA613DEC4817243B741DE8111DF8DEB5DED87E1B8304
        C08C1933A262F4B621C1E0AD8754ED47D0DB8DE5E17CA0EB718BA06BD4876BB9
        A0F703E6C379CD1B837975D203FB02EBEC8DCB44769B0D263B92A13BF0F80387
        0E783CB13AE5807A5D90E870C5E18FB0B7C44A08E0B910B6E05E35578C9F546D
        A31E9982C48C2B06C91AEF0888BC263BD096BE05255EB207B1AEFA449E05A213
        14B13E33BDED7EB7A8E85B6E309F2B265DF9253BAA34FEBFDC1AED3E93DA9D97
        489D1E6BA45ECFF552FF8C2D7252AF6D72D259DBA441C0763A8C5E9DBC37F8DB
        2872F7DF7F8BAAFFFBCBE124C1776B72A3EAB53B1E0EFF27F9AB85FB9D315A8F
        AB7704A30F156FFDC9E7FD124838D8D27FF8AEA818EB8B39E14ED143CFED89A8
        3BEBFA9D11EDF4B9696744BD86652E53098F1726ED75C61569BD7E36C7EC6673
        ECAE957A3D564A9D2EB343C7783F47A72653E98EB1FDEF7F3CF85BEB6A07BCC5
        FB3C0A0B17C7BAB83AC5486CE8825B2EBC3116E6F776C031CD2619D0E18FD7F1
        D69DF958C9176F89370AC4F216BF79E26DA3A54751B8F6AFDE6E146F82C8C2B2
        74D209C595ECF0B617EFF926DE9134D8AFAEB84C52D4931DBA938BD104AE9864
        A0431BABD36D21468F9098346952548C4E08003AFE486C78E340271810E78AD1
        2325E2250600A3B2BDCBC23ADAF9913C88D771D7C90057F225916447AAF6E313
        4F3C11AAC776C74A60605E6FC2C315ABF703F675ACF600EBAFD70F9F932B2ED3
        D8ED3598EC48864E0424526275DC4177DE63759A01B75AE812AFCDDEBD7B07A3
        0EDDBEE18AF1938A6DD4EB819110F11E088AC483DE17794D767893347AD44B2A
        E9511BAE849277DBFDD603FB468F168997204B377EC98ECA0D1FCCADDEFA0BA9
        79EA32A9DDF527A9D37DA3D43B6DAB9C78FA76E317D379B276D061D0F49C1DB2
        63D7A124C0DE7D22A75EBA332AE6CC6B7705EA6DB9E88FBBA362ACE10FFE168C
        1299B560BF3346EBD63FB26D57CCFBD3C29D8557DFDFE78C39E50224338241A6
        78B743B7F1D197FEEBA5B703ED623FB9E28AACC0F1BAD51CBBEBA56EB76FA476
        C7F0FDC6AE4E4DA6D2C98E444ABCDB4E748995E8B0F4C80257875CAF57BCD11F
        B1E804064697B8622C74E86DC17AB96274C10806578C972E89CEE3C76FBB9050
        B105C9296FBD868487FE1C5C9F6D32ED814E642149A247F564A278C98EE5CB97
        67347446F5F6A24FE08A2B08FAB61474C8BDF59F7CF249A81E9DEAA79F7E3A2A
        C69A3E7D7A2816B05DDE98468D1A85EAF13BEDADF7D3B367CFD0FC38465C3116
        D6D5C662E48CB75E6F1B921DDEFA64F8ED475D7FC1051744D56BF8FC6D2C603D
        BD317A24905F7B807FF0DAF8FC6E6BBAB0DB6B30D9918C64473DC47B8825EA6D
        F1EBE0EACE70BCD107A8B305F3B862FCA4621BF5689444469820C1614B5E931D
        7A8404B2C1DEFA54C1B26DC13A79EBF57A60A48DB7DE05FBC816EC3B574C3AF2
        4B76543AE9A1DC6AADA64BF576CBA556C77552BBF326A9D3759BD4EDBE43EA41
        8F1D72628F9D7498DC725FB853FFF957FB9D31307F6978A4C3736FEE73C6C0F0
        71E1F3D6ACF9B9CE18AD5BBFF0AD2728AE986BFE1C5E4724669AF48A8ED1CB75
        6DC7B255E16792A03D6FBD1796A19327675EBDDB19576475FFC51CAF3F4BDDAE
        1BA44EA75552BBFDDCD031EEEAD464AA64467660141FFED6BADA015D5CF59ABE
        E5C1F5404BBF7A3F7AA46222F363F4872DAE6DD425D6ED235EBA243A8F1F7D6B
        8EEBB62324866CF17BE82AE073B5C595ECD09F43226F82414750EFCB58234B32
        45BC64C7B265CB321A9E25A3B717C937575C414047D92E77ECD8B151F57ADDD0
        49F6D67BE11F7C367EF2E4C949D7FBD1B7647CF5D557CE184BAF3B961BAF3E91
        6D8BC76F3FA27D5BFFC20B2F44D57BD958C07A7AEBF57E4CE4F7C5FB3B367FFE
        7C675C2651DBCB6447327422C0D5D14D865FE75DD3C319134D76A0B862FCA462
        1BF5AD1EB16E61D15291EC4082C396586DE4059EA182E5593A91E3DA3F7A3D12
        4D5CE42541920EFC921D154F7C38B76AF31972FC292BA446BB0D52ABC31639A1
        E32F52A7F3AE80BA5D60371D261F7E114E62DC7EFF5E670C8CFB67B8E7BFF9E7
        83CE18401BB6CC9C97EB8CD1BA5C1CF90045574CA39EBB03CBB465C0B03D5131
        9FCD8ABF1D3A7181657AEB5D7EDA105EE68D23A29759B4ED34C7EB7673EC6E92
        DAEDBF939AADE7858E7157A72653E964472A9FD9E1AAD77427DB350AC46FE487
        1F7D8B06464360DBE2F1EBA0EBE2AD8B4517577D2230FA024908CBEFF3D2D75D
        892479FC921D79F91C924D90A4B378C90E9B24CC54F3E685CF99F0E0830F3AE3
        52E1ADB7DE0A74B62DFCC3D22E179D746FFC471F7D14AA4787DD5BEFE5EDD4EB
        3A3CA7CFD6017ED6F589B0F36294C94D37DDE42BDEF292DD362DD9FD88F5B5F5
        38F778EBBD6C2C603D755D5EF7A39E07EBEF8AC9246A7B99EC4806931D89D1C3
        3513E9F0A722D9A1FFFB846DF0D6270AD952CCAF9717ABB8F68F5E8F441F38AA
        1328797DD64A61E497EC38AEEEC3B9959A7C29555AAC946AA76C94E3DB6C951A
        ED7648CDF6BBA556875F036A77F84D6A9F4A05ADD9197B4249007CC5CFAE3868
        DD3B3C7202E5AADBF639E3868E096715667E7DC019A375BC30B25D570CBCF476
        F84D291327E746D4E975C3769CD42D72DE4497E185F5B765F46339CE98A20BC7
        EB0EA9D56EB3D468B35A8E6F393F748CBB3A3599AA30263BF4DF7314FCACEBFD
        6074417ECA914C76E0961AFCC7136F63F12BAECF2BD95115FA73F0263BF2FA39
        E8D1257EB710A5BBA29CEC00FD4C85DB6EBBCD199317183D71DD75D745B41F4B
        41273BD0C1B675B8D6D67589C0B6D8F9F3223FC98EFCEC47FC6DD0F5BA2E161D
        EF4D76BCFAEAABA1BA64F6A3FE6C903C75C56412BBAD06931DC9D07FB0F29A08
        B0FC3AEF5ABA253B7042B105EDB962B454243BF4C3491359A60BF69FDED77EC5
        B57FF4FC787E87B7DE05F7D2D95294921DE56B3F9A5BB1E14CA9DCF45BA9DA7C
        B3546BB94DAA9FB24B6AB4FE4D6AB6D963EC955AD0960ADA9D7F8D7ED56AA2E5
        DD0F0F38DBFCD3E8709BFF9BEB8ED14E3D4F0DB930C515037DAE093F7363C74E
        734EEC14AED3DBE15A2F3D2F9221DEFA58B0FEB6DCF3C87E674CD185E37597D4
        6CBD55AAB7FC51AA9DBC30748CBB3A3599AA30263B74221D25D9E73EE86770A0
        60A481F78232160C9B76B5A98BABDE451757BD977E334C22C5FB7979933C893C
        F014DB6C8B37D981F97549F473D06FD129CAC98E254B9664BCB66DDB86B6F792
        4B2E71C624CB3BB2C1CF983163A2DAF8F0C30F43F5E82C7BEBBD7487FAF9E79F
        8FA8FBE73FFF19AA43D240D725E295575E09CD8F9112D86789C2BEF0B697E8B6
        E5773FBEFFFEFB11F5BA2E161D8FF5D475D8AFB62E99FDA83F1B8CC077C56412
        BBAD06931DC960B223317A644722B794A422D9A1132CF1DEC4128B37D181F65C
        AFA0C5B26D71ED9F64133D50546F632957F3B1DCE3EACF928A8DBE93CA4DB748
        9593B74BB516BBE5F8967BA47AABBDC6BE801AA75041FB7A51F8368D640B9206
        F53A44B779DBDD91C90E6FBD5787DE919D13578CB5665D787D6FBA737F68BA4E
        4A5C31243CDD6ADC2D32A1829FBD312EAB568797E76AB768C3F1BA5BAAB7FC59
        AA9DBC46AA3659143AC65D9D9A4C5518931D79E9B47BE9110E7999DF4B1757BD
        8B2EAE7ACD9BE840C2C0F5E6137C46B6F88DEC70DD96E2152FD991D7CF81B7B1
        1CB278F1E28CD7A74F9FD0F6E2219EAE9864A0C3ADF7211228E8347BE3F47231
        8FB75E2704AA57AF1E55EF85181BFFDC73CF45D4BDF7DE7BA13AD0758998366D
        5A685E243B5C31C94864DB52B11F710ED26D603B74BD8B8EF72E2FAFFB51DF4A
        83365C319944ED23263B92C1644762F42B70913D74C568A94876E865269260F1
        C22B626DC1B23034CC15E797ECD0CFEC48E479259097E77CA403BF6447D9EA8F
        E796AF3B5B8E3BE97BA9D8E867A9D478875469FA9B546DB6CF749A728CFD01C7
        43732A28EDCE0A3FE362EF5E912FE71C4C08626DB9F5AE0351ED629A2D88F7D6
        7BE9F54071C5580F3D196EFB9D2987DA6E715A38B9B2698B489DB6EE79311AC4
        962E7D729D315E7A5BB19EAE98A26B9F39467F936ACDB64BD5263F49E586E1FF
        A8B83A3599AA30263B403F2B22914EBB97BEFEC8CBFC5EBAB8EA5D7471D56BFA
        56D278AFA8F54B76E8DB5FF0D6076FBD57BC6407E8CF21D107C5E6E5391FE92A
        5EB263D1A245196FD4A85111DBFCD8638F39E312A5930E68DB1503BA938EDF5B
        6F3D461BDB7AB4E9ADF7D2CB7DF6D96723EA705B96AD03B4ADEB13A13BEC53A7
        4E75C6242A916D4BD57ED4EB3D71E2C4A87A2F1B0BDEFDE4DD8F38CFE97A17EC
        2B3D8F2B26D3A8ED65B223194C762446272FB0EEAE180DAF59B225AFC90E3D5C
        17173BDE7A3F7A344ABC11197EC90E3D4A2391F5405245DF82E3F7BB904EFC92
        1DD9D5FE965BAEF66C295F77B554A8BF4D2A36D8693A4A7BA44AE31CA9DA78BF
        E938E50654A302F5D0F8F0A885A9D30F3A635C106B8B6BBE81C354B263B67FBB
        6DCF884C76B862ACCEE74426684E68952BC3478797F7E2EBB19737774178BDFF
        36C17FBD06DC1C6E17CB72C5146D3952ADF11EA9DAE817A9D260AD543A91C98E
        C294ECD0A303F080516FBD1F7D2B45226F25F1A38BABDE451757BD96E84814BF
        6487DEAFF86CBDF51A466EE8E4882BD991ECE780E4862D45FDD5B30B172ECC78
        784DAB7E1E44C3860D9D71899832654AA81D74B25D3196EEA4E3FADB5BAFDB42
        C7DF5BEFE54D7678EBF536BA96E7A76EDDBAA1F91F7DF451674CA2FCB62D95FB
        51EF975B6EB925AA5ED3CB05FCEC8DD1FBF1F6DB6F8FAAF7428C8DC73E74C564
        1ABBBD06931DC960B223316DDAB409B670A8C47B05AFF79EE2BC263B74120205
        EBE08DD1F0F0503D7A23D1078BEAE76BB8F60FB65517BFE776E437495398F925
        3BCA54F97B6E76CDB952F6841FA57CDD5FE4B87ABBA562FD7D52A941AE546E70
        502A370CAB420566CDDAE02FA0297FBCC31DE382585D9A758AAC3FFFCA703D96
        A1EB5C5A9F16D99E2B469B1B3E6403EBF2E557C11F4C39FB12F73C30E6E1F072
        3002A45673779CF5E917C160539E7AC17FBD8A9E5CA9D2609F543E69A7543A71
        BD54AC1B7EE59BAB5393A90A6BB2031D6B5B3052205EA71975DE510C4870D8E2
        377F227471D5BBE8E2AAB7F4F50B0A7E76C5814EE2B83E2FBDDD48A0C4DB6EFD
        20511457B203CFDCB005C98B78EB06BACDBC24A9D24DBC6407AE8D8A028CF8D1
        DB7DD65967055EAFEA8AD5264D9A1488FDE4934F023F3FF3CC33A136709DEB8D
        B7D076F3E6CD43B1B8FEF6C6E077CFD6A3C3EEADF7D29D7AAC87B7BE478F1EA1
        7A2474BCF5DAF4E9D3A3DAC0EDE589CEEFC76FDB52B91FF57A23D65B6F619BB1
        5D3616B09EDE387D9C24B21F749208890F574CA6B1DB6B30D9910C263B12A7B7
        0FEB8F57B87A637042F096BC263B408F90C0325DFB0AEB616F1BD149183DBA04
        F57A1ECB9B9889B57FF428115C1CC64ABCE0E4B7674FF8ED1089BEBD255DF825
        3B4A577C22B774B579925D63AD94ADB553CAD5FE4D8EABB35F2AD43D2815EBC9
        21275241EAD537F8CB670A462DD46BE58E73A9DEE4D03CB6DCFB60647DAB6EC1
        8A60E9706664BD9737DE15A30DBD2B1868CA9CF9C16F4CF9F12777BC85F5DE14
        7E9BA6CC98157BBB9F7F2518640AE6C1BCAEB8A2ED80395673CC71BBCB1CBF1B
        A47CEDE5A163DCD5A9C9548535D981878CEA6758E022D0D571C74802FCDD44AC
        9E8E583D6A014902BF8E3ADAC2725D75BAB8EA5D7471D56BFA55B9F8CFB2B71E
        DBA3131D28AECF0B717ABF21F9E08DC17EF0263A505CC90EB4A76F4BC1BE8EB5
        1F75820AEB106B5F6612263B0EF17674F1B3ABB30B98AEF7974D0CA0C3ACDB40
        E2CE3B2F6274071D0E47B203D7D7B61E701DEC8D01CC8BB6BC1D7924749078F0
        9B5FC3F6637BBDD3FDB62D95FBD1BBDDD75E7B6D540CD6C7FBF983EBF3C77ED0
        B7C6C44A8C619A4E30613B1349A06502BBCD06931DC9D08900FCD14267D74F7E
        3AEFD6914A76E4671B31A241176C036EF1C074240DF08B688B7EA8677EF6975E
        7714AC3F9E1982D1185826BED7171BBA1D9C3075C18909D3B04FD1AE4E60D882
        75D2CBB79A356B1691C4C032914CC13A6099783E884DB8D8122BC192CEFC921D
        A58E1B9F5BBAF2022953759D641FBF4BCA56DF23E56BE6CA71B5442AD40E3A81
        0AD2732F077F014D79EB3D774C3C98C79645A6CFA5EB8E6F109954401262C468
        91FED71F5A2EBED7F12D3B05038345D7B9346A13996CB165DCA3EE780DCBD605
        EBF6E4B32283871E5A3FB481EDD10575AEB6E880395673E4B8DABBCCF1BB41CA
        5567B2031D6E2421FCC47A16842EAE7A0DEDD8E24A76002E9675C1FAA1838F87
        5EE2AB5E7714EFFC584F5D90FCC07CF84F343AF680EFB11C9B188995F0D1C555
        EFA28BAB5EC35B606CC1880CFC8CF5C3DF5F7456F4F5942DB1D6D5FB771FB7A2
        A00DB4873A7B3D8184846ED795EC007C3EBAE073C03EC374EC63AC87BEDD05C5
        95B0C944F1921DF3E7CF2F325E7FFDF588CEBC55B162C540A7F5C61B6F0C7C3D
        F9E493A362D001B6EDE87ACC8BEB59B40DB8BD4B27252CD3D78B5817F8CF7FFE
        13AAC73CDE7A2FDDEE8409139C31BAF30DE8E063BB1E79E491D0F6E93AEFFCC3
        860D8B981FDB8A6DC2F22CB475D1451785D627AFDB96AAFD08F8C7A78EEBD8B1
        63A03F307EFCF8C0BA66656505A6E3F3D7490FACA7AB3DAC8B8D813A75EAC835
        D75C13381703F6A577FDB02C575B99486D37931DC9F07688132DAEB612E9BC5B
        8733D991CA6DF4261F5C0589086CBF2DF94D0EE9078DC62BB850C10945CFEB4A
        68E8820406B6C97E1EB1921D8051232B56AC08C4F995441F649A6EFC921D25CB
        FD23B764858552AAE27A295DF95729532547CA563B20E58E17295F3DA8061594
        AAF5447ED911FC2534E5DA9BDC71F1F4F59C2EDA768BACBFF3EE6085A3BCF2EF
        C8D8E61D8215C1A2EB62F9645A305815EF3AC4827573254BBC05FB08DBE96A83
        E080395673A45CF55DE6F8DD20D9558B66B24377B2132DB19E05A18BAB5E4B24
        D9815105DE8447AC12ABE38FB6F5F330FC4AAC4EBA2EAE7A175D5CF51AFE46EB
        D11DAE827A247A6C89B5CDE04D04790BF609DEF682366C8995EC8044F7236232
        FD0D2C5ABC64C7BC79F38A14DCF2E4FA0F7F2CE8842359A6DB983C79B23369A2
        611923468C08FD7CCF3DF744B461DBB1F5E8387BEBBD74E7FAE9A79F76C6E098
        EAD5AB57282E1674FE5DEB0437DF7C7328399088279E7822AA8D44B62D55FB11
        B0DD4870E879BD90B078FBEDB7E5BCF3CE0B4DC33AB8DA032437F4FCB1E07704
        FF7475B591A9D4F633D9918C5AB56A39FF2B10AFA0C3EB6A4B77ACE33DD302F4
        2808AC832B06708B861D5180FF38B862FCA4721B012339F4C80D5B308F4D5A60
        24842D485678DB8064F617923E783B8B1E5D610BD625D6ED2238A1E1BF3FFA76
        185BF03464AC27E2ECE78169DE36347C1E580F577BF87C902CF14B74A533BF64
        4789EC27734B945B24258FDB28A52AFC26A52BEE97ECCA07A56C1591B25545CA
        69D528D53AF70CFE329AB2719348D513DC71F1601ECC6BCBB503A36306DD1299
        5441D9B3373AB6768343D35110AFEB62E91BD90F928FA7BAE36269DB5964F294
        F0727559B9CA748226893468EE9E97AC03468E3966779963778364572A9AC90E
        FC272D9964000A1210AEB66C3BDE5B4A5CF42D19B1468A58A88FF5F71DB763C4
        EBA4036EA7C0F2F408495DB0DEA88FD7494F66DBAC64E7C17ABA923B68071D0E
        2444F43F63D0B974B563A15EDFCA630BAE05EC435091DCB1C5F5AA5B0DD719D8
        DFD81E6F41220675F11EAE9A89E2253BBEFEFAEB22099DE6789DE3D6AD5BCB9D
        77DE293367CE74CEFFFEFBEF3B930AE8F85E7EF9E581F95E7DF5D5D0F4FBEFBF
        3FAA8D8F3EFA28548F4EBDB7DE4B8F8478EBADB79C3116D61D9D7B1B6F218971
        EEB9E706D6DF359F85F6BB77EF1E331981ED443B48BAB8E64F74DB52B11F2DC4
        629DBC232EB0CD18DD817E01E2060C1810AAC37A7ADBD15E78E18598BF27D82E
        DD6E51A2F603931D74F8A0630F7E0F0F4D15243D6CC203490ED77343624162C3
        AEAFAB3E593819DBF6E28DCEC9247EC98EE2A5FF999B5566B114CFDE24C5CBED
        9592E50F48A90A22A52B1A9544CA504639E55491B3FB1C52A9863BE6486AD2AA
        70AF5FE175C0C831C7ED2E295D6183943AAE68263BD20D121B16467EB862E241
        B240B751585F8D9ACAF5D3DB9CAA64041233B64DB4EF8A290AE2253BE6CE9D5B
        A44D9B362DF08F33EBF9E79F77C6C58204A49DF7BDF7DE73C61C497AFDC015E3
        E7C30F3F8C680323AD5C71F991EAFD88366C7B587F574CB2B0DDB64D577D51A2
        CE214C765066B3234290F488372A8652CF2FD99155F2A9DC634B2E95634B6D91
        ACD23952BCCC4129912D52AAAC514EA43411A58103468E396E77191BA4643693
        1D44949C78C90E8C7421224A863A8730D941994DBF0A1643475D315430FC921D
        C7167F2AB758D63229567CAB912B59250F4AF15222254A1F52B20C11157E078C
        1C29597A97396E374889524C76105172E2253B66CF9E4D449414750E61B28332
        1B6E1FB105A33C5C315430FC921DC58E9D907BD4D1CBE5A863B61907E4E86222
        C71C2B726CF1B0AC124454B81D30728C5DE698DD6030D94144C98997ECC0AB32
        898892A1CE214C7650E6C1434EF15617D00F77C53D6CAE782A187EC98E638E99
        90FBBBDFAD30DF6F370E9A3A313162A68B99EF10D30C11156A078C1C6397B1C1
        1CB74C76105172E2253BF0CC3522A264A87308931D94795C05CFEC385C0F46A5
        4398EC202A0A98EC20A2FC8997ECC01B2C888892A1CE214C7650E6C113CDF13E
        69BC6A09C68D1B5764DE80529830D941541430D94144F9132FD981B760101125
        439D4398EC20A282C164075151C0640711E54FBC64C7975F7E49449414750E61
        B283880A06931D444501931D44943FF1921D3366CC20224A8A3A871C9E6487FD
        9E888A9EFC243B88A8B03B60E418BB8C0DE6F865B2838892132FD9317DFA7422
        A2A4A87348C1273B88A86863B283289331D94144F9132FD9F1C5175F10112545
        9D430A36D981AF4444C9253B7289286DE4187B8C5F8CB5C692D031EEEAD41011
        79C54B767CFEF9E744444951E790D4273B70DB4A8912258888428A172F9E50B2
        A378F17D267E0F11A58D5F8D9DC61673FCFE602C081DE3AE4E0D119117931D44
        944AEA1C92DA6407121D65CB9625228A52AA54A9B8C98E1225F69AB85D449456
        7618DB243B7BA3F1AD9429F375E81877756A8888BCE2253B3EFBEC3322A2A4A8
        7348EA921D487454AC58512A57AE4C44E454A64C99D00948273B4A97FED5D4FF
        4C4469678BB1512A555A63AE01964B850AB342C7B8AB534344E4152FD9316DDA
        3422A2A4A873486A921D487454A85041AA56AD4A441453952A55A464C9928113
        904D76942AB5CAD42D22A2B4B4C098678EED5952B9F254A958F1DDD04586AB53
        4344E4152FD93175EA5422A2A4A87348FE931D8660887AA54A958888E2C2E82F
        C0733C90EC2851E21333FDDF4494B65E375E35C7F58B52A1C25372DC718FEA8B
        0C222222A223A5A191F76447F1E2C5DFC6B074EFBDF94444B1646767076E6729
        51E28DDCB2653F30D388287D4D31269BE3FA1DE335736C3F2B471F5DC775C141
        4494A8CDC6379E694444C9586F3430AA1A49253B4A18158CDAC6C94627E34CE3
        5CE302E342A32F1191729162A75D1CFC195FEDCF36D6C61051E186E3F512E372
        E31A63B071BB718FF157E321E3911478D878D0B8DFB8DBF8B3F147E37AE32AA3
        BFD12FE832224A3B971AB80E403F02FD89F383DF631AEA5CF3101159384FE09A
        043989D38C36467DA38A51DA482AD9719C51C3686CB433BA1BBD8CDF1BBD8988
        3C70E2392F08DFBBA6D9AFB69E880A3F1CAF7D0C744A9068B8D6186220E131CA
        C005C4BDC67D2980B6461A68FB66E33A03490EDB4142E708B03E44943EECB500
        CE29E84B9C1564FB15B6DE352F1111E07AE41CE30C0383319A1B750CDC9152CA
        401E236EB2E328E318A3B851CEC09010644B5A181D8CAE460F0399949E44443E
        4EF7C0C9C94EF7C61251E1648FDDB30D744630CA03232D6E3090F4B8D5F89331
        341F30FF6DC62DC64D0646735C69D8FFE0E09F2D58075C7F00AE458828BDE01F
        A7DD8CCE41E8ACE02BFA1798EE9A8788C8C23904E78B538D96066E61A96E206F
        81C11AC8631C15CA6DE84447604238D9812120180A822C494D03098FA6061A6D
        659C4244E4D13AC87EDFD6C0A8300B3F633A869CD938222AFCEC718BE3189D13
        5C70E03FB2487CD85B5C30BCD4DE62925768C38EE040DB5806968565E2FC61D7
        07D721B81E21A2F483FFC4E216796816847FAA822B9E88C8C27902E7902606F2
        13C853205F81BC459681BB5462273B0213236F65296B54369031C1F33BEA1A27
        1A689C88C8EBA420645AF12A28C05392F1B39D8EAFAE7989A8F0C2718B631917
        18B8D0400204233E9188E862E0BFB2A980FFD8A04DB48DC4063A44388F601D70
        FD81EB100C5925A2F4718282FE442D0F5B6763BDF31311E973081EB5813B50F0
        8C513C981477A5046E61317C931D7A7407DECA8206CA1BC89A20F18107801011
        B9E0C463E13550D6F1EA7BD4B9E625A2C2CB1ED3F8E707FE93820B8E7A864D84
        2091990A68CB2635704183E561B9B8FEA864E05A04173744945EF02C40FB351E
        EF7C4444963D4FE0B6956C03CFE970263A02790DFD83864003090FCC880630CA
        03890F346861B808119166CF0D4892024687E16484EFBDB144945E701CE378C6
        718D7F82D88E091210A9A02F66D0BEBD98C1B2710D62E19A848888888A26E427
        70DB0A066720671195E808E434BC132C040767029BF44063161A27228AC59E84
        F0D5F2C61051FAB1C7B3BDE0D0498854D01732F6BC81EB0E5C8700AE49888888
        A868B3B90AE42DA2121D819C866BA265670CD2890F22A264B0834294796CF2A1
        20789715BA9821222222B25C790CCB3931166FC344447E78FE20A2BCD2D72044
        444444C9704E24222222222222224A57CE894444444444444444E9CA39918888
        8888888888285D39271211111111111111A52BE74422222222222222A274E59C
        484444444444444494AE9C138988888888888888D29573221111111111111151
        BA724E24222222222222224A57CE894444444444444444E9CA39918888888888
        8888285D39271211111111111111A52BE74422222222222222A274E59C484444
        444444444494AE9C138988888888888888D29573221111111111111151BA724E
        24222222222222224A57CE894444444444444444E969F4EFFE1F696C6848E61E
        DC5E0000000049454E44AE426082}
      Proportional = True
      Stretch = True
      ExplicitLeft = 912
      ExplicitWidth = 395
      ExplicitHeight = 31
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 160
    object CancelarSemRegistronoSefaz1: TMenuItem
      Caption = 'Cancelar Sem Registro no Sefaz'
      OnClick = CancelarSemRegistronoSefaz1Click
    end
    object ExcluirCtrlX1: TMenuItem
      Action = Act_Excluir
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 152
    Top = 184
  end
  object Query_Clonar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from mdfe_dados')
    SQLConnection = DM.MdfeConnection
    Left = 576
    Top = 216
    object Query_ClonarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Query_ClonarID_NFE: TFMTBCDField
      FieldName = 'ID_NFE'
      Precision = 18
      Size = 0
    end
    object Query_ClonarMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object Query_ClonarSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object Query_ClonarNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object Query_ClonarCODMDF: TIntegerField
      FieldName = 'CODMDF'
    end
    object Query_ClonarDATA: TDateField
      FieldName = 'DATA'
    end
    object Query_ClonarD_ENCERRA: TSQLTimeStampField
      FieldName = 'D_ENCERRA'
    end
    object Query_ClonarHORA: TTimeField
      FieldName = 'HORA'
    end
    object Query_ClonarUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Query_ClonarTIPO_EMITENTE: TStringField
      FieldName = 'TIPO_EMITENTE'
      Size = 25
    end
    object Query_ClonarUF_EMIT: TIntegerField
      FieldName = 'UF_EMIT'
    end
    object Query_ClonarMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 25
    end
    object Query_ClonarFORMA_EMISSAO: TStringField
      FieldName = 'FORMA_EMISSAO'
      Size = 25
    end
    object Query_ClonarUF_DESCARREGAMENTO: TStringField
      FieldName = 'UF_DESCARREGAMENTO'
      Size = 2
    end
    object Query_ClonarCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object Query_ClonarVEI_UF: TStringField
      FieldName = 'VEI_UF'
      Size = 2
    end
    object Query_ClonarVEI_RNTRC: TStringField
      FieldName = 'VEI_RNTRC'
      Size = 8
    end
    object Query_ClonarVEI_CIOT: TStringField
      FieldName = 'VEI_CIOT'
      Size = 8
    end
    object Query_ClonarCOD_AG_PORTO: TStringField
      FieldName = 'COD_AG_PORTO'
    end
    object Query_ClonarCOD_INT_VEIUC: TStringField
      FieldName = 'COD_INT_VEIUC'
      Size = 40
    end
    object Query_ClonarVEI_TIPO_CARROCERIA: TStringField
      FieldName = 'VEI_TIPO_CARROCERIA'
      Size = 30
    end
    object Query_ClonarVEI_TIPO_RODADO: TStringField
      FieldName = 'VEI_TIPO_RODADO'
      Size = 30
    end
    object Query_ClonarVEI_PLACA: TStringField
      FieldName = 'VEI_PLACA'
      Size = 9
    end
    object Query_ClonarVEI_RENAVAN: TStringField
      FieldName = 'VEI_RENAVAN'
      Size = 50
    end
    object Query_ClonarVEI_TARA: TFMTBCDField
      FieldName = 'VEI_TARA'
      Precision = 18
      Size = 2
    end
    object Query_ClonarVEI_CAPACIDADE: TFMTBCDField
      FieldName = 'VEI_CAPACIDADE'
      Precision = 18
      Size = 2
    end
    object Query_ClonarVEI_CAPC_M3: TFMTBCDField
      FieldName = 'VEI_CAPC_M3'
      Precision = 18
      Size = 2
    end
    object Query_ClonarTOT_QNT_NFE_REL_MANIFESTRO: TIntegerField
      FieldName = 'TOT_QNT_NFE_REL_MANIFESTRO'
    end
    object Query_ClonarTOT_VALOR_TOTAL_MERCADORIA: TFloatField
      FieldName = 'TOT_VALOR_TOTAL_MERCADORIA'
    end
    object Query_ClonarTOT_CODUNIDADE: TStringField
      FieldName = 'TOT_CODUNIDADE'
      Size = 5
    end
    object Query_ClonarTOT_PESO_BRUTO: TFloatField
      FieldName = 'TOT_PESO_BRUTO'
    end
    object Query_ClonarUF_CARREGAMENTO: TStringField
      FieldName = 'UF_CARREGAMENTO'
      Size = 2
    end
    object Query_ClonarSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object Query_ClonarMDF_PROTOCOLO: TStringField
      FieldName = 'MDF_PROTOCOLO'
      Size = 50
    end
    object Query_ClonarMDF_D_ENVIO: TSQLTimeStampField
      FieldName = 'MDF_D_ENVIO'
    end
    object Query_ClonarOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object Query_ClonarOBS2: TStringField
      FieldName = 'OBS2'
      Size = 500
    end
    object Query_ClonarID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object Query_ClonarTIPO_EMISSOR: TIntegerField
      FieldName = 'TIPO_EMISSOR'
    end
    object Query_ClonarCNPJ_TOMADOR: TStringField
      FieldName = 'CNPJ_TOMADOR'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 320
    Top = 344
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    AllocBy = 25
    DrawingStyle = dsTransparent
    Height = 30
    Width = 30
    Left = 272
    Top = 208
    Bitmap = {
      494C01010D001C0094001E001E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000007800000078000000010020000000000000E1
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000705
      0449493928E25D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4939
      28E2070504480000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000004A39
      28E35D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF493928E20000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000382C1FC73B2E21CC000000160000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000003B2D20CB5D4833FF403123D30000
      0016000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000000000153F3123D25D4833FF4234
      24D7000000180000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF00000000000000000000000000000000000000153F3123D25D48
      33FF423424D70000001800000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0503023C0000000000000000000000000000000000000000000000000000
      0000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2D20CB00000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0403023A0000000000000000000000000000000000000000000000000000
      0000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2D20CB00000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF00000000000000000000000000000000000000153F3123D25D48
      33FF423424D70000001900000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000000000153F3123D25D4833FF4234
      24D7000000190000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000003A2D20CA5D4833FF403123D30000
      0016000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000362A1EC23B2E21CC000000160000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000005D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000004A39
      28E35D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF493928E20000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000706
      044A4A3928E35D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4A39
      28E3070504490000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000002110D096D4A3A
      29E45D4833FE5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF4C3B2AE7100C096B000000020000
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
      000000000000000000000000000000000000000000000B08065853402EF10403
      02370000000F483828E15D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF483828E10000000F0403023853402EF10A0806570000
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
      00000000000000000000000000000000000000000000251C14A12C2318B10000
      00000000000001010021483828E05D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF483828E00101002100000000000000002C2318B0251C14A10000
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
      00000000000000000000000000000000000000000000281F17A9382C1FC70000
      000800000000000000000000000E3E3022D05D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3E3022D00000000D000000000000000000000007382B1EC6292017AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010021372A1EC45D4833FF5D4833FF5D4833FF423324D60000
      0000070503485D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF423324D6000000000705
      03485D4833FF5D4833FF5D4833FF503E2CED0B09065B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF4232
      24D60000000800000000000000000000000B453626DD5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4838
      28E00000000D0000000000000000000000073F3123D25D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF271E15A5000000000000000033281CBE5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF04030238000000000A08
      06565D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000211A12985D4833FF5D4833FF5D4833FF5D4833FF483828E10000
      00000806044C5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF483828E1000000000806
      044C5D4833FF5D4833FF5D4833FF5D4833FF503E2CED00000000000000000000
      0000000000000000000000000000000000000000000000000000070504484939
      28E25D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF493928E207050448000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF2D2318B10000000900000000000000000101001F483827E05D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF473727DF0101
      00200000000000000000000000012D2319B25D4833FF5D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF594531F904030237000000000000000853402EF15D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1A140E89000000000000
      00064C3B2AE65D4833FF5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF0100001B0000
      00000000000C5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0100001B000000000000
      000C5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      0000000000000000000000000000000000000000000000000000493928E25D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF493928E2000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF2D2319B20000000700000000000000000000000D3D3021CF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3D2F21CF0000000D0000
      00000000000003030235000000122F231AB45D4833FF5D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF443426DA0000000E00000000110D096E5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF382B1FC5000000000000
      0000100D086C5D4833FF5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF140F0B770000
      000A040302375D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF140F0B770000000A0403
      02375D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF3E3022D00000000700000000000000000000000D4737
      27DF5D4833FF5D4833FF5D4833FF5D4833FF473727DE0000000D000000000000
      000000000000443425DA070504490D0A075F5D4833FF5D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF18120D82000000000000000017110C7F211A1298211A1298211A
      1298211A1298211A1298211A1298211A1298211A12981D16108E000000000000
      000001010021503E2CED5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF2D2318B10000000900000000000000000101
      001F473727DF5D4833FF5D4833FF473727DE0101001F00000000000000000000
      0000010100235D4833FF221A129A020101255D4833FF5D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF594431F80000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002362A1DC25D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      0000000000000000000000000000070504494A3928E35D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF2C2318B100000006000000000000
      00000000000D3D2F21CF513E2DED000000100000000000000000000000070000
      0002110E09705D4833FF574430F60100001F251C14A15D4833FF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF231B139D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000070504495D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF2A2017AC281F17A9281F17A9281F
      17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F17A93B2D20CB5D48
      33FF5D4833FF281F17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F
      17A9281F17A9281F17A9382C1EC65D4833FF5D4833FF00000000000000000000
      00000000000000000000000000004A3928E35D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3D2F21CF000000060000
      0000000000000000000D473727DE34291DBF0000000300000007110D096F0000
      000F55422FF45D4833FF5D4833FF271E15A600000000473728DF292017AA0000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF0100001D00000000000000000000
      00000000000000000000000000000000000000000000000000001D16108F5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      000000000000000000000A0705555D4833FF5D4833FF00000000000000000000
      00000000000000000000000000005D4833FF5D4833FF060403411A140E871913
      0E86060403425D4833FF000000004E3D2BEA0000000A4F3D2CEB000000005D48
      33FF0000000000000000000000005D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF2C2218B00000
      000900000000000000000101001F473727DE261D15A316110C7C00000004281F
      17A95D4833FF5D4833FF5D4833FF56422FF50403023A07050449281F16A80000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E21CC000000000000
      000000000000281F17A95D4833FF5D4833FF372B1EC50504033D000000000000
      0000000000000000000000000000000000000000000F1D171090594531F95D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      000000000000000000000A0705555D4833FF5D4833FF00000000000000000000
      00000000000000000000000000005D4833FF5D4833FF372A1EC40101001F0101
      001E382B1EC55D4833FF00000003201911950100001D20191195000000035D48
      33FF000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF2C22
      18B10000000600000000000000000000000C35291EC1040302370B09065A5B46
      32FC5D4833FF5D4833FF5D4833FF5D4833FF574330F601010020040302390000
      000000000000000000000000000000000000030201325D4833FE5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF594431F82B2118AE32261BBA5D4833FF5D4833FF392C20C8000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FE3B2E20CC0706
      044A00000000000000000100001C231B139D5B4632FC5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000000000050504033F0101001F0000
      000000000000000000000A0705555D4833FF5D4833FF00000000000000000000
      00000000000000000000000000005D4833FF5D4833FF5D4833FF0201012A0202
      012B5D4833FF5D4833FF0000000E0403023A271F16A60403023A0000000F5D48
      33FF000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3D2F21CF000000060000000000000000000000000202012C5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF2A2117AD000000000000
      0000000000000000000000000000000000000201012A574430F65D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3E3023D1000000050000000A5D4833FF5D4833FF281F16A9000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4234
      25D8000000000000000017120D805D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000007281F16A85D4833FF5B4632FC0E0B
      086500000000000000000A0705555D4833FF5D4833FF00000000000000000000
      00000000000000000000000000005D4833FF5D4833FF3A2D20C90100001D0100
      001B3B2D20CB5D4833FF000000060101001E5D4833FE0101001F000000065D48
      33FF000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF2C2218B0000000080000000000000008382C1FC75D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF140F0B770000
      00000000000000000000000000000000000000000011453525DB5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF4A3928E201010022040302355D4833FF5C4732FE06040341000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF251D
      14A200000000000000000806044D5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000B18120D834C3B2AE730251AB7030201320D0A07604B3A
      2AE5382C1FC70403023B0A0705555D4833FF5D4833FF00000000000000000000
      00000000000000000000000000005D4833FF5D4833FF0705034718120D831812
      0D81070504495D4833FF000000000F0C08685D4833FF0F0B0867000000005D48
      33FF000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF4D3C2AE8291F17AA1C160F8D292017AA4C3B2AE65D4833FF5D48
      33FF5D4833FF5D4833FF241B139F000000001E1711925D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF503E2DED0101
      002100000000000000000000000000000000000000000C09065E574430F75D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF271F16A600000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0504
      033F0000000000000000000000013E3022D05D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3E2F21CF433425D90C0A075F0000000100000000000000000000
      0018261E15A453402EF13A2D20C95D4833FF5D4833FF00000000000000000000
      00000000000000000000000000004A3928E35D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF483827E00000001000000000000000000000000000000001443526DA5D48
      33FF5D4833FF5D4833FF120E0A7200000013594531F95D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF523F
      2DEF0000000900000000000000000000000000000000000000010C09065C5B47
      32FD5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FE271F16A70000001100000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FE0000
      00020000000000000000000000000B0806585D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF1C16108E00000000000000000000000000000000000000000000
      00000000000001010125453626DD5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000806044B4A3928E45D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF0504033F010100233A2D20CA4E3C2BE932271CBD000000030C09065B5D48
      33FF5D4833FF4D3B2AE800000011423425D85D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF090705530000000000000000000000000000000000000000000000000100
      001A110D096E281F16A85D4833FF5D4833FF211A1298211A1298211A1298211A
      1298211A1298211A1298211A1298211A1298211A1298211A12985D4833FF5D48
      33FF4E3C2BE918130D830504033D000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      000C0000000000000000000000000F0C08695D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF0000000B1B150F8B5D4833FF271F16A60E0B08660100001D000000115D48
      33FF5D4833FF231A139C0202012D5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF523F2DEF2D2319B2392C1FC75D4833FE5D4833FF5D4833FF5D4833FF5D48
      33FF2C2217AF0000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF594631FA0000
      00000000000000000000000000000807044F5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      0000362A1EC35D4833FF5D4833FF5D4833FF5D4833FF5B4632FB000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF00000005241C149F5D4833FF100C096B00000000000000000000000C5D48
      33FF5D4833FF100C086A0806044B5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0807044F0000000000000000271E15A55D4833FF5D4833FF5D4833FF5D48
      33FF503E2CEC0000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      000E0000000000000000000000000D0A07625D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      00005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF16100C7C000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF0201012A0403023A594631FA5D4833FF584431F85D4833FF5D4833FF5D48
      33FF5D4833FF0C09065C090705515D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0000001100000000000000000F0B08665D4833FF5D4833FF5D4833FF5D48
      33FF574430F70000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF2018
      11960100001C0000000E18120D824F3D2CEB5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      00005D4833FF5D4833FF5D4833FF5D4833FF1A140E8800000000000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF261E15A40000000D0000001A090705500100001D16110C7D5D4833FE5D48
      33FF5D4833FF120E0A71060503455D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF15100B7A000000090100001E36291DC15D4833FF5D4833FF5D4833FF5D48
      33FF453726DC0000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      00000000000000000000000000000000000000000000000000005D4833FF5D48
      33FF000000000000000000000000000000000000000000000000000000000000
      00005D4833FF5D4833FF5D4833FF1A140E880000000000000000000000000000
      00000000000000000000000000000000000000000000281F17A95D4833FF5D48
      33FF5D4833FF453626DD0504033F0000000B0705044952402DF05D4833FF5D48
      33FF5D4833FF271F16A7010100245D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF221A139C0000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF0F0B08670F0B08670F0B08670F0B
      08670F0B08670F0B08670F0B08670F0B08670F0B08670F0B08675D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000281F17A95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF00000000000000000000
      0000000000000000000000000000000000000000000000000000493928E25D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF17120D80000000000000000000000000000000000000
      00000000000000000000000000000000000000000000120E0A725D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF54412EF20000001630251BB85D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF060503440000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000110D096F5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF372A1EC400000000000000000000
      0000000000000000000000000000000000000000000000000000070504484A39
      28E35D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5B4632FB16100C7C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000072A2017AB5743
      30F65D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF1A140E88000000114C3B2AE65D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3226
      1BBA000000050000000000000000000000000000000000000000000000000000
      000000000000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      00000000000000000003110E0A70281F17A9281F17A9281F17A9281F17A9281F
      17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F
      17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F17A9281F
      17A9281F17A9281F17A9281F17A9211A12980101002100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070504485D4833FE5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3C2E21CD0000
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
      000000000000000000000000000000000000000000000302023335291DC15D48
      33FE5D4833FF5D4833FF5D4833FF5D4833FF5B4632FC18120D80000000110000
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
      0000000000000000000000000000000000000000000000000000000000000503
      023B18130D83271F16A6201912950F0C08680000001300000000000000000000
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
      0000000000000000000000000000000000000000000A130F0A75362A1EC34E3C
      2BE9594631FA53402EF1403224D5251C14A10302012E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00040806044B221A139B362A1EC3453526DB503D2CEC574430F75A4632FB5D48
      33FF594431F852402DF0493928E23C2F21CD2B2117AD110D096E000000110000
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
      000000000000000000000000000002010127433425D95D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF574430F70C09065C000000040000
      000000000000000000000000000000000000000000000000000000000008231B
      139E5B4833FD5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF493928E20201
      0126000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010100244B3A29E55D4833FF5D4833FF4C3B2AE6110D
      096D0403023B090705502B2017AC5D4833FF5D4833FF594431F80C09065B0000
      0000000000000000000000000000000000000000000000000000090705505D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF231B
      139D000000000000000000000000000000000000000000000000000000000000
      00000000000000000012241C149F3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E
      21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E
      21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3529
      1DC1070504490000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000130907
      05500E0B08650F0B08670F0B08670F0B08670F0B08670F0B08670E0B08660000
      001900000000000000002D2319B25D4833FF5D4833FF5D4833FF221B129B0000
      000E0000000000000000000000010504033F453627DD5D4833FF574431F70202
      012D0000000000000000000000000000000000000000000000000F0C08695D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3328
      1CBE000000000000000000000000000000000000000000000000000000000000
      000000000012403224D55D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF594431F80705044900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016493928E25D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF53402EF10201
      0126000000000100001C5C4833FD5D4833FF5D4833FF5D4833FF5D4833FF221A
      1299000000000000000000000000000000000504033F5D4833FF5D4833FF251C
      14A1000000000000000000000000000000000000000000000000130F0A755D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3D2F
      21CE000000000000000000000000000000000000000000000000000000000000
      0000030201305B4632FC5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF34291DC000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E3A2C20C95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF453526DB0000
      000F00000000211A12985D4833FF503D2CEC0504023D35291DC05D4833FF5D48
      33FE241C139F0000000B0000000000000000000000012B2017AC5D4833FF4132
      24D500000000000000000000000000000000000000000000000017120D805D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4736
      27DE000000000000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000504033D483928E1574330F619130E8500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000201012A574330F65D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3E3021CF0000
      000300000000463626DD5D4833FF403223D3000000070100001C433425D95D48
      33FF5D4833FE1F1811930000000B0000000000000000090705505D4833FF5340
      2EF10000000000000000000000000000000000000000000000001C150F8C5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF513F
      2CEE000000000000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000211A12985D4833FF5D4833FF503E2CED00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201325D4833FF5D4833FF5D48
      33FF5D4833FF423224D603020133030201330302013303020133020101290000
      00000000000055422FF35D4833FF3D2F21CF000000020000000000000011382C
      1EC65D4833FF5D4833FF251D14A200000000000000000403023B5D4833FF5946
      31FA000000000000000000000000000000000000000000000000211A12985D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B47
      33FC000000010000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B09065A5D4833FF5D4833FF2C2218AF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000003B2D20CB5D4833FF443525DA0000000E00000000000000000101
      001F382C1FC75D4833FF5D4833FE221A12990000000E110D096D5D4833FF4E3C
      2BE9000000000000000000000000000000000000000000000000241C14A05D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0000000A0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF211A
      1298211A1298211A1298211A1298211A1298211A1298211A1298211A12982B21
      17AD5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001040302380806044C0000001100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      000000000000100D096C5D4833FF574330F60202012C00000000000000000000
      000000000011443425DA5D4833FF5D4833FF221B129B4C3B2AE65D4833FF372A
      1EC4000000000000000000000000000000000000000000000000281F16A85D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF000000160000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000302
      01335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF574431F70302
      0233000000000000000B4C3B2AE75D4833FF3B2D20CA00000016000000000000
      0000000000000100001B35291DC05D4833FF5D4833FF5D4833FF5D4833FF140F
      0B770000000000000000000000000000000000000000000000002B2218AF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF010100220000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000302
      01335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF221B
      139C000000010000000019130E855D4833FF5D4833FF3A2D20CA0202012C0000
      000E00000002000000070504023D5D4833FF5D4833FF5D4833FF423425D80000
      000C0000000000000000000000000000000000000000000000002F251AB75D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0302012E0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000241C14A0523F2DEF5B4632FB3E2F22D00403023B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF423224D603020133030201330302013303020133030201330302
      012E000000010000000000000009241C14A05D4833FF5D4833FF574330F64434
      25DA3D2F21CE403123D3503D2CEC5D4833FF5D4833FF4B3B29E5020101280000
      000000000000000000000000000000000000000000000000000034291DBF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0403023A0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC000000000000000003020131433425D8423425D80302
      0131000000000000000003020131433425D8423425D803020131000000000000
      0000120E0A725D4833FF5D4833FF5D4833FF5D4833FF3E3022D0000000000000
      0000000000102C2218AF503E2CED18130E850000000000000000000000102C22
      18AF503E2CED18130E850000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      00000000000000000000000000000000000919130E854C3B2AE65D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FE2E2419B401010024000000000000
      0000000000000000000000000000000000000000000000000000382C1FC75D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF070503450000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF211A
      1298211A1298211A1298211A1298211A1298211A1298211A1298211A1298211A
      1298211A1298211A1298211A1298423224D65D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000004B3B2AE55D4833FF5D4833FF4A39
      28E400000000000000004B3B2AE55D4833FF5D4833FF4A3928E4000000000000
      000055422FF35D4833FF5D4833FF5D4833FF5D4833FF594631FA000000000000
      00000806044C5D4833FF5D4833FF574330F600000000000000000806044C5D48
      33FF5D4833FF574330F60000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B100C096B3A2D
      20CA55422FF4453726DD211912980100001C0000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D2F21CF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF090705510000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000211A12985D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC0000000000000000281F16A75D4833FF5D4833FF281F
      16A70000000000000000281F16A75D4833FF5D4833FF281F16A7000000000000
      00003E3022D05D4833FF5D4833FF5D4833FF5D4833FF52402DEF000000000000
      0000040302375D4833FF5D4833FF493928E20000000000000000040302375D48
      33FF5D4833FF493928E20000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF3B2D20CB0504023D0000000100000000000000000000
      0000000000000000000000000000000000000000000000000003000000000000
      0000000000000000000000000000000000000000000000000000423324D65D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0C09065C0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000211A12985D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000418130D8418130D830000
      000400000000000000000000000418130D8418130D8300000004000000000000
      00000302023353402EF15D4833FF5D4833FF5D4833FF241C14A0000000000000
      0000000000010B09065B211A12980504033E0000000000000000000000010B09
      065B211A12980504033E0000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5A4632FB241C14A003020131000000160000
      000900000002000000000000000001010024100C096A31261BBA000000000000
      0000000000000000000000000000000000000000000000000000473627DF5D48
      33FE54412FF24C3B2AE7493928E2473627DE453526DB433425D9433425D94334
      25D9433425D9433425D9453626DC483828E14B3A2AE5513F2DEE594631FA5D48
      33FF0F0C08690000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030202333E3023D155422FF4120E0A7200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF584431F8493928E24132
      23D5271E15A50000000000000000523F2DEF5D4833FE3B2E21CC000000000000
      00000000000000000000000000000000000000000000000000001B150F8A0503
      023C020101260100001B0000001600000012000000100000000E0000000E0000
      000E0000000E0000000E0000001100000015000000190101002203020130140F
      0A750B09065A0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF4E3D2BEA211A1298211A1298211A1298211A1298211A1298211A
      1298211A1298211A1298211A12982B2117AD5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC00000000000000005D4833FF5D4833FF3B2E21CC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000090000
      000C000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF211A
      1298211A1298211A1298211A1298211A1298211A1298211A1298211A1298211A
      1298211A1298211A1298211A1298423224D65D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000030201335D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC00000000000000005D4833FF5D4833FF3B2E21CC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00040403023A18120D832D2319B2453526DB5B4732FD5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FE4F3D2BEA35291DC1211912970A0806570000000E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000211A12985D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000004271F16A64A3928E40302013100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000030201335D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC00000000000000005D4833FF5D4833FF3B2E21CC000000000000
      0000000000000000000000000000000000000000000A15100B7A382B1EC55642
      2FF55D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B4633FC4334
      25D9221B139B0000001900000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000211A12985D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018130D835D4833FF5D4833FF423425D800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000030201335D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000806044F5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF382B1EC500000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018130D845D4833FF5D4833FF433426D900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF56422FF53B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E21CC3B2E
      21CC3B2E21CC3B2E21CC3B2E21CC423224D65D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090705525D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3D2F21CF00000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000004281F16A84B3B2AE50302013200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201324A3928E45D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF55422FF415100B7A00000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C09065C3A2D
      20CB5D4833FE5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4E3D2BEA1B14
      0E890100001A0000000000000000000000000000000000000000000000000000
      0000030201335D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF3B2E21CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030201335D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3B2E21CC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100000010020101292F241AB65D4833FF201911970E0B07640F0C0869110D
      096F0E0B08661A140E875D4833FF2D2319B20302013000000019000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      00000201012855422FF45D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF241B139F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000241C139F5D4833FF0B09065B00000000000000000000
      000000000000060403415D4833FF221A12990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005241C14A055422FF45D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B46
      32FC413224D50000001200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000241C139F5D4833FF120E0A7200000000000000000000
      000000000000090705515D4833FF221A12990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000402010128030201330302013303020133030201330302
      0133030201330302013303020133030201330302013303020133030201330302
      0133030201330302013303020133030201330302013303020133030201330302
      0130000000130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000221B139B5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF211912970000000000000000000000000000
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
      000000000000000000000302013156422FF55D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5B4732FD0706044A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003020130503D2CEC5D4833FF5D48
      33FF5D4833FF5D4833FF584430F81D16108F0000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020130503D
      2CEC5D4833FF5D4833FF5D4833FF5D4833FF584430F81D16108F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B4632FB5D4833FF0C09065E5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF140F0B76000000005D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0705545D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5B4732FD0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705545D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B4732FD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005B4632FB5D4833FF5B4632FB000000055D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1E171091000000005D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF3C2F21CD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      00000000000000000000000000000000000000000000020101275D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF000000170000000000000000211A12985D4833FF5D4833FF5D4833FF5D48
      33FF594531F9000000175B4632FB5D4833FF5B4632FB00000000000000003328
      1CBE5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF30241AB60000000F5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF0100001D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000000000000054412EF25D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1510
      0B7900000000000000005B4632FC5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5B4632FB0000000000000000000000000000
      00185D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF33281CBE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      00000000000052402DF05D4833FF584431F80000000200000000000000000000
      0000100C096A5D4833FF5D4833FF000000170000000000000000000000000000
      00002C2218B15D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF0202012B000000000000000000000000000000051812
      0D804D3C2BE85D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF594531F92E241AB50000
      000D000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF281F16A90000
      00000100001C5D4833FF5D4833FF000000000000000000000000000000000000
      000000000000100C096A5D4833FF594531F90000000000000000000000000000
      0000010100245D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF4B3B29E50807044F5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF2F251BB700000000000000000000000000000000020101265441
      2EF25D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1F17
      1093000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF040302370000
      00002F241AB55D4833FF110D096E000000000000000000000000000000000000
      000000000000000000005D4833FF5D4833FF0000000000000000000000000000
      0000000000002B2017AC5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1E171091000000005D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0302013100000000000000000000000000000000030201325D48
      33FE5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3A2C
      20CA000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000060000
      000054412EF25D4833FF0000000C000000000000000000000000000000000000
      000000000000000000005D4833FF5D4833FF0000000000000000000000000000
      000000000000020101285D4833FE5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1E171091000000005D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF30261BB90000000000000000000000000000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC000000000000000000000000000000000A0705555D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0705555D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000140000
      0000433425D95D4833FF02010129000000000000000000000000000000000000
      000000000000000000005D4833FF5D4833FF0000000000000000000000000000
      000000000000000000002B2117AE5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF261E15A5000000075D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B48
      33FD030201310000000000000000000000000000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC0000000000000000221A129A594531F95D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FE3B2E21CC000000000000
      000000000000000000000000000000000000221A129A594531F95D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FE3B2E
      21CC00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0E0B07640000
      0000100D096C5D4833FF3E3022D0000000000000000000000000000000000000
      000000000000000000025D4833FF5D4833FF0000000000000000000000000000
      00000000000000000000020101285B4632FC5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3429
      1DBF000000000000000000000000000000000000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FE5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FE000000000000
      0000000000000000000000000000000000005D4833FE413223D53E3023D15D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FE00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF53402EF10000
      0000000000005D4833FF5D4833FF0504033E0000000000000000000000000000
      000000000000584431F85D4833FF211A12980000000000000000000000000000
      00000000000000000000000000002F241AB55D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B4833FD0202
      012C000000000000000000000000000000000000000000000000030201335D48
      33FF5D4833FF0504023D1D1710905D4833FF594431F8070504470F0B08665D48
      33FF453626DC00000013000000000000000000000007403223D55D4833FF0A07
      0555000000000000000000000000000000000503023C5D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000005D4833FF16110C7C00000011503E
      2CED5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF0000
      0004000000000806044D5D4833FF5D4833FF3E3022D0020101290000000B110D
      096E5D4833FF5D4833FF5B4632FC000000000000000000000000000000000000
      0000000000000000000000000000010100205B4632FC5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF513F2CEE16110C7C5D4833FF5D48
      33FF5D4833FF5C4733FE433424D732271BBC34291DBF4D3B2AE832261BBB0000
      0000000000000000000000000000000000000000000000000000030201335D48
      33FF5D4833FF00000000110D096F5D4833FF19130E85000000000000000A5D48
      33FF3B2E21CC00000000231B129B3B2E21CC3D2F21CE574430F75D4833FF0000
      000300000000000000000000000000000000000000025D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000005D4833FF5B4632FB18120D820000
      0010382C1EC65D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5743
      30F600000000000000000806044D5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF53402EF100000000000000000000000000000000000000000000
      00000000000000000000000000000000000036291DC25D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1F181193000000005D4833FF3B2D
      21CB0403023B0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030201335D48
      33FF5D4833FF00000000110D096F4C3A2AE50100001A0000000E000000095D48
      33FF3B2E21CC000000003F3123D25D4833FF5D4833FF5D4833FF5D4833FF0000
      0000382C1EC60B08065802010128382B1EC6000000005D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000005D4833FF5D4833FF5B4632FB120E
      0A700100001A382C1EC65D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF3D2F21CE000000000000000000000000100C096B423424D755422FF42F24
      1AB60100001C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000115B4733FD5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1E17109100000000020101270000
      000100000014281F16A74C3B2AE5503E2CED4F3D2CEB473828E0120E0A720000
      0000000000000000000000000000000000000000000000000000030201335D48
      33FF5D4833FF00000000110D096F16110C7D000000190F0B0866000000095D48
      33FF3B2E21CC000000000101001E0302013317120D815D4833FF5D4833FF0000
      00004E3C2BE90E0B076303020130503D2CEC000000005D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0403023600000000000000000000000000000000000000005D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000000000
      000000000000000000104F3D2CEB5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF574330F600000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000403223D55D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF1E17109100000000000000033529
      1EC15D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF0D0A07630000000000000000000000000000000000000000030201335D48
      33FF5D4833FF000000000504033E0000000F2F231AB4100C096B000000095D48
      33FF3B2E21CC000000000E0A076319130E852B2218AF5D4833FF5D4833FF0000
      00004E3C2BE90E0B076303020130503D2CEC000000005D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF32271BBC292017AA292017AA292017AA292017AA292017AA0A0705550A07
      05550A0705550A0705550A0705550A070555292017AA292017AA292017AA221B
      139C0000000A0807044F594431F85D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF53402EF10E0B076400000015000000050403
      023631261BB90000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000065D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FE0101001D00000007574330F65D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF2119119700000002000000000000000000000000030201335D48
      33FF5D4833FF00000000000000000403023757432FF5100C096B000000095D48
      33FF3B2E21CC000000003E3023D15D4833FF5D4833FF5D4833FF5D4833FF0000
      00004E3C2BE9100C086A04030238503E2CED000000005D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000005D4833FF5D4833FF483828E10101
      00220807044F574430F65D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000392C1FC85D48
      33FF5D4833FF5D4833FF5D4833FF18130D83000000004F3D2BEA5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF100C086A000000000000000000000000030201335D48
      33FF5D4833FF00000004000000033C2F21CD5D4833FF100D096C000000095D48
      33FF3C2F21CD00000001020101260302013304030238473627DE5D4833FF0000
      00004E3C2BE94C3B2AE7473727DE523F2DEF000000005D4833FF5D4833FF3B2E
      21CC00000000000000005D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF000000000000
      0000000000000000000000000000000000005D4833FF55422FF4010100230302
      0130594531F95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000115D48
      33FF5D4833FF5D4833FF5B4633FC000000120F0C08695D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF000000100000000000000000030201335D48
      33FF5D4833FF291F17AA231C139E5D4833FF5D4833FF34281CBE211A12995D48
      33FF503E2CEC130E0A740F0B08670F0B0867100C096B4C3B2AE65D4833FF1A14
      0E885B4732FD5D4833FF5D4833FF5C4732FE1A140E875D4833FF5D4833FF3B2E
      21CC0000000000000000574330F65D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B4632FC000000000000
      000000000000000000000000000000000000574330F617120D800A0705545945
      31F95D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5B46
      32FC00000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F24
      1AB65D4833FF5D4833FF292016AA000000004F3D2CEB5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF17110C7F0000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC0000000000000000271E16A65D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF483828E1000000000000
      000000000000000000000000000000000000271E16A65D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF4838
      28E100000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      001F5D4833FF5D4833FF0B080659000000115D4833FE5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF574430F70000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC000000000000000000000006513F2DEE5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1A140E88000000000000
      00000000000000000000000000000000000000000006513F2DEE5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1A14
      0E8800000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0100001C000000000000000000000000000000000A0705535D48
      33FF5D4833FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001400000017000000020706044B5D4833FF5D4833FF5D4833FF5D48
      33FF15100B7900000018000000180000001800000018000000180000001A3C2F
      21CE5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000030201335D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF3B2E
      21CC000000000000000000000000030202322B2217AF574330F65D4833FF5D48
      33FF5D4833FF5D4833FF5B4632FC423424D70D0A076200000005000000000000
      00000000000000000000000000000000000000000000030202322B2217AF5743
      30F65D4833FF5D4833FF5D4833FF5D4833FF5B4632FC423424D70D0A07620000
      000500000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF00000000000000000000000000000000090705525D4833FF5D48
      33FF0C09065C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0906595D4833FF5D4833FF5D4833FF5D48
      33FF0806044D0000000000000000000000000000000000000000000000002920
      17AA5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000030201315B47
      32FD5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF362A
      1EC3000000000000000000000000000000000000000000000000000000190705
      0348090705520302012E00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001907050348090705520302012E0000000100000000000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF000000000000000000000000090705525D4833FF5D4833FF0C09
      065C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040302375D4833FF5D4833FF5D4833FF5D48
      33FF453626DC1D1710901D1710901D1710901D1710901D171090201812955C47
      33FE5D4833FF5D4833FF5D4833FF5D4833FF0000000000000000000000174636
      26DD5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5A4632FB0C09
      065B00000000000000000000000000000000000000000100001A523F2DEF5D48
      33FF5D4833FF5D4833FF1E171091000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      001A523F2DEF5D4833FF5D4833FF5D4833FF1E17109100000000000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF0000000000000000090705525D4833FF5D4833FF0C09065C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000594531F95D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF443525DB0000000000000000000000000000
      0017392C20C85D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF54412EF20C09065E0000
      00000000000000000000000000000000000000000019523F2DEF5D4833FF5D48
      33FF5D4833FF5D4833FF594531F9070504480000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000019523F
      2DEF5D4833FF5D4833FF5D4833FF5D4833FF594531F907050448000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF00000000090705525D4833FF5D4833FF0C09065C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3123D25D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF060403420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070504475D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF403223D40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070504475D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF403223D4000000000000
      000000000000000000000000000000000000000000005D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF090705525D4833FF5D4833FF0C09065C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010100215D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF493928E2000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090705515D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF55422FF30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090705515D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF55422FF3000000000000
      000000000000000000000000000000000000000000002A2017AC5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF0A0806570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016100C7B5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5B4632FB02010127000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000302012F5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF5D4833FF1A150F8A0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000302012F5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF1A150F8A000000000000
      00000000000000000000000000000000000000000000000000002A2017AC5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF5D4833FF5D4833FF09070550000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000015100B7A5D48
      33FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D48
      33FF56422FF50303023400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000011F181193594631FA5D48
      33FF5D4833FF5D4833FF3E2F22CF000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000011F18
      1193594631FA5D4833FF5D4833FF5D4833FF3E2F22CF00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      012A4A3928E35D4833FF5D4833FF5D4833FF5D4833FF5D4833FF5D4833FF2A20
      17AB0000000D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000806044B4233
      24D755422FF41B150F8B00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000806044B423324D755422FF41B150F8B0000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006040340130F0A75110D096E01010021000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000078000000780000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Query_Clonar
    Left = 664
    Top = 224
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 744
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 544
    Top = 264
  end
  object Proc_Clonar: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_D'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DM.MdfeConnection
    StoredProcName = 'MDF_CLONAR'
    Left = 240
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    FileName = 'MDF-e'
    Filter = 'xml|*.XML'
    Left = 688
    Top = 152
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 40
    Top = 288
    object Act_Novo: TAction
      Caption = 'Novo (F2)'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Act_NovoExecute
    end
    object Act_Visualizar: TAction
      Caption = 'Visualizar (F3)'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = Act_VisualizarExecute
    end
    object Act_Clonar: TAction
      Caption = 'Clonar (Ctrl+F2)'
      ImageIndex = 1
      ShortCut = 16497
      OnExecute = Act_ClonarExecute
    end
    object Act_Consultar: TAction
      Caption = 'Status (Shift+T)'
      ImageIndex = 4
      ShortCut = 8276
      OnExecute = Act_ConsultarExecute
    end
    object Act_Encerrar: TAction
      Caption = 'Encerrar (Ctrl+N)'
      ImageIndex = 3
      ShortCut = 16462
      OnExecute = Act_EncerrarExecute
    end
    object Act_Excluir: TAction
      Caption = 'Excluir'
      ImageIndex = 6
      ShortCut = 16472
      OnExecute = Act_ExcluirExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar (Ctrl+M)'
      ImageIndex = 5
      ShortCut = 16461
      OnExecute = Act_CancelarExecute
    end
    object Act_Trajeto: TAction
      Caption = 'Trajeto (Ctrl+T)'
      ImageIndex = 8
      ShortCut = 16468
      OnExecute = Act_TrajetoExecute
    end
    object Act_EXPXML: TAction
      Caption = 'Exportar XML (Shift+X)'
      ImageIndex = 11
      ShortCut = 8280
      OnExecute = Act_EXPXMLExecute
    end
    object Act_Reimprimir: TAction
      Caption = 'Reimprimir (Ctrl+P)'
      ImageIndex = 9
      ShortCut = 16464
      OnExecute = Act_ReimprimirExecute
    end
    object Act_Enviar: TAction
      Caption = 'Enviar (Ctrl+E)'
      ImageIndex = 10
      ShortCut = 16453
      OnExecute = Act_EnviarExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair (Esc)'
      ImageIndex = 12
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
    object ActConsNaoencerrado: TAction
      Caption = 'N'#227'o Encerrados (Shift+C)'
      ImageIndex = 7
      ShortCut = 8259
      OnExecute = ActConsNaoencerradoExecute
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 368
    Top = 192
  end
end
