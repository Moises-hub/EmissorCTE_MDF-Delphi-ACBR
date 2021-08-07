unit UFrm_MDF_CHAVE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, RzButton, RzPanel, ACBrBase, ACBrDFe, ACBrMDFe,
  RzRadChk;

type
  TFrm_MDF_CHAVE = class(TForm)
    RzPanel1: TRzPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    RzPanel2: TRzPanel;
    RzSpacer1: TRzSpacer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure cancelachave;
    procedure cancelaxml;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MDF_CHAVE: TFrm_MDF_CHAVE;

implementation

{$R *.dfm}

uses UFrm_MDFConfig, UDM, pcnConversao, UFrmPrincipal, UFrmLogin_Acao;



procedure TFrm_MDF_CHAVE.Button1Click(Sender: TObject);
begin
     case RadioGroup1.ItemIndex of
         0: cancelachave;
         1: cancelaxml;
         end;

end;

procedure TFrm_MDF_CHAVE.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_MDF_CHAVE.cancelachave;
var
 vAux : String;
begin                    if Length(edit1.Text)=0 then
                            begin
                              MessageDlg('Campo chave não pode ser nulo!',mtError,[mbOK],0);
                              Edit1.SetFocus;
                            end
                            else
                            if Length(edit3.Text)=0 then
                                begin
                                  MessageDlg('Campo protocolo não pode ser nulo!',mtError,[mbOK],0);
                                  Edit3.SetFocus;
                                end
                               else
                               begin
                              if MessageDlg('deseja realmente cancelar o MDFe selecionado?',mtConfirmation,[mbyes,mbno],0)= mryes then
                                           begin
                                                    Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;

                                                 if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                                                    then exit;
                                               with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                                    begin
                                                     infEvento.chMDFe   :=edit1.Text;
                                                     infEvento.CNPJCPF     := Frm_MDFCOnfig.edtEmitCNPJ.Text;
                                                     infEvento.dhEvento := now;
                                                //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
                                                //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
                                                //                  teEncerramento);
                                                     infEvento.tpEvento   := teCancelamento;
                                                     infEvento.nSeqEvento := 1;

                                                     infEvento.detEvento.nProt := edit3.text;
                                                     infEvento.detEvento.xJust := trim(vAux);



                                                                               {     dm.CD_Mdf_Dados.Edit;
                                                                                    dm.CD_Mdf_DadosSTATUS.Value:=3;
                                                                                    dm.CD_Mdf_Dados.post;




                                                                             {         dm.Cli_Cad_Log.Insert;
                                                                                                                                                     dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                                                                                                                                                                                             dm.Cli_Cad_LogNOME.text:=usuario;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 dm.Cli_Cad_Log.Post;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             dm.cli_cad_log.ApplyUpdates(0);}

                                                    end;

                                                       Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento(1); // 1 = Numero do Lote

                                                       Frm_MDFCOnfig.MemoResp.Lines.Text   := UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                                       Frm_MDFCOnfig.memoRespWS.Lines.Text := UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                                       Frm_MDFCOnfig.LoadXML(Frm_MDFCOnfig.MemoResp,Frm_MDFCOnfig.WBResposta);


                                                              Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
                                                              Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.CD_Mdf_DadosCHAVE.Text;
                                                              Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;

                                                             if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 101 then
                                                                 begin
                                                                       dm.CD_Mdf_Dados.Edit;
                                                                       dm.CD_Mdf_DadosSTATUS.Value:=3;
                                                                       dm.CD_Mdf_Dados.Post;
                                                                       dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                                       dm.Cli_Cad_Log.Open;
                                                                       dm.Cli_Cad_Log.Insert;
                                                                       dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                                       dm.Cli_Cad_LogNOME.text:=FrmLogin_Acao.ClientDataSet1NOME.AsString;
                                                                    dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                                    dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                                    dm.Cli_Cad_LogPROCESSO.Text := 'Cancelamento';
                                                                    dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                                                    dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                                    Frm_Principal.RzDBMemo1.Lines.Add('Cancelamento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);
                                                                    dm.Cli_Cad_Log.Post;
                                                                    dm.cli_cad_log.ApplyUpdates(0);


                                                                 end;




                                                       close;


                                           end;

                               end;




end;

procedure TFrm_MDF_CHAVE.cancelaxml;
var
 vAux : String;
begin                           if Length(edit2.Text)<>0 then
                                   begin

                                       if MessageDlg('deseja realmente cancelar o MDFe selecionado?',mtConfirmation,[mbyes,mbno],0)= mryes then
                                           begin





                                                     Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;
                                                     Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(edit2.Text);

                                                   if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                                                        then exit;



                                                       with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                                        begin
                                                         infEvento.chMDFe   := Copy(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
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

                                                       Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote
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
                                                                 //   dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                                 //   dm.Cli_Cad_LogNOME.text:=usuario;
                                                                    dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                                    dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                                    dm.Cli_Cad_LogPROCESSO.Text := 'Cancelamento';
                                                                    dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                                                    dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                                    Frm_Principal.RzDBMemo1.Lines.Add('Cancelamento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);
                                                                    dm.Cli_Cad_Log.Post;
                                                                    dm.cli_cad_log.ApplyUpdates(0);
                                                                 close;
                                            end;
                                   end;



end;

procedure TFrm_MDF_CHAVE.RadioGroup1Click(Sender: TObject);
begin
     if RadioGroup1.ItemIndex = 0 then
        begin
          GroupBox1.Enabled:=true;
          GroupBox2.Enabled:=false;
        end
        else
        begin
          GroupBox1.Enabled:=false;
          GroupBox2.Enabled:=true;
        end

end;

procedure TFrm_MDF_CHAVE.SpeedButton1Click(Sender: TObject);
var
 vAux : String;

begin
                    if OpenDialog1.Execute then
                       begin
                         OpenDialog1.Title := 'Selecione o MDFe';
                         OpenDialog1.DefaultExt := '*-MDFe.xml';
                         OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
                         OpenDialog1.InitialDir :=Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;
                         if OpenDialog1.FileName<>'' then
                            Edit2.Text:=OpenDialog1.FileName;


                       end;


                        {   FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                                                      FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';

                                                                                 FrmLogin_Acao.ShowModal;}








                       {


                         dm.CD_Mdf_Dados.Locate('CHAVE',OpenDialog1.FileName,[loCaseInsensitive]);



          //h := StrToDateTime(inicio)*24;





                         if OpenDialog1.Execute then
                          begin
                           ACBrMDFe1.Manifestos.Clear;
                           ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
                           if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                            then exit;

                           ACBrMDFe1.EventoMDFe.Evento.Clear;



                          end;
                                   }



end;

end.
