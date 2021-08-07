object Frm_Cad_Seguradora: TFrm_Cad_Seguradora
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Seguradora'
  ClientHeight = 504
  ClientWidth = 514
  Color = clHighlight
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
    Top = 0
    Width = 494
    Height = 192
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 0
    Align = alTop
    BorderOuter = fsNone
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 41
      Top = 105
      Width = 34
      Height = 15
      Caption = 'Nome'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 46
      Top = 142
      Width = 26
      Height = 15
      Caption = 'CNPJ'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 93
      Top = 137
      Width = 204
      Height = 24
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 18
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit4Exit
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 102
      Width = 324
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RzPanel4: TRzPanel
      AlignWithMargins = True
      Left = 0
      Top = 25
      Width = 494
      Height = 40
      Margins.Left = 0
      Margins.Top = 25
      Margins.Right = 0
      Align = alTop
      BorderOuter = fsNone
      Caption = 'SEGURADORA'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 233
    Width = 494
    Height = 220
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    DataSource = DataSource1
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Title.Alignment = taCenter
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PADRAO'
        Visible = False
      end>
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 192
    Width = 494
    Height = 35
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 72
      Height = 29
      Cursor = crHandPoint
      Action = Act_Novo
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 81
      Top = 3
      Width = 72
      Height = 29
      Cursor = crHandPoint
      Action = Act_Salvar
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 159
      Top = 3
      Width = 72
      Height = 29
      Cursor = crHandPoint
      Action = Act_Apagar
      Align = alLeft
      Caption = 'Apagar'
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 237
      Top = 3
      Width = 72
      Height = 29
      Cursor = crHandPoint
      Action = Act_Cancelar
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 3
    end
  end
  object RzPanel3: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 453
    Width = 494
    Height = 41
    Margins.Left = 10
    Margins.Top = 0
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 3
    ExplicitTop = 533
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 396
      Top = 3
      Width = 95
      Height = 35
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Confirmar'
      Glyph.Data = {
        76060000424D7606000000000000360000002800000014000000140000000100
        2000000000004006000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF00FF00
        FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A006BC97A00FF00FF0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00FF0059C2
        6A0059C26A0059C26A0059C26A0059C26A006BC97A00FF00FF00FF00FF00FF00
        FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A00FF00FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A006BC97A00FF00FF00FF00FF0059C26A0059C26A00FF00
        FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00
        FF0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A007DCF8A0059C26A0059C26A0059C26A0059C2
        6A0059C26A00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00
        FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF0059C26A0059C2
        6A0059C26A0059C26A00FF00FF0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A00FF00FF00FF00FF0059C26A0059C26A0059C26A00FF00FF00FF00FF0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF00FF00
        FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C2
        6A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0059C26A0059C26A0059C26A0059C26A0059C26A0059C26A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
      OnClick = Act_ConfirmarExecute
    end
  end
  object FDTable1: TFDTable
    BeforeInsert = FDTable1BeforeInsert
    AfterInsert = FDTable1AfterInsert
    AfterEdit = FDTable1AfterEdit
    AfterPost = FDTable1AfterPost
    CachedUpdates = True
    IndexFieldNames = 'ID'
    Connection = DM.FDConnection1
    UpdateOptions.UpdateTableName = 'MDF_SEGURADORA'
    TableName = 'MDF_SEGURADORA'
    Left = 464
    Top = 88
    object FDTable1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object FDTable1CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object FDTable1PADRAO: TIntegerField
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 440
    Top = 40
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList3
    Left = 336
    Top = 312
    object Act_Novo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Act_NovoExecute
    end
    object Act_Salvar: TAction
      Caption = 'Salvar'
      ImageIndex = 4
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = Act_CancelarExecute
    end
    object Act_Confirmar: TAction
      Caption = 'Confirmar'
      ImageIndex = 3
      ShortCut = 116
      OnExecute = Act_ConfirmarExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair'
      ImageIndex = 5
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
    object Act_Apagar: TAction
      Caption = 'Apagar'
      ImageIndex = 6
      ShortCut = 16472
      OnExecute = Act_ApagarExecute
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 359
    Top = 1
  end
end
