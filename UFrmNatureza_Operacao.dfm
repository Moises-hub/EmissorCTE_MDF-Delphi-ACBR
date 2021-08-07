object FrmNatureza_Operacao: TFrmNatureza_Operacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Natureza de Opera'#231#227'o'
  ClientHeight = 468
  ClientWidth = 773
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
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 767
    Height = 53
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStart = clGray
    GradientColorStop = clSilver
    TabOrder = 0
    VisualStyle = vsGradient
    object Edit1: TEdit
      Left = 167
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
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 1
      Text = 'CFOP'
      Items.Strings = (
        'CFOP'
        'DESCRI'#199#195'O'
        'DESCRI'#199#195'O CTE')
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 62
    Width = 767
    Height = 343
    Align = alClient
    DataSource = CDM.DS_Query_NOperacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'CODIGO_FISCAL'
        Title.Caption = 'CFOP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_NOTA'
        Title.Caption = 'DESCRI'#199#195'O CTE'
        Width = 327
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 285
        Visible = True
      end>
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 411
    Width = 767
    Height = 54
    Align = alBottom
    BorderOuter = fsNone
    Color = clWhite
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = clGray
    TabOrder = 2
    VisualStyle = vsGradient
    object Button1: TButton
      AlignWithMargins = True
      Left = 675
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
      ParentFont = False
      TabOrder = 0
      WordWrap = True
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 118
      Height = 48
      Action = Act_novo
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 127
      Top = 3
      Width = 130
      Height = 48
      Action = Act_Alterar
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      WordWrap = True
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
      Caption = 'Sair (ESC)'
      ImageIndex = 29
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
  end
end
