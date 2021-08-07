unit UFrm_NaoEncerrado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, RzPanel, Vcl.XPMan, Vcl.StdCtrls, Vcl.Buttons,
  RzLabel, System.Actions, Vcl.ActnList;

type
  TFrm_NaoEncerrado = class(TForm)
    ImageList1: TImageList;
    FDTable1: TFDTable;
    FDTable1CHAVE: TStringField;
    FDTable1PROTOCOLO: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDTable1NUMERO: TStringField;
    FDTable1BT: TIntegerField;
    XMLDocument1: TXMLDocument;
    Query_Busca: TFDQuery;
    RzPanel1: TRzPanel;
    XPManifest1: TXPManifest;
    Button1: TButton;
    RzLabel1: TRzLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Button4: TButton;
    Act_Cancelar: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    var
     UF : STRING;
     IBGE : INTEGER;
  end;

var
  Frm_NaoEncerrado: TFrm_NaoEncerrado;

implementation

{$R *.dfm}

uses UDM, UFrm_MDFConfig,pcnConversao,pmdfeConversaoMDFe, pmdfeMDFe,
  UFrm_EncerrUF, UFrmPrincipal, UFrmLogin, UFrmLogin_Acao, UFrmGrade;



procedure TFrm_NaoEncerrado.Action1Execute(Sender: TObject);
begin
close;
end;

procedure TFrm_NaoEncerrado.Act_CancelarExecute(Sender: TObject);
var
 vAux : String;
begin
                        FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                        FrmLogin_Acao.RzLabel4.Caption :='Liberação para Cancelar';
                        FrmLogin_Acao.ShowModal;


                         if L = 1 then
                            begin


                          Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;

                           if Application.MessageBox('deseja realmente cancelar o MDFe selecionado?','',MB_YESNO+MB_ICONQUESTION)= mryes then
                             begin



                                        Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.WebServices.Visualizar:=FALSE;
                                        Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave := FDTable1CHAVE.AsString;
                                        Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;

                                        Frm_MDFCOnfig.MemoResp.Lines.Text :=  UTF8Encode( Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetWS);
                                        Frm_MDFCOnfig.MemoResp.Lines.SaveToFile(FDTable1CHAVE.AsString+'.XML');
                                        XMLDocument1.LoadFromFile(FDTable1CHAVE.AsString+'.XML');





                                     if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                                          then exit;



                                         with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                          begin
                                           infEvento.chMDFe   := FDTable1CHAVE.AsString;  //Copy(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
                                           infEvento.CNPJCPF     := DM.EmitenteCNPJ.Text;
                                           infEvento.dhEvento := now;
                                      //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
                                      //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
                                      //                  teEncerramento);
                                           infEvento.tpEvento   := teCancelamento;
                                           infEvento.nSeqEvento := 1;

                                           infEvento.detEvento.nProt := FDTable1PROTOCOLO.AsString;
                                           infEvento.detEvento.xJust := trim(vAux);
                                          end;

                                         Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento(1); // 1 = Numero do Lote

                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=FDTable1CHAVE.AsString;
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 101 then
                                                   begin
                                                   Frm_Principal.log.Close;
                                                   Frm_Principal.log.CommandText:='update mdfe_dados set status =:s where mdfe_dados.chave =:c';
                                                   Frm_Principal.log.Params[0].AsInteger:=3;
                                                   Frm_Principal.log.Params[1].ASSTRING:=FDTable1CHAVE.AsString;
                                                   Frm_Principal.Log.ExecSQL();

                                                         dm.CD_Mdf_Dados.Refresh;


                                                         {   Frm_Principal.log.Close;
                                                            Frm_Principal.log.CommandText:='INSERT INTO MDF_LOG(id,ID_USER,NOME,DATA,HORA,PROCESSO,COMPUTADOR,ID_EMPRESA,DADOS) '+
                                                            'VALUES((select gen_id(GEN_MDF_LOG_ID,1) from rdb$database),'+
                                                                      ' :ID,'+
                                                                      ' :NOME, '+
                                                                      ' current_date,'+
                                                                      ' current_time,'+
                                                                      ' :PROC,'+
                                                                      ' :PC, '+
                                                                      ' :EMPR, '+
                                                                      ' :Dados)';



                                                        Frm_Principal.log.Params[0].AsInteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                        Frm_Principal.log.Params[1].ASSTRING:=usuario;
                                                        Frm_Principal.log.Params[2].AsSTRING:='Cancelamento DE MDFe Nº'+FDTable1NUMERO.AsString;
                                                        Frm_Principal.log.Params[3].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                        Frm_Principal.log.Params[4].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                        Frm_Principal.log.Params[5].Asstring:='Cancelamento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS;
                                                        Frm_Principal.log.ExecSQL(); }















                                                         FDTable1.Delete;



                                                       ShowMessage('MDF-e Cancelado com Sucesso!');







                              end
                               else
                                l:=0;
                            end
                            else
                            ShowMessage('Não foi possivel fazer o cancelamento do MDFe Selecionado!');

                            FrmLogin_Acao:= nil;
                end
             else
               ShowMessage('fora do prazo de cancelamento!!');
