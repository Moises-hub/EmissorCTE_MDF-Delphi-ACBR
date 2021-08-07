unit UFrm_GradeVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  RzPanel, Vcl.Grids, Vcl.DBGrids, RzCmboBx, System.Actions, Vcl.ActnList,
  DosMove, Data.SqlExpr;

type
  TFrm_GradeVeiculos = class(TForm)
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    RzGroupBox1: TRzGroupBox;
    RzComboBox1: TRzComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    ActionList1: TActionList;
    Ac_Novo: TAction;
    Act_Alterar: TAction;
    Act_Excluir: TAction;
    Act_Confirma: TAction;
    Act_Sair: TAction;
    DosMove1: TDosMove;
    Act_Confirma2: TAction;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ac_NovoExecute(Sender: TObject);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure Act_ConfirmaExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_Confirma2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GradeVeiculos: TFrm_GradeVeiculos;

implementation

{$R *.dfm}

uses UDM, UFrm_CadVeiculos, UFrmPrincipal, UFrm_SelMotorista;

procedure TFrm_GradeVeiculos.Act_AlterarExecute(Sender: TObject);
begin
 if dm.CD_Veiculos.RecordCount<>0 then
    begin
      Frm_CadVeiculos:=TFrm_CadVeiculos.Create(self);
      Frm_CadVeiculos.ShowModal;
      Frm_CadVeiculos:=nil;
    end
    else
    ShowMessage('Selecione uma veiculo para ser alterado!');
end;

procedure TFrm_GradeVeiculos.Act_Confirma2Execute(Sender: TObject);
begin
                    if dm.CD_Veiculos.RecordCount<>0 then
                       begin

                              dm.CD_Mdfe_v_reboqueTableCOD_INT_VEIUC.AsString:=dm.CD_VeiculosCOD_INT_VEIC.AsString;
                              dm.CD_Mdfe_v_reboqueTableRENAVAN.AsString:=dm.CD_VeiculosRENAVAM.AsString;
                              dm.CD_Mdfe_v_reboqueTableCARROCERIA.AsString:=dm.CD_VeiculosTIPO_CARROCERIA.AsString;
                              dm.CD_Mdfe_v_reboqueTablePLACA.AsString:=dm.CD_VeiculosPLACA.AsString;
                              dm.CD_Mdfe_v_reboqueTableTARA.AsString:=dm.CD_VeiculosTARA.AsString;
                              dm.CD_Mdfe_v_reboqueTableCAPACIDADE.AsString:=dm.CD_Veiculos.FieldByName('capacidade').AsString;
                              dm.CD_Mdfe_v_reboqueTableCAPC_M3.AsString:=dm.CD_Veiculos.FieldByName('capm3').AsString;
                              dm.CD_Mdfe_v_reboqueTableUF_LICENCIAMENTO.AsString:=dm.CD_Veiculos.FieldByName('UF_LICENCIAMENTO').AsString;
                       end;
close;
end;

