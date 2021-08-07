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
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.ComCtrls;

type
  TFrm_Grade_CTE = class(TForm)
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    RzSpacer2: TRzSpacer;
    RzSpacer4: TRzSpacer;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button15: TButton;
    Button16: TButton;
    Button9: TButton;
    PopupMenu1: TPopupMenu;
    CancelarSemRegistronoSefaz1: TMenuItem;
    RzPanel1: TRzPanel;
    RzSpacer8: TRzSpacer;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    RzBackground2: TRzBackground;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    RzBackground4: TRzBackground;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    RzSpacer1: TRzSpacer;
    Label3: TLabel;
    RzSpacer12: TRzSpacer;
    Label10: TLabel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    ImageList1: TImageList;
    mmemailMsg: TMemo;
    Button1: TButton;
    Button5: TButton;
    RzSpacer7: TRzSpacer;
    Proc_Clonar: TSQLStoredProc;
    Button7: TButton;
    SaveDialog1: TSaveDialog;
    Panel6: TPanel;
    ProgressBar1: TProgressBar;
    RzLabel2: TRzLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CancelarSemRegistronoSefaz1Click(Sender: TObject);
    procedure modelocte(sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure validar;
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
  UFrmPrincipal, UFrm_CTE_EMISSOR2, UFrm_CTENFE;

procedure TFrm_Grade_CTE.Button15Click(Sender: TObject);
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

procedure TFrm_Grade_CTE.Button16Click(Sender: TObject);
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
                MessageDlg('Erro ao enviar a mensagem: ' +
                  E.Message, mtWarning, [mbOK], 0);
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
        end;
end;
{
  if cdm.CD_Emissor_CTESTATUS.AsInteger = 1 then
     begin
           if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime))then
            ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime));


        mmemailMsg.Lines.Clear;
        mmemailMsg.Lines.add('segue em anexo Conhecimento de Transporte nº'+cdm.CD_Emissor_CTENUMCTE.AsString);

           if not(InputQuery('Enviar Email', 'Email de destino', Para))
           then exit;






         Frm_CTE_Config:=TFrm_CTE_Config.Create(self);
           Frm_CTE_Config.ACBrMail1.clear;
           Frm_CTE_Config.ACBrMail1.host:=DM.EmitenteSMTP_ENDERECO.AsString;
            Frm_CTE_Config.ACBrMail1.Username:=DM.EmitenteSMTP_USUARIO.AsString;
           Frm_CTE_Config.ACBrMail1.Port:=DM.EmitenteSMTP_PORTA.AsString;
            Frm_CTE_Config.ACBrMail1.Password:=DM.EmitenteSMTP_SENHA.AsString;
            frm_cte_config.ACBrMail1.From:=DM.EmitenteEMAIL.AsString;
           frm_cte_config.ACBrMail1.SetSSL:=false;

           Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');


           Frm_CTE_Config.ACBrCTe1.DACTE.PathPDF:=CDM.CD_CTE_CONFIGPATCH.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime);
           Frm_CTE_Config.ACBrCTeDACTeRL1.ImprimirDACTEPDF;

           Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].EnviarEmail(Para
                                                     ,'Conhecimento de Transporte '
                                                     , mmEmailMsg.Lines
                                                     , true //Enviar PDF junto
                                                     , nil //Lista com emails que serão enviado cópias - TStrings
                                                     , nil // Lista de anexos - TStrings
                                                      );

                                                      mmemailMsg.destroy;
     end;      }





procedure TFrm_Grade_CTE.Button1Click(Sender: TObject);
begin

        Frm_CTE_CartaCorrecao:=TFrm_CTE_CartaCorrecao.Create(self);
        cdm.CD_Carta.open;

        cdm.CD_Carta.Insert;
        if CDM.CD_Emissor_CTESTATUS.AsInteger = 2 then

        cdm.CD_CartaCHAVE.AsString:=CDM.CD_Emissor_CTECHAVE.AsString;

        Frm_CTE_CartaCorrecao.ShowModal;
        Frm_CTE_CartaCorrecao.Free;
end;

procedure TFrm_Grade_CTE.Button2Click(Sender: TObject);
begin
  CDM.CD_Emissor_CTE.open;
  Frm_CTE_emissor2:=TFrm_CTE_EMISSOR2.Create(self);
   CDM.CD_Emissor_CTE.Insert;
   Frm_CTE_emissor2.RzDBComboBox4.ReadOnly:=False;

cdm.CD_Emissor_CTEMODELO.asinteger:=Frm_Principal.CTe;
cdm.CD_Emissor_CTEID_TOMADOR.AsInteger:=0;

   modelocte(sender);

   Frm_CTE_emissor2.DBComboBox1Exit(sender);
   Frm_CTE_emissor2.RzLabel1.Caption:='EMITIR CT-e';

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
   Frm_CTE_emissor2.ShowModal;
   Frm_CTE_emissor2.Destroy;
