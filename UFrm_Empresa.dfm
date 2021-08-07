object Frm_Empresa: TFrm_Empresa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Empresa'
  ClientHeight = 486
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 53
    Align = alTop
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clGray
    GradientColorStop = clWhite
    TabOrder = 0
    VisualStyle = vsGradient
    object Edit1: TEdit
      Left = 119
      Top = 16
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 16
      Width = 97
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'RAZ'#195'O SOCIAL')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 53
    Width = 504
    Height = 386
    Align = alClient
    DataSource = Frm_ConfigSistema.DS_Empresa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_EMPRESA'
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Width = 263
        Visible = True
      end>
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 439
    Width = 504
    Height = 47
    Align = alBottom
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = clGray
    TabOrder = 2
    VisualStyle = vsGradient
    object Button1: TButton
      Left = 384
      Top = 6
      Width = 94
      Height = 33
      Caption = 'Confirmar'
      ImageIndex = 6
      Images = Frm_Principal.ImageList1
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
