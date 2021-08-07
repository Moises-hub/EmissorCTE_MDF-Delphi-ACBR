unit UFrmGrade;

interface

uses  Inifiles, DateUtils, IdText,  IdAttachmentFile,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, DosMove, Vcl.Menus,
  RzBckgnd, Data.FMTBcd, Data.SqlExpr, RzPanel, Vcl.Imaging.jpeg, RzLabel,
  RzDBGrid, RzButton, System.ImageList, Vcl.ImgList, Datasnap.DBClient,
  Datasnap.Provider, Vcl.ComCtrls, System.Actions, Vcl.ActnList, RzRadGrp,
  dxGDIPlusClasses, Vcl.XPMan, Vcl.Buttons;

type
  TFrmGrade = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    CancelarSemRegistronoSefaz1: TMenuItem;
    Memo1: TMemo;
    SQLQuery1: TSQLQuery;
    Query_Clonar: TSQLQuery;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    Query_ClonarID: TIntegerField;
    Query_ClonarID_NFE: TFMTBCDField;
    Query_ClonarMODELO: TIntegerField;
    Query_ClonarSERIE: TIntegerField;
    Query_ClonarNUMERO: TIntegerField;
    Query_ClonarCODMDF: TIntegerField;
    Query_ClonarDATA: TDateField;
    Query_ClonarD_ENCERRA: TSQLTimeStampField;
    Query_ClonarHORA: TTimeField;
    Query_ClonarUF: TStringField;
    Query_ClonarTIPO_EMITENTE: TStringField;
    Query_ClonarUF_EMIT: TIntegerField;
    Query_ClonarMODALIDADE: TStringField;
    Query_ClonarFORMA_EMISSAO: TStringField;
    Query_ClonarUF_DESCARREGAMENTO: TStringField;
    Query_ClonarCHAVE: TStringField;
    Query_ClonarVEI_UF: TStringField;
    Query_ClonarVEI_RNTRC: TStringField;
    Query_ClonarVEI_CIOT: TStringField;
    Query_ClonarCOD_AG_PORTO: TStringField;
    Query_ClonarCOD_INT_VEIUC: TStringField;
    Query_ClonarVEI_TIPO_CARROCERIA: TStringField;
    Query_ClonarVEI_TIPO_RODADO: TStringField;
    Query_ClonarVEI_PLACA: TStringField;
    Query_ClonarVEI_RENAVAN: TStringField;
    Query_ClonarVEI_TARA: TFMTBCDField;
    Query_ClonarVEI_CAPACIDADE: TFMTBCDField;
    Query_ClonarVEI_CAPC_M3: TFMTBCDField;
    Query_ClonarTOT_QNT_NFE_REL_MANIFESTRO: TIntegerField;
    Query_ClonarTOT_VALOR_TOTAL_MERCADORIA: TFloatField;
    Query_ClonarTOT_CODUNIDADE: TStringField;
    Query_ClonarTOT_PESO_BRUTO: TFloatField;
    Query_ClonarUF_CARREGAMENTO: TStringField;
    Query_ClonarSTATUS: TIntegerField;
    Query_ClonarMDF_PROTOCOLO: TStringField;
    Query_ClonarMDF_D_ENVIO: TSQLTimeStampField;
    Query_ClonarOBS: TStringField;
    Query_ClonarOBS2: TStringField;
    Query_ClonarID_EMPRESA: TIntegerField;
    Query_ClonarTIPO_EMISSOR: TIntegerField;
    Query_ClonarCNPJ_TOMADOR: TStringField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Proc_Clonar: TSQLStoredProc;
    SaveDialog1: TSaveDialog;
    ProgressBar1: TProgressBar;
    ActionList1: TActionList;
    Act_Novo: TAction;
    Act_Visualizar: TAction;
    Act_Clonar: TAction;
    Act_Consultar: TAction;
    Act_Encerrar: TAction;
    Act_Excluir: TAction;
    Act_Cancelar: TAction;
    Act_Trajeto: TAction;
    Act_EXPXML: TAction;
    Act_Reimprimir: TAction;
    Act_Enviar: TAction;
    Act_Sair: TAction;
    RzPanel3: TRzPanel;
    RzRadioGroup1: TRzRadioGroup;
    RzGroupBox1: TRzGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    RzGroupBox2: TRzGroupBox;
    RzDateTimeEdit4: TRzDateTimeEdit;
    Label8: TLabel;
    Label2: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    DosMove1: TDosMove;
    ActConsNaoencerrado: TAction;
    RzPanel4: TRzPanel;
    Image1: TImage;
    ExcluirCtrlX1: TMenuItem;
    RzToolbarButton1: TRzToolbarButton;
    RzToolbarButton2: TRzToolbarButton;
    RzToolbarButton3: TRzToolbarButton;
    RzToolbarButton4: TRzToolbarButton;
    RzToolbarButton5: TRzToolbarButton;
    RzToolbarButton6: TRzToolbarButton;
    RzToolbarButton7: TRzToolbarButton;
    RzToolbarButton8: TRzToolbarButton;
    RzToolbarButton10: TRzToolbarButton;
    RzToolbarButton9: TRzToolbarButton;
    RzToolbarButton11: TRzToolbarButton;
    RzToolbarButton12: TRzToolbarButton;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button16Click(Sender: TObject);
    procedure CancelarSemRegistronoSefaz1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzDateTimeEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RzDateTimeEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure rota(sender: TObject);
    procedure Act_NovoExecute(Sender: TObject);
    procedure Act_VisualizarExecute(Sender: TObject);
    procedure Act_ClonarExecute(Sender: TObject);
    procedure Act_ConsultarExecute(Sender: TObject);
    procedure Act_EncerrarExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_EnviarExecute(Sender: TObject);
    procedure Act_ReimprimirExecute(Sender: TObject);
    procedure Act_TrajetoExecute(Sender: TObject);
    procedure Act_EXPXMLExecute(Sender: TObject);
    PROCEDURE STATUS;
    procedure RzGroupBox2Exit(Sender: TObject);
    procedure RzRadioGroup1Click(Sender: TObject);
    procedure ActConsNaoencerradoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function calculatempo(data1 : TDateTime; data2 : TDateTime) : String;
    procedure validar;
    var
    rt:string;
    ST : STRING;
  end;

