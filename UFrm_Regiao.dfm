object Frm_Regiao: TFrm_Regiao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Regi'#245'es'
  ClientHeight = 417
  ClientWidth = 567
  Color = 920231
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 561
    Height = 291
    Align = alClient
    DataSource = CDM.DS_regioes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISTRITO'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_IBGE'
        Title.Caption = 'CODIGO IBGE'
        Width = 84
        Visible = True
      end>
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 360
    Width = 561
    Height = 54
    Align = alBottom
    BorderOuter = fsNone
    Color = clCream
    GradientColorStyle = gcsCustom
    GradientColorStart = 33023
    GradientColorStop = clMaroon
    TabOrder = 1
    VisualStyle = vsGradient
    ExplicitLeft = 8
    ExplicitTop = 363
    object Button4: TButton
      AlignWithMargins = True
      Left = 469
      Top = 3
      Width = 89
      Height = 48
      Action = Act_Sair
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      ExplicitLeft = 780
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 89
      Height = 48
      Action = Act_novo
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 1
      WordWrap = True
    end
    object Button6: TButton
      AlignWithMargins = True
      Left = 98
      Top = 3
      Width = 89
      Height = 48
      Action = Act_Alterar
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Images = Frm_Principal.ImageList1
      ParentFont = False
      TabOrder = 2
      WordWrap = True
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 561
    Height = 54
    Align = alTop
    BorderOuter = fsNone
    Color = clHighlightText
    GradientColorStyle = gcsCustom
    GradientColorStart = 33023
    GradientColorStop = clMaroon
    TabOrder = 2
    VisualStyle = vsGradient
    ExplicitLeft = -13
    ExplicitTop = 43
    object ComboBox1: TComboBox
      Left = 16
      Top = 16
      Width = 73
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 0
      Text = 'CIDADE'
      Items.Strings = (
        'CIDADE'
        'DISTRITO'
        'COD IBGE')
    end
    object Edit1: TEdit
      Left = 95
      Top = 16
      Width = 205
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList1
    Left = 432
    Top = 272
    object Act_novo: TAction
      Caption = 'Adicionar (F2)'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Act_novoExecute
    end
    object Act_Alterar: TAction
      Caption = 'Alterar (F3)'
      ImageIndex = 16
      ShortCut = 114
      OnExecute = Act_AlterarExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair'
      ImageIndex = 29
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
  end
end