end;

procedure TFrm_NaoEncerrado.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_NaoEncerrado.DBGrid1CellClick(Column: TColumn);

begin
if DBGrid1.SelectedField.FieldName = 'BT' then

begin
       if id<>1 then
        begin
         FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
         FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';

         FrmLogin_Acao.ShowModal;
        end
        else
        L:=1;
//    if FileExists(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML') then


 if L = 1 then
    begin

    if MessageDlg('deseja realmente encerrar o MDFe selecionado?',mtConfirmation,[mbyes,mbno],0)= mryes then
       begin


              Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.WebServices.Visualizar:=FALSE;
              Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave := FDTable1CHAVE.AsString;
              Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;

              Frm_MDFCOnfig.MemoResp.Lines.Text :=  UTF8Encode( Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetWS);
              Frm_MDFCOnfig.MemoResp.Lines.SaveToFile(FDTable1CHAVE.AsString+'.XML');
              XMLDocument1.LoadFromFile(FDTable1CHAVE.AsString+'.XML');


              Query_Busca.Close;
              query_busca.Params[0].AsString:=FDTable1CHAVE.AsString;
              query_busca.open;

              if QUERY_BUSCA.RecordCount<>0 then
                 BEGIN
                    UF:=Query_Busca.FieldByName('uf_descarregamento').ASSTRING;
                    IBGE:=Query_Busca.FieldByName('COD_MUN').AsInteger;
                 END
                 ELSE
                 begin

                 Frm_EncerrUF:=TFrm_EncerrUF.Create(self);
                 Frm_EncerrUF.ShowModal;
                 Frm_EncerrUF.Free;
                 end;

                             Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;

                                         if (LENGTH(UF)>0) AND (IBGE>0) then
                                         BEGIN


                                           with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                                begin
                                                                   infEvento.tpEvento := teEncerramento;
                                                                   InfEvento.chMDFe   := FDTable1CHAVE.AsString;
                                                                   infEvento.CNPJCPF  := DM.EmitenteCNPJ.AsString;
                                                                   infEvento.dhEvento := now;
                                                                   infEvento.nSeqEvento := 1;
                                                                    infEvento.detEvento.nProt := FDTable1PROTOCOLO.AsString;
                                                                    infEvento.detEvento.dtEnc := Date;
                                                                    infEvento.detEvento.cUF   := UFtoCUF(UF);
                                                                    infEvento.detEvento.cMun  := IBGE;//Frm_EncerraMDF.FDQuery1COD_MUN.Value;

                                                end;


                                                                 Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote




                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=FDTable1CHAVE.AsString;
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 132 then
                                                   begin
                                                   Frm_Principal.log.Close;
                                                   Frm_Principal.log.CommandText:='update mdfe_dados set status =:s,D_ENCERRA = current_date where mdfe_dados.chave =:c';
                                                   Frm_Principal.log.Params[0].AsInteger:=2;
                                                   Frm_Principal.log.Params[1].ASSTRING:=FDTable1CHAVE.AsString;
                                                   Frm_Principal.Log.ExecSQL();

                                                         dm.CD_Mdf_Dados.Refresh;

                                                                           {

                                                            Frm_Principal.log.Close;
                                                            Frm_Principal.log.CommandText:='INSERT INTO MDF_LOG(id,ID_USER,NOME,DATA,HORA,PROCESSO,COMPUTADOR,ID_EMPRESA,DADOS) '+
                                                            'VALUES((select gen_id(GEN_MDF_LOG_ID,1) from rdb$database),'+
                                                                      ' :ID,'+
                                                                      ' :NOME, '+
                                                                      ' current_date,'+
                                                                      ' current_time,'+
                                                                      ' :PROC,'+
                                                                      ' :PC, '+
                                                                      ' :EMPR, '+
                                                                      ' :Dados)';



                                                        Frm_Principal.log.Params[0].AsInteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                        Frm_Principal.log.Params[1].ASSTRING:=usuario;
                                                        Frm_Principal.log.Params[2].AsSTRING:='ENCERRAMENTO DE MDFe Nº'+FDTable1NUMERO.AsString;
                                                        Frm_Principal.log.Params[3].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                        Frm_Principal.log.Params[4].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                        Frm_Principal.log.Params[5].Asstring:='Encerramento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS;
                                                        Frm_Principal.log.ExecSQL();    }













                                                         FDTable1.Delete;



                                                       ShowMessage('MDF-e Encerrado com Sucesso!');






                                                   end
                                                   else
                                                   MessageDlg('Ouve algum erro para encerrar o mdfe selecionado!',mtError,[mbOK],0);


                                         END;
       end;

            if FDTable1.RecordCount=0 then
               close;

 END;
























    DeleteFile(FDTable1CHAVE.AsString+'.XML')

  end;
end;

procedure TFrm_NaoEncerrado.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =2 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
end;

end.

