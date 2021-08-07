unit UFrm_Cad_Seguradora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, Vcl.ExtCtrls, RzPanel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList,
  Vcl.Buttons, DosMove;

type
  TFrm_Cad_Seguradora = class(TForm)
    FDTable1: TFDTable;
    RzPanel1: TRzPanel;
    FDTable1ID: TIntegerField;
    FDTable1NOME: TStringField;
    FDTable1CNPJ: TStringField;
    FDTable1PADRAO: TIntegerField;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    Act_Confirmar: TAction;
    Act_Sair: TAction;
    RzPanel2: TRzPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RzPanel3: TRzPanel;
    BitBtn4: TBitBtn;
    RzPanel4: TRzPanel;
    DosMove1: TDosMove;
    Act_Apagar: TAction;
    BitBtn5: TBitBtn;
    procedure FDTable1BeforeInsert(DataSet: TDataSet);
    procedure FDTable1AfterInsert(DataSet: TDataSet);
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_ConfirmarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure FDTable1AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Act_ApagarExecute(Sender: TObject);
    procedure FDTable1AfterEdit(DataSet: TDataSet);
    procedure DBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_Seguradora: TFrm_Cad_Seguradora;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_MDF;

procedure TFrm_Cad_Seguradora.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Cad_Seguradora.Act_SalvarExecute(Sender: TObject);
begin
FDTable1.Post;
end;

procedure TFrm_Cad_Seguradora.DBEdit4Exit(Sender: TObject);
Var
FormatarCNPJ:String;
FormatarCPF:String;
begin
if Length(DBEdit4.text) = 14 then
Begin
FormatarCNPJ:= Copy(DBEdit4.Text, 1,2) + '.' + Copy(DBEdit4.text, 3,3) +'.'
+ Copy(DBEdit4.text, 6,3) + '/' +Copy(DBEdit4.Text, 9,4) + '-' + Copy(DBEdit4.text, 13,2);
DBEdit4.text:= FormatarCNPJ;
End

      Else
      if Length(DBEdit4.text) = 11 then
      Begin //024.813.907-09
          FormatarCPF:= Copy(DBEdit4.text, 1,3)
          + '.' + Copy(DBEdit4.text, 4,3)
          + '.' + Copy(DBEdit4.text,7,3)
          + '-' + Copy(DBEdit4.text, 10,2);
          DBEdit4.text:= FormatarCPF;
      End

          Else
          Begin
          ShowMessage('O CNPJ tem 14 números.');
          DM.CD_MDF_SeguroCNPJ.Clear;
          End;

end;

procedure TFrm_Cad_Seguradora.Act_ApagarExecute(Sender: TObject);
begin
FDTable1.Delete;

end;

procedure TFrm_Cad_Seguradora.Act_CancelarExecute(Sender: TObject);
begin
FDTable1.Cancel;
end;

procedure TFrm_Cad_Seguradora.Act_ConfirmarExecute(Sender: TObject);
begin
IF dm.CD_Mdf_DadosSTATUS.AsInteger = 0 THEN
dm.CD_MDF_SeguroSEGURADORA.AsString:=FDTable1NOME.AsString;
dm.CD_MDF_SeguroCNPJ.AsString:=FDTable1CNPJ.AsString;
close;
end;

procedure TFrm_Cad_Seguradora.Act_NovoExecute(Sender: TObject);
begin
  FDTable1.Insert;
end;

procedure TFrm_Cad_Seguradora.FDTable1AfterEdit(DataSet: TDataSet);
begin
    FDTable1.ApplyUpdates(0);
end;

procedure TFrm_Cad_Seguradora.FDTable1AfterInsert(DataSet: TDataSet);
begin
   FDTable1ID.AsInteger:=dm.IDGEN_ID.AsInteger;
   FDTable1PADRAO.AsInteger:=0;
end;

procedure TFrm_Cad_Seguradora.FDTable1AfterPost(DataSet: TDataSet);
begin
FDTable1.ApplyUpdates(0);
end;

procedure TFrm_Cad_Seguradora.FDTable1BeforeInsert(DataSet: TDataSet);
begin
    dm.id.close;
    dm.id.SQL.Clear;
    dm.id.SQL.Add('select gen_id(GEN_MDF_SEGURADORA_ID,1) from rdb$database');
    dm.id.ExecSQL();
    dm.id.Open;
end;

procedure TFrm_Cad_Seguradora.FormShow(Sender: TObject);
begin
 FDTable1.Open();


  IF Frm_MDF<>NIL THEN
     BitBtn4.Action:=Act_Confirmar
     ELSE
     BitBtn4.Action:=Act_Sair;
end;

end.

