unit UFrm_CadVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, RzPanel, Vcl.DBCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask, Vcl.ExtCtrls,
  DosMove, Vcl.Buttons, UFrmPrincipal, System.Actions, Vcl.ActnList, RzLabel;

type
  TFrm_CadVeiculos = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBComboBox3: TDBComboBox;
    Label5: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    RzGroupBox1: TRzGroupBox;
    DosMove1: TDosMove;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Excluir: TAction;
    RzPanel4: TRzPanel;
    RzLabel1: TRzLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Act_Salvar: TAction;
    Act_Cancel: TAction;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_CancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadVeiculos: TFrm_CadVeiculos;

implementation

{$R *.dfm}

uses UDM, UFrmMotorista, UFrmFuncoes, UFrmMotorista_Vei;

procedure TFrm_CadVeiculos.Act_CancelExecute(Sender: TObject);
begin
dm.CD_Veiculos.Cancel;
dm.CD_CADMOTORISTA.CancelUpdates;
close;
end;

procedure TFrm_CadVeiculos.Act_ExcluirExecute(Sender: TObject);
begin


dm.Query_Motorista.Close;
dm.Query_Motorista.Params[0].AsInteger:=dm.CD_VeiculosID.AsInteger;
dm.Query_Motorista.Open;





dm.ID.CLOSE;
dm.ID.SQL.Text:='delete from MDFE_CADMOTORISTA where id_veiculo='+IntToStr(dm.CD_VeiculosID.AsInteger)+' and id_motorista ='+dm.CD_CADMOTORISTAID_MOTORISTA.asstring;
dm.ID.ExecSQL();
dm.Query_Motorista.refresh;
{
if dm.Query_Motorista.Locate('ID_MOTORISTA',dm.CD_CADMOTORISTAID_MOTORISTA.Asinteger,[]) then
   dm.Query_Motorista.Delete; }


dm.CD_CADMOTORISTA.Refresh;


end;

procedure TFrm_CadVeiculos.Act_NovoExecute(Sender: TObject);
begin
FrmMotorista_Vei:=TFrmMotorista_Vei.Create(self);
FrmMotorista_Vei.ShowModal;
dm.CD_CADMOTORISTA.Refresh;



FrmMotorista:=nil;
end;

procedure TFrm_CadVeiculos.Act_SalvarExecute(Sender: TObject);
begin
if RzDBComboBox2.ItemIndex=-1 then
   begin
   ShowMessage('Tipo de Carroceria não pode ser nulo');
   RzDBComboBox2.SetFocus;
   end
   else
   if Length(DBEdit5.Text)<=1 then
      begin
       ShowMessage('Campo Placa não pode ser nulo!');
       DBEdit5.SetFocus;
      end
      else
      if DBComboBox3.ItemIndex=-1 then
           begin
           ShowMessage('O campo uf de licenciamento não pode ser nulo');
           DBComboBox3.SetFocus;
           end
           else
             if rzDBComboBox3.ItemIndex=-1 then
               begin
               ShowMessage('O campo tipo de Rodado  não pode ser nulo');
               rzDBComboBox3.SetFocus;
               end
               else
                 if Length(DBEdit5.Text)=0 then
                     begin
                     ShowMessage('O campo tara não pode ser nulo');
                     DBComboBox3.SetFocus;
                     end
                     else
                     begin
                       dm.CD_Veiculos.ApplyUpdates(0);
                       dm.CD_CADMOTORISTA.ApplyUpdates(0);
                       close;
                     end;
end;

procedure TFrm_CadVeiculos.DBEdit5Enter(Sender: TObject);
begin




 if DM.CD_Veiculos.State IN[DSINSERT,dsEdit] then
    DM.CD_VeiculosPLACA.AsString:=StringReplace(DM.CD_VeiculosPLACA.AsString,'-','',[rfReplaceAll]);


end;

procedure TFrm_CadVeiculos.DBEdit5Exit(Sender: TObject);
VAR
NUM : STRING;
begin
   NUM:=COPY(DBEdit5.Text,5,1);
   if frmfuncoes.EhNumero(NUM) then
      DBEdit5.Text:=COPY(DBEdit5.Text,1,3)+'-'+COPY(DBEdit5.Text,4,4)
      else
      DBEdit5.Text:=COPY(DBEdit5.Text,1,3)+' '+COPY(DBEdit5.Text,4,4)


end;

procedure TFrm_CadVeiculos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in['0'..'9','a'..'z','A'..'Z',Chr(8)]) then Key:= #0
end;

procedure TFrm_CadVeiculos.FormShow(Sender: TObject);
begin
dm.CD_CADMOTORISTA.close;
dm.CD_CADMOTORISTA.CommandText:='select MDFE_CADMOTORISTA.*,' +
                                'clientes.nome, ' +
                                'clientes.cpf_cnpj ' +
                                'from MDFE_CADMOTORISTA ' +
                                'left join clientes on(clientes.id_cliente = MDFE_CADMOTORISTA.id_motorista) '+
                                'where id_veiculo ='+IntToStr(dm.CD_VeiculosID.AsInteger);

dm.CD_CADMOTORISTA.Open;
end;

end.
