object Frm_CTEDescordo: TFrm_CTEDescordo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Descordo'
  ClientHeight = 326
  ClientWidth = 541
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
  object RzLabel1: TRzLabel
    Left = 32
    Top = 13
    Width = 36
    Height = 15
    Caption = 'CHAVE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
  end
  object RzLabel2: TRzLabel
    Left = 32
    Top = 69
    Width = 113
    Height = 15
    Caption = 'CPF/CNPJ TOMADOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    BlinkIntervalOff = 1000
    BlinkIntervalOn = 1000
  end
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 466
    Height = 21
    MaxLength = 44
    TabOrder = 0
  end
  object Button2: TButton
    Left = 272
    Top = 272
    Width = 106
    Height = 38
    Action = Act_Confirmar
    Images = Frm_Grade_CTE.ImageList1
    TabOrder = 1
  end
  object Button3: TButton
    Left = 392
    Top = 272
    Width = 106
    Height = 38
    Action = Act_Cancelar
    Images = Frm_Grade_CTE.ImageList1
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 32
    Top = 88
    Width = 466
    Height = 169
    MaxLength = 255
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object ActionList1: TActionList
    Images = Frm_Grade_CTE.ImageList1
    Top = 192
    object Act_Confirmar: TAction
      Caption = 'Confirmar'
      ImageIndex = 13
      ShortCut = 112
      OnExecute = Act_ConfirmarExecute
    end
    object Act_Cancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 9
      ShortCut = 27
      OnExecute = Act_CancelarExecute
    end
  end
end
