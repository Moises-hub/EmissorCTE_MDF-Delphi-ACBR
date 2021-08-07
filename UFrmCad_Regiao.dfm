object FrmCad_Regiao: TFrmCad_Regiao
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Regi'#245'es'
  ClientHeight = 227
  ClientWidth = 655
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 76
    Top = 63
    Width = 54
    Height = 19
    Caption = 'CIDADE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 62
    Top = 100
    Width = 66
    Height = 19
    Caption = 'DISTRITO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 343
    Top = 132
    Width = 68
    Height = 19
    Caption = 'C'#211'D IBGE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 109
    Top = 132
    Width = 21
    Height = 19
    Caption = 'UF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 142
    Top = 60
    Width = 459
    Height = 27
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = CDM.DS_regioes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 142
    Top = 96
    Width = 459
    Height = 27
    CharCase = ecUpperCase
    DataField = 'DISTRITO'
    DataSource = CDM.DS_regioes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object RzDBComboBox1: TRzDBComboBox
    Left = 142
    Top = 129
    Width = 99
    Height = 27
    DataField = 'UF'
    DataSource = CDM.DS_regioes
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
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
    Values.Strings = (
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
  object DBEdit3: TDBEdit
    Left = 420
    Top = 129
    Width = 181
    Height = 27
    CharCase = ecUpperCase
    DataField = 'CODIGO_IBGE'
    DataSource = CDM.DS_regioes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 649
    Height = 39
    Align = alTop
    BorderOuter = fsNone
    Color = clCream
    GradientColorStyle = gcsCustom
    GradientColorStart = 33023
    GradientColorStop = clMaroon
    TabOrder = 4
    VisualStyle = vsGradient
    ExplicitLeft = -2
    object RzLabel1: TRzLabel
      Left = 0
      Top = 0
      Width = 281
      Height = 39
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'CADASTRO DE REGI'#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      BlinkIntervalOff = 1000
      BlinkIntervalOn = 1000
      TextStyle = tsRecessed
      ExplicitHeight = 54
    end
  end
  object Button1: TButton
    Left = 400
    Top = 170
    Width = 97
    Height = 39
    Action = Act_Salvar
    Images = Frm_Principal.ImageList1
    TabOrder = 5
    WordWrap = True
  end
  object Button2: TButton
    Left = 504
    Top = 170
    Width = 97
    Height = 39
    Action = Act_Cancelar
    Images = Frm_Principal.ImageList1
    TabOrder = 6
    WordWrap = True
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 336
    Top = 177
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList1
    Left = 616
    Top = 154
    object Act_Salvar: TAction
      Caption = 'Salvar (Ctrl+S)'
      ImageIndex = 31
      ShortCut = 16467
      OnExecute = Act_SalvarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar (ESC)'
      ImageIndex = 9
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
end
