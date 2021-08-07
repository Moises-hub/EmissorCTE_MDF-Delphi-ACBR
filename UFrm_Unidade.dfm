object Frm_Unidade: TFrm_Unidade
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Unidade'
  ClientHeight = 344
  ClientWidth = 312
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 312
    Height = 302
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = CDM.DS_CTE_UN
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'UN'
        PickList.Strings = (
          'UNIDADE'
          'M3'
          'KG'
          'TON'
          'LITROS')
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QNT'
        Width = 116
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 302
    Width = 312
    Height = 42
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 307
    object Button1: TButton
      AlignWithMargins = True
      Left = 152
      Top = 4
      Width = 75
      Height = 34
      Align = alRight
      Caption = 'Excluir'
      ImageIndex = 27
      Images = Frm_CTE_EMISSOR2.ImageList1
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 233
      Top = 4
      Width = 75
      Height = 34
      Align = alRight
      Caption = 'Sair'
      ImageIndex = 34
      Images = Frm_CTE_EMISSOR2.ImageList1
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Query: TFDQuery
    CachedUpdates = True
    Connection = CDM.FDConnection1
    SQL.Strings = (
      'select * from CTE_UNI where cte_uni.id_cte =:c')
    Left = 192
    Top = 96
    ParamData = <
      item
        Name = 'C'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QueryID_CTE: TIntegerField
      FieldName = 'ID_CTE'
      Origin = 'ID_CTE'
    end
    object QueryCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Origin = 'CHAVE_NFE'
      Size = 90
    end
    object QueryUN: TStringField
      FieldName = 'UN'
      Origin = 'UN'
      Size = 10
    end
    object QueryQNT: TBCDField
      FieldName = 'QNT'
      Origin = 'QNT'
      Precision = 18
      Size = 3
    end
  end
end
