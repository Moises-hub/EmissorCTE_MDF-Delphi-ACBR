object Frm_RelCTE_dt: TFrm_RelCTE_dt
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 183
  ClientWidth = 386
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 386
    Height = 183
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 375
    ExplicitHeight = 190
    object Label1: TLabel
      Left = 24
      Top = 34
      Width = 37
      Height = 16
      Caption = 'Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
      Font.Color = clBlack
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
    object RzBitBtn1: TRzBitBtn
      Left = 240
      Top = 104
      Width = 109
      Height = 33
      Caption = 'Filtrar / Imprimir'
      HotTrack = True
      TabOrder = 2
      ThemeAware = False
      OnClick = RzBitBtn1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 96
      Width = 185
      Height = 41
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Resumido'
        'Detalhado')
      TabOrder = 3
    end
    object RLReport1: TRLReport
      Left = 952
      Top = 104
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataSource = DS_CTE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand3: TRLBand
        Left = 39
        Top = 97
        Width = 716
        Height = 61
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel5: TRLLabel
          Left = 18
          Top = 6
          Width = 239
          Height = 16
          Caption = 'Relat'#243'rio de CTe Emitido por Per'#237'odo'
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
      end
      object RLBand2: TRLBand
        Left = 39
        Top = 38
        Width = 716
        Height = 59
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText1: TRLDBText
          Left = 287
          Top = 19
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
          Stretch = True
          Visible = False
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 576
          Top = 1
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
      object RLBand4: TRLBand
        Left = 39
        Top = 338
        Width = 716
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
      object RLGroup1: TRLGroup
        Left = 39
        Top = 158
        Width = 716
        Height = 180
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataFields = 'ID'
        object RLBand1: TRLBand
          Left = 0
          Top = 0
          Width = 716
          Height = 135
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel1: TRLLabel
            Left = 8
            Top = 3
            Width = 53
            Height = 12
            Caption = 'EMISS'#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 185
            Top = 3
            Width = 15
            Height = 12
            Caption = 'N'#186
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 332
            Top = 3
            Width = 72
            Height = 12
            Caption = 'INICIO ROTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 482
            Top = 46
            Width = 81
            Height = 14
            Caption = 'DESTINAT'#193'RIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 256
            Top = 46
            Width = 69
            Height = 14
            Caption = 'REMETENTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 3
            Top = 85
            Width = 65
            Height = 14
            Caption = 'RECEBEDOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel8: TRLLabel
            Left = 256
            Top = 85
            Width = 67
            Height = 14
            Caption = 'EXPEDITOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel9: TRLLabel
            Left = 5
            Top = 46
            Width = 58
            Height = 14
            Caption = 'TOMADOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 535
            Top = 3
            Width = 57
            Height = 12
            Caption = 'FIM ROTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 8
            Top = 20
            Width = 84
            Height = 14
            DataField = 'DATA_EMISSAO'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText3: TRLDBText
            Left = 185
            Top = 20
            Width = 47
            Height = 14
            DataField = 'NUMCTE'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText4: TRLDBText
            Left = 333
            Top = 20
            Width = 37
            Height = 14
            DataField = 'INICIO'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText5: TRLDBText
            Left = 533
            Top = 20
            Width = 23
            Height = 14
            DataField = 'FIM'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 5
            Top = 63
            Width = 248
            Height = 16
            AutoSize = False
            DataField = 'TOMADOR'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 256
            Top = 63
            Width = 222
            Height = 16
            AutoSize = False
            DataField = 'REMETENTE'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 483
            Top = 63
            Width = 225
            Height = 16
            AutoSize = False
            DataField = 'DEST_NOME'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 3
            Top = 102
            Width = 251
            Height = 16
            AutoSize = False
            DataField = 'REC_NOME'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText10: TRLDBText
            Left = 256
            Top = 102
            Width = 224
            Height = 16
            AutoSize = False
            DataField = 'EXP_NOME'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText12: TRLDBText
            Left = 485
            Top = 102
            Width = 225
            Height = 16
            AutoSize = False
            DataField = 'VALOR_RECEBER'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLLabel13: TRLLabel
            Left = 484
            Top = 85
            Width = 41
            Height = 14
            Caption = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 135
          Width = 716
          Height = 27
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel10: TRLLabel
            Left = 3
            Top = 6
            Width = 68
            Height = 14
            Caption = 'MOTORISTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText11: TRLDBText
            Left = 79
            Top = 6
            Width = 611
            Height = 16
            AutoSize = False
            DataField = 'MOTORISTA'
            DataSource = DS_CTE
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 162
          Width = 716
          Height = 20
          BandType = btColumnFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Color = clWhite
          Color = clWhite
          ParentColor = False
          Transparent = False
        end
      end
    end
    object RLReport2: TRLReport
      Left = 576
      Top = 122
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataSource = DS_CTE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Visible = False
      object RLBand7: TRLBand
        Left = 39
        Top = 95
        Width = 716
        Height = 34
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel14: TRLLabel
          Left = 18
          Top = 3
          Width = 239
          Height = 16
          Caption = 'Relat'#243'rio de CTe Emitido por Per'#237'odo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 18
          Top = 18
          Width = 674
          Height = 20
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 39
        Top = 38
        Width = 716
        Height = 57
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDBText13: TRLDBText
          Left = 287
          Top = 25
          Width = 142
          Height = 22
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
        object RLSystemInfo2: TRLSystemInfo
          Left = 576
          Top = 1
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
      object RLBand9: TRLBand
        Left = 39
        Top = 220
        Width = 716
        Height = 20
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo6: TRLSystemInfo
          Left = 664
          Top = 3
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
      object RLBand13: TRLBand
        Left = 39
        Top = 204
        Width = 716
        Height = 16
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel21: TRLLabel
          Left = 598
          Top = 1
          Width = 59
          Height = 14
          Align = faRight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 657
          Top = 1
          Width = 59
          Height = 14
          Align = faRight
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 39
        Top = 129
        Width = 716
        Height = 75
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel16: TRLLabel
          Left = 8
          Top = 3
          Width = 53
          Height = 12
          Caption = 'EMISS'#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 185
          Top = 3
          Width = 15
          Height = 12
          Caption = 'N'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 332
          Top = 3
          Width = 72
          Height = 12
          Caption = 'INICIO ROTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 8
          Top = 35
          Width = 81
          Height = 14
          Caption = 'DESTINAT'#193'RIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 8
          Top = 18
          Width = 69
          Height = 14
          Caption = 'REMETENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 525
          Top = 3
          Width = 57
          Height = 12
          Caption = 'FIM ROTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 67
          Top = 2
          Width = 84
          Height = 14
          DataField = 'DATA_EMISSAO'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 204
          Top = 2
          Width = 47
          Height = 14
          DataField = 'NUMCTE'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 406
          Top = 2
          Width = 37
          Height = 14
          DataField = 'INICIO'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 588
          Top = 2
          Width = 23
          Height = 14
          DataField = 'FIM'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 83
          Top = 18
          Width = 350
          Height = 16
          AutoSize = False
          DataField = 'REMETENTE'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 95
          Top = 35
          Width = 338
          Height = 16
          AutoSize = False
          DataField = 'DEST_NOME'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 523
          Top = 24
          Width = 134
          Height = 19
          AutoSize = False
          DataField = 'VALOR_RECEBER'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel25: TRLLabel
          Left = 476
          Top = 23
          Width = 41
          Height = 14
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 79
          Top = 53
          Width = 611
          Height = 16
          AutoSize = False
          DataField = 'MOTORISTA'
          DataSource = DS_CTE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel26: TRLLabel
          Left = 8
          Top = 53
          Width = 68
          Height = 14
          Caption = 'MOTORISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object SQL_CTE: TSQLDataSet
    CommandText = 
      'select'#13#10'  CTE_DADOS.id,'#13#10'  CTE_DADOS.numcte,'#13#10'  CTE_DADOS.data_e' +
      'missao,'#13#10'  cte_dados.inicidade||'#39'-'#39'||cte_dados.iniuf inicio,'#13#10'  ' +
      'cte_dados.fimcidade||'#39'-'#39'||cte_dados.fimuf fim,'#13#10'  (CASE CTE_DADO' +
      'S.id_tomador WHEN 1 THEN CTE_DADOS.rem_nome'#13#10'                   ' +
      '          WHEN 2 THEN CTE_DADOS.exp_nome'#13#10'                      ' +
      '       WHEN 3 THEN CTE_DADOS.rec_nome'#13#10'                         ' +
      '    WHEN 4 THEN CTE_DADOS.dest_nome'#13#10'                           ' +
      '  WHEN 5 THEN CTE_DADOS.nome END) AS TOMADOR,'#13#10'  CTE_DADOS.rem_n' +
      'ome as remetente,'#13#10'  CTE_DADOS.dest_nome,'#13#10'  CTE_DADOS.rec_nome,' +
      #13#10'  CTE_DADOS.exp_nome,'#13#10'  cte_DADOS.valor_receber,'#13#10'  cte_condu' +
      'tor.nome||'#39'-'#39'||cte_condutor.cpf as motorista'#13#10'  FROM cte_dados'#13#10 +
      '  left join cte_condutor on(cte_condutor.id_cte = cte_dados.id) ' +
      'AND CTE_DADOS.id IS NOT NULL '#13#10'  where ((CTE_DADOS.data_emissao ' +
      '>=:p) and (CTE_DADOS.data_emissao <=:y)) and cte_dados.status = ' +
      '1 and cte_dados.modelo ='#39'57'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'y'
        ParamType = ptInput
      end>
    SQLConnection = CDM.Conexao
    Left = 88
    Top = 96
  end
  object Prov_CTE: TDataSetProvider
    DataSet = SQL_CTE
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 8
    Top = 80
  end
  object CD_CTE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Prov_CTE'
    Left = 8
    Top = 144
    object CD_CTEID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CD_CTENUMCTE: TFMTBCDField
      FieldName = 'NUMCTE'
      Precision = 18
      Size = 0
    end
    object CD_CTEDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object CD_CTEINICIO: TStringField
      FieldName = 'INICIO'
      Size = 53
    end
    object CD_CTEFIM: TStringField
      FieldName = 'FIM'
      Size = 53
    end
    object CD_CTEREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Size = 70
    end
    object CD_CTEDEST_NOME: TStringField
      FieldName = 'DEST_NOME'
      Size = 70
    end
    object CD_CTEREC_NOME: TStringField
      FieldName = 'REC_NOME'
      Size = 70
    end
    object CD_CTEEXP_NOME: TStringField
      FieldName = 'EXP_NOME'
      Size = 70
    end
    object CD_CTEMOTORISTA: TStringField
      FieldName = 'MOTORISTA'
      Size = 91
    end
    object CD_CTETOMADOR: TStringField
      FieldName = 'TOMADOR'
      Size = 70
    end
    object CD_CTEVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      currency = True
    end
  end
  object DS_CTE: TDataSource
    DataSet = CD_CTE
    Left = 96
    Top = 168
  end
  object Query_Soma: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '  count(*) qtd,'
      '  sum(cte_DADOS.valor_receber)as total'
      '  FROM cte_dados'
      ''
      
        '  where ((CTE_DADOS.data_emissao >=:p) and (CTE_DADOS.data_emiss' +
        'ao <=:y)) and cte_dados.status = 1 and cte_dados.modelo ='#39'57'#39)
    Left = 256
    Top = 200
    ParamData = <
      item
        Name = 'P'
        ParamType = ptInput
      end
      item
        Name = 'Y'
        ParamType = ptInput
      end>
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 640
    Top = 280
  end
end