end;

procedure TFrm_Grade_CTE.Button3Click(Sender: TObject);
begin
if CDM.CD_Emissor_CTE.RecordCount<>0 then
  begin
    Frm_CTE_EMISSOR:=TFrm_CTE_EMISSOR.Create(self);
      if CDM.CD_Emissor_CTESTATUS.Value = 0  then

         CDM.CD_Emissor_CTE.edit;
         modelocte(sender);
            CDM.CD_Emissor_CTE.edit;
       Frm_CTE_EMISSOR.DBComboBox1Exit(sender);

      Frm_CTE_EMISSOR.ShowModal;
  end;
end;

procedure TFrm_Grade_CTE.Button4Click(Sender: TObject);
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
                      Frm_Principal.log.ExecSQL();




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

                                                                                                            {
                                                         Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile( Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID+'-cte.xml');
                                                         Frm_CTE_Config.ACBrCTe1.Conhecimentos.Imprimir;   }

                                      end;
           end;


          end;

     Frm_CTE_Config.Free;
end;

procedure TFrm_Grade_CTE.Button5Click(Sender: TObject);
begin
if CDM.CD_Emissor_CTE.RecordCount<>0 then
   begin
    try
    if MessageDlg('Deseja Clonar Este Registro?',mtConfirmation,[mbYes,mbno],0)=mryes then
       begin
           Proc_Clonar.Params[0].AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
           Proc_Clonar.ExecProc;
           CDM.CD_Emissor_CTE.close;
            CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where modelo ='+IntToStr(Frm_Principal.CTe)+' AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' ORDER BY id descending';
            CDM.CD_Emissor_CTE.open;

           ShowMessage('Registro Clonado Com sucesso!');
           CDM.CD_Emissor_CTE.First;
           Button3Click(sender);
       end;
    Except

    end;
   end;
end;

procedure TFrm_Grade_CTE.Button6Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Grade_CTE.Button7Click(Sender: TObject);
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

                 CDM.CD_Emissor_CTE.GotoBookmark(pointer(DBGrid1.SelectedRows.Items[i]));

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



End;


procedure TFrm_Grade_CTE.Button9Click(Sender: TObject);
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
         Frm_CTE_EMISSOR.RzDBComboBox5.Items.Clear;
     Frm_CTE_EMISSOR.RzDBComboBox5.Values.clear;
  if Frm_Principal.CTe = 57 then
     begin


     Frm_CTE_EMISSOR.RzGroupBox6.Enabled:=true;
     Frm_CTE_EMISSOR.RzGroupBox7.Enabled:=true;
     Frm_CTE_EMISSOR.RzGroupBox10.Enabled:=false;

     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Normal');
     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Subcontratação');
     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Redespacho');
     Frm_CTE_EMISSOR.rzlabel2.Visible:=false;
     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('1');
     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('2');
     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('3');

     frm_cte_emissor.RzGroupBox18.Visible:=true;


     end
     else
   if Frm_Principal.CTe = 67 then
     begin

//     cdm.CD_Emissor_CTEMODAL.AsInteger:=0;
     Frm_CTE_EMISSOR.RzDBComboBox4.ReadOnly:=true;

     Frm_CTE_EMISSOR.RzGroupBox6.Enabled:=false;
     Frm_CTE_EMISSOR.RzGroupBox11.Enabled:=false;
     Frm_CTE_EMISSOR.RzGroupBox17.Enabled:=false;
     Frm_CTE_EMISSOR.RzGroupBox10.visible:=true;
     Frm_CTE_EMISSOR.RzGroupBox7.Enabled:=false;
     Frm_CTE_EMISSOR.rzlabel2.Visible:=true;

     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Transp. de Pessoas');
     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Transp. de Valores');
     Frm_CTE_EMISSOR.RzDBComboBox5.Items.add('Excesso de Bagagem');

     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('4');
     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('5');
     Frm_CTE_EMISSOR.RzDBComboBox5.values.add('6');

     frm_cte_emissor.RzGroupBox12.Visible:=true;
     Frm_CTE_EMISSOR.RzDBComboBox11.Items.Clear;
     Frm_CTE_EMISSOR.RzDBComboBox11.Values.Clear;
     Frm_CTE_EMISSOR.RzDBComboBox11.Values.Add('0');
     Frm_CTE_EMISSOR.RzDBComboBox11.Values.Add('4');

     Frm_CTE_EMISSOR.RzDBComboBox11.Items.Add('Emitente');
     Frm_CTE_EMISSOR.RzDBComboBox11.Items.Add('Outro');



     end;
end;

procedure TFrm_Grade_CTE.validar;
begin
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+FormatDateTime('mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
 Frm_CTE_Config.ACBrCTe1.Conhecimentos.Validar;

end;

end.





