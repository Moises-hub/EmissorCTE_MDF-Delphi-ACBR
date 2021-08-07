unit UForm_Motorista_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel;

type
  TForm_Motorista_CTE = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    RzPanel2: TRzPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Query_Motorista: TFDQuery;
    Query_MotoristaID_CLIENTE: TIntegerField;
    Query_MotoristaNOME: TStringField;
    Query_MotoristaCPF_CNPJ: TStringField;
    Query_MotoristaBT: TStringField;
    FDQuery1: TFDQuery;
    DS_Query_Motorista: TDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Act_Sair: TAction;
    ImageList4: TImageList;
    procedure Action1Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Motorista_CTE: TForm_Motorista_CTE;

implementation

{$R *.dfm}

uses UFrm_CadClientes, UDM, UCDM;

procedure TForm_Motorista_CTE.Action1Execute(Sender: TObject);
begin
Frm_CadClientes:=TFrm_CadClientes.Create(self);
Frm_CadClientes.CD_Table_Clientes.open;
Frm_CadClientes.CD_Table_Clientes.Insert;
Frm_CadClientes.CD_Table_ClientesmOTORISTA.AsInteger:=1;
Frm_CadClientes.ShowModal;
Query_Motorista.Refresh;
//Edit1Change(sender);
//dm.CD_Table_Clientes.Refresh;
Frm_CadClientes.Free;

end;

procedure TForm_Motorista_CTE.Action2Execute(Sender: TObject);
begin

   if dm.CD_Table_Clientes.RecordCount<>0 then
      begin
          Frm_CadClientes:=TFrm_CadClientes.Create(self);
          Frm_CadClientes.CD_Table_Clientes.Close;
          Frm_CadClientes.CD_Table_Clientes.CommandText:='select first 50 * from clientes '+
                                                                          'where clientes.id_cliente ='+dm.CD_Table_ClientesID_CLIENTE.AsString;
           Frm_CadClientes.CD_Table_Clientes.open;
           Frm_CadClientes.CD_Table_Clientes.EDIT;
           Frm_CadClientes.ShowModal;
           Frm_CadClientes.Free;
           Edit1Change(sender);
      end;
end;

procedure TForm_Motorista_CTE.Action3Execute(Sender: TObject);
var
i:integer;
begin
                 DBGrid1.SelectedRows.CurrentRowSelected:=true;
                for i := 0 to DBGrid1.SelectedRows.Count - 1 do
                    begin

                        Query_Motorista.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
                        dm.query.CLOSE;
                        dm.query.SQL.Text:='delete from CTE_CONDUTOR where ID_CTE =:T and CPF =:G';
                        dm.query.Params[0].AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
                        dm.query.Params[1].AsString:=Query_MotoristaCPF_CNPJ.AsString;

                        dm.query.ExecSQL;

                        cdm.CD_CTE_condutorTable.Refresh;

                        cdm.CD_CTE_condutorTable.Insert;
                        cdm.CD_CTE_condutorTableID_CTE.AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
                        cdm.CD_CTE_condutorTableNOME.AsString:= Query_MotoristaNOME.AsString;
                        cdm.CD_CTE_condutorTableCPF.AsString:= Query_MotoristaCPF_CNPJ.AsString;
                        cdm.CD_CTE_condutorTable.Post;
                        cdm.CD_CTE_condutorTable.ApplyUpdates(0);


                    end;

end;

procedure TForm_Motorista_CTE.Action4Execute(Sender: TObject);
begin
close;
dm.CD_CADMOTORISTA.cancel;
end;

procedure TForm_Motorista_CTE.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TForm_Motorista_CTE.Edit1Change(Sender: TObject);
var
b:string;
begin
if Length(Edit1.Text)<>0 then
   begin
      dm.CD_Table_Clientes.Close;

   if ComboBox1.ItemIndex=0 then


      dm.CD_Table_Clientes.CommandText:='select id_cliente, nome, cpf_cnpj from  CLIENTES where Motorista =1 and pessoa =1 and id_cliente ='+Edit1.Text


      else
       BEGIN
       dm.CD_Table_Clientes.CommandText:='select id_cliente, nome, cpf_cnpj from CLIENTES where Motorista =1 and pessoa =1 and NOME LIKE:N and id_cliente<>1';
       dm.CD_Table_Clientes.Params[0].DataType:=ftString;
       dm.CD_Table_Clientes.Params[0].TEXT:='%'+Edit1.Text+'%';



       END;
       dm.CD_Table_Clientes.Open;
   end
   ELSE
   BEGIN
     dm.CD_Table_Clientes.CLOSE;
     dm.CD_Table_Clientes.CommandText:='select id_cliente, nome, cpf_cnpj from  CLIENTES where Motorista =1 and pessoa =1 and id_cliente<>1';
     dm.CD_Table_Clientes.OPEN;
   END;

   dm.CD_Table_Clientes.Refresh;

end;

procedure TForm_Motorista_CTE.FormShow(Sender: TObject);
begin
Query_Motorista.Open();
end;

end.
