unit UFrm_CTEXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Data.DB, dxGDIPlusClasses, RzPanel, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, ACBrBase, ACBrDFe, ACBrNFe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_CTEXML = class(TForm)
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    RzDBGrid2: TRzDBGrid;
    RzPanel1: TRzPanel;
    ButtonedEdit1: TButtonedEdit;
    Button1: TButton;
    Label1: TLabel;
    Image1: TImage;
    ACBrNFe1: TACBrNFe;
    regiao: TFDQuery;
    procedure ButtonedEdit1RightButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTEXML: TFrm_CTEXML;

implementation

{$R *.dfm}

uses UFrm_CTE_EMISSOR2, UCDM;

procedure TFrm_CTEXML.Button1Click(Sender: TObject);
var
i : integer;
begin
if Length(ButtonedEdit1.Text)<>0 then
   begin


               ACBrNFe1.NotasFiscais.Clear;



               ACBrNFe1.NotasFiscais.LoadFromFile(ButtonedEdit1.Text);


                           regiao.close;
                            regiao.sql.Text:='select id_regiao from regioes where codigo_ibge =:f';
                            regiao.params[0].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.dest.EnderDest.cMun;
                            regiao.Open();
                            if regiao.RecordCount=0 then
                               begin
                                  regiao.close;
                                  regiao.sql.Text:='insert into regioes(id_regiao,cidade,distrito,uf,data_up,codigo_ibge,id_pais,pais,id_empresa,user_up)' +
                                                   '              values((select gen_id(regioes,1)from rdb$database), ' +
                                                   '                      :cid, ' +
                                                   '                      :cid, ' +
                                                   '                      :uf, ' +
                                                   '                       current_timestamp, ' +
                                                   '                      :cod_ibge, ' +
                                                   '                      :id_pais,' +
                                                   '                      :pais, ' +
                                                   '                       1, ' +
                                                   '                       1)';
                                  regiao.params[0].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun);
                                  regiao.params[1].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF);
                                  regiao.params[2].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                                  regiao.params[3].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais;
                                  regiao.params[4].Asstring:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais);
                                  regiao.ExecSQL;
                                  cdm.FDConnection1.Commit;


                               end;


            Frm_CTE_EMISSOR2.fdquery1.Close;
            Frm_CTE_EMISSOR2.fdquery1.SQL.Text:='select count(*) from CTE_NFEES where chave =:c and id_cte =:t';
            Frm_CTE_EMISSOR2.fdquery1.params[0].asstring:=StringReplace(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,'NFe','',[rfReplaceAll]);
            Frm_CTE_EMISSOR2.fdquery1.params[1].asInteger:=CDM.CD_Emissor_CTEID.AsInteger;
            Frm_CTE_EMISSOR2.fdquery1.open;


          if Frm_CTE_EMISSOR2.fdquery1.FieldByName('count').AsInteger =0 then
             begin

               cdm.CD_CTE_NFES.Insert;
               cdm.CD_CTE_NFESID_CTE.AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
               cdm.CD_CTE_NFESNUMERO.asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF;
               cdm.CD_CTE_NFESCHAVE.AsString:=StringReplace(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,'NFe','',[rfReplaceAll]);
               cdm.CD_CTE_NFES.Post;
               cdm.CD_CTE_NFES.ApplyUpdates(0);

                for i := 0 to  (ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count - 1) do
                  begin
                   cdm.CD_CTE_UN.Insert;
                   cdm.CD_CTE_UNUN.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
                   cdm.CD_CTE_UNQNT.AsCurrency:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
                   cdm.CD_CTE_UNCHAVE_NFE.AsString:=StringReplace(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,'NFe','',[rfReplaceAll]);
                   CDM.CD_CTE_UN.Post;
                   CDM.CD_CTE_UN.ApplyUpdates(0);
                   end;

                 if length(cdm.CD_Emissor_CTEFIMCODIBGE.Asstring)=0 then
                     begin
                        cdm.CD_Emissor_CTEFIMUF.AsString:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
                        Frm_CTE_EMISSOR2.DBComboBox2Exit(sender);
                        cdm.CD_Emissor_CTEFIMCODIBGE.AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                     end;

                     //remetente




                       if length(cdm.CD_Emissor_CTEREM_CPF_CNPJ.AsString)=0 then
                         begin

                          cdm.CD_Emissor_CTE.Edit;
                          if length(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF)=14 then
                             begin
                              cdm.CD_Emissor_CTEREM_pessoa.asinteger:=2;
                              cdm.CD_Emissor_CTEREM_CPF_CNPJ.AsString:=copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,1,2)+'.'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,3,3)+'.'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,6,3)+'/'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,9,4)+'-'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,13,2);

                             end
                          else
                          if length(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF)=11 then
                            begin
                              cdm.CD_Emissor_CTEREM_pessoa.asinteger:=1;
                              cdm.CD_Emissor_CTEREM_CPF_CNPJ.AsString:=copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,1,3)+'.'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,4,3)+'.'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,7,3)+'-'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF,10,2);
                            end;


                          cdm.CD_Emissor_CTEREM_IE.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
                          cdm.CD_Emissor_CTEREM_NOME.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
                          cdm.CD_Emissor_CTEREM_NOME_FANTASIA.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant;
                          cdm.CD_Emissor_CTEREM_ENDERECO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
                          cdm.CD_Emissor_CTEREM_NUMERO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
                          cdm.CD_Emissor_CTEREM_BAIRRO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
                          cdm.CD_Emissor_CTEREM_COMPLEMENTO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
                          cdm.CD_Emissor_CTEREM_CEP.AsString:=copy(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP),1,5)+'-'+copy(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP),6,6);
                          cdm.CD_Emissor_CTEREM_UF.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
                          cdm.CD_Emissor_CTEREM_CIDADE.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
                          cdm.CD_Emissor_CTEREM_COD_IBGE.Asinteger:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                          cdm.CD_Emissor_CTEREM_FONE_RES.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;










                          if length(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)=14 then
                             begin
                              cdm.CD_Emissor_ctedest_pessoa.asinteger:=2;
                              cdm.CD_Emissor_ctedest_CPF_CNPJ.AsString:=copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,1,2)+'.'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,3,3)+'.'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,6,3)+'/'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,9,4)+'-'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,13,2);

                             end
                          else
                          if length(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)=11 then
                            begin
                              cdm.CD_Emissor_ctedest_pessoa.asinteger:=1;
                              cdm.CD_Emissor_ctedest_CPF_CNPJ.AsString:=copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,1,3)+'.'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,4,3)+'.'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,7,3)+'-'+
                              copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF,10,2);
                            end;



                          cdm.CD_Emissor_ctedest_IE.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE;
                          cdm.CD_Emissor_ctedest_NOME.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
                          cdm.CD_Emissor_ctedest_NOME_FANTASIA.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
                          cdm.CD_Emissor_ctedest_ENDERECO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr;
                          cdm.CD_Emissor_ctedest_NUMERO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro;
                          cdm.CD_Emissor_ctedest_BAIRRO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro;
                          cdm.CD_Emissor_ctedest_COMPLEMENTO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl;
                          cdm.CD_Emissor_ctedest_CEP.AsString:=copy(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP),1,5)+'-'+copy(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP),6,6);
                          cdm.CD_Emissor_ctedest_UF.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
                          cdm.CD_Emissor_ctedest_CIDADE.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun;
                          cdm.CD_Emissor_ctedest_COD_IBGE.Asinteger:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                          cdm.CD_Emissor_ctedest_FONE_RES.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone;





                 end;


                 ShowMessage('Importação XML com sucesso!');
             end
             else
             Application.MessageBox('NFe já adicionada neste Conhecimento','',MB_ICONEXCLAMATION+MB_OK+MB_DEFBUTTON1);


     
   end;




end;

procedure TFrm_CTEXML.ButtonedEdit1RightButtonClick(Sender: TObject);
begin
  opendialog1.execute;
  if OpenDialog1.FileName<>'' then
     begin
     ButtonedEdit1.Text:= OpenDialog1.FileName;


        


     end;
end;

end.
