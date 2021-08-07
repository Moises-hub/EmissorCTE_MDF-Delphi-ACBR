object Frm_CTE_Percurso: TFrm_CTE_Percurso
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Percurso'
  ClientHeight = 239
  ClientWidth = 251
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 251
    Height = 239
    Align = alClient
    Caption = 'Percurso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 26
    ExplicitWidth = 209
    ExplicitHeight = 233
    object DBGrid3: TDBGrid
      Left = 2
      Top = 59
      Width = 247
      Height = 178
      Align = alClient
      BorderStyle = bsNone
      DataSource = CDM.DS_CD_CTE_Percurso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
          FieldName = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Width = 40
          Visible = True
        end>
    end
    object RzPanel1: TRzPanel
      Left = 2
      Top = 18
      Width = 247
      Height = 41
      Align = alTop
      BorderOuter = fsNone
      GradientColorStyle = gcsMSOffice
      TabOrder = 1
      Transparent = True
      VisualStyle = vsGradient
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 81
      object Button19: TButton
        Left = 157
        Top = 8
        Width = 54
        Height = 25
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button19Click
      end
      object Button18: TButton
        Left = 97
        Top = 8
        Width = 54
        Height = 25
        Caption = 'Inserir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button18Click
      end
      object ComboBox1: TComboBox
        Left = 8
        Top = 8
        Width = 65
        Height = 22
        Style = csOwnerDrawVariable
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
    end
  end
end
