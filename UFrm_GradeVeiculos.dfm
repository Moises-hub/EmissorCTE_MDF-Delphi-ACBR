object Frm_GradeVeiculos: TFrm_GradeVeiculos
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Grade de Veiculos'
  ClientHeight = 441
  ClientWidth = 798
  Color = clBtnShadow
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 73
    Width = 778
    Height = 306
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alClient
    DataSource = DM.DS_Veiculos
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_INT_VEIC'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENAVAM'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CARROCERIA'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLACA'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_RODADO'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_LICENCIAMENTO'
        Title.Caption = 'UF Licenciamento'
        Visible = True
      end>
  end
  object RzPanel1: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 778
    Height = 53
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alTop
    BorderOuter = fsNone
    Color = clGray
    GradientColorStyle = gcsCustom
    GradientColorStart = clBtnFace
    GradientColorStop = clWhite
    TabOrder = 1
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 441
      Top = 0
      Width = 337
      Height = 53
      Align = alClient
      Alignment = taCenter
      Caption = 'VE'#205'CULOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 132
      ExplicitHeight = 39
    end
    object RzGroupBox1: TRzGroupBox
      Left = 0
      Top = 0
      Width = 441
      Height = 53
      Align = alLeft
      Caption = 'Localizar'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clBlack
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      TabOrder = 0
      Transparent = True
      VisualStyle = vsGradient
      object RzComboBox1: TRzComboBox
        Left = 40
        Top = 17
        Width = 89
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 0
        Items.Strings = (
          'Codigo Interno'
          'Renavam'
          'Placa')
        Values.Strings = (
          'ID'
          'cod_int_veic'
          'PLACA')
      end
      object Edit1: TEdit
        Left = 135
        Top = 17
        Width = 282
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = Edit1Change
      end
    end
  end
  object RzPanel2: TRzPanel
    AlignWithMargins = True
    Left = 10
    Top = 389
    Width = 778
    Height = 47
    Margins.Left = 10
    Margins.Top = 5
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alBottom
    BorderOuter = fsNone
    Color = clGray
    GradientColorStyle = gcsCustom
    TabOrder = 2
    VisualStyle = vsGradient
    object Button1: TButton
      Left = 680
      Top = 6
      Width = 89
      Height = 33
      Caption = 'Confirmar'
      ImageIndex = 13
      Images = Frm_Principal.ImageList3
      TabOrder = 0
    end
    object Button3: TButton
      Left = 16
      Top = 6
      Width = 94
      Height = 33
      Action = Ac_Novo
      Images = Frm_Principal.ImageList3
      TabOrder = 1
    end
    object Button4: TButton
      Left = 116
      Top = 6
      Width = 94
      Height = 33
      Action = Act_Alterar
      Images = Frm_Principal.ImageList3
      TabOrder = 2
    end
    object Button2: TButton
      Left = 216
      Top = 6
      Width = 94
      Height = 33
      Action = Act_Excluir
      Images = Frm_Principal.ImageList3
      TabOrder = 3
    end
  end
  object ActionList1: TActionList
    Images = Frm_Principal.ImageList3
    Left = 456
    Top = 192
    object Ac_Novo: TAction
      Caption = 'Novo (F2)'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = Ac_NovoExecute
    end
    object Act_Alterar: TAction
      Caption = 'Alterar (F3)'
      ImageIndex = 1
      ShortCut = 114
      OnExecute = Act_AlterarExecute
    end
    object Act_Excluir: TAction
      Caption = 'Excluir (F4)'
      ImageIndex = 2
      OnExecute = Act_ExcluirExecute
    end
    object Act_Confirma: TAction
      Caption = 'Confirma (F5)'
      ImageIndex = 3
      ShortCut = 116
      OnExecute = Act_ConfirmaExecute
    end
    object Act_Sair: TAction
      Caption = 'Sair (Esc)'
      ImageIndex = 5
      ShortCut = 27
      OnExecute = Act_SairExecute
    end
    object Act_Confirma2: TAction
      Caption = 'Confirma'
      ImageIndex = 3
      OnExecute = Act_Confirma2Execute
    end
  end
  object DosMove1: TDosMove
    Active = True
    Options = [moEnter]
    Left = 392
    Top = 224
  end
end
