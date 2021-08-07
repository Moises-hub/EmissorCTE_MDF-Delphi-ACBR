object Frm_Patch: TFrm_Patch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'MDF-e'
  ClientHeight = 433
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PrintScale = poPrintToFit
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 407
    Height = 24
    Align = alTop
    Caption = 'Caminho dos Arquivos'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Baskerville Old Face'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    ExplicitWidth = 213
  end
  object Label2: TLabel
    Left = 0
    Top = 294
    Width = 407
    Height = 13
    Align = alTop
    Caption = 'C:\Windows\system32'
    ExplicitWidth = 108
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 0
    Top = 61
    Width = 407
    Height = 233
    Align = alTop
    DirLabel = Label2
    TabOrder = 0
  end
  object DriveComboBox1: TDriveComboBox
    Left = 0
    Top = 42
    Width = 407
    Height = 19
    Align = alTop
    DirList = DirectoryListBox1
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 24
    Width = 407
    Height = 18
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 18
  end
  object Button1: TButton
    Left = 221
    Top = 313
    Width = 85
    Height = 30
    Caption = 'Salvar'
    ImageIndex = 858
    Images = Frm_Principal.ImageList1
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 313
    Width = 85
    Height = 30
    Caption = 'Cancelar'
    ImageIndex = 15
    Images = Frm_Principal.ImageList1
    TabOrder = 4
    OnClick = Button2Click
  end
end
