unit UFrmTomador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, System.ImageList, Vcl.ImgList, RzLabel,
  System.Actions, Vcl.ActnList;

type
  TFrmTomador = class(TForm)
    RzPanel1: TRzPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    RzPanel2: TRzPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Act_novo: TAction;
    Act_Alterar: TAction;
    Act_Sair: TAction;
    RzLabel1: TRzLabel;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Act_novoExecute(Sender: TObject);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTomador: TFrmTomador;

implementation

{$R *.dfm}

uses UDM, UFrmGrade, UFrmPrincipal, UCDM, UFrm_CTE_EMISSOR, UFrm_CadClientes;

procedure TFrmTomador.Act_AlterarExecute(Sender: TObject);
begin

   if cdm.CD_Table_Clientes.RecordCount<>0 then
      begin
          Frm_CadClientes:=TFrm_CadClientes.Create(self);
          Frm_CadClientes.CD_Table_Clientes.Close;
          Frm_CadClientes.CD_Table_Clientes.CommandText:='select  *   from clientes '+
                                                         'where clientes.id_cliente ='+cdm.CD_Table_ClientesID_CLIENTE.AsString;
           Frm_CadClientes.CD_Table_Clientes.open;
           Frm_CadClientes.CD_Table_Clientes.EDIT;
          Frm_CadClientes.ShowModal;
          Frm_CadClientes.Free;
      end;
end;

procedure TFrmTomador.Act_novoExecute(Sender: TObject);
begin
Frm_CadClientes:=TFrm_CadClientes.Create(self);
Frm_CadClientes.CD_Table_Clientes.open;
Frm_CadClientes.CD_Table_Clientes.Insert;
Frm_CadClientes.ShowModal;
cdm.CD_Table_Clientes.Close;
cdm.CD_Table_Clientes.open;
cdm.CD_Table_Clientes.Refresh;

Frm_CadClientes.Free;
end;

procedure TFrmTomador.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrmTomador.ComboBox1Select(Sender: TObject);
begin
Edit1.Clear;


end;

procedure TFrmTomador.DBGrid1DblClick(Sender: TObject);
begin

    {
        if Length(cdm.CD_Table_Clientesendereco.AsString) = 0 then
           Messagedlg('Cliente com endereço inválido',mtWarning,[mbOK],0)
           else
        if Length(cdm.CD_Table_ClientesBAIRRO.AsString) = 0 then
           Messagedlg('Cliente com bairro inválido',mtWarning,[mbOK],0)
           else
           if Length(cdm.CD_Table_ClientesCIDADE.AsString) = 0 then
              Messagedlg('Cliente com cidade inválida',mtWarning,[mbOK],0)
              else
              if Length(cdm.CD_Table_ClientesUF.AsString) = 0 then
                 Messagedlg('Cliente com estado inválido',mtWarning,[mbOK],0)
                 else
                 if Length(cdm.CD_Table_ClientesNUMERO.AsString) = 0 then
                     Messagedlg('Cliente com numero endereço inválido',mtWarning,[mbOK],0)
                     else }

end;

procedure TFrmTomador.Edit1Change(Sender: TObject);
var
b:string;
begin
if Length(Edit1.Text)<>0 then
   begin
      cdm.CD_Table_Clientes.Close;

   if ComboBox1.ItemIndex=0 then

    begin
      cdm.CD_Table_Clientes.CommandText:='select first 30  clientes.tipo, ' +
                                        'clientes.id_cliente, ' +
                                        'clientes.pessoa, ' +
                                        'clientes.cpf_cnpj, ' +
                                        'clientes.ie, ' +
                                        'clientes.nome, ' +
                                        'clientes.nome_fantasia, ' +
                                        'clientes_dados.endereco, ' +
                                        'clientes_dados.ID_CLIENTE, ' +
                                        'clientes_dados.numero, ' +
                                        'clientes_dados.bairro, ' +
                                        'clientes_dados.complemento, ' +
                                        'clientes_dados.cep, ' +
                                        'clientes_dados.fone_res, ' +
                                        'regioes.uf, ' +
                                        'regioes.CODIGO_IBGE, '+
                                        'regioes.cidade, ' +
                                        'regioes.uf ' +
                                        'from clientes ' +
                                        'left join clientes_dados on(clientes_dados.id_cliente = clientes.id_cliente) ' +
                                        'left join regioes on(regioes.id_regiao = clientes.id_regiao) ' +
                                        'where clientes.tipo !=4 and clientes.id_cliente = '+Edit1.Text
    end
      else
       BEGIN
       cdm.CD_Table_Clientes.CommandText:='select first 30  clientes.tipo, ' +
                                          'clientes.id_cliente, ' +
                                          'clientes.cpf_cnpj, ' +
                                          'clientes.pessoa, ' +
                                          'clientes.ie, ' +
                                          'clientes.nome, ' +
                                          'clientes.nome_fantasia, ' +
                                          'clientes_dados.endereco, ' +
                                          'clientes_dados.numero, ' +
                                          'clientes_dados.bairro, ' +
                                          'clientes_dados.complemento, ' +
                                          'clientes_dados.cep, ' +
                                          'clientes_dados.fone_res, ' +
                                          'regioes.uf, ' +
                                          'regioes.CODIGO_IBGE, '+
                                          'regioes.cidade, ' +
                                          'regioes.uf ' +
                                          'from clientes ' +
                                          'left join clientes_dados on(clientes_dados.id_cliente = clientes.id_cliente) ' +
                                          'left join regioes on(regioes.id_regiao = clientes.id_regiao) ' +
                                          'where clientes.id_cliente != 1 and clientes.tipo !=4 and NOME LIKE:N';

       cdm.CD_Table_Clientes.Params[0].DataType:=ftString;
       cdm.CD_Table_Clientes.Params[0].TEXT:='%'+Edit1.Text+'%';
       END;
       cdm.CD_Table_Clientes.Open;
   end
   ELSE
   BEGIN
     cdm.CD_Table_Clientes.CommandText:='select first 50  clientes.tipo, ' +
                                          'clientes.id_cliente, ' +
                                          'clientes.cpf_cnpj, ' +
                                          'clientes.pessoa, ' +
                                          'clientes.ie, ' +
                                          'clientes.nome, ' +
                                          'clientes.nome_fantasia, ' +
                                          'clientes_dados.endereco, ' +
                                          'clientes_dados.numero, ' +
                                          'clientes_dados.bairro, ' +
                                          'clientes_dados.complemento, ' +
                                          'clientes_dados.cep, ' +
                                          'clientes_dados.fone_res, ' +
                                          'regioes.uf, ' +
                                          'regioes.CODIGO_IBGE, '+
                                          'regioes.cidade, ' +
                                          'regioes.uf ' +
                                          'from clientes ' +
                                          'left join clientes_dados on(clientes_dados.id_cliente = clientes.id_cliente) ' +
                                          'left join regioes on(regioes.id_regiao = clientes.id_regiao) where clientes.id_cliente != 1 and clientes.tipo !=4';
     cdm.CD_Table_Clientes.OPEN;
   END;


end;


procedure TFrmTomador.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
       if ComboBox1.ItemIndex=0 then
       if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

end.


