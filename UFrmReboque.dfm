object FrmReboque: TFrmReboque
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Reboque'
  ClientHeight = 263
  ClientWidth = 423
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
  object Label6: TLabel
    Left = 26
    Top = 8
    Width = 118
    Height = 16
    Caption = 'Tipo de Carroceria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 107
    Top = 40
    Width = 34
    Height = 16
    Caption = 'Placa'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 87
    Top = 102
    Width = 57
    Height = 16
    Caption = 'Tara(Kg)'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 288
    Top = 70
    Width = 62
    Height = 16
    Caption = 'UF Licenc.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 42
    Top = 136
    Width = 102
    Height = 16
    Caption = 'Capacidade(Kg)'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 87
    Top = 72
    Width = 57
    Height = 16
    Caption = 'Renavan'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RzToolButton1: TRzToolButton
    Left = 272
    Top = 8
    Width = 27
    Height = 24
    GradientColorStyle = gcsSystem
    ShowCaption = True
    UseToolbarButtonSize = False
    UseToolbarShowCaption = False
    UseToolbarVisualStyle = False
    VisualStyle = vsGradient
    Action = Action1
  end
  object DBEdit3: TDBEdit
    Left = 150
    Top = 40
    Width = 116
    Height = 24
    CharCase = ecUpperCase
    DataField = 'PLACA'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = DBEdit3Exit
  end
  object DBEdit6: TDBEdit
    Left = 150
    Top = 100
    Width = 115
    Height = 24
    CharCase = ecUpperCase
    DataField = 'TARA'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 6
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 150
    Top = 133
    Width = 115
    Height = 24
    CharCase = ecUpperCase
    DataField = 'CAPACIDADE'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 218
    Top = 196
    Width = 86
    Height = 30
    Action = Action3
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF006262BB000200A3000300A00002019A0002019A000201
      9C000301A0006362BB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000F0EBC000C0CEF000000DC000000D7000602D0000602CD000000
      CF000101E7000908F3000603C200FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF005958C5000E10F4000101E400ABA6F600FF00FF00FF00FF00FF00FF00BFBA
      E8000100BE000705EC000B09F3005A58C500FF00FF00FF00FF00FF00FF001514
      CF00151CF6000000E400938BF500FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000E0CB2000305F0000E0FF5000806CE00FF00FF006563D5001722
      F7000D14EF000000E500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F3F3F5000000C3000D0FEE000F13F6006664D500100CD100111D
      F2000F1AF0000F15EE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00080ECD000C11ED000F17F0000807D000100ED3001220
      F200101FF0001117EE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF004B54E800FF00FF00080ECB000D14EF001019F1000807D2000E0CD9001525
      F3001224F100111BEE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00080ECD00FF00FF000C16CE000E1AEE001221F1000807D8003633E4001526
      F2001322F000101BEE00FF00FF00F7F7FD00FF00FF00FF00FF00FF00FF00FF00
      FF00080ECD00FF00FF001520D6000F1CF0000F1EF0001C1BE100403DEA004B67
      F7004964F600515CF500FF00FF00D6D5FB00FF00FF00FF00FF004F61E800FF00
      FF004B54E800E4DFED004750DE004760F6004861F6003331E900413EEB004A6D
      F7004C6AF6005965F600FF00FF00D6D4FB00FF00FF00FF00FF004A5CE600FF00
      FF006C78EE003A4EEC004A65F9004965F7004A64F6003432EB007E7AF30095B3
      FA005474F7007483F900FF00FF00D5D2F900FF00FF00FF00FF002430E300FF00
      FF006E7AED005170F7004F70F7004F6FF7005275F800807CF300FF00FF005152
      F1009AB3FA004E63F700ADA2F800D5D2FB00FF00FF00FF00FF002430E300FF00
      FF00717EED005373F7005373F700567AF8003C3EF000FF00FF00FF00FF00FF00
      FF007671F5009DB9FB005477F7009D90F400C6C1F600FF00FF002430E300FF00
      FF00404FE6005A7BF7005D82F8007873F600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF005354F5009DB8FB00496AF6004663F3006865EA003E48E8003546
      E9005A7EF8006084F7003E41F400FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF007F7BF9004642F5004642F5004642F5004642F5004642
      F5004642F500807BF900FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentFont = False
    TabOrder = 7
  end
  object DBComboBox5: TRzDBComboBox
    Left = 150
    Top = 8
    Width = 115
    Height = 22
    DataField = 'CARROCERIA'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Style = csOwnerDrawFixed
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'N'#195'O APLICAVEL'
      'ABERTA'
      'FECHADA / BA'#218
      'GRANELEIRA'
      'PORTA-CONT'#202'INER'
      'SIDER')
    Values.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
  end
  object DBEdit2: TDBEdit
    Left = 150
    Top = 70
    Width = 115
    Height = 24
    CharCase = ecUpperCase
    DataField = 'RENAVAN'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 2
  end
  object DBComboBox3: TRzDBComboBox
    Left = 356
    Top = 69
    Width = 45
    Height = 22
    DataField = 'UF_LICENCIAMENTO'
    DataSource = DM.DS_Mdfe_v_reboqueTable
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
  end
  object BitBtn1: TBitBtn
    Left = 126
    Top = 197
    Width = 86
    Height = 30
    Action = Action2
    Caption = 'Salvar'
    TabOrder = 6
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 440
    Top = 208
  end
  object ActionList1: TActionList
    Images = Frm_MDF.ImageList3
    Left = 360
    Top = 144
    object Action1: TAction
      Caption = '(F5)'
      ShortCut = 116
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Salvar'
      ImageIndex = 4
      ShortCut = 113
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = Action3Execute
    end
  end
end
