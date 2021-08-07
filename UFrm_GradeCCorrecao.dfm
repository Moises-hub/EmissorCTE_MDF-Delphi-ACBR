object Frm_GradeCCorrecao: TFrm_GradeCCorrecao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'CCorrecao'
  ClientHeight = 627
  ClientWidth = 679
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 73
    Width = 659
    Height = 492
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alClient
    DataSource = CDM.DS_Query_Grade_Carta
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CHAVE'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 659
    Height = 53
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alTop
    BorderOuter = fsNone
    Color = clGray
    GradientColorStyle = gcsCustom
    GradientColorStart = clBtnFace
    GradientColorStop = clWhite
    TabOrder = 1
    VisualStyle = vsGradient
    ExplicitWidth = 778
    object Label1: TLabel
      Left = 321
      Top = 0
      Width = 338
      Height = 53
      Align = alClient
      Alignment = taCenter
      Caption = 'CARTA DE CORRE'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 441
      ExplicitWidth = 285
      ExplicitHeight = 39
    end
    object RzGroupBox1: TRzGroupBox
      Left = 0
      Top = 0
      Width = 321
      Height = 53
      Align = alLeft
      Caption = 'Localizar'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clBlack
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      TabOrder = 0
      Transparent = True
      VisualStyle = vsGradient
      object Edit1: TEdit
        Left = 16
        Top = 17
        Width = 282
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Edit1Change
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 575
    Width = 659
    Height = 47
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alBottom
    BorderOuter = fsNone
    Color = clGray
    GradientColorStyle = gcsCustom
    TabOrder = 2
    VisualStyle = vsGradient
    ExplicitTop = 389
    ExplicitWidth = 778
    object Button3: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 94
      Height = 41
      Action = Ac_Novo
      Align = alLeft
      Images = Frm_Grade_CTE.ImageList1
      TabOrder = 0
      OnClick = Button3Click
      ExplicitLeft = 16
      ExplicitTop = 6
      ExplicitHeight = 33
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 562
      Top = 3
      Width = 94
      Height = 41
      Action = Act_Sair
      Align = alRight
      Images = Frm_Grade_CTE.ImageList1
      TabOrder = 1
      ExplicitLeft = 552
      ExplicitTop = -2
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 450
      Top = 3
      Width = 106
      Height = 41
      Action = Act_XML
      Align = alRight
      Images = Frm_Grade_CTE.ImageList1
      TabOrder = 2
      ExplicitLeft = 440
    end
  end
  object ActionList1: TActionList
    Images = Frm_Grade_CTE.ImageList1
    Left = 456
    Top = 192
    object Ac_Novo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Ac_NovoExecute
    end
    object Act_XML: TAction
      Caption = 'Exportar XML'
      ImageIndex = 11
      ShortCut = 114
      OnExecute = Act_XMLExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair'
      ImageIndex = 12
      OnExecute = Act_SairExecute
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 392
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    FileName = 'CT-e'
    Filter = 'xml|*.XML'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 641
    Top = 152
  end
end