var
  FrmGrade: TFrmGrade;
  IniFile    : String;
  Ini        : TIniFile;
implementation

{$R *.dfm}

uses UFrmPrincipal, UDM, UFrm_MDF, UFrm_MDFConfig, pcnConversao, UFrmFuncoes,
  UFrmLogin_Acao, IdSSLOpenSSL, IdSMTP, IdMessage,
  IdExplicitTLSClientServerBase, UFrm_Rotas, UFrm_NaoEncerrado;


Function TFrmGrade.calculatempo(data1 : TDateTime; data2 : TDateTime) : String;
var valor, horas, minutos, segundos : Integer;

begin
          valor := (SecondsBetween(data1,data2));
          horas := valor div 3600;
          minutos := valor div 60 - horas * 60;
          segundos := (valor - (horas *3600 + minutos * 60))+1;
          Result := Format('%0.2d:%0.2d:%0.2d', [horas, minutos, segundos]);
end;


procedure TFrmGrade.ActConsNaoencerradoExecute(Sender: TObject);
var
  vCNPJ: String;
  i,p:integer;
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
  vCNPJ := dm.EmitenteCNPJ.Text;

  //ACBrMDFe1.Configuracoes.Geral.SSLLib.libCapicom;

{  ACBrMDFe1.Configuracoes.Geral.SSLLib.libCapicom;
  ACBrMDFe1.Configuracoes.Geral.RetirarAcentos := False; }
 {  if not(InputQuery('WebServices Consultar não encerrados', 'Informe o CNPJ:', vCNPJ)) then
    exit;
  }
    Frm_MDFCOnfig.ACBrMDFe1.WebServices.ConsultaMDFeNaoEnc( vCNPJ );

    Frm_MDFCOnfig.MemoResp.Lines.Text :=  UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.ConsMDFeNaoEnc.RetWS);
    Frm_MDFCOnfig.memoRespWS.Lines.Text :=  UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.ConsMDFeNaoEnc.RetornoWS);
    Frm_MDFCOnfig.LoadXML(Frm_MDFCOnfig.MemoResp, Frm_MDFCOnfig.WBResposta);
    Frm_MDFCOnfig.MemoResp.Lines.SaveToFile('naoencerrados.xml');
    Frm_MDFCOnfig.XMLDocument1.LoadFromFile ('naoencerrados.xml');

          //  memo2.Lines.add(XMLDocument1.ChildNodes['retConsMDFeNaoEnc'].ChildNodes['infMDFe'].ChildNodes.FindNode(cdata-section));

  //  ClientDataSet1.XMLData:=XMLDocument1.;

Frm_NaoEncerrado:=TFrm_NaoEncerrado.Create(self);

 for i := 0 to Frm_MDFCOnfig.XMLDocument1.DocumentElement.ChildNodes.Count - 1 do
 begin
   with Frm_MDFCOnfig.XMLDocument1.DocumentElement.ChildNodes[i] do
     begin
     if i>=5 then
        begin
        Frm_NaoEncerrado.FDTable1.Open();
        Frm_NaoEncerrado.FDTable1.INSERT;
        Frm_NaoEncerrado.FDTable1CHAVE.AsString:= trim(childNodes['chMDFe'].text);
        Frm_NaoEncerrado.FDTable1PROTOCOLO.AsString:= trim(childNodes['nProt'].text);
        Frm_NaoEncerrado.FDTable1NUMERO.AsString:=COPY(trim(childNodes['chMDFe'].text),26,9);
        Frm_NaoEncerrado.FDTable1NUMERO.AsString:=FormatFloat('0',StrToFloat(Frm_NaoEncerrado.FDTable1NUMERO.AsString));
        Frm_NaoEncerrado.FDTable1.POST;
       end;
     end;

 end;

 if Frm_NaoEncerrado.FDTable1.RecordCount<>0 then
     Frm_NaoEncerrado.ShowModal
     else
     ShowMessage('Não Foi encontrado nem um Manifesto não Encerrado!');

     Frm_NaoEncerrado.free;

  DeleteFile('naoencerrados.xml');

end;

procedure TFrmGrade.Act_CancelarExecute(Sender: TObject);

var
 vAux : String;


begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);

if DM.CD_Mdf_DadosSTATUS.Value=1 then
      BEGIN




          //h := StrToDateTime(inicio)*24;
        //  cancela := StrToDateTime( FormatDateTime('dd"/"mm"/"yyyy" "hh":"mm":"ss',demi+temi));

         if (calculatempo(now, DM.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime) < '24:01') then
             begin




                        FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                        FrmLogin_Acao.RzLabel4.Caption :='Liberação para Cancelar';
                        FrmLogin_Acao.ShowModal;


                         if L = 1 then
                            begin

                               IniFile := ChangeFileExt( Application.ExeName, '.ini');
                               Ini := TIniFile.Create( IniFile );


                           if Application.MessageBox('deseja realmente cancelar o MDFe selecionado?','',MB_YESNO+MB_ICONQUESTION)= mryes then
                             begin





                                       Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;
                                       Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy',dm.CD_Mdf_DadosDATA.AsDateTime)+'\'+FormatDateTime('mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML');

                                     if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                                          then exit;



                                         with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                          begin
                                           infEvento.chMDFe   := dm.CD_Mdf_DadosCHAVE.Text;  //Copy(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
                                           infEvento.CNPJCPF     := DM.EmitenteCNPJ.Text;
                                           infEvento.dhEvento := now;
                                      //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
                                      //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
                                      //                  teEncerramento);
                                           infEvento.tpEvento   := teCancelamento;
                                           infEvento.nSeqEvento := 1;

                                           infEvento.detEvento.nProt := Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
                                           infEvento.detEvento.xJust := trim(vAux);
                                          end;

                                         Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento(1); // 1 = Numero do Lote
                                       //  ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS));
                                      //   MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                      //   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                      //   LoadXML(MemoResp, WBResposta);
                                           dm.CD_Mdf_Dados.edit;
                                        // if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat=101 then
                                            dm.CD_Mdf_DadosSTATUS.Value:=3;


                                      //    ShowMessage(IntToStr(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat));

                                      {    CASE Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat OF
                                          100 : dm.CD_Mdf_DadosSTATUS.Value:=1;
                                            0 : dm.CD_Mdf_DadosSTATUS.Value:=2;
                                          101 : dm.CD_Mdf_DadosSTATUS.Value:=3;
                                          END;     }



                                              dm.CD_Mdf_Dados.POST;
                                              dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                  dm.Cli_Cad_Log.Open;
                                                      dm.Cli_Cad_Log.Insert;
                                                      dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                      dm.Cli_Cad_LogNOME.text:=usuario;
                                                      dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                      dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                      dm.Cli_Cad_LogPROCESSO.Text := 'Cancelamento';
                                                      dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                                      dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                      Frm_Principal.RzDBMemo1.Lines.Add('Cancelamento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);
                                                      dm.Cli_Cad_Log.Post;
                                                      dm.cli_cad_log.ApplyUpdates(0);



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
      END;
      Frm_MDFCOnfig.destroy;
end;

procedure TFrmGrade.Act_ClonarExecute(Sender: TObject);
begin
if DM.CD_Mdf_Dados.RecordCount<>0 then
   begin

    if MessageDlg('Deseja Clonar Este Registro?',mtConfirmation,[mbYes,mbno],0)=mryes then
       begin
           Proc_Clonar.Params[0].AsInteger:=DM.CD_Mdf_DadosID.AsInteger;
           Proc_Clonar.ExecProc;
           dm.CD_Mdf_Dados.Refresh;
           dm.CD_Mdf_Dados.First;
           ShowMessage('Registro Clonado Com sucesso!');
           Act_VisualizarExecute(sender);
       end;

   end;
end;

procedure TFrmGrade.Act_ConsultarExecute(Sender: TObject);
begin
                                                Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.CD_Mdf_DadosCHAVE.Text;
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                             if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 100 then
                                                   begin

                                                         validar;
                                                         Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Assinar;
                                                         dm.CD_Mdf_Dados.Edit;
                                                         dm.CD_Mdf_DadosSTATUS.Value:=1;
                                                         dm.CD_Mdf_DadosMDF_PROTOCOLO.Text:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;
                                                         dm.CD_Mdf_Dados.Post;
                                                         dm.CD_Mdf_Dados.ApplyUpdates(0);



                                                   end
                                                   else
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 132 then
                                                   begin
                                                         dm.CD_Mdf_Dados.Edit;
                                                         dm.CD_Mdf_DadosSTATUS.Value:=2;
                                                         dm.CD_Mdf_Dados.Post;
                                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                   end
                                                   else
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 101 then
                                                   begin
                                                         dm.CD_Mdf_Dados.Edit;
                                                         dm.CD_Mdf_DadosSTATUS.Value:=3;
                                                         dm.CD_Mdf_Dados.Post;
                                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                   end;






//  ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetWS));
  //memoRespWS.Lines.Text :=  UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetornoWS);
//  LoadXML(MemoResp, WBResposta);
Frm_MDFCOnfig.destroy;
end;

procedure TFrmGrade.Act_EncerrarExecute(Sender: TObject);
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
 if DM.CD_Mdf_DadosSTATUS.Value=1 then
      BEGIN
                   {
        if DBGrid1.Canvas.Font.Color = clOlive then
           begin  }



                           FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                           FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';

                           FrmLogin_Acao.ShowModal;
                 //    if FileExists(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML') then


                           if L = 1 then
                              begin
                                 Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;
                              if MessageDlg('deseja realmente encerrar o MDFe selecionado?',mtConfirmation,[mbyes,mbno],0)= mryes then
                                 begin

                                                        dm.CD_Mdfe_l_descarregamentoTable.Open;
                                                        dm.CD_Mdfe_l_descarregamentoTable.first;
                                                        dm.CD_Mdfe_l_descarregamentoTable.last;
                                                with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                                begin
                                                                   infEvento.tpEvento := teEncerramento;
                                                                   InfEvento.chMDFe   := dm.cd_mdf_dadoschave.asstring;
                                                                   infEvento.CNPJCPF  := DM.EmitenteCNPJ.AsString;
                                                                   infEvento.dhEvento := now;
                                                                   infEvento.nSeqEvento := 1;
                                                                    infEvento.detEvento.nProt := dm.CD_Mdf_DadosMDF_PROTOCOLO.AsString;
                                                                    infEvento.detEvento.dtEnc := Date;
                                                                    infEvento.detEvento.cUF   := UFtoCUF(dm.CD_Mdf_DadosUF_DESCARREGAMENTO.AsString);
                                                                    infEvento.detEvento.cMun  :=  dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.AsInteger;//Frm_EncerraMDF.FDQuery1COD_MUN.Value;

                                                end;











                                     //    ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS));

                                              Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote




                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.cd_mdf_dadoschave.asstring;
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 132 then
                                                   begin
                                                   Frm_Principal.log.Close;
                                                   Frm_Principal.log.CommandText:='update mdfe_dados set status =:s,D_ENCERRA = current_date  where mdfe_dados.chave =:c';
                                                   Frm_Principal.log.Params[0].AsInteger:=2;
                                                   Frm_Principal.log.Params[1].ASSTRING:=dm.cd_mdf_dadoschave.asstring;
                                                   Frm_Principal.Log.ExecSQL();

                                                         dm.CD_Mdf_Dados.Refresh;



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
                                                        Frm_Principal.log.Params[2].AsSTRING:='ENCERRAMENTO DE MDFe Nº'+dm.CD_Mdf_DadosNUMERO.asstring;;
                                                        Frm_Principal.log.Params[3].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                        Frm_Principal.log.Params[4].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                        Frm_Principal.log.Params[5].Asstring:='Encerramento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS;
                                                        Frm_Principal.log.ExecSQL();

                                                   end;



                                        // Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote
                                     {    dm.CD_Mdf_DadosD_ENCERRA.AsDateTime:=date;
                                         dm.CD_Mdf_DadosMDF_PROTOCOLO.Text:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;


               {


                                                       dm.CD_Mdf_DadosCHAVE.Value:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                                                                                               dm.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.Ide.dhEmi;
                                                                                                                                       dm.CD_Mdf_DadosSTATUS.Value:=2;}



                                   {  Frm_Principal.log.Close;
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
                                  Frm_Principal.log.Params[2].AsSTRING:='ENCERRAMENTO DE MDFe Nº'+dm.CD_Mdf_DadosNUMERO.AsString;
                                  Frm_Principal.log.Params[3].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                  Frm_Principal.log.Params[4].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                  Frm_Principal.log.Params[5].Asstring:='Encerramento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS;
                                  Frm_Principal.log.ExecSQL();
                                                               }





                                          //   ShowMessage(IntToStr(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat));
                                                //Memo2.Lines.Add('cStat: '+ Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);







                                   end
                                   else
                                   l:=0;
                              end;







      END;
                    FrmLogin_Acao:= nil;

      Frm_MDFCOnfig.destroy;
end;

procedure TFrmGrade.Act_EnviarExecute(Sender: TObject);
var
para : string;
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sXML,PDF : string;
begin

  if DM.CD_Mdf_DadosSTATUS.AsInteger = 1 then
     begin

      try
               if not DirectoryExists(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',dm.CD_Mdf_DadosDATA.AsDateTime))then
                      ForceDirectories(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',dm.CD_Mdf_DadosDATA.AsDateTime));

                // instanciação dos objetos
                IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
                IdSMTP := TIdSMTP.Create(Self);
                IdMessage := TIdMessage.Create(Self);
                        if not(InputQuery('Enviar Email', 'Email de destino', Para))
                             then exit;

                            ProgressBar1.Visible:=true;
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
                      IdMessage.Subject := 'MDFe nº'+dm.CD_Mdf_DadosNUMERO.AsString;
                      IdMessage.Encoding := meMIME;
                      ProgressBar1.Position:=ProgressBar1.Position+10;
                      // Configuração do corpo do email (TIdText)
                      IdText := TIdText.Create(IdMessage.MessageParts);
                      IdText.Body.Add('Em Anexo Manifesto Eletronico nº'+dm.CD_Mdf_DadosNUMERO.AsString);
                      IdText.ContentType := 'text/plain; charset=iso-8859-1';

                      if not FileExists( DM.CD_MDFe_ConfigPATHSALVAR.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.pdf') then
                         begin
                            Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
                            Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
                             Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy\mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML');
                      // Frm_MDFCOnfig.ACBrMDFeDAMDFeRL1.ImprimirDAMDFe;
                          Frm_MDFCOnfig.ACBrMDFeDAMDFeRL1.PathPDF:=DM.CD_MDFe_ConfigPATHSALVAR.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',dm.CD_Mdf_DadosDATA.AsDateTime);
                          Frm_MDFCOnfig.ACBrMDFeDAMDFeRL1.ImprimirDAMDFePDF;

                         end;
                     pdf := DM.CD_MDFe_ConfigPATHSALVAR.AsString+'PDF'+'\'+FormatDateTime('yyyy"\"mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.pdf';
                     sXML := DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy\mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML';
                      if FileExists(pdf) then
                      begin
                        TIdAttachmentFile.Create(IdMessage.MessageParts, pdf);
                      end;

                        if FileExists(sxml) then
                      begin
                        TIdAttachmentFile.Create(IdMessage.MessageParts,sxml);
                      end;


                        ProgressBar1.Position:=ProgressBar1.Position+100;
                      // Conexão e autenticação
                      try

                        IdSMTP.Connect;
                        IdSMTP.Authenticate;
                      except
                        on E:Exception do
                        begin
                         ProgressBar1.Visible:=false;
                          MessageDlg('Erro na conexão ou autenticação: ' +
                            E.Message, mtWarning, [mbOK], 0);
                          Exit;
                        end;
                      end;
                       ProgressBar1.Position:=ProgressBar1.Position+10;
                      // Envio da mensagem
                      try
                       ProgressBar1.Visible:=false;
                        IdSMTP.Send(IdMessage);
                        MessageDlg('Mensagem enviada com sucesso!', mtInformation, [mbOK], 0);
                      except
                        On E:Exception do
                        begin
                             ProgressBar1.Visible:=false;
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
                           ProgressBar1.Visible:=false;
                    end;


     except
         On E:Exception do
         begin
     MessageDlg('Erro ao enviar a mensagem: '+e.Message,mtWarning, [mbOK], 0);
     ProgressBar1.Visible:=false;
         end;

     end;
end;


end;

procedure TFrmGrade.Act_ExcluirExecute(Sender: TObject);
begin

 if DM.CD_Mdf_DadosSTATUS.Value=1 then
   else
 if DM.CD_Mdf_DadosSTATUS.Value=2 then
    else
    BEGIN
           FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
           FrmLogin_Acao.RzLabel4.Caption :='Liberação para Excluir';

           FrmLogin_Acao.ShowModal;


           if L = 1 then
              begin

                 if dm.CD_Mdf_Dados.RecordCount<>0 then
                   begin
                   case dm.CD_Mdf_DadosSTATUS.Value of
                     0: if Application.MessageBox('Deseja realmente excluir este registro?','',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IdYes then
                           begin
                           dm.Cli_Cad_Log.open;
                           dm.Cli_Cad_Log.Insert;
                                        dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                        dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                        dm.Cli_Cad_LogNOME.text:=usuario;
                                        dm.Cli_Cad_LogPROCESSO.Text := 'Exclusão';
                                        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                        Frm_Principal.RzDBMemo1.Lines.Add('Exclusão de Registro ID:'+dm.CD_Mdf_DadosID.Text+' - CHAVE:'+dm.CD_Mdf_DadosCHAVE.Text);
                                        dm.Cli_Cad_Log.Post;
                                        dm.cli_cad_log.ApplyUpdates(0);
                                       dm.CD_Mdf_Dados.Delete;
                                         dm.CD_Mdf_Dados.ApplyUpdates(0);


                           end;

                     1: MessageDlg('Só registro cancelado ou em edição podera ser excluido!',mtInformation,[mbOK],0);
                     2: MessageDlg('Só registro cancelado ou em edição podera ser excluido!',mtInformation,[mbOK],0);



                     3: if Application.MessageBox('Deseja realmente excluir este registro?','',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IdYes then
                           begin



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
                                  Frm_Principal.log.Params[1].AsInteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                  Frm_Principal.log.Params[2].ASSTRING:=usuario;
                                  Frm_Principal.log.Params[3].AsSTRING:='EXCLUSÃO';
                                  Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                  Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                  Frm_Principal.log.Params[6].Asstring:='Exclusão de Registro ID:'+dm.CD_Mdf_DadosID.Text+' - CHAVE:'+dm.CD_Mdf_DadosCHAVE.Text;
                                  Frm_Principal.log.ExecSQL();




                                       dm.CD_Mdf_Dados.Delete;
                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                           end;



                   end;
                   end;
              end
               else
                ShowMessage('Não foi possivel fazer o encerramento do MDFe Selecionado!');
                FrmLogin_Acao:= nil;
    END;
end;

procedure TFrmGrade.Act_EXPXMLExecute(Sender: TObject);
Var Arquivo : TStringList;
 caminho:string;
 i : integer;
Begin

  if DM.CD_Mdf_Dados.RecordCount<>0 then
     begin
if DBGrid1.SelectedRows.CurrentRowSelected = false then
  DBGrid1.SelectedRows.CurrentRowSelected := true;
if SaveDialog1.Execute then

     if SaveDialog1.FileName<>'' then


         caminho:=ExtractFilePath(SaveDialog1.FileName);




        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
            begin

                 DM.CD_Mdf_Dados.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

                    if Length(DM.CD_Mdf_DadosCHAVE.AsString)<>0 then
                       begin
                          Arquivo := TStringList.Create();
                          try
                          Arquivo.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy\mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML'); // Carrega o arquivo de origem


                           Arquivo.SaveToFile (Caminho+DM.CD_Mdf_DadosCHAVE.AsString+'.xml'); //salva o arquivo em outro lugar, como o mesmo nome, mas não necessária precisar ser com o mesmo nome.
                           except

                          end;
                          Arquivo.Destroy;
                       end;
            end;
            ShowMessage('Exportação Concluida!!');
     end;

            {



if DM.CD_Mdf_Dados.RecordCount<>0 then
   begin
    if Length(DM.CD_Mdf_DadosCHAVE.AsString)<>0 then
       begin
        Arquivo := TStringList.Create();

        Arquivo.LoadFromFile(); // Carrega o arquivo de origem
        SaveDialog1.FileName:=DM.CD_Mdf_DadosCHAVE.AsString+'.xml';
          if SaveDialog1.Execute then
             Arquivo.SaveToFile (SaveDialog1.FileName);
       end;
   end;
             }

{IniFile := ChangeFileExt( Application.ExeName, '.ini');
       Ini := TIniFile.Create( IniFile );
       Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;
       Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
   if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
    then exit;

   Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;

   with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
    begin
     infEvento.chMDFe   := Copy(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
     infEvento.CNPJ     := Frm_MDFCOnfig.edtEmitCNPJ.Text;
     infEvento.dhEvento := now;
//  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
//                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
//                  teEncerramento);
     infEvento.tpEvento   := teCancelamento;
     infEvento.nSeqEvento := 1;

     infEvento.detEvento.nProt := Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
     infEvento.detEvento.xJust := trim(vAux);
    end;

   Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote


            }

end;

procedure TFrmGrade.Act_NovoExecute(Sender: TObject);
begin
Frm_MDF:=TFrm_mdf.Create(self);
dm.CD_Mdf_Dados.Insert;
dm.CD_Mdf_DadosSTATUS.AsInteger:=0;

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
                                  Frm_Principal.log.Params[2].ASSTRING:=usuario;
                                  Frm_Principal.log.Params[3].AsSTRING:='ADICIONA';
                                  Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                  Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                  Frm_Principal.log.Params[6].Asstring:='Adiciona Novo registro MDF '+dm.CD_Mdf_DadosNUMERO.text;
                                  Frm_Principal.log.ExecSQL();






Frm_mdf.PageControl1.ActivePageIndex:=0;
dm.CD_Mdf_Dados.post;


Frm_mdf.ShowModal;
Frm_mdf:=nil;
end;

procedure TFrmGrade.Act_ReimprimirExecute(Sender: TObject);
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
if DM.CD_Mdf_DadosSTATUS.Value=1 then
   BEGIN


      Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
      Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy\mm',dm.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML');
      Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Imprimir;
   END;
   Frm_MDFCOnfig.destroy;

(*if DM.CD_Mdf_DadosSTATUS.Value=1 then
   BEGIN

 {if OpenDialog1.Execute then
  begin
  } Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
   Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.Arquivos.PathSalvar+'\MDFe\MDFE\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
   Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Imprimir;
 // end;

   END;*)
end;

procedure TFrmGrade.Act_SairExecute(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmGrade.Act_TrajetoExecute(Sender: TObject);
begin

  if dm.CD_Mdf_Dados.RecordCount<>0 then
     begin

      dm.CD_Mdfe_l_carregamentoTable.Open;
      dm.CD_Mdfe_l_descarregamentoTable.Open;

      if dm.CD_Mdfe_l_carregamentoTable.RecordCount = 0 then
         ShowMessage('nenhum local de carregamento selecionado!')
         else
      if dm.CD_Mdfe_l_descarregamentoTable.RecordCount = 0 then
         ShowMessage('nenhum local de descarregamento selecionado!')
          else
          begin
                 rota(sender);
                 Frm_Rotas:=TFrm_Rotas.Create(self);
                 Frm_Rotas.WebBrowser1.Navigate('https://www.google.com.br/maps/dir'+rt+'/');
                 Frm_rotas.ShowModal;
          end;
     end;
end;

procedure TFrmGrade.Act_VisualizarExecute(Sender: TObject);
begin
if dm.CD_Mdf_Dados.RecordCount<>0 then
   begin
      Frm_MDF:=TFrm_mdf.Create(self);

          Frm_mdf.ShowModal;
      Frm_mdf:=nil;
   end;
end;

procedure TFrmGrade.Button16Click(Sender: TObject);
begin
end;

 (*
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
       if DM.CD_Mdf_DadosSTATUS.Value=1 then
        BEGIN


            para:=inputbox('Código','Digite o E-Mail de destino','');


             if Length(senha)<>0 then
               begin








               Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
               Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy',dm.CD_Mdf_DadosDATA.AsDateTime)+'\'+FormatDateTime('mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML');
               CC:=TstringList.Create;
               CC.Add(para); //especifique um email válido
             //  CC.Add('email_2@provedor.com.br'); //especifique um email válido

               Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].EnviarEmail(Para
                                                         , 'MDFe '
                                                         , FrmGrade.memo1.Lines
                                                         , true //Enviar PDF junto
                                                         , nil //Lista com emails que serão enviado cópias - TStrings
                                                         , nil // Lista de anexos - TStrings
                                                          );

               CC.Free;





                  {  CC:=TstringList.Create;

                    CC.Add(Para); //especifique um email válido
                    // CC.Add('email_2@provedor.com.br'); //especifique um email válido
                    FrmGrade.memo1.Lines.Add('MDFe '+dm.CD_Mdf_DadosNUMERO.text);
                     Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].EnviarEmail(Para , 'MDFe '+dm.CD_Mdf_DadosNUMERO.text
                                                               , FrmGrade.memo1.Lines
                                                               , true //Enviar PDF junto
                                                              );

               CC.Free;  }
               end;
        END;
        Frm_MDFCOnfig.destroy;    *)

procedure TFrmGrade.Button4Click(Sender: TObject);
begin

end;




//end;

procedure TFrmGrade.Button9Click(Sender: TObject);
begin
                                                Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.CD_Mdf_DadosCHAVE.Text;
                                                Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                             if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 100 then
                                                   begin

                                                         validar;
                                                         Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Assinar;
                                                         dm.CD_Mdf_Dados.Edit;
                                                         dm.CD_Mdf_DadosSTATUS.Value:=1;
                                                         dm.CD_Mdf_DadosMDF_PROTOCOLO.Text:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;
                                                         dm.CD_Mdf_Dados.Post;
                                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                   end
                                                   else
                                               if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 132 then
                                                   begin
                                                         dm.CD_Mdf_Dados.Edit;
                                                         dm.CD_Mdf_DadosSTATUS.Value:=2;
                                                         dm.CD_Mdf_Dados.Post;
                                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                   end;



//  ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetWS));
  //memoRespWS.Lines.Text :=  UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetornoWS);
//  LoadXML(MemoResp, WBResposta);
Frm_MDFCOnfig.destroy;

end;

procedure TFrmGrade.CancelarSemRegistronoSefaz1Click(Sender: TObject);
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
      dm.CD_Mdf_Dados.Edit;
      dm.CD_Mdf_DadosSTATUS.Value:=3;
      dm.CD_Mdf_Dados.post;
      dm.CD_Mdf_Dados.ApplyUpdates(0)
  end;




end;

procedure TFrmGrade.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

begin

{Em Digitação
Ativo
Finalizado
Cancelado }



  if dm.CD_Mdf_DadosSTATUS.AsInteger =0  then
      begin
     // DBGrid1.Canvas.Brush.Color := clWhite;
       DBGrid1.Canvas.Font.Color := clBlack;
      // DBGrid1.Columns[0].Color := clBlack;

      end
        else
         if dm.CD_Mdf_DadosSTATUS.Value = 1  then
            begin

               DBGrid1.Canvas.Font.Color := clBlue//clWhite;
            end
            else
             if dm.CD_Mdf_DadosSTATUS.Value = 2  then
                begin

                DBGrid1.Canvas.Font.Color := clGray;//clWhite;

                end
                else
                 if dm.CD_Mdf_DadosSTATUS.Value = 3  then
                    begin
                 //   DBGrid1.Canvas.font.Color := clSilver;
                    DBGrid1.Canvas.Font.Color := clBtnFace; //clWhite;

                    end;



      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TFrmGrade.Edit1Change(Sender: TObject);
begin

 STATUS;

if Length(Edit1.Text)<>0 then
   begin
   {    case ComboBox1.ItemIndex of
          0 : DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where ID ='+Edit1.Text;
          1 : DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where NUMERO ='+Edit1.Text;
          2 : DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where CHAVE Like'''+Edit1.Text+'''';
          3 : dm.CD_Nfe_mdfTable.CommandText:='select * from NFE_MDF where N_DA_NFE ='''+Edit1.Text+'''';

       end;

   end
   ELSE
    DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS ORDER BY ID descending';
    DM.CD_Mdf_Dados.Open; }


   DM.CD_Mdf_Dados.close;
if ComboBox1.ItemIndex=0 then
   DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where ID ='+Edit1.Text +ST+' order by mdfe_dados.data desc'
   else
  if ComboBox1.ItemIndex=1 then
     DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where NUMERO ='+Edit1.Text +ST
   else
  if ComboBox1.ItemIndex=2 then
    begin
     DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where CHAVE Like :p ' +ST;
     dm.CD_Mdf_Dados.Params[0].AsString:=Edit1.Text+'%';
    end

     else
   if ComboBox1.ItemIndex=3 then
      begin
      SQLQuery1.Close;
      SQLQUERY1.SQL.Clear;
      SQLQUERY1.SQL.Add('select * from NFE_MDF where N_DA_NFE ='+Edit1.Text);
      SQLQuery1.ExecSQL();
      SQLQuery1.Open;

      if SQLQuery1.RecordCount<>0 then
         DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where ID ='+IntToStr(dm.CD_Nfe_mdfTableID_MDFE.VALUE)+ST;



        {
      dm.CD_Nfe_mdfTable.CLOSE;
      dm.CD_Nfe_mdfTable.CommandText:='select * from NFE_MDF where N_DA_NFE ='+Edit1.Text;
      dm.CD_Nfe_mdfTable.Execute;
      dm.CD_Nfe_mdfTable.OPEN;}




      end
      ELSE
       if ComboBox1.ItemIndex=4 then
        begin
         DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS ' +
                                      'left join mdfe_v_reboque on mdfe_v_reboque.id_mdfe = mdfe_dados.id ' +
                                      'where mdfe_dados.vei_placa Like :p or mdfe_v_reboque.placa like :p';
         dm.CD_Mdf_Dados.Params[0].AsString:=Edit1.Text+'%';
        end


   end
   else
   begin
    DM.CD_Mdf_Dados.CommandText:='';
    DM.CD_Mdf_Dados.close;
    DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS ORDER BY ID descending';
   // DM.CD_Mdf_Dados.Open;
   end;
      DM.CD_MDF_DADOS.Execute;
      DM.CD_Mdf_Dados.Open;
     {
    if Length(Edit1.Text)<>0 then
         BEGIN
      dm.CD_Nfe_mdfTable.CLOSE;

      dm.CD_Nfe_mdfTable.CommandText:='select * from NFE_MDF where N_DA_NFE ='''+Edit1.Text+'''';
      dm.CD_Nfe_mdfTable.OPEN;
         END;  }



end;

procedure TFrmGrade.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if ComboBox1.ItemIndex<>4 then

      if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Frm_MDFCOnfig:=nil;
end;

procedure TFrmGrade.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
  RzDateTimeEdit3.date:=date-7;
  RzDateTimeEdit4.Date:=date;
  RzRadioGroup1.ItemIndex :=4;
DM.CD_Mdf_Dados.close;
  DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where DATA >=:ini and  DATA <=:fim  ORDER BY id descending';
  DM.CD_Mdf_Dados.Params[0].DataType:=ftDate;
  DM.CD_Mdf_Dados.Params[1].DataType:=ftDate;
  dm.CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit3.Date;
  dm.CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit4.Date;
  DM.CD_Mdf_Dados.open;



end;

procedure TFrmGrade.rota(sender: TObject);
begin

      rt:='';

       dm.CD_Mdfe_l_carregamentoTable.first;
     while not dm.CD_Mdfe_l_carregamentoTable.eof do
        begin

            rt:=rt+'/'+StringReplace(dm.CD_Mdfe_l_carregamentoTableMUNICIPIO.AsString,' ','+',[rfReplaceAll])+','+dm.CD_Mdfe_l_carregamentoTableUF.AsString;
            dm.CD_Mdfe_l_carregamentoTable.next;

        end;


      dm.CD_Mdfe_l_descarregamentoTable.first;
     while not dm.CD_Mdfe_l_descarregamentoTable.eof do
        begin

            rt:=rt+'/'+StringReplace(dm.CD_Mdfe_l_descarregamentoTableMUNICIPIO.AsString,' ','+',[rfReplaceAll])+','+dm.CD_Mdfe_l_descarregamentoTableUF.AsString;
            dm.CD_Mdfe_l_descarregamentoTable.next;

        end;

end;

procedure TFrmGrade.RzBitBtn1Click(Sender: TObject);

begin



   ShowMessage(calculatempo(now, DM.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime));

end;

//ShowMessage(FloatToStr(sqlquery1.FieldByName('total').Value));


procedure TFrmGrade.RzDateTimeEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmGrade.RzDateTimeEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmGrade.RzGroupBox2Exit(Sender: TObject);
begin
STATUS;
DM.CD_Mdf_Dados.close;
  DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where DATA >=:ini and  DATA <=:fim'+ST+' ORDER BY id descending';
  DM.CD_Mdf_Dados.Params[0].DataType:=ftDate;
  DM.CD_Mdf_Dados.Params[1].DataType:=ftDate;
  dm.CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit3.Date;
  dm.CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit4.Date;
  DM.CD_Mdf_Dados.open;
end;

procedure TFrmGrade.RzRadioGroup1Click(Sender: TObject);
begin
STATUS;
DM.CD_Mdf_Dados.close;
  DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where DATA >=:ini and  DATA <=:fim '+ST+' ORDER BY id descending';
  DM.CD_Mdf_Dados.Params[0].DataType:=ftDate;
  DM.CD_Mdf_Dados.Params[1].DataType:=ftDate;
  dm.CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit3.Date;
  dm.CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit4.Date;
  DM.CD_Mdf_Dados.open;
end;

procedure TFrmGrade.STATUS;
begin
  CASE  RzRadioGroup1.ItemIndex  OF
  0 : ST :=' AND MDFE_DADOS.STATUS =0';
  1 : ST :=' AND MDFE_DADOS.STATUS =1';
  2 : ST :=' AND MDFE_DADOS.STATUS =2';
  3 : ST :=' AND MDFE_DADOS.STATUS =3';
  4 : ST :=' ';
  END;

end;

procedure TFrmGrade.validar;
begin
 Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
 Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(DM.CD_MDFe_ConfigPATHSALVAR.AsString+'XML'+'\'+FormatDateTime('yyyy',dm.CD_Mdf_DadosDATA.AsDateTime)+'\'+FormatDateTime('mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.AsString+'-mdfe.XML');
 Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Validar;


end;

end.


