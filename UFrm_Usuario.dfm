object Frm_Usuario: TFrm_Usuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Grade de Usu'#225'rios'
  ClientHeight = 482
  ClientWidth = 424
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 71
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Localizar por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 118
      Top = 16
      Width = 79
      Height = 13
      Caption = 'Digite a Busca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzComboBox1: TRzComboBox
      Left = 16
      Top = 33
      Width = 97
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 0
      Text = 'Nome'
      Items.Strings = (
        'Nome'
        'ID')
      ItemIndex = 0
      Values.Strings = (
        'NOME like'
        'ID_funcionario =')
    end
    object RzEdit1: TRzEdit
      Left = 118
      Top = 33
      Width = 289
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = RzEdit1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 71
    Width = 424
    Height = 369
    Align = alClient
    DataSource = DM.DS_Cli_Cad_Usu
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FUNCIONARIO'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 280
        Visible = True
      end>
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 440
    Width = 424
    Height = 42
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 2
    VisualStyle = vsGradient
    object BitBtn1: TBitBtn
      Left = 349
      Top = 0
      Width = 75
      Height = 42
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
