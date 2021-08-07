object Frm_Cad_Usuario: TFrm_Cad_Usuario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 264
  ClientWidth = 487
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
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 264
    Align = alClient
    BorderOuter = fsNone
    GradientColorStyle = gcsCustom
    GradientColorStop = clBtnHighlight
    TabOrder = 0
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 114
      Top = 77
      Width = 17
      Height = 19
      Caption = 'ID'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 87
      Top = 119
      Width = 44
      Height = 19
      Caption = 'NOME'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 71
      Top = 158
      Width = 60
      Height = 19
      Caption = 'STATUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RzPanel2: TRzPanel
      Left = 0
      Top = 220
      Width = 487
      Height = 44
      Align = alBottom
      BorderOuter = fsNone
      GradientColorStop = clBlue
      GridColor = clHighlight
      TabOrder = 0
      VisualStyle = vsGradient
      object RzBitBtn1: TRzBitBtn
        Left = 0
        Top = 0
        Width = 46
        Height = 44
        Align = alLeft
        TabOrder = 0
        OnClick = RzBitBtn1Click
        ImageIndex = 0
        Images = Frm_Principal.ImageList1
      end
      object RzBitBtn3: TRzBitBtn
        Left = 46
        Top = 0
        Width = 48
        Height = 44
        Align = alLeft
        TabOrder = 1
        OnClick = RzBitBtn3Click
        ImageIndex = 9
        Images = Frm_Principal.ImageList1
      end
      object RzBitBtn4: TRzBitBtn
        Left = 94
        Top = 0
        Width = 45
        Height = 44
        Align = alLeft
        TabOrder = 2
        OnClick = RzBitBtn4Click
        ImageIndex = 31
        Images = Frm_Principal.ImageList1
      end
      object RzBitBtn7: TRzBitBtn
        Left = 397
        Top = 0
        Width = 45
        Height = 44
        Align = alRight
        TabOrder = 3
        OnClick = RzBitBtn7Click
        ImageIndex = 32
        Images = Frm_Principal.ImageList1
      end
      object RzBitBtn2: TRzBitBtn
        Left = 442
        Top = 0
        Width = 45
        Height = 44
        Align = alRight
        TabOrder = 4
        OnClick = RzBitBtn2Click
        ImageIndex = 29
        Images = Frm_Principal.ImageList1
      end
    end
    object DBEdit1: TDBEdit
      Left = 153
      Top = 75
      Width = 134
      Height = 26
      DataField = 'ID_FUNCIONARIO'
      DataSource = DM.DS_Cli_Cad_Usu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 153
      Top = 117
      Width = 300
      Height = 26
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DM.DS_Cli_Cad_Usu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 2
    end
    object RzPanel3: TRzPanel
      Left = 0
      Top = 0
      Width = 487
      Height = 41
      Align = alTop
      BorderOuter = fsNone
      GradientColorStart = clNavy
      GradientColorStop = clBlue
      GradientDirection = gdHorizontalCenter
      TabOrder = 3
      VisualStyle = vsGradient
      object Label4: TLabel
        Left = 0
        Top = 8
        Width = 487
        Height = 33
        Align = alBottom
        Caption = ' Cadastro de Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveCaptionText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 282
      end
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 153
      Top = 160
      Width = 145
      Height = 26
      DataField = 'STATUS'
      DataSource = DM.DS_Cli_Cad_Usu
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'ATIVO'
        'INATIVO')
      Values.Strings = (
        '1'
        '2')
    end
  end
end
