object Frm_CTE_GCartaCorrecao: TFrm_CTE_GCartaCorrecao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 182
  ClientWidth = 363
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 44
    Top = 28
    Width = 42
    Height = 13
    Caption = 'GRUPO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 43
    Top = 61
    Width = 43
    Height = 13
    Caption = 'CAMPO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 95
    Width = 73
    Height = 13
    Caption = 'NOVO VALOR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit3: TDBEdit
    Left = 93
    Top = 92
    Width = 249
    Height = 21
    DataField = 'VALOR'
    DataSource = CDM.DS_CD_GCarta_Correcao
    TabOrder = 2
  end
  object RzBitBtn1: TRzBitBtn
    Left = 189
    Top = 143
    Caption = 'OK'
    TabOrder = 3
    OnClick = RzBitBtn1Click
  end
  object RzBitBtn2: TRzBitBtn
    Left = 270
    Top = 143
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = RzBitBtn2Click
  end
  object RzDBComboBox1: TRzDBComboBox
    Left = 92
    Top = 25
    Width = 249
    Height = 22
    DataField = 'GRUPOALTERADO'
    DataSource = CDM.DS_CD_GCarta_Correcao
    Style = csOwnerDrawFixed
    TabOrder = 0
    OnSelect = RzDBComboBox1Select
    Items.Strings = (
      'Identifica'#231#227'o'
      'Dados Gerais do Emitente'
      'Endere'#231'o do Emitente'
      'Dados Gerais do Destinat'#225'rio'
      'Endere'#231'o do Destinat'#225'rio'
      'Dados Gerais do Remetente'
      'Endere'#231'o do Remetente'
      'Valor Presta'#231#227'o de Servi'#231'o'
      'Dados Gerais do Tomador')
    Values.Strings = (
      'IDE'
      'EMIT'
      'enderEmit'
      'dest'
      'enderdest'
      'Rem'
      'enderReme'
      'vPrest'
      'toma03')
  end
  object RzDBComboBox2: TRzDBComboBox
    Left = 92
    Top = 57
    Width = 249
    Height = 22
    DataField = 'CAMPO'
    DataSource = CDM.DS_CD_GCarta_Correcao
    Style = csOwnerDrawFixed
    TabOrder = 1
    Items.Strings = (
      'Identifica'#231#227'o'
      'Emitente')
    Values.Strings = (
      'IDE'
      'EMIT')
  end
end
