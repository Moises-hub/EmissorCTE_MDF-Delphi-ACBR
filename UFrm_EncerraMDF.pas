unit UFrm_EncerraMDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrBase, ACBrDFe, ACBrMDFe, RzCmboBx;

type
  TFrm_EncerraMDF = class(TForm)
    RzPanel1: TRzPanel;
    RzSpacer1: TRzSpacer;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    RzPanel2: TRzPanel;
    FDQuery1: TFDQuery;
    FDQuery1ID: TIntegerField;
    FDQuery1ID_NFE: TIntegerField;
    FDQuery1MODELO: TIntegerField;
    FDQuery1SERIE: TIntegerField;
    FDQuery1NUMERO: TIntegerField;
    FDQuery1CODMDF: TIntegerField;
    FDQuery1DATA: TDateField;
    FDQuery1D_ENCERRA: TSQLTimeStampField;
    FDQuery1HORA: TTimeField;
    FDQuery1UF: TStringField;
    FDQuery1TIPO_EMITENTE: TStringField;
    FDQuery1UF_EMIT: TIntegerField;
    FDQuery1MODALIDADE: TStringField;
    FDQuery1FORMA_EMISSAO: TStringField;
    FDQuery1UF_DESCARREGAMENTO: TStringField;
    FDQuery1CHAVE: TStringField;
    FDQuery1VEI_UF: TStringField;
    FDQuery1VEI_RNTRC: TStringField;
    FDQuery1VEI_CIOT: TStringField;
    FDQuery1COD_AG_PORTO: TStringField;
    FDQuery1COD_INT_VEIUC: TStringField;
    FDQuery1VEI_TIPO_CARROCERIA: TStringField;
    FDQuery1VEI_TIPO_RODADO: TStringField;
    FDQuery1VEI_PLACA: TStringField;
    FDQuery1VEI_RENAVAN: TStringField;
    FDQuery1VEI_TARA: TBCDField;
    FDQuery1VEI_CAPACIDADE: TBCDField;
    FDQuery1VEI_CAPC_M3: TBCDField;
    FDQuery1TOT_QNT_NFE_REL_MANIFESTRO: TIntegerField;
    FDQuery1TOT_VALOR_TOTAL_MERCADORIA: TFloatField;
    FDQuery1TOT_CODUNIDADE: TStringField;
    FDQuery1TOT_PESO_BRUTO: TFloatField;
    FDQuery1UF_CARREGAMENTO: TStringField;
    FDQuery1STATUS: TIntegerField;
    FDQuery1MDF_PROTOCOLO: TStringField;
    FDQuery1MDF_D_ENVIO: TSQLTimeStampField;
    FDQuery1OBS: TStringField;
    FDQuery1OBS2: TStringField;
    FDQuery1ID_EMPRESA: TIntegerField;
    FDQuery1CNPJ_TOMADOR: TStringField;
    FDQuery1TIPO_EMISSOR: TIntegerField;
    FDQuery1ID_1: TIntegerField;
    FDQuery1ID_MDFE: TIntegerField;
    FDQuery1UF_1: TStringField;
    FDQuery1COD_MUN: TIntegerField;
    FDQuery1MUNICIPIO: TStringField;
    RzComboBox1: TRzComboBox;
    Label4: TLabel;
    RzComboBox2: TRzComboBox;
    Label5: TLabel;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EncerraMDF: TFrm_EncerraMDF;

implementation

{$R *.dfm}

uses UFrm_MDFConfig, UDM;

end.
