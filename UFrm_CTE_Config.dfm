object Frm_CTE_Config: TFrm_CTE_Config
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'InfoTransporte'
  ClientHeight = 543
  ClientWidth = 638
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 41
    Align = alTop
    Color = clNavy
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 49
      Height = 39
      Align = alLeft
      Proportional = True
    end
    object Label11: TLabel
      Left = 50
      Top = 1
      Width = 587
      Height = 39
      Align = alClient
      Caption = 'CTE Configura'#231#245'es'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Agency FB'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 158
      ExplicitHeight = 34
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 638
    Height = 233
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 299
      Top = 184
      Width = 139
      Height = 13
      Caption = 'Tipo de Impress'#227'o do DACTE'
    end
    object Label5: TLabel
      Left = 465
      Top = 184
      Width = 123
      Height = 13
      Caption = 'Forma de Emiss'#227'o do CTE'
    end
    object Label6: TLabel
      Left = 9
      Top = 96
      Width = 41
      Height = 13
      Caption = 'Logotipo'
    end
    object Label10: TLabel
      Left = 162
      Top = 184
      Width = 99
      Height = 13
      Caption = 'Ambiente de Destino'
    end
    object sbtnCaminhoCert: TSpeedButton
      Left = 584
      Top = 67
      Width = 23
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      OnClick = sbtnCaminhoCertClick
    end
    object Label7: TLabel
      Left = 8
      Top = 183
      Width = 128
      Height = 13
      Caption = 'UF da SEFAZ-Autorizadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 136
      Width = 106
      Height = 13
      Caption = 'Caminho dos Arquivos'
    end
    object Label9: TLabel
      Left = 9
      Top = 52
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEdit1
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 636
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      object Label3: TLabel
        Left = 248
        Top = 10
        Width = 60
        Height = 13
        Caption = 'Raz'#227'o Social'
      end
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 25
        Height = 13
        Caption = 'CNPJ'
        FocusControl = edtEmitCNPJ
      end
      object edtEmitCNPJ: TDBEdit
        Left = 7
        Top = 26
        Width = 230
        Height = 21
        DataField = 'CNPJ'
        DataSource = DM.DS_Emitente
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 246
        Top = 26
        Width = 362
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RAZAO_SOCIAL'
        DataSource = DM.DS_Emitente
        TabOrder = 1
      end
    end
    object Button1: TButton
      Left = 584
      Top = 110
      Width = 25
      Height = 24
      Caption = '...'
      Images = Frm_Principal.ImageList1
      TabOrder = 1
      OnClick = Button1Click
    end
    object Panel5: TPanel
      Left = 247
      Top = 54
      Width = 340
      Height = 41
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 2
      object Label4: TLabel
        Left = 2
        Top = -3
        Width = 181
        Height = 13
        Caption = 'N'#250'mero de S'#233'rie do Certificado Digital'
      end
      object DBEdit2: TDBEdit
        Left = 0
        Top = 14
        Width = 336
        Height = 21
        DataField = 'CERTIFICADO'
        DataSource = CDM.DS_CTE_CONFIG
        TabOrder = 0
      end
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 68
      Width = 230
      Height = 21
      DataField = 'IE'
      DataSource = DM.DS_Emitente
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 111
      Width = 575
      Height = 21
      DataField = 'LOGO'
      DataSource = CDM.DS_CTE_CONFIG
      TabOrder = 4
    end
    object Button2: TButton
      Left = 584
      Top = 150
      Width = 25
      Height = 24
      Caption = '...'
      Images = Frm_Principal.ImageList1
      TabOrder = 5
      OnClick = Button2Click
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 151
      Width = 575
      Height = 21
      DataField = 'PATCH'
      DataSource = CDM.DS_CTE_CONFIG
      TabOrder = 6
    end
    object RzDBComboBox2: TRzDBComboBox
      Left = 159
      Top = 200
      Width = 134
      Height = 21
      DataField = 'AMBIENTE'
      DataSource = CDM.DS_CTE_CONFIG
      TabOrder = 7
      Items.Strings = (
        'Homologa'#231#227'o'
        'Produ'#231#227'o')
      Values.Strings = (
        '1'
        '2')
    end
    object RzDBComboBox3: TRzDBComboBox
      Left = 299
      Top = 200
      Width = 160
      Height = 21
      DataField = 'MODODACTE'
      DataSource = CDM.DS_CTE_CONFIG
      TabOrder = 8
      Items.Strings = (
        'Retrato'
        'Paisagem')
      Values.Strings = (
        '0'
        '1')
    end
    object RzDBComboBox4: TRzDBComboBox
      Left = 465
      Top = 200
      Width = 145
      Height = 21
      DataField = 'FORMAEMISSAO'
      DataSource = CDM.DS_CTE_CONFIG
      TabOrder = 9
      Items.Strings = (
        'Normal'
        'Contig'#234'ncia')
      Values.Strings = (
        '0'
        '1')
    end
    object cbUF: TRzDBComboBox
      Left = 9
      Top = 200
      Width = 141
      Height = 21
      DataField = 'UF'
      DataSource = CDM.DS_CTE_CONFIG
      Style = csDropDownList
      TabOrder = 10
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
        '12'
        '27'
        '16'
        '13'
        '29'
        '23'
        '53'
        '32'
        '52'
        '21'
        '51'
        '50'
        '31'
        '15'
        '25'
        '41'
        '26'
        '22'
        '14'
        '11'
        '33'
        '24'
        '43'
        '42'
        '35'
        '28'
        '17')
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 274
    Width = 638
    Height = 120
    Align = alTop
    TabOrder = 2
    object btnImprimir: TButton
      Left = 400
      Top = 9
      Width = 177
      Height = 29
      Caption = 'Imprimir Inutiliza'#231#227'o'
      TabOrder = 2
      OnClick = btnImprimirClick
    end
    object btnStatusServ: TButton
      Left = 34
      Top = 9
      Width = 177
      Height = 29
      Caption = 'Status Servi'#231'o'
      TabOrder = 0
      OnClick = btnStatusServClick
    end
    object btnCancelamento: TButton
      Left = 400
      Top = 71
      Width = 177
      Height = 29
      Caption = 'Cancelamento'
      TabOrder = 3
      OnClick = btnCancelamentoClick
    end
    object btnCriarEnviar: TButton
      Left = 34
      Top = 40
      Width = 177
      Height = 29
      Caption = 'Sequencia N'#250'merica'
      TabOrder = 1
      OnClick = btnCriarEnviarClick
    end
    object btnConsultarChave: TButton
      Left = 217
      Top = 40
      Width = 177
      Height = 29
      Caption = 'Consultar pela Chave'
      TabOrder = 4
      OnClick = btnConsultarChaveClick
    end
    object btnInutilizar: TButton
      Left = 217
      Top = 9
      Width = 177
      Height = 29
      Caption = 'Inutilizar Numera'#231#227'o'
      TabOrder = 5
      OnClick = btnInutilizarClick
    end
    object btnValidarXML: TButton
      Left = 34
      Top = 71
      Width = 177
      Height = 29
      Caption = 'Validar XML'
      TabOrder = 6
      OnClick = btnValidarXMLClick
    end
    object btnImportarXML: TButton
      Left = 217
      Top = 71
      Width = 177
      Height = 29
      Caption = 'Enviar Por E-Mail'
      TabOrder = 7
      OnClick = btnImportarXMLClick
    end
    object Button3: TButton
      Left = 400
      Top = 40
      Width = 177
      Height = 29
      Caption = 'Imprimir DACTe'
      TabOrder = 8
      OnClick = Button3Click
    end
    object mmEmailMsg: TMemo
      Left = 784
      Top = 104
      Width = 185
      Height = 89
      Lines.Strings = (
        'Segue o Conhecimento de '
        'Transporte em Anexo')
      TabOrder = 9
      Visible = False
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 394
    Width = 638
    Height = 149
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 3
    object TabSheet5: TTabSheet
      Caption = 'Respostas'
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 630
        Height = 121
        Align = alClient
        TabOrder = 0
        ExplicitTop = -3
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Retorno Completo WS'
      ImageIndex = 4
      object memoRespWS: TMemo
        Left = 0
        Top = 0
        Width = 630
        Height = 121
        Align = alClient
        TabOrder = 0
      end
    end
    object Dados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 5
      object MemoDados: TMemo
        Left = 0
        Top = 0
        Width = 630
        Height = 121
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 392
    Top = 177
  end
  object ACBrCTeDACTeRL1: TACBrCTeDACTeRL
    PathPDF = 'C:\'
    Sistema = 'Coliseu Transportes   - (67)3423-2227-coliseusistemas.com.br'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrCTE = ACBrCTe1
    ImprimirHoraSaida = False
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    ExibeResumoCanhoto = False
    EPECEnviado = False
    ImprimeDescPorc = False
    PrintDialog = True
    Left = 343
    Top = 234
  end
  object SaveDialog1: TSaveDialog
    FileName = 'CTE'
    Left = 304
    Top = 193
  end
  object ACBrCTe1: TACBrCTe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.PathSalvar = 'C:\ZettaBrasil\DeltaCTe\XMLRet\'
    Configuracoes.Arquivos.PathSchemas = 'D:\Componentes\DelphiXE3\ACBR\Exemplos\ACBrDFe\Schemas\CTe\'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.PathCTe = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.Arquivos.PathInu = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.Arquivos.PathEvento = 'C:\ZettaBrasil\DeltaCTe\XMLRet'
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_2
    Configuracoes.RespTec.IdCSRT = 0
    DACTE = ACBrCTeDACTeRL1
    Left = 234
    Top = 222
  end
end