procedure TFrm_GradeVeiculos.Act_ConfirmaExecute(Sender: TObject);
var
i : integer;
busca:TSQLDataSet;
begin


                    if dm.CD_Veiculos.RecordCount<>0 then
                       begin

                              dm.CD_Mdf_Dados.Edit;
                              dm.CD_Mdf_DadosCOD_INT_VEIUC.AsString:=dm.CD_VeiculosCOD_INT_VEIC.AsString;
                              dm.CD_Mdf_DadosVEI_RENAVAN.AsString:=dm.CD_VeiculosRENAVAM.AsString;
                              dm.CD_Mdf_DadosVEI_TIPO_CARROCERIA.AsString:=dm.CD_VeiculosTIPO_CARROCERIA.AsString;
                              dm.CD_Mdf_DadosVEI_TIPO_RODADO.AsString:=dm.CD_VeiculosTIPO_RODADO.AsString;
                              dm.CD_Mdf_DadosVEI_PLACA.AsString:=dm.CD_VeiculosPLACA.AsString;
                              dm.CD_Mdf_DadosVEI_TARA.AsString:=dm.CD_VeiculosTARA.AsString;
                              dm.CD_Mdf_DadosVEI_CAPACIDADE.AsString:=dm.CD_Veiculos.FieldByName('capacidade').AsString;
                              dm.CD_Mdf_DadosVEI_CAPC_M3.AsString:=dm.CD_Veiculos.FieldByName('capm3').AsString;
                              dm.CD_Mdf_DadosVEI_UF.AsString:=dm.CD_Veiculos.FieldByName('UF_LICENCIAMENTO').AsString;
                              dm.CD_Mdf_DadosVEI_RNTRC.AsString:=dm.CD_VeiculosRNTRC.AsString;

                                  dm.CD_CADMOTORISTA.close;
                                  dm.CD_CADMOTORISTA.CommandText:='select MDFE_CADMOTORISTA.*, ' +
                                                                  'clientes.nome, ' +
                                                                  'clientes.cpf_cnpj ' +
                                                                  'from MDFE_CADMOTORISTA ' +
                                                                  'left join clientes on(clientes.id_cliente = MDFE_CADMOTORISTA.id_motorista) '+
                                                                  'where id_veiculo ='+IntToStr(dm.CD_VeiculosID.AsInteger);

                                  dm.CD_CADMOTORISTA.open;


                                if dm.CD_CADMOTORISTA.RecordCount<>0 then
                                   begin
                                   i:=0;
                                   Frm_SelMotorista:=TFrm_SelMotorista.Create(self);
                                         busca:=TSQLDataSet.Create(self);
                                         busca.SQLConnection:=dm.MdfeConnection;

                                   while not dm.CD_CADMOTORISTA.eof do
                                          begin
                                              Frm_SelMotorista.CheckListBox1.Items.Add(dm.CD_CADMOTORISTA.FieldByName('nome').AsString+',  '+dm.CD_CADMOTORISTA.FieldByName('cpf_cnpj').AsString);
                                              busca.Close;
                                              busca.CommandText:='SELECT COUNT(*) FROM MDFE_CONDUTOR where NOME ='''+dm.CD_CADMOTORISTANOME.AsString+''' and ID_MDFE ='+IntToStr(dm.CD_Mdf_DadosID.asinteger);
                                              busca.Open;

                                              if busca.FieldByName('count').AsInteger<>0  then
                                                  Frm_SelMotorista.CheckListBox1.Checked[i]:=true;

                                               i:=i+1;

                                               dm.CD_CADMOTORISTA.Next;

                                          end;

                                         Frm_SelMotorista.ShowModal;
                                           busca.Destroy;

                                   end;










                         end;

close;
end;

procedure TFrm_GradeVeiculos.Act_ExcluirExecute(Sender: TObject);
begin
   if dm.CD_Veiculos.RecordCount<>0 then
    begin
       dm.CD_CADMOTORISTA.close;
        dm.CD_CADMOTORISTA.CommandText:='select MDFE_CADMOTORISTA.*,' +
                                        'clientes.nome, ' +
                                        'clientes.cpf_cnpj ' +
                                        'from MDFE_CADMOTORISTA ' +
                                        'left join clientes on(clientes.id_cliente = MDFE_CADMOTORISTA.id_motorista) '+
                                        'where id_veiculo ='+IntToStr(dm.CD_VeiculosID.AsInteger);

        dm.CD_CADMOTORISTA.Open;
        if dm.CD_CADMOTORISTA.RecordCount<>0 then
           begin
             dm.CD_CADMOTORISTA.First;
             while not dm.CD_CADMOTORISTA.Eof do
               begin
                  dm.CD_CADMOTORISTA.delete;
                  dm.CD_CADMOTORISTA.Next;
               end;
           end;
           dm.CD_Veiculos.Delete;
           dm.CD_Veiculos.ApplyUpdates(0);
           dm.CD_CADMOTORISTA.ApplyUpdates(0);
    end;
end;

procedure TFrm_GradeVeiculos.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_GradeVeiculos.Ac_NovoExecute(Sender: TObject);
begin
Frm_CadVeiculos:=TFrm_CadVeiculos.Create(self);
dm.CD_Veiculos.Open;
dm.CD_Veiculos.insert;

Frm_cadveiculos.showModal;
Frm_CadVeiculos:=NIL;
end;

procedure TFrm_GradeVeiculos.Edit1Change(Sender: TObject);
begin

      dm.CD_Veiculos.Close;
      dm.CD_Veiculos.CommandText:='select * from MDFE_VEICULO  where '+RzComboBox1.Value+' like :b';
      dm.CD_Veiculos.params[0].AsString:='%'+Edit1.Text+'%';
      dm.CD_Veiculos.open;


end;

procedure TFrm_GradeVeiculos.FormShow(Sender: TObject);
begin
RzComboBox1.ItemIndex:=0;
Edit1Change(sender);
end;

end.
