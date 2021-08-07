object Frm_NotaFiscal_A: TFrm_NotaFiscal_A
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Nota Fiscal Avulsa'
  ClientHeight = 379
  ClientWidth = 576
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
  object RzSpacer1: TRzSpacer
    Left = 0
    Top = 0
    Width = 576
    Height = 17
    Align = alTop
    ExplicitWidth = 583
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 58
    Width = 576
    Height = 111
    Align = alTop
    Caption = 'Dados'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clBlue
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    TabOrder = 0
    Transparent = True
    VisualStyle = vsGradient
    object Label11: TLabel
      Left = 52
      Top = 25
      Width = 46
      Height = 13
      Caption = 'MODELO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 166
      Top = 57
      Width = 47
      Height = 13
      Caption = 'N'#218'MERO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 286
      Top = 57
      Width = 51
      Height = 13
      Caption = 'EMISS'#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 423
      Top = 56
      Width = 28
      Height = 13
      Caption = 'CFOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 96
      Top = 57
      Width = 32
      Height = 13
      Caption = 'S'#201'RIE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 100
      Top = 22
      Width = 123
      Height = 21
      DataField = 'MODELO_NF'
      DataSource = CDM.DS_CTENFE
      TabOrder = 0
      Items.Strings = (
        'NF Modelo 01/1A e Avulsa'
        'NF de Produtor')
    end
    object DBEdit1: TDBEdit
      Left = 166
      Top = 73
      Width = 112
      Height = 21
      DataField = 'NUMERO'
      DataSource = CDM.DS_CTENFE
      MaxLength = 10
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 286
      Top = 73
      Width = 131
      Height = 21
      DataField = 'EMISSAO'
      DataSource = CDM.DS_CTENFE
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 75
      Width = 62
      Height = 21
      DataField = 'SERIE'
      DataSource = CDM.DS_CTENFE
      MaxLength = 10
      TabOrder = 1
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 424
      Top = 72
      Width = 82
      Height = 21
      DataField = 'CFOP'
      DataSource = CDM.DS_CTENFE
      TabOrder = 4
      Items.Strings = (
        '1000'
        '1100'
        '1101'
        '1102'
        '1111'
        '1113'
        '1116'
        '1117'
        '1118'
        '1120'
        '1121'
        '1122'
        '1124'
        '1125'
        '1126'
        '1150'
        '1151'
        '1152'
        '1153'
        '1154'
        '1200'
        '1201'
        '1202'
        '1203'
        '1204'
        '1205'
        '1206'
        '1207'
        '1208'
        '1209'
        '1250'
        '1251'
        '1252'
        '1253'
        '1254'
        '1255'
        '1256'
        '1257'
        '1300'
        '1301'
        '1302'
        '1303'
        '1304'
        '1305'
        '1306'
        '1350'
        '1351'
        '1352'
        '1353'
        '1354'
        '1355'
        '1356'
        '1400'
        '1401'
        '1403'
        '1406'
        '1407'
        '1408'
        '1409'
        '1410'
        '1411'
        '1414'
        '1415'
        '1450'
        '1451'
        '1452'
        '1500'
        '1501'
        '1503'
        '1504'
        '1550'
        '1551'
        '1552'
        '1553'
        '1554'
        '1555'
        '1556'
        '1557'
        '1600'
        '1601'
        '1602'
        '1603'
        '1900'
        '1901'
        '1902'
        '1903'
        '1904'
        '1905'
        '1906'
        '1907'
        '1908'
        '1909'
        '1910'
        '1911'
        '1912'
        '1913'
        '1914'
        '1915'
        '1916'
        '1917'
        '1918'
        '1919'
        '1920'
        '1921'
        '1922'
        '1923'
        '1924'
        '1925'
        '1926'
        '1949'
        '2000'
        '2100'
        '2101'
        '2102'
        '2111'
        '2113'
        '2116'
        '2117'
        '2118'
        '2120'
        '2121'
        '2122'
        '2124'
        '2125'
        '2126'
        '2150'
        '2151'
        '2152'
        '2153'
        '2154'
        '2200'
        '2201'
        '2202'
        '2203'
        '2204'
        '2205'
        '2206'
        '2207'
        '2208'
        '2209'
        '2250'
        '2251'
        '2252'
        '2253'
        '2254'
        '2255'
        '2256'
        '2257'
        '2300'
        '2301'
        '2302'
        '2303'
        '2304'
        '2305'
        '2306'
        '2350'
        '2351'
        '2352'
        '2353'
        '2354'
        '2355'
        '2356'
        '2400'
        '2401'
        '2403'
        '2406'
        '2407'
        '2408'
        '2409'
        '2410'
        '2411'
        '2414'
        '2415'
        '2500'
        '2501'
        '2503'
        '2504'
        '2550'
        '2551'
        '2552'
        '2553'
        '2554'
        '2555'
        '2556'
        '2557'
        '2600'
        '2603'
        '2900'
        '2901'
        '2902'
        '2903'
        '2904'
        '2905'
        '2906'
        '2907'
        '2908'
        '2909'
        '2910'
        '2911'
        '2912'
        '2913'
        '2914'
        '2915'
        '2916'
        '2917'
        '2918'
        '2919'
        '2920'
        '2921'
        '2922'
        '2923'
        '2924'
        '2925'
        '2949'
        '3000'
        '3100'
        '3101'
        '3102'
        '3126'
        '3127'
        '3200'
        '3201'
        '3202'
        '3205'
        '3206'
        '3207'
        '3211'
        '3250'
        '3251'
        '3300'
        '3301'
        '3350'
        '3351'
        '3352'
        '3353'
        '3354'
        '3355'
        '3356'
        '3500'
        '3503'
        '3550'
        '3551'
        '3553'
        '3556'
        '3900'
        '3930'
        '3949'
        '5000'
        '5100'
        '5101'
        '5102'
        '5103'
        '5104'
        '5105'
        '5106'
        '5109'
        '5110'
        '5111'
        '5112'
        '5113'
        '5114'
        '5115'
        '5116'
        '5117'
        '5118'
        '5119'
        '5120'
        '5122'
        '5123'
        '5124'
        '5125'
        '5150'
        '5151'
        '5152'
        '5153'
        '5155'
        '5156'
        '5200'
        '5201'
        '5202'
        '5205'
        '5206'
        '5207'
        '5208'
        '5209'
        '5210'
        '5250'
        '5251'
        '5252'
        '5253'
        '5254'
        '5255'
        '5256'
        '5257'
        '5258'
        '5300'
        '5301'
        '5302'
        '5303'
        '5304'
        '5305'
        '5306'
        '5307'
        '5350'
        '5351'
        '5352'
        '5353'
        '5354'
        '5355'
        '5356'
        '5357'
        '5400'
        '5401'
        '5402'
        '5403'
        '5405'
        '5408'
        '5409'
        '5410'
        '5411'
        '5412'
        '5413'
        '5414'
        '5415'
        '5450'
        '5451'
        '5500'
        '5501'
        '5502'
        '5503'
        '5550'
        '5551'
        '5552'
        '5553'
        '5554'
        '5555'
        '5556'
        '5557'
        '5600'
        '5601'
        '5602'
        '5603'
        '5900'
        '5901'
        '5902'
        '5903'
        '5904'
        '5905'
        '5906'
        '5907'
        '5908'
        '5909'
        '5910'
        '5911'
        '5912'
        '5913'
        '5914'
        '5915'
        '5916'
        '5917'
        '5918'
        '5919'
        '5920'
        '5921'
        '5922'
        '5923'
        '5924'
        '5925'
        '5926'
        '5927'
        '5928'
        '5929'
        '5931'
        '5932'
        '5949'
        '6000'
        '6100'
        '6101'
        '6102'
        '6103'
        '6104'
        '6105'
        '6106'
        '6107'
        '6108'
        '6109'
        '6110'
        '6111'
        '6112'
        '6113'
        '6114'
        '6115'
        '6116'
        '6117'
        '6118'
        '6119'
        '6120'
        '6122'
        '6123'
        '6124'
        '6125'
        '6150'
        '6151'
        '6152'
        '6153'
        '6155'
        '6156'
        '6200'
        '6201'
        '6202'
        '6205'
        '6206'
        '6207'
        '6208'
        '6209'
        '6210'
        '6250'
        '6251'
        '6252'
        '6253'
        '6254'
        '6255'
        '6256'
        '6257'
        '6258'
        '6300'
        '6301'
        '6302'
        '6303'
        '6304'
        '6305'
        '6306'
        '6307'
        '6350'
        '6351'
        '6352'
        '6353'
        '6354'
        '6355'
        '6356'
        '6357'
        '6400'
        '6401'
        '6402'
        '6403'
        '6404'
        '6408'
        '6409'
        '6410'
        '6411'
        '6412'
        '6413'
        '6414'
        '6415'
        '6500'
        '6501'
        '6502'
        '6503'
        '6550'
        '6551'
        '6552'
        '6553'
        '6554'
        '6555'
        '6556'
        '6557'
        '6600'
        '6603'
        '6900'
        '6901'
        '6902'
        '6903'
        '6904'
        '6905'
        '6906'
        '6907'
        '6908'
        '6909'
        '6910'
        '6911'
        '6912'
        '6913'
        '6914'
        '6915'
        '6916'
        '6917'
        '6918'
        '6919'
        '6920'
        '6921'
        '6922'
        '6923'
        '6924'
        '6925'
        '6929'
        '6931'
        '6932'
        '6949'
        '7000'
        '7100'
        '7101'
        '7102'
        '7105'
        '7106'
        '7127'
        '7200'
        '7201'
        '7202'
        '7205'
        '7206'
        '7207'
        '7210'
        '7211'
        '7250'
        '7251'
        '7300'
        '7301'
        '7350'
        '7358'
        '7500'
        '7501'
        '7550'
        '7551'
        '7553'
        '7556'
        '7900'
        '7930'
        '7949'
        '5124'
        '5902'
        '5667'
        '6667'
        '7667'
        '1653'
        '2653'
        '1933'
        '2933')
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 0
    Top = 169
    Width = 576
    Height = 155
    Align = alClient
    Caption = 'Valores'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clBlue
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    TabOrder = 1
    Transparent = True
    VisualStyle = vsGradient
    ExplicitHeight = 154
    object Label9: TLabel
      Left = 96
      Top = 28
      Width = 127
      Height = 13
      Caption = 'VALOR DOS PRODUTOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 243
      Top = 28
      Width = 121
      Height = 13
      Caption = 'BASE_CALCULO_ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 385
      Top = 28
      Width = 73
      Height = 13
      Caption = 'VALOR_ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 93
      Top = 83
      Width = 143
      Height = 13
      Caption = 'BASE_CALCULO_SUBICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 245
      Top = 83
      Width = 91
      Height = 13
      Caption = 'VALOR SUBICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 385
      Top = 83
      Width = 89
      Height = 13
      Caption = 'VALOR DA NOTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit4: TDBEdit
      Left = 97
      Top = 44
      Width = 121
      Height = 21
      DataField = 'VALOR_DOS_PRODUTOS'
      DataSource = CDM.DS_CTENFE
      MaxLength = 10
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 385
      Top = 43
      Width = 121
      Height = 21
      DataField = 'VALOR_ICMS'
      DataSource = CDM.DS_CTENFE
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 243
      Top = 44
      Width = 121
      Height = 21
      DataField = 'BASE_CALCULO_ICMS'
      DataSource = CDM.DS_CTENFE
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 97
      Top = 102
      Width = 121
      Height = 21
      DataField = 'BASE_CALCULO_SUBICMS'
      DataSource = CDM.DS_CTENFE
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 245
      Top = 102
      Width = 121
      Height = 21
      DataField = 'VALOR_SUBICMS'
      DataSource = CDM.DS_CTENFE
      TabOrder = 4
    end
    object DBEdit9: TDBEdit
      Left = 385
      Top = 102
      Width = 121
      Height = 21
      DataField = 'VALOR_DA_NOTA'
      DataSource = CDM.DS_CTENFE
      TabOrder = 5
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 17
    Width = 576
    Height = 41
    Align = alTop
    BorderOuter = fsNone
    Color = clNavy
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 181
      Height = 19
      Caption = 'NOTA FISCAL AVULSA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 324
    Width = 576
    Height = 55
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 3
    VisualStyle = vsGradient
    ExplicitTop = 535
    object BitBtn1: TBitBtn
      Left = 328
      Top = 6
      Width = 86
      Height = 31
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00AB59
        1600FF00FF00B06B2A00B06B2A00B06B2A00B06B2A00B06B2A00B06B2A00B06B
        2A00B06B2A00B06B2A00B06B2A00FF00FF00AC5B1800AC5B1800BC722800E399
        1600908F9D00DBDAD800DEDCDB00DFDEDD00E0DFDD00E1E0DF00E2E1DF00E3E2
        E100E4E3E100E5E3E200E1E0DE00908F9D00E49C1D00B6681C00BD762D00E49B
        1E009594A100AFA4A6009A898E0087777F007F7175006D5F660064575F005548
        4E004E4249003C3239005F555B009594A100E59E2500BA6B2000C37A3100E6A3
        2B009F9DAA00DCDADA00D9D8D700D8D7D600D8D5D600D6D4D300D6D2D300D4D1
        D100D3D1D000D0CDCE00D3D2D1009F9DAA00E7A63100BE702600C57F3500E7A7
        3200A4A2AF00B2A8AA0097878B0085757D007D6F73006C5D630062555D005346
        4C004C3F4700392F360062565D00A4A2AF00E9AA3900C0732700C9853900EBAE
        3E00ACAAB800F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F8F7F700F8F7
        F700F8F7F700F8F7F700F8F7F700ACAAB800ECB14300C67B2C00CB893900ECB2
        4400B2AFBD00C7C0C200B3A9AB00A79D9F00A0999B00968B90008F858B00847A
        800080737B0070686D00928B8E00B2AFBD00EDB54900C87D2E00D0904000EEBA
        5000A6A6B500FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFF
        FF00FEFFFF00FEFFFF00FEFFFF00A6A6B500EFBC5600CD883300D2944200F0BF
        5C00B8926900977B6700977B6500977B6500977B6500977B6500977B6500977B
        6500977B6500977B6500977B6700B8926900F0C16300CF8A3500D69A4700EFC3
        6700F0C56C00A29EAA00D8D8D900D4D3D500D4D3D500D4D3D500D4D3D500D7D6
        D700D7D7D800D8D9DA00A29EAB00F0C56C00F0C56C00D4933A00D99D4900F0C6
        6C00F0C77100ACA9B400DBD9D800D8D6D500D8D6D500D8D6D500D8D6D500BAB7
        B900BAB8BC00D1D0D000AFADB500F0C77100F0C77100D8973C00DEA64E00F1CB
        7400F2CD7900B8B4BF00E4E3E200E1E0DF00E1E0DF00E1E0DF00E1E0DF00A380
        5200FFD97F00918F9B00C0BDC500F2CD7900F2CD7900DC9F4200E0A95100F3CD
        7900F4CE7D00BCB9C400E8E7E600E5E4E300E5E4E300E5E4E300E5E4E3009F7E
        5400FBD5800096949C00C3C0CB00F4CE7D00F4CE7D00DFA14400E4AF5400F4D3
        7D00F5D48300C8C5CD00F0F0EF00EDEDEC00EDEDEC00EDEDEC00EDEDEC008369
        4A00DCB871009E9BA100CCCAD400F5D58400F7D98B00E4AB5A00E6B35900F6D9
        8D00F5D48000CBC8D000F4F4F300F1F1F000F1F1F000F1F1F000F1F1F0009D9A
        A000A09EA500D5D3D400CECBD300F8DA8D00E8B65600FFFFFF00E5A94200EBBB
        5C00EBBA5C00E7BB6900E7BB6900EABE6B00EABE6B00EABE6B00EABE6B00EABE
        6B00EABE6B00E7BB6900E0AF5D00EAB65E00FFFFFF00FFFFFF00}
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 420
      Top = 6
      Width = 86
      Height = 31
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
