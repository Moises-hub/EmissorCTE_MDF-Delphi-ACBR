unit UFrmMotorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, UFrm_CadClientes, System.Actions,
  Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList;

type
  TFrmMotorista = class(TForm)
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    RzPanel2: TRzPanel;
    Button1: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Button3: TButton;
    Button4: TButton;
    Query_Motorista: TFDQuery;
    DS_Query_Motorista: TDataSource;
    Query_MotoristaID_CLIENTE: TIntegerField;
    Query_MotoristaNOME: TStringField;
    Query_MotoristaCPF_CNPJ: TStringField;
    Query_MotoristaBT: TStringField;
    ImageList4: TImageList;
    FDQuery1: TFDQuery;
    Act_Sair: TAction;
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Act_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMotorista: TFrmMotorista;

implementation


{$R *.dfm}

uses UDM, UFrmGrade, UFrmPrincipal, UFrm_Motorista, UFrm_CadVeiculos,
  UFrmFuncoes, UFrm_CTE_Motorista, UCDM;

procedure TFrmMotorista.Action1Execute(Sender: TObject);
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

procedure TFrmMotorista.Action2Execute(Sender: TObject);
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

procedure TFrmMotorista.Action3Execute(Sender: TObject);
 VAR
 I : INTEGER;
begin


                 DBGrid1.SelectedRows.CurrentRowSelected:=true;
                for i := 0 to DBGrid1.SelectedRows.Count - 1 do
                    begin
                        Query_Motorista.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
                        dm.query.CLOSE;
                        dm.query.SQL.Text:='delete from MDFE_CONDUTOR where CPF =:c and ID_MDFE =:m';
                        dm.Query.Params[0].AsString:=Query_MotoristaCPF_CNPJ.asstring;
                        dm.Query.Params[1].AsInteger:=dm.CD_Mdf_DadosID.asinteger;

                      //  ShowMessage(Query_MotoristaCPF_CNPJ.asstring+'  '+IntToStr(dm.CD_Mdf_DadosID.asinteger));
                       // ShowMessage('select * from MDFE_CADMOTORISTA where id_veiculo ='+IntToStr(dm.CD_VeiculosID.AsInteger)+' and id_motorista ='+dm.CD_CADMOTORISTAID_MOTORISTA.asstring);
                        dm.query.ExecSQL;
                        dm.CD_Mdfe_condutorTable.Refresh;


                        dm.query.CLOSE;
                        dm.query.SQL.Text:='insert into MDFE_CONDUTOR (id,id_mdfe,cpf, nome)'+
                                                            ' values ((select gen_id(GEN_MDFE_CONDUTOR_ID,1) from rdb$database),'+
                                                                       ':mdf,' +
                                                                       ':cpf,' +
                                                                       ':nome)';

                        dm.query.Params[0].AsInteger:=dm.CD_Mdf_DadosID.asinteger;
                        dm.query.Params[1].AsString:=Query_MotoristaCPF_CNPJ.asstring;
                        dm.query.Params[2].Asstring:=Query_MotoristaNOME.asstring;





                        dm.query.ExecSQL;

                        dm.CD_Mdfe_condutorTable.Insert;
                        dm.CD_Mdfe_condutorTableID_MDFE.AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                        dm.CD_Mdfe_condutorTableNOME.Text:=Query_MotoristaNOME.Text;
                        dm.CD_Mdfe_condutorTableCPF.Text:=frmfuncoes.FormataCPF(Query_MotoristaCPF_CNPJ.Text);
                        dm.CD_Mdfe_condutorTable.Post;
                        dm.CD_Mdfe_condutorTable.ApplyUpdates(0);
                    end;






close;
end;

procedure TFrmMotorista.Action4Execute(Sender: TObject);
begin
close;
dm.CD_CADMOTORISTA.cancel;
end;

procedure TFrmMotorista.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrmMotorista.ComboBox1Select(Sender: TObject);
begin
Edit1.Clear;


end;

procedure TFrmMotorista.DBGrid1CellClick(Column: TColumn);
begin       {
dm.CD_CADMOTORISTA.OPEN;
                  if DBGrid1.SelectedField.FieldName = 'BT' then
                     begin
                     if Frm_CadVeiculos<>nil then
                        begin





                                fdquery1.CLOSE;
                                fdquery1.SQL.Text:='INSERT INTO MDFE_CADMOTORISTA(ID,ID_VEICULO,ID_MOTORISTA) ' +
                                                   'VALUES((select gen_id(GEN_MDFE_CADMOTORISTA_ID,1) from rdb$database),:V,:M)';
                                fdquery1.PARAMS[0].AsInteger:=DM.CD_VeiculosID.AsInteger;
                                fdquery1.PARAMS[1].AsInteger:=Query_MotoristaID_CLIENTE.AsInteger;
                                fdquery1.ExecSQL;


                                dm.CD_CADMOTORISTA.Refresh;
                        end
                        else
                        if Frm_CadVeiculos=nil then
                           begin
                                fdquery1.CLOSE;
                                fdquery1.SQL.Text:='delete from CTE_CONDUTOR where NOME =:t and ID_CTE =:i';
                                fdquery1.Params[0].AsString:=Query_MotoristaNOME.Text;
                                fdquery1.Params[1].AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
                                fdquery1.ExecSQL;
                                 cdm.CD_CTE_condutorTable.OPEN;
                                cdm.CD_CTE_condutorTable.Refresh;

                              cdm.CD_CTE_condutorTable.INSERT;
                              cdm.CD_CTE_condutorTableNOME.AsString:=Query_MotoristaNOME.AsString;
                              cdm.CD_CTE_condutorTableCPF.AsString:=frmfuncoes.FormataCPF(Query_MotoristaCPF_CNPJ.asstring);
                              cdm.CD_CTE_condutorTable.POST;
                              cdm.CD_CTE_condutorTable.ApplyUpdates(0);
                           end;

                     end;    }
end;

procedure TFrmMotorista.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{ if datacol =3 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;}
end;

procedure TFrmMotorista.Edit1Change(Sender: TObject);
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

procedure TFrmMotorista.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if ComboBox1.ItemIndex=0 then
       if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmMotorista.FormShow(Sender: TObject);
begin
 {     dm.CD_Table_Clientes.close;
  dm.CD_Table_Clientes.CommandText:='select id_cliente, nome, cpf_cnpj from CLIENTES where Motorista =1';
   dm.CD_Table_Clientes.open;}
 Query_Motorista.Open();
end;

end.
