unit UFrm_Grade_CTE;

interface

uses    IdText,  IdAttachmentFile,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RzLabel, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, RzBckgnd, Vcl.Mask, RzEdit, Vcl.StdCtrls, RzPanel, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, pcnConversao,
  Data.FMTBcd, Data.SqlExpr, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdMessage, IdIntercept, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, dxGDIPlusClasses, RzButton;

type
  TFrm_Grade_CTE = class(TForm)
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    CancelarSemRegistronoSefaz1: TMenuItem;
    RzPanel1: TRzPanel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    mmemailMsg: TMemo;
    Proc_Clonar: TSQLStoredProc;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    ProgressBar1: TProgressBar;
    RzLabel2: TRzLabel;
    Edit2: TEdit;
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Visualizar: TAction;
    Act_Clonar: TAction;
    Act_Status: TAction;
    Act_Cancelar: TAction;
    Act_Excluir: TAction;
    Act_CartadeCorrecao: TAction;
    Act_Trajeto: TAction;
    Act_Reimprimir: TAction;
    Act_Enviar: TAction;
    Act_Exportar: TAction;
    Act_MDFe: TAction;
    Act_Sair: TAction;
    Act_Descordo: TAction;
    RzPanel4: TRzPanel;
    Image1: TImage;
    FDQuery1: TFDQuery;
    FDStoredProc1: TFDStoredProc;
    RzPanel5: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    RzBitBtn10: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    ImageList1: TImageList;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn13: TRzBitBtn;
    RzBitBtn14: TRzBitBtn;
    RzBitBtn15: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    procedure Button6Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure CancelarSemRegistronoSefaz1Click(Sender: TObject);
    procedure modelocte(sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure validar;
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_MDFeExecute(Sender: TObject);
    procedure Act_VisualizarExecute(Sender: TObject);
    procedure Act_ClonarExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_CartadeCorrecaoExecute(Sender: TObject);
    procedure Act_TrajetoExecute(Sender: TObject);
    procedure Act_ReimprimirExecute(Sender: TObject);
    procedure Act_EnviarExecute(Sender: TObject);
    procedure Act_ExportarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure Act_DescordoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Grade_CTE: TFrm_Grade_CTE;

implementation

{$R *.dfm}

uses UCDM, UFrm_CTE_EMISSOR, UDM, UFrm_CTE_Config, UFrm_CTE_CartaCorrecao,
  UFrmPrincipal, UFrm_CTE_EMISSOR2, UFrm_Rotas, UFrm_CTEDescordo, UFrm_MDF,
  UFrm_GradeCCorrecao;

procedure TFrm_Grade_CTE.Act_NovoExecute(Sender: TObject);
begin



   CDM.CD_Emissor_CTE.open;
   Frm_CTE_EMISSOR2:=TFrm_CTE_EMISSOR2.Create(self);
   CDM.CD_Emissor_CTE.Insert;
   //Frm_CTE_EMISSOR2.RzDBComboBox4.ReadOnly:=False;

cdm.CD_Emissor_CTEMODELO.asinteger:=Frm_Principal.CTe;
cdm.CD_Emissor_CTEID_TOMADOR.AsInteger:=0;

   modelocte(sender);

   Frm_CTE_EMISSOR2.DBComboBox1Exit(sender);
   Frm_CTE_EMISSOR2.RzLabel1.Caption:='EMITIR CT-e';

   if Frm_Principal.CTe = 67 then
      begin

      if  cdm.CD_CTE_CONFIGSERIE_OS.asstring='' then
                cdm.CD_Emissor_CTESERIE.asstring:='1'
                else
                 cdm.CD_Emissor_CTESERIE.asstring:=cdm.CD_CTE_CONFIGSERIE_OS.AsString;




      end
      else
        if Frm_Principal.CTe = 57 then
      begin


            if  cdm.CD_CTE_CONFIGSERIE.asstring='' then
                cdm.CD_Emissor_CTESERIE.asstring:='1'
                 else
                cdm.CD_Emissor_CTESERIE.asstring:=cdm.CD_CTE_CONFIGSERIE.AsString;
      end;




    CDM.CD_Emissor_CTEDESCSERV.AsInteger:=1;
    cdm.CD_Emissor_CTEMODAL.asinteger:=0;
    cdm.CD_Emissor_CTETIPO_SERV.AsInteger:=1;
   Frm_CTE_EMISSOR2.ShowModal;
   Frm_CTE_EMISSOR2.Destroy;
end;

procedure TFrm_Grade_CTE.Act_ReimprimirExecute(Sender: TObject);
begin
if CDM.CD_Emissor_CTESTATUS.Value = 1  then
   begin
   Frm_CTE_Config:=tFrm_CTE_Config.create(Self);
   Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;
   Frm_CTE_Config.lerconfiguracao;
   Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
   Frm_CTE_Config.ACBrCTe1.Conhecimentos.Imprimir;
   Frm_CTE_Config.Free;
   end;
end;

procedure TFrm_Grade_CTE.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Grade_CTE.Act_StatusExecute(Sender: TObject);
begin
if Length(CDM.CD_Emissor_CTECHAVE.AsString)<>0 then
    begin
    Frm_CTE_Config:=TFrm_CTE_Config.Create(self);
    Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.CTeChave := CDM.CD_Emissor_CTECHAVE.AsString;
    Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.Executar;
    if (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 100) or (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 110) then
       begin
         validar;
         Frm_CTE_Config.ACBrCTe1.Conhecimentos.Assinar;
         cdm.CD_Emissor_CTE.Edit;
         cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
         cdm.CD_Emissor_CTESTATUS.asinteger:=1;
         cdm.CD_Emissor_CTE.Post;
       end
       else
      if Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 101 then
        begin
         cdm.CD_Emissor_CTE.Edit;
         cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
         cdm.CD_Emissor_CTESTATUS.asinteger:=9;
         cdm.CD_Emissor_CTE.Post;
        end;

        CDM.CD_Emissor_CTE.ApplyUpdates(0);

    end;
end;

procedure TFrm_Grade_CTE.Act_TrajetoExecute(Sender: TObject);
var
entrada,saida : string;
begin



   if CDM.CD_Emissor_CTE.RecordCount<>0 then
     begin

      entrada:=StringReplace(cdm.CD_Emissor_CTEinicidade.AsString,' ','+',[rfReplaceAll])+',+'+cdm.CD_Emissor_CTEINIUF.AsString;
      saida:=StringReplace(cdm.CD_Emissor_CTEFIMCIDADE.AsString,' ','+',[rfReplaceAll])+',+'+cdm.CD_Emissor_CTEfIMUF.AsString;
    //  edit2.Text:='https://www.google.com.br/maps/dir/'+ENTRADA+'/'+SAIDA+'/';
     Frm_Rotas:=TFrm_Rotas.Create(self);
     Frm_Rotas.WebBrowser1.Navigate('https://www.google.com.br/maps/dir/'+ENTRADA+'/'+SAIDA+'/');

     Frm_rotas.ShowModal;
     end;
end;

procedure TFrm_Grade_CTE.Act_VisualizarExecute(Sender: TObject);
begin
if CDM.CD_Emissor_CTE.RecordCount<>0 then
  begin
    Frm_CTE_EMISSOR2:=TFrm_CTE_EMISSOR2.Create(self);
      if CDM.CD_Emissor_CTESTATUS.Value = 0  then
         begin
         CDM.CD_Emissor_CTE.edit;
         modelocte(sender);
            CDM.CD_Emissor_CTE.edit;
         end
         else
         if CDM.CD_Emissor_CTESTATUS.Value = 9 then
            if Application.MessageBox('deseja reutilizar este Conhecimento??','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1)=IDYES then
               begin
                 CDM.CD_Emissor_CTE.Edit;
                 CDM.CD_Emissor_CTESTATUS.AsInteger:=0;
                 CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime:=Now;
                 CDM.CD_Emissor_CTEHORA.AsDateTime:=Now;
                 CDM.CD_Emissor_CTECHAVE.Clear;
                 CDM.CD_Emissor_CTENUMCTE.Clear;
                 CDM.CD_Emissor_CTE.post;
                 CDM.CD_Emissor_CTE.ApplyUpdates(0);
               end;
      // Frm_CTE_EMISSOR2.DBComboBox1Exit(sender);

      Frm_CTE_EMISSOR2.ShowModal;
  end;
end;

procedure TFrm_Grade_CTE.Act_CancelarExecute(Sender: TObject);
var
vAux : string;
begin
    if cdm.CD_Emissor_CTE.RecordCount<>0 then
       begin
        if CDM.CD_Emissor_CTESTATUS.Value = 1  then
           begin
           Frm_CTE_Config:=TFrm_CTE_Config.Create(self);
           Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;

           Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+FormatDateTime('mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
           if not(InputQuery('Cancelamento do CTe:', 'Justificativa',vAux)) then
           exit;

           Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Clear;
             Frm_CTE_Config.lerconfiguracao;
           with Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Add do
            begin
             infEvento.nSeqEvento      := 1; // Para o Evento de Cancelamento: nSeqEvento sempre = 1
             infEvento.chCTe           := Copy(Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].CTe.infCTe.Id, 4, 44);
             infEvento.CNPJ            := DM.EmitenteCNPJ.AsString;
             infEvento.dhEvento        := now;
             infEvento.tpEvento        := teCancelamento;
             infEvento.detEvento.xJust := trim(vAux);
             infEvento.detEvento.nProt := Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].CTe.procCTe.nProt;
            end;

            // Numero do Lote do Evento
           Frm_CTE_Config.ACBrCTe1.EnviarEvento(1);


                             //      ShowMessage(IntToStr(Frm_CTE_Config.ACBrcte1.WebServices.Retorno.cStat));

                  Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.CTeChave := CDM.CD_Emissor_CTECHAVE.AsString;
                  Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.Executar;
            if (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 100) or (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 110) then
               begin
                 cdm.CD_Emissor_CTE.Edit;
                 cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
                 cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                 cdm.CD_Emissor_CTE.Post;







               end
               else
              if Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 101 then
                begin
                 cdm.CD_Emissor_CTE.Edit;
                 cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
                 cdm.CD_Emissor_CTESTATUS.asinteger:=9;
                 cdm.CD_Emissor_CTE.Post;
                end;

                                     CDM.CD_Emissor_CTE.ApplyUpdates(0);
                                  if (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 101)  then
                                      begin




                                                        cdm.CD_Emissor_CTE.Edit;
                                                        cdm.CD_Emissor_CTESTATUS.asinteger:=9;
                                                        cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
                                                        cdm.CD_Emissor_CTE.post;
                                                        cdm.CD_Emissor_CTE.ApplyUpdates(0);

                                               Frm_Principal.log.Close;
                                               Frm_Principal.log.CommandText:='INSERT INTO MDF_LOG(id,ID_USER,NOME,DATA,HORA,PROCESSO,COMPUTADOR,ID_EMPRESA,DADOS) '+
                                                                    'VALUES(:i,'+
                                                                              ' :ID,'+
                                                                              ' :NOME, '+
                                                                              ' current_date,'+
                                                                              ' current_time,'+
                                                                              ' :PROC,'+
                                                                              ' :PC, '+
                                                                              ' :EMPR, '+
                                                                              ' :Dados)';


                                                         dm.id.close;
                                                         dm.id.SQL.Clear;
                                                         dm.id.SQL.Add('select gen_id(GEN_MDF_LOG_ID,1) from rdb$database');
                                                         dm.id.ExecSQL();
                                                         dm.id.Open;

                                                    Frm_Principal.log.Params[0].AsInteger:=dm.IDGEN_ID.AsInteger;
                                                    Frm_Principal.log.Params[1].AsInteger:=ID;
                                                    Frm_Principal.log.Params[2].ASSTRING:=RZLabel1.caption;
                                                    Frm_Principal.log.Params[3].AsSTRING:='CANCELAMENTO';
                                                    Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                    Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                    Frm_Principal.log.Params[6].Asstring:='CANCELAMENTO DE CTE  Nº'+CDM.CD_Emissor_CTENUMCTE.AsString +' MOTIVO:'+vAux;
                                                    Frm_Principal.log.ExecSQL();                                                              {
                                                                                       Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile( Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID+'-cte.xml');
                                                         Frm_CTE_Config.ACBrCTe1.Conhecimentos.Imprimir;   }

                                      end;
           end;


          end;

     Frm_CTE_Config.Free;

end;

procedure TFrm_Grade_CTE.Act_CartadeCorrecaoExecute(Sender: TObject);
begin

   Frm_GradeCCorrecao:=TFrm_GradeCCorrecao.Create(self);
   Frm_GradeCCorrecao.ShowModal;
end;

procedure TFrm_Grade_CTE.Act_ClonarExecute(Sender: TObject);
begin
if CDM.CD_Emissor_CTE.RecordCount<>0 then
   begin

    if MessageDlg('Deseja Clonar Este Registro?',mtConfirmation,[mbYes,mbno],0)=mryes then
       begin
           Proc_Clonar.Params[0].AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
           Proc_Clonar.ExecProc;
            CDM.CD_Emissor_CTE.close;
            CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where modelo ='+IntToStr(Frm_Principal.CTe)+' AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' ORDER BY id descending';
            CDM.CD_Emissor_CTE.open;

           ShowMessage('Registro Clonado Com sucesso!');
           CDM.CD_Emissor_CTE.First;
           Act_VisualizarExecute(sender);
       end;



   end;
end;

procedure TFrm_Grade_CTE.Act_DescordoExecute(Sender: TObject);
begin
   Frm_CTEDescordo:=TFrm_CTEDescordo.Create(self);

   Frm_CTEDescordo.ShowModal;
   Frm_CTEDescordo.Free;
end;

procedure TFrm_Grade_CTE.Act_EnviarExecute(Sender: TObject);
var
para : string;


  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sXML,PDF : string;
begin

  if cdm.CD_Emissor_CTESTATUS.AsInteger = 1 then
     begin
     try

     if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime))then
            ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime));

      // instanciação dos objetos
      IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSMTP := TIdSMTP.Create(Self);
      IdMessage := TIdMessage.Create(Self);
              if not(InputQuery('Enviar Email', 'Email de destino', Para))
                   then exit;

                   Panel6.Visible:=true;
          try
            // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
            IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
            IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;
             ProgressBar1.Position:=ProgressBar1.Position+10;
            // Configuração do servidor SMTP (TIdSMTP)
            IdSMTP.IOHandler := IdSSLIOHandlerSocket;
            IdSMTP.UseTLS := utUseImplicitTLS;
            IdSMTP.AuthType := satDefault;
            IdSMTP.Port := dm.EmitenteSMTP_PORTA.AsInteger;
            IdSMTP.Host := dm.EmitenteSMTP_ENDERECO.asstring;
            IdSMTP.Username := dm.EmitenteSMTP_USUARIO.asstring;
            IdSMTP.Password := dm.EmitenteSMTP_SENHA.AsString;
             ProgressBar1.Position:=ProgressBar1.Position+10;
            // Configuração da mensagem (TIdMessage)
            IdMessage.From.Address := dm.EmitenteSMTP_USUARIO.asstring;
            IdMessage.From.Name := dm.EmitenteRAZAO_SOCIAL.asstring;
            IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
            IdMessage.Recipients.Add.Text := para;
            IdMessage.Subject := 'CTe nº'+cdm.CD_Emissor_CTENUMCTE.AsString;
            IdMessage.Encoding := meMIME;
            ProgressBar1.Position:=ProgressBar1.Position+10;
            // Configuração do corpo do email (TIdText)
            IdText := TIdText.Create(IdMessage.MessageParts);
            IdText.Body.Add('Em Anexo Conhecimento de Transporte nº'+cdm.CD_Emissor_CTENUMCTE.AsString);
            IdText.ContentType := 'text/plain; charset=iso-8859-1';

            // Opcional - Anexo da mensagem (TIdAttachmentFile)

               if not FileExists(CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.pdf') then
               begin
                   Frm_CTE_Config:=tFrm_CTE_Config.create(self);
                   Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;
                   Frm_CTE_Config.lerconfiguracao;
                   Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
                   Frm_CTE_Config.ACBrCTe1.DACTE.PathPDF:=CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime);
                   Frm_CTE_Config.ACBrCTeDACTeRL1.ImprimirDACTEPDF;
               end;
           pdf := CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.pdf';
           sXML := CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml';
            if FileExists(pdf) then
            begin
              TIdAttachmentFile.Create(IdMessage.MessageParts, pdf);
            end;

               if FileExists(sxml) then
            begin
              TIdAttachmentFile.Create(IdMessage.MessageParts,sxml);
            end;

                 {
            if FileExists(sXML) then
            begin
              TIdAttachmentFile.Create(IdMessage.MessageParts, sXML);
            end;   }
              ProgressBar1.Position:=ProgressBar1.Position+100;
            // Conexão e autenticação
            try

              IdSMTP.Connect;
              IdSMTP.Authenticate;
            except
              on E:Exception do
              begin
              Panel6.Visible:=false;
                MessageDlg('Erro na conexão ou autenticação: ' +
                  E.Message, mtWarning, [mbOK], 0);
                Exit;
              end;
            end;
             ProgressBar1.Position:=ProgressBar1.Position+10;
            // Envio da mensagem
            try
            Panel6.Visible:=false;
              IdSMTP.Send(IdMessage);
              MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
            except
              On E:Exception do
              begin
              Panel6.Visible:=false;
              ShowMessage(E.Message);
              end;
            end;
          finally


            // desconecta do servidor
            IdSMTP.Disconnect;
            // liberação da DLL
            UnLoadOpenSSLLibrary;
            // liberação dos objetos da memória
            FreeAndNil(IdMessage);
            FreeAndNil(IdSSLIOHandlerSocket);
            FreeAndNil(IdSMTP);
          end;

     except
      if FileExists(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml') then
         else
         ShowMessage('caminho do xml inválido!');
     end;
   end;
end;



procedure TFrm_Grade_CTE.Act_ExcluirExecute(Sender: TObject);
begin
if (CDM.CD_Emissor_CTESTATUS.Value = 9) OR (CDM.CD_Emissor_CTESTATUS.Value = 0) then
 if  Application.MessageBox('Deseja Realmente excluir o registro selecionado?','',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2)= mryes then
    begin
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

                                                    Frm_Principal.log.Params[0].AsInteger:=ID;
                                                    Frm_Principal.log.Params[1].ASSTRING:=RzLabel1.Caption;
                                                    Frm_Principal.log.Params[2].AsSTRING:='exclusão';
                                                    Frm_Principal.log.Params[3].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                    Frm_Principal.log.Params[4].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                    Frm_Principal.log.Params[5].Asstring:='EXCLUSÃO DO CTE  Nº'+CDM.CD_Emissor_CTENUMCTE.AsString;
                                                    Frm_Principal.log.ExecSQL();
     CDM.CD_Emissor_CTE.Delete;
     cdm.CD_Emissor_CTE.ApplyUpdates(0);
    end;
end;

procedure TFrm_Grade_CTE.Act_ExportarExecute(Sender: TObject);
Var Arquivo : TStringList;
i : integer;
caminho: string;
Begin
  if CDM.CD_Emissor_CTE.RecordCount<>0 then
     begin
        if DBGrid1.SelectedRows.CurrentRowSelected = false then
          DBGrid1.SelectedRows.CurrentRowSelected := true;
        if SaveDialog1.Execute then

             if SaveDialog1.FileName<>'' then
                begin

                 caminho:=ExtractFilePath(SaveDialog1.FileName);
                end;





        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
            begin

                 CDM.CD_Emissor_CTE.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

                    if Length(CDM.CD_Emissor_CTECHAVE.AsString)<>0 then
                       begin
                          Arquivo := TStringList.Create();
                          try
                          Arquivo.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml'); // Carrega o arquivo de origem


                           Arquivo.SaveToFile (caminho+CDM.CD_Emissor_CTECHAVE.AsString+'.xml'); //salva o arquivo em outro lugar, como o mesmo nome, mas não necessária precisar ser com o mesmo nome.
                           except

                          end;
                          Arquivo.Destroy;
                       end;
            end;
            ShowMessage('Exportação Concluida!!');
     end;


end;

procedure TFrm_Grade_CTE.Act_MDFeExecute(Sender: TObject);
begin

           FDStoredProc1.Params[0].AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
           FDStoredProc1.ExecProc;


           DM.CD_Mdf_Dados.Close;
           DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS '+
                                        'WHERE MDFE_DADOS.id =(select FIRST 1 mdf_doccte.id_mdfe FROM  '+
                                        'mdf_doccte WHERE mdf_doccte.chave_cte =:F)';
           DM.CD_Mdf_Dados.Params[0].AsString:=CDM.CD_Emissor_CTECHAVE.AsString;
          DM.CD_Mdf_Dados.OPEN;
          if DM.CD_Mdf_Dados.RecordCount<>0 then
             BEGIN
             Frm_MDF:=TFrm_MDF.Create(SELF);
             CLOSE;
             fRM_MDF.ShowModal;
             END;



{

           select mdf_doccte.id_mdfe FROM  mdf_doccte
                      WHERE mdf_doccte.chave_cte =:F}




end;

procedure TFrm_Grade_CTE.Button6Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Grade_CTE.CancelarSemRegistronoSefaz1Click(Sender: TObject);
var
  senha: string[8];
begin
 PostMessage(Handle, Frm_Principal.InputBoxMsg, 0, 0);
 senha:=inputbox('Senha de Acesso','Digite a Senha de Acesso','');

  if (senha<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
  begin //no lugar de Master digite sua senha
  SHOWMESSAGE('SENHA INCORRETA');

  end
  else
  begin
      cdm.CD_Emissor_CTE.Edit;
      cdm.CD_Emissor_CTESTATUS.AsInteger:=9;
      cdm.CD_Emissor_CTE.ApplyUpdates(0);
  end;

end;

procedure TFrm_Grade_CTE.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if CDM.CD_Emissor_CTESTATUS.AsInteger =0  then
      begin
     // DBGrid1.Canvas.Brush.Color := clWhite;
       DBGrid1.Canvas.Font.Color := clBlack;
      // DBGrid1.Columns[0].Color := clBlack;

      end
        else
         if CDM.CD_Emissor_CTESTATUS.Value = 1  then
            begin

               DBGrid1.Canvas.Font.Color := clBlue//clWhite;
            end
            else

                 if CDM.CD_Emissor_CTESTATUS.Value = 9  then
                    begin
                 //   DBGrid1.Canvas.font.Color := clSilver;
                    DBGrid1.Canvas.Font.Color := clBtnFace; //clWhite;

                    end;



      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TFrm_Grade_CTE.Edit1Change(Sender: TObject);
begin
if Length(Edit1.Text)<> 0 then
  begin
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where modelo ='+IntToStr(Frm_Principal.CTe)+' and  NUMCTE ='+Edit1.Text+' AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' ORDER BY id descending';
  CDM.CD_Emissor_CTE.open;
  end
  else
  BEGIN
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where modelo ='+IntToStr(Frm_Principal.CTe)+' and CHAVE LIKE:C AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' ORDER BY id descending';
  CDM.CD_Emissor_CTE.PARAMS[0].AsString:='%'+Edit1.Text+'%';
  CDM.CD_Emissor_CTE.open;
  END;
end;

procedure TFrm_Grade_CTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Release;
end;

procedure TFrm_Grade_CTE.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
  RzDateTimeEdit3.date:=StrToDate('01/'+FormatDateTime('mm"/"yyyy',date));
  RzDateTimeEdit4.Date:=date;
  GroupBox2Exit(Sender);
  if Frm_Principal.CTe=67 then
     RzLabel2.Visible:=true;

     if cdm.CD_Emissor_CTE.RecordCount<>0 then
        DBGrid1.SelectedRows.CurrentRowSelected:=true;

end;

procedure TFrm_Grade_CTE.GroupBox2Exit(Sender: TObject);
begin
begin
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where modelo ='+IntToStr(Frm_Principal.CTe)+' and DATA_EMISSAO >=:ini and  DATA_EMISSAO <=:fim AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' ORDER BY id descending';
  CDM.CD_Emissor_CTE.Params[0].DataType:=ftDate;
  CDM.CD_Emissor_CTE.Params[1].DataType:=ftDate;
  CDM.CD_Emissor_CTE.Params[0].AsDate:=RzDateTimeEdit3.Date;
  CDM.CD_Emissor_CTE.Params[1].AsDate:=RzDateTimeEdit4.Date;
  CDM.CD_Emissor_CTE.open;
end;
end;

procedure TFrm_Grade_CTE.modelocte(sender: TObject);
begin
     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.Clear;
     Frm_CTE_EMISSOR2.RzDBComboBox5.Values.clear;
  if Frm_Principal.CTe = 57 then
     begin




     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Normal');
     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Subcontratação');
     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Redespacho');

     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('1');
     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('2');
     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('3'); 

        Frm_CTE_EMISSOR2.RzGroupBox12.Visible:=false;
     end
     else
   if Frm_Principal.CTe = 67 then
     begin

//     cdm.CD_Emissor_CTEMODAL.AsInteger:=0;
   //  Frm_CTE_EMISSOR2.RzDBComboBox4.ReadOnly:=true;
               Frm_CTE_EMISSOR2.RzPanel4.Enabled:=false;
               Frm_CTE_EMISSOR2.RzPanel5.Enabled:=false;
               Frm_CTE_EMISSOR2.RzPanel6.Enabled:=false;
               Frm_CTE_EMISSOR2.RzPanel7.Enabled:=false;
               Frm_CTE_EMISSOR2.Panel3.visible:=false;


     Frm_CTE_EMISSOR2.button2.visible:=true;
     Frm_CTE_EMISSOR2.RzLabel1.Font.Color:=clYellow;


     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Transp. de Pessoas');
     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Transp. de Valores');
     Frm_CTE_EMISSOR2.RzDBComboBox5.Items.add('Excesso de Bagagem');

     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('4');
     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('5');
     Frm_CTE_EMISSOR2.RzDBComboBox5.values.add('6');

     Frm_CTE_EMISSOR2.RzGroupBox12.Visible:=true;
     Frm_CTE_EMISSOR2.RzDBComboBox11.Items.Clear;
     Frm_CTE_EMISSOR2.RzDBComboBox11.Values.Clear;
     Frm_CTE_EMISSOR2.RzDBComboBox11.Values.Add('0');
     Frm_CTE_EMISSOR2.RzDBComboBox11.Values.Add('4');

     Frm_CTE_EMISSOR2.RzDBComboBox11.Items.Add('Emitente');
     Frm_CTE_EMISSOR2.RzDBComboBox11.Items.Add('Outro');



     end;
end;

procedure TFrm_Grade_CTE.validar;
begin
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+FormatDateTime('mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.Validar;

end;

end.











