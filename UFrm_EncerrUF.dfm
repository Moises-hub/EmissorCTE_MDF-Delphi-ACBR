object Frm_EncerrUF: TFrm_EncerrUF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 139
  ClientWidth = 479
  Color = clBtnFace
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
  object Label6: TLabel
    Left = 32
    Top = 57
    Width = 17
    Height = 18
    Caption = 'UF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 57
    Width = 63
    Height = 18
    Caption = 'Mun'#237'cipio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    AlignWithMargins = True
    Left = 100
    Top = 10
    Width = 376
    Height = 18
    Margins.Left = 100
    Margins.Top = 10
    Align = alTop
    Alignment = taCenter
    Caption = 'DIGITE O LOCAL FINAL DO DESCARREGAMENTO'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitWidth = 363
  end
  object BitBtn1: TBitBtn
    Left = 285
    Top = 99
    Width = 86
    Height = 30
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 385
    Top = 99
    Width = 86
    Height = 30
    Caption = 'Cancelar'
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
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object RzComboBox1: TRzComboBox
    Left = 55
    Top = 57
    Width = 72
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    OnSelect = RzComboBox1Select
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
  object RzComboBox2: TRzComboBox
    Left = 203
    Top = 57
    Width = 268
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    OnEnter = RzComboBox2Enter
    Items.Strings = (
      'Selecione o Estado')
  end
  object CIDADE: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select CODIGO_IBGE, CIDADE from REGIOES  WHERE  UF =:UF and CODI' +
        'GO_IBGE is not null')
    Left = 176
    Top = 120
    ParamData = <
      item
        Name = 'UF'
        ParamType = ptInput
      end>
  end
  object DosMove1: TDosMove
    Active = True
    Options = []
    Left = 104
    Top = 120
  end
end
