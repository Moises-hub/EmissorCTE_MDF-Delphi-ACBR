object Frm_RelMDF_DT: TFrm_RelMDF_DT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Relat'#243'rio de MDF-e'
  ClientHeight = 238
  ClientWidth = 456
  Color = clWhite
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
  object RLReport1: TRLReport
    Left = -182
    Top = 92
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = True
    DataSource = DS_CD_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand3: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 61
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel5: TRLLabel
        Left = 18
        Top = 6
        Width = 256
        Height = 16
        Caption = 'Relat'#243'rio de MDF-e Emitido por Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 18
        Top = 26
        Width = 674
        Height = 32
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 578
        Top = 0
        Width = 140
        Height = 16
        Align = faRightTop
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Relat'#243'rio Emitido '
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 175
      Width = 718
      Height = 19
      object RLDBText3: TRLDBText
        Left = 578
        Top = -1
        Width = 56
        Height = 17
        AutoSize = False
        DataField = 'PLACA'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 180
        Top = 1
        Width = 381
        Height = 13
        Alignment = taCenter
        AutoSize = False
        DataField = 'CHAVE'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 143
        Top = 1
        Width = 31
        Height = 19
        Alignment = taCenter
        AutoSize = False
        DataField = 'NUMERO'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 6
        Top = 1
        Width = 66
        Height = 19
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 647
        Top = -1
        Width = 68
        Height = 17
        AutoSize = False
        DataField = 'STATUS'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 76
        Top = 1
        Width = 66
        Height = 19
        Alignment = taCenter
        AutoSize = False
        DataField = 'ENCERRAMENTO'
        DataSource = DS_CD_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 158
      Width = 718
      Height = 17
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel1: TRLLabel
        Left = 578
        Top = 1
        Width = 31
        Height = 14
        Caption = 'Placa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 351
        Top = 0
        Width = 37
        Height = 14
        Caption = 'Chave'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 144
        Top = 3
        Width = 14
        Height = 14
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 6
        Top = 1
        Width = 42
        Height = 14
        Caption = 'D Envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 647
        Top = 1
        Width = 38
        Height = 14
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 76
        Top = -1
        Width = 47
        Height = 14
        Caption = 'D Encer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLDBText1: TRLDBText
        Left = 288
        Top = 18
        Width = 142
        Height = 22
        Align = faCenter
        Alignment = taCenter
        DataField = 'NOME_EMPRESA'
        DataSource = DM.DS_Emitente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLImage1: TRLImage
        Left = 19
        Top = 7
        Width = 40
        Height = 45
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 194
      Width = 718
      Height = 32
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 13
        Width = 214
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Info = itDetailCount
        ParentFont = False
        Text = '# Registros encontrados'
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 664
        Top = 6
        Width = 38
        Height = 15
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Info = itPageNumber
        Layout = tlJustify
        ParentFont = False
        Text = ''
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 456
    Height = 238
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStart = clHotLight
    GradientColorStop = clMenuHighlight
    TabOrder = 1
    VisualStyle = vsGradient
    object GroupBox1: TGroupBox
      Left = 27
      Top = 16
      Width = 401
      Height = 193
      Align = alCustom
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 34
        Width = 37
        Height = 16
        Caption = 'Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 199
        Top = 34
        Width = 28
        Height = 16
        Caption = 'Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 199
        Top = 91
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 23
        Top = 92
        Width = 31
        Height = 16
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzDateTimeEdit1: TRzDateTimeEdit
        Left = 24
        Top = 56
        Width = 143
        Height = 21
        EditType = etDate
        TabOrder = 0
      end
      object RzDateTimeEdit2: TRzDateTimeEdit
        Left = 200
        Top = 56
        Width = 152
        Height = 21
        EditType = etDate
        TabOrder = 1
      end
      object RzComboBox1: TRzComboBox
        Left = 248
        Top = 84
        Width = 104
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'Todos'
        Items.Strings = (
          'Em Edi'#231#227'o'
          'n'#227'o Encerrado'
          'Encerrado'
          'Cancelado'
          'Todos')
        ItemIndex = 4
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
      end
      object Button1: TButton
        Left = 223
        Top = 128
        Width = 129
        Height = 45
        Cursor = crHandPoint
        Caption = 'Filtrar / Imprimir'
        ImageIndex = 30
        Images = Frm_Principal.ImageList1
        TabOrder = 3
        OnClick = Button1Click
      end
      object RzComboBox2: TRzComboBox
        Left = 63
        Top = 91
        Width = 104
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'Emiss'#227'o'
        Items.Strings = (
          'Emiss'#227'o'
          'Envio'
          'Encerramento')
        ItemIndex = 0
        Values.Strings = (
          'mdfe_dados.data'
          'cast(mdfe_dados.mdf_d_envio as date)'
          'cast(mdfe_dados.d_encerra as date)')
      end
    end
  end
  object Mdfe_dadosTable: TSQLDataSet
    CommandText = 
      'select'#13#10'   mdfe_dados.numero,'#13#10'  mdfe_dados.serie,'#13#10'    mdfe_dad' +
      'os.data as emissao,'#13#10'    cast(mdfe_dados.mdf_d_envio as date) as' +
      ' envio,'#13#10'    cast(mdfe_dados.d_encerra as date) as encerramento,' +
      #13#10'    mdfe_dados.chave,'#13#10'    (case mdfe_dados.status when 0 then' +
      ' '#39'Em Edi'#231#227'o'#39#13#10'                            when 1 then '#39'Ativo'#39#13#10' ' +
      '                           when 2 then '#39'Encerrado'#39#13#10'            ' +
      '                when 3 then '#39'cancelado'#39#13#10'                       ' +
      '     end'#13#10'    )as status,'#13#10'    mdfe_dados.vei_placa as placa,'#13#10' ' +
      '   clientes.nome as tomador'#13#10'    from mdfe_dados'#13#10'    left join ' +
      'clientes on(clientes.cpf_cnpj = mdfe_dados.cnpj_tomador)'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DM.MdfeConnection
    Left = 444
    Top = 19
  end
  object Prov_dadosTable: TDataSetProvider
    DataSet = Mdfe_dadosTable
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 551
    Top = 40
  end
  object CD_Mdf_Dados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_dadosTable'
    Left = 553
    Top = 96
    object CD_Mdf_DadosEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CD_Mdf_DadosENVIO: TDateField
      FieldName = 'ENVIO'
    end
    object CD_Mdf_DadosENCERRAMENTO: TDateField
      FieldName = 'ENCERRAMENTO'
    end
    object CD_Mdf_DadosCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 80
    end
    object CD_Mdf_DadosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object CD_Mdf_DadosPLACA: TStringField
      FieldName = 'PLACA'
      Size = 9
    end
    object CD_Mdf_DadosTOMADOR: TStringField
      FieldName = 'TOMADOR'
      Size = 70
    end
    object CD_Mdf_DadosNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CD_Mdf_DadosSERIE: TIntegerField
      FieldName = 'SERIE'
    end
  end
  object DS_CD_Dados: TDataSource
    DataSet = CD_Mdf_Dados
    Left = 751
    Top = 32
  end
end
