unit UFrm_CTENFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, Data.FMTBcd, Data.SqlExpr,
  DosMove, RzLabel, RzPanel, RzCmboBx;

type
  TFrm_CTENFE = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    DosMove1: TDosMove;
    RzPanel1: TRzPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    GroupBox1: TGroupBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    RzComboBox1: TRzComboBox;
    Label2: TLabel;
    Query_Departamento: TSQLQuery;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure RzDateTimeEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzDateTimeEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure RzDateTimeEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzDateTimeEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filtro : string;
   i : integer;
  a : boolean;


implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UCDM;

procedure TFrm_CTENFE.Button1Click(Sender: TObject);
var
	i: Integer;
	aux: string;
  valor: real;
begin



if dm.CD_Nota_FiscalTable.RecordCount<>0 then
  begin
	for i := 0 to DBGrid1.SelectedRows.Count - 1 do
	begin
		dm.CD_Nota_FiscalTable.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

    if not cdm.CD_CTE_NFES.Locate('NUMERO',dm.CD_Nota_FiscalTable.FieldByName('NOTA_FISCAL').AsString,[loCaseInsensitive]) then
       aux := aux + IntToStr(dm.CD_Nota_FiscalTable.RecNo) + ' - ' +
		   dm.CD_Nota_FiscalTable.FieldByName('NOTA_FISCAL').AsString + #13

        else
         aux := aux + cdm.CD_Info_NFNOTA_FISCAL.asstring+ ' ja Adicionada' ;

	end;
  begin
  if  MessageDlg('deseja relacionar os documentos' + #13 + aux +'ao Conhecimento  linhas ',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          dm.CD_Nota_FiscalTable.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
        if not cdm.CD_CTE_NFES.Locate('NUMERO',dm.CD_Nota_FiscalTable.FieldByName('NOTA_FISCAL').AsString,[loCaseInsensitive]) then
            begin
            cdm.CD_CTE_NFES.Insert;
            cdm.CD_CTE_NFESID_CTE.AsInteger:=cdm.CD_Emissor_CTEID.AsInteger;
            cdm.CD_CTE_NFESNUMERO.Asstring:=dm.CD_Nota_FiscalTable.FieldByName('NOTA_FISCAL').AsString;
            cdm.CD_CTE_NFESCHAVE.AsString:=dm.CD_Nota_FiscalTable.FieldByName('NFE_CHAVE').AsString;
            cdm.CD_CTE_NFES.post;

            cdm.Query_NF_Itens.Close;
            cdm.Query_NF_Itens.sql.Clear;
            cdm.Query_NF_Itens.sql.Add('select sum(pedido_itens.qtde), pedido_itens.unidade ' +
                                       'from pedido_itens ' +
                                       'where pedido_itens.id_nota ='+dm.CD_Nota_FiscalTable.FieldByName('ID_NOTA').AsString+' '+
                                       'group by pedido_itens.unidade  ');
            cdm.Query_NF_Itens.open;
            cdm.CD_CTE_UN.Open;
            while not cdm.Query_NF_Itens.eof do
               begin
                  cdm.CD_CTE_UN.Insert;
                  if cdm.Query_NF_ItensUNIDADE.AsString='KG' then
                     cdm.CD_CTE_UNUN.AsString:='KG'
                     else
                         if cdm.Query_NF_ItensUNIDADE.AsString='TON' then
                             cdm.CD_CTE_UNUN.AsString:='TON'
                             else
                               if cdm.Query_NF_ItensUNIDADE.AsString='M3' then
                                  cdm.CD_CTE_UNUN.AsString:='M3'
                                  else
                                  if cdm.Query_NF_ItensUNIDADE.AsString='LT' then
                                      cdm.CD_CTE_UNUN.AsString:='LITROS'
                                      ELSE
                                      cdm.CD_CTE_UNUN.AsString:='UNIDADE';

                     CDM.CD_CTE_UNQNT.AsFloat:=cdm.Query_NF_ItensSUM.AsFloat;
                     CDM.CD_CTE_UNID_CTE.Asinteger:=cdm.CD_Emissor_CTEID.AsInteger;
                    cdm.CD_CTE_UN.post;
                 //   cdm.CD_CTE_UN.ApplyUpdates(0);
                  cdm.Query_NF_Itens.next;
               end;

            end;
        end;


      end;


  end;
  end;


end;



procedure TFrm_CTENFE.Button2Click(Sender: TObject);
begin



close;
end;

procedure TFrm_CTENFE.Button3Click(Sender: TObject);
begin
  dm.CD_Nota_FiscalTable.close;
   dm.CD_Nota_FiscalTable.CommandText:=     'select '+
                                            'nota_fiscal.ID_NOTA, '+
                                            'nota_fiscal.nfe_chave, '+
                                            'nota_fiscal.quantidade, '+
                                            'nota_fiscal.nota_fiscal, '+
                                            'nota_fiscal.peso_bruto, '+
                                            'clientes.nome, '+
                                            'regioes.CODIGO_IBGE, '+
                                            'regioes.cidade, '+
                                            'nota_fiscal.valor_produtos '+
                                            'from nota_fiscal '+
                                            'left join clientes on(clientes.id_cliente = nota_fiscal.id_cliente) '+
                                            'left join regioes on(regioes.id_regiao = clientes.id_regiao) '+
                                            'where nota_fiscal.data_es >=:i and nota_fiscal.data_es <=:f and '+
                                            'nota_fiscal.status =1 and  nota_fiscal.ID_DEPTO ='+RzComboBox1.Value+' order by nota_fiscal.nota_fiscal desc';




       dm.CD_Nota_FiscalTable.Params[0].DataType:=ftDate;
       dm.CD_Nota_FiscalTable.Params[0].Value:=RzDateTimeEdit1.Date;
       dm.CD_Nota_FiscalTable.Params[1].DataType:=ftDate;
       dm.CD_Nota_FiscalTable.Params[1].Value:=RzDateTimeEdit2.Date;
       dm.CD_Nota_FiscalTable.Open;
end;

procedure TFrm_CTENFE.Edit1Change(Sender: TObject);
begin
if Length(Edit1.Text)<>0 then
   begin

                                                   {

                                             i:=1;
                                             filtro:='';

                                             dm.CD_Mdfe_l_descarregamentoTable.First;
                                             while not dm.CD_Mdfe_l_descarregamentoTable.eof do
                                                   begin
                                                    if i < dm.CD_Mdfe_l_descarregamentoTable.RecordCount then
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+''' or '
                                                      else
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+'''';
                                                      i:=i+1;
                                                      dm.CD_Mdfe_l_descarregamentoTable.next;
                                                   end;  }


     if ComboBox1.ItemIndex=0 then
      begin




           dm.CD_Nota_FiscalTable.Close;
            dm.CD_Nota_FiscalTable.CommandText:='select '+
                                            'nota_fiscal.nfe_chave, '+
                                            'nota_fiscal.ID_NOTA, '+
                                            'nota_fiscal.quantidade, '+
                                            'nota_fiscal.nota_fiscal, '+
                                            'nota_fiscal.peso_bruto, '+
                                            'clientes.nome, '+
                                            'regioes.CODIGO_IBGE, '+
                                            'regioes.cidade, '+
                                            'nota_fiscal.valor_produtos '+
                                            'from nota_fiscal '+
                                            'left join clientes on(clientes.id_cliente = nota_fiscal.id_cliente) '+
                                            'left join regioes on(regioes.id_regiao = clientes.id_regiao) '+
                                            'where NOTA_FISCAL.NOTA_FISCAL like:n and nota_fiscal.status = 1 and  nota_fiscal.ID_DEPTO ='+RzComboBox1.Value+' order by nota_fiscal.nota_fiscal desc';





      //dm.CD_Nota_FiscalTable.CommandText:='select * from NOTA_FISCAL where NOTA_FISCAL like:n and status =''1''';
      dm.CD_Nota_FiscalTable.Params[0].DataType:=ftString;
      dm.CD_Nota_FiscalTable.Params[0].Value:='%'+Edit1.Text+'%';
      dm.CD_Nota_FiscalTable.Open;

      end
      else
      begin




            dm.CD_Nota_FiscalTable.Close;
           dm.CD_Nota_FiscalTable.CommandText:='select '+
                                           'nota_fiscal.nfe_chave, '+
                                           'nota_fiscal.ID_NOTA, '+
                                            'nota_fiscal.quantidade, '+
                                            'nota_fiscal.nota_fiscal, '+
                                            'nota_fiscal.peso_bruto, '+
                                            'clientes.nome, '+
                                            'regioes.CODIGO_IBGE, '+
                                            'regioes.cidade, '+
                                            'nota_fiscal.valor_produtos '+
                                            'from nota_fiscal '+
                                            'left join clientes on(clientes.id_cliente = nota_fiscal.id_cliente) '+
                                            'left join pedidos on(pedidos.id_pedido = nota_fiscal.id_pedido) '+
                                            'left join regioes on(regioes.id_regiao = clientes.id_regiao) '+
                                            'where pedidos.Pedido =:n and nota_fiscal.status = 1 and  nota_fiscal.ID_DEPTO ='+RzComboBox1.Value+' order by nota_fiscal.nota_fiscal desc';





     // dm.CD_Nota_FiscalTable.CommandText:='select * from NOTA_FISCAL where id_pedido =:n and status =''1''';
      dm.CD_Nota_FiscalTable.Params[0].DataType:=ftInteger;
      dm.CD_Nota_FiscalTable.Params[0].Value:=Edit1.Text;
      dm.CD_Nota_FiscalTable.Open;


      end;

                 dm.CD_Nota_FiscalTable.next;


            end;






          DBGrid1.SelectedRows.CurrentRowSelected:=true;
end;

procedure TFrm_CTENFE.Edit1Exit(Sender: TObject);
var
i : integer;
s : string;
begin
if Length(Edit1.Text)<>0 then
   begin
         CDM.CD_Info_NF.close;
         CDM.CD_Info_NF.CommandText:='select * from nota_fiscal '+
                                 'where  nota_fiscal.status =:t order by nota_fiscal.nota_fiscal =:nf';

         CDM.CD_Info_NF.params[0].AsString:=Edit1.Text;
         CDM.CD_Info_NF.open;
   end

end;

procedure TFrm_CTENFE.FormShow(Sender: TObject);
begin
   RzDateTimeEdit1.Date:=Date;
        RzDateTimeEdit2.Date:=Date;


        a :=true;
        Query_Departamento.Close;
        Query_Departamento.Open;
        RzComboBox1.Items.Clear;
        RzComboBox1.values.Clear;
   if Query_Departamento.RecordCount<>0 then
      begin

        query_departamento.First;
       while not Query_Departamento.Eof do
        begin
          RzComboBox1.Items.Add(query_departamento.FieldByName('DESCRICAO').AsString);
          RzComboBox1.Values.Add(query_departamento.FieldByName('ID_DEPTO').AsString);
          Query_Departamento.next;
        end;

      end
      else
      begin
          RzComboBox1.Items.Add('PADRÃO');
          RzComboBox1.Values.Add(dm.EmitenteID_EMPRESA.AsString);
      end;
       RzComboBox1.ItemIndex:=0;
       Button3.OnClick(Sender);
    end;




procedure TFrm_CTENFE.RzDateTimeEdit1Change(Sender: TObject);
begin
 try

        CDM.CD_Info_NF.close;


     CDM.CD_Info_NF.CommandText:='select  nota_fiscal.*, '+
                                 'natureza_operacao.codigo_fiscal '+
                                 'from nota_fiscal '+
                                 'left join natureza_operacao on (natureza_operacao.id_natureza = nota_fiscal.id_natureza) '+
                                 'where nota_fiscal.data_emissao >=:i and nota_fiscal.data_emissao <=:f and nota_fiscal.status =:t order by nota_fiscal.nota_fiscal desc';;




       CDM.CD_Info_NF.Params[0].DataType:=ftDate;
       CDM.CD_Info_NF.Params[0].Value:=RzDateTimeEdit1.Date;
       CDM.CD_Info_NF.Params[1].DataType:=ftDate;
       CDM.CD_Info_NF.Params[1].Value:=RzDateTimeEdit2.Date;
       CDM.CD_Info_NF.Params[2].asinteger:=1;

       CDM.CD_Info_NF.Open;


    //   dm.CD_Nota_FiscalTable.Execute;
    except

 end;
end;

procedure TFrm_CTENFE.RzDateTimeEdit1Exit(Sender: TObject);

begin


      




      // DBGrid1.SelectedRows.CurrentRowSelected:=true;

end;

procedure TFrm_CTENFE.RzDateTimeEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key in['0'..'9',ansiChar(8)]) then Key:= #0;
end;

procedure TFrm_CTENFE.RzDateTimeEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',Chr(8)]) then Key:= #0;

end;

end.

