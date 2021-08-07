object Frm_CTE_CartaCorrecao: TFrm_CTE_CartaCorrecao
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Carta de Corre'#231#227'o'
  ClientHeight = 495
  ClientWidth = 494
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
    Width = 494
    Height = 13
    Align = alTop
    ExplicitTop = 33
    ExplicitWidth = 491
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 13
    Width = 494
    Height = 33
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 46
    Width = 494
    Height = 69
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 1
    Transparent = True
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 36
      Height = 13
      Caption = 'CHAVE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 359
      Top = 10
      Width = 62
      Height = 13
      Caption = 'SEQU'#202'NCIA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 29
      Width = 337
      Height = 21
      DataField = 'CHAVE'
      DataSource = CDM.DS_CD_CartaCorrecao
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 359
      Top = 29
      Width = 97
      Height = 21
      DataField = 'SEQUENCIA'
      DataSource = CDM.DS_CD_CartaCorrecao
      TabOrder = 1
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 115
    Width = 494
    Height = 339
    Align = alClient
    TabOrder = 2
    Transparent = True
    object RzSpacer2: TRzSpacer
      Left = 2
      Top = 2
      Width = 490
      Height = 9
      Align = alTop
      ExplicitLeft = 4
      ExplicitTop = 35
      ExplicitWidth = 487
    end
    object RzSpacer3: TRzSpacer
      Left = 2
      Top = 11
      Height = 274
      Align = alLeft
      ExplicitHeight = 196
    end
    object RzSpacer4: TRzSpacer
      Left = 2
      Top = 285
      Width = 490
      Height = 9
      Align = alBottom
      ExplicitLeft = 0
      ExplicitTop = 209
      ExplicitWidth = 487
    end
    object RzSpacer5: TRzSpacer
      Left = 484
      Top = 11
      Height = 274
      Align = alRight
      ExplicitLeft = 482
      ExplicitHeight = 196
    end
    object RzDBGrid1: TRzDBGrid
      Left = 10
      Top = 11
      Width = 474
      Height = 274
      Align = alClient
      BorderStyle = bsNone
      DataSource = CDM.DS_CD_GCarta_Correcao
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'GRUPOALTERADO'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 115
          Visible = True
        end>
    end
    object RzPanel5: TRzPanel
      Left = 2
      Top = 294
      Width = 490
      Height = 43
      Align = alBottom
      BorderOuter = fsButtonDown
      TabOrder = 1
      Transparent = True
      object RzBitBtn1: TRzBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 37
        Height = 33
        Align = alLeft
        TabOrder = 0
        OnClick = RzBitBtn1Click
        ImageIndex = 0
        Images = Frm_Principal.ImageList1
        ExplicitLeft = 2
        ExplicitTop = 2
        ExplicitHeight = 35
      end
      object RzBitBtn2: TRzBitBtn
        AlignWithMargins = True
        Left = 48
        Top = 5
        Width = 37
        Height = 33
        Align = alLeft
        TabOrder = 1
        OnClick = RzBitBtn2Click
        ImageIndex = 21
        Images = Frm_Principal.ImageList1
        ExplicitLeft = 50
        ExplicitTop = 2
        ExplicitHeight = 35
      end
      object RzBitBtn3: TRzBitBtn
        AlignWithMargins = True
        Left = 91
        Top = 5
        Width = 37
        Height = 33
        Align = alLeft
        TabOrder = 2
        OnClick = RzBitBtn3Click
        ImageIndex = 24
        Images = Frm_Principal.ImageList1
        ExplicitLeft = 98
        ExplicitTop = 2
        ExplicitHeight = 35
      end
    end
  end
  object RzPanel4: TRzPanel
    Left = 0
    Top = 454
    Width = 494
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 3
    object RzBitBtn4: TRzBitBtn
      Left = 334
      Top = 6
      Width = 76
      Height = 29
      Caption = 'Gerar / Imprimir'
      TabOrder = 0
      OnClick = RzBitBtn4Click
      ImageIndex = 30
      Images = Frm_Principal.ImageList1
    end
    object RzBitBtn5: TRzBitBtn
      Left = 416
      Top = 6
      Width = 76
      Height = 29
      Caption = 'Sair'
      TabOrder = 1
      OnClick = RzBitBtn5Click
      ImageIndex = 23
      Images = Frm_Principal.ImageList1
    end
  end
end
