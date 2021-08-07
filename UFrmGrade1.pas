unit UFrmGrade;

interface

uses  Inifiles,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, DosMove, Vcl.Menus,
  RzBckgnd, Data.FMTBcd, Data.SqlExpr, RzPanel, Vcl.Imaging.jpeg, RzLabel,
  RzDBGrid;

type
  TFrmGrade = class(TForm)
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button15: TButton;
    Button16: TButton;
    DosMove1: TDosMove;
    Button7: TButton;
    PopupMenu1: TPopupMenu;
    CancelarSemRegistronoSefaz1: TMenuItem;
    Button9: TButton;
    Memo1: TMemo;
    SQLQuery1: TSQLQuery;
    Query_Clonar: TSQLQuery;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzPanel1: TRzPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    RzPanel2: TRzPanel;
    Image1: TImage;
    RzLabel1: TRzLabel;
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    RzBackground2: TRzBackground;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    RzBackground3: TRzBackground;
    RzSpacer7: TRzSpacer;
    RzBackground4: TRzBackground;
    Panel4: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    RzBackground5: TRzBackground;
    Panel5: TPanel;
    Label1: TLabel;
    RzSpacer1: TRzSpacer;
    Label3: TLabel;
    RzSpacer11: TRzSpacer;
    Label9: TLabel;
    RzSpacer12: TRzSpacer;
    Label10: TLabel;
    RzSpacer8: TRzSpacer;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CancelarSemRegistronoSefaz1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrade: TFrmGrade;
  IniFile    : String;
 Ini        : TIniFile;
implementation

{$R *.dfm}

uses UFrmPrincipal, UDM, UFrm_MDF, UFrm_MDFConfig, pcnConversao, UFrmFuncoes,
  UFrmLogin_Acao;

procedure TFrmGrade.Button15Click(Sender: TObject);
begin

if DM.CD_Mdf_DadosSTATUS.Value=1 then
   BEGIN
      IniFile := ChangeFileExt( Application.ExeName, '.ini');
       Ini := TIniFile.Create( IniFile );

      if FileExists(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML') then
         Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
         Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
         Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Imprimir;
   END;

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

procedure TFrmGrade.Button16Click(Sender: TObject);
var
 Para : String;
 CC   : Tstrings;
 mem  : TMemo;
 begin
       if DM.CD_Mdf_DadosSTATUS.Value=1 then
        BEGIN


            para:=inputbox('Código','Digite o E-Mail de destino','');


             if Length(senha)<>0 then
               begin






               if FileExists(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML') then
                     begin
                     Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;

                     end;


               Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
               Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
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
end;
procedure TFrmGrade.Button1Click(Sender: TObject);
var
id,x,md, i :integer;
begin

//dados
 i:=dm.CD_Mdf_DadosID.Value;
Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from mdfe_dados where id ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


        x:=0;
        dm.CD_Mdf_Dados.Insert;
        md :=dm.CD_Mdf_DadosID.Value;

        while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdf_Dados.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;

            end;

            dm.CD_Mdf_DadosID.Value := md;
            dm.CD_Mdf_DadosSTATUS.Value :=0;
            dm.CD_Mdf_DadosSERIe.Value:=dm.CD_MDFe_ConfigSERIE.Value;
            dm.CD_Mdf_DadosMODELO.Value:=StrToInt(dm.CD_MDFe_ConfigMODELO.Value);
            dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
            dm.CD_Mdf_DadosDATA.AsDateTime:=date;
            dm.CD_Mdf_DadosHORA.AsDateTime:=time;
            dm.CD_Mdf_DadosMDF_D_ENVIO.Clear;
            dm.CD_Mdf_DadosCHAVE.Clear;
            dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.Value:=0;
            dm.CD_Mdf_DadosTOT_VALOR_TOTAL_MERCADORIA.Value:=0;
            dm.CD_Mdf_DadosTOT_PESO_BRUTO.Value:=0;

            dm.CD_Mdf_Dados.Post;







//descarregamento
Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from MDFE_L_DESCARREGAMENTO where id_mdfe ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


Query_Clonar.first;
while not Query_Clonar.eof do
      begin


        x:=0;

        dm.CD_Mdfe_l_descarregamentoTable.Insert;
       // id:= dm.CD_Mdfe_l_descarregamentoTableID.Value;
      {  while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdfe_l_descarregamentoTable.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;

            end;  }
         //   dm.CD_Mdfe_l_descarregamentoTableid.Value := id;
            dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.asinteger:=Query_Clonar.FieldByName('cod_mun').AsInteger;
            dm.CD_Mdfe_l_descarregamentoTableID_MDFE.asinteger:=md;
            dm.CD_Mdfe_l_descarregamentoTableUF.Text:=Query_Clonar.FieldByName('UF').text;
            dm.CD_Mdfe_l_descarregamentoTableMUNICIPIO.Text:=Query_Clonar.FieldByName('MUNICIPIO').text;
            dm.CD_Mdfe_l_descarregamentoTable.Post;

            Query_Clonar.next;
      end;



//carregamento
Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from MDFE_L_CARREGAMENTO where ID_MDFE ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


Query_Clonar.first;
while not Query_Clonar.eof do
      begin


        x:=0;

        dm.CD_Mdfe_l_carregamentoTable.Insert;
        id:= dm.CD_Mdfe_l_carregamentoTableID.Value;
        {while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdfe_l_carregamentoTable.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;
            end;
            Edit2.Text:=IntToStr(dm.CD_Mdfe_l_carregamentoTableCOD_MUN.Value);
            dm.CD_Mdfe_l_carregamentoTableid.Value := id;
            dm.CD_Mdfe_l_carregamentoTableCOD_MUN.asinteger:=StrToInt(Edit2.Text);
            dm.CD_Mdfe_l_carregamentoTableID_MDFE.Value:=md;}
            dm.CD_Mdfe_l_carregamentoTableid.Value := id;
            dm.CD_Mdfe_l_carregamentoTableCOD_MUN.asinteger:=Query_Clonar.FieldByName('cod_mun').AsInteger;
            dm.CD_Mdfe_l_carregamentoTableID_MDFE.asinteger:=md;
            dm.CD_Mdfe_l_carregamentoTableUF.Text:=Query_Clonar.FieldByName('UF').text;
            dm.CD_Mdfe_l_carregamentoTableMUNICIPIO.Text:=Query_Clonar.FieldByName('MUNICIPIO').text;



            dm.CD_Mdfe_l_carregamentoTable.Post;
            Query_Clonar.next;
      end;


//percurso
Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from MDFE_UF_PERCURSO where ID_MDFE ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


Query_Clonar.first;
while not Query_Clonar.eof do
      begin



        x:=0;

        dm.CD_Mdfe_uf_percursoTable.Insert;
        id:= dm.CD_Mdfe_uf_percursoTableID.Value;
        while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdfe_uf_percursoTable.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;

            end;
            dm.CD_Mdfe_uf_percursoTableid.Value := id;
            dm.CD_Mdfe_uf_percursoTableID_MDFE.Value:=md;
            dm.CD_Mdfe_uf_percursoTable.Post;
            Query_Clonar.next;


      end;



//condutor


Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from MDFE_CONDUTOR where ID_MDFE ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


Query_Clonar.first;
while not Query_Clonar.eof do
      begin



        x:=0;

        dm.CD_Mdfe_condutorTable.Insert;
        id:= dm.CD_Mdfe_condutorTableID.Value;
        while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdfe_condutorTable.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;

            end;
            dm.CD_Mdfe_condutorTableid.Value := id;
            dm.CD_Mdfe_condutorTableID_MDFE.Value:=md;
            dm.CD_Mdfe_condutorTable.Post;
            Query_Clonar.next;


      end;



//reboque
Query_Clonar.Close;
query_clonar.SQL.Clear;
query_clonar.SQL.Add('select * from MDFE_V_REBOQUE where ID_MDFE ='+IntToStr(i));
Query_Clonar.ExecSQL();
Query_Clonar.Open;


Query_Clonar.first;
while not Query_Clonar.eof do
      begin



        x:=0;

        dm.CD_Mdfe_v_reboqueTable.Insert;
        id:= dm.CD_Mdfe_v_reboqueTableID.Value;
        while x < Query_Clonar.Fields.Count do
            begin
            dm.CD_Mdfe_v_reboqueTable.Fields[x].value := Query_Clonar.Fields[x].value;
            x:=x+1;
            end;
            dm.CD_Mdfe_v_reboqueTableid.Value := id;
            dm.CD_Mdfe_v_reboqueTableID_MDFE.Value:=md;
            dm.CD_Mdfe_v_reboqueTable.Post;
            Query_Clonar.next;


      end;



end;

procedure TFrmGrade.Button2Click(Sender: TObject);
begin
Frm_MDF:=TFrm_mdf.Create(self);
dm.CD_Mdf_Dados.Insert;
dm.CD_Mdf_DadosSTATUS.AsInteger:=0;


        dm.Cli_Cad_Log.Insert;
        dm.Cli_Cad_LogID_USER.asinteger:=ID;
        dm.Cli_Cad_LogNOME.text:=Frm_Principal.StatusBar1.Panels[1].Text;
        dm.Cli_Cad_LogDATA.AsDateTime:=now;
        dm.Cli_Cad_LogHORA.AsDateTime:=now;
        dm.Cli_Cad_LogPROCESSO.Text := 'Adiciona';
        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
        Frm_Principal.RzDBMemo1.Lines.Add('Adiciona Novo registro MDF '+dm.CD_Mdf_DadosNUMERO.text);
        dm.Cli_Cad_Log.Post;
        dm.cli_cad_log.ApplyUpdates(0);



Frm_mdf.ShowModal;
Frm_mdf:=nil;

end;

procedure TFrmGrade.Button3Click(Sender: TObject);
begin
if dm.CD_Mdf_Dados.RecordCount<>0 then
   begin
      Frm_MDF:=TFrm_mdf.Create(self);
      if (DM.CD_Mdf_DadosSTATUS.Value=1) or (DM.CD_Mdf_DadosSTATUS.Value=3) then
        dm.CD_Mdf_Dados.EDIT;
          Frm_mdf.ShowModal;
            Frm_mdf:=nil;
   end;

end;

procedure TFrmGrade.Button4Click(Sender: TObject);
var
 vAux : String;
begin



                         FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                         FrmLogin_Acao.RzLabel4.Caption :='Liberação para Cancelar';

                         FrmLogin_Acao.ShowModal;


                         if L = 1 then
                            begin

                           if MessageDlg('deseja realmente cancelar o MDFe selecionado?',mtConfirmation,[mbyes,mbno],0)= mryes then
                             begin
                                    Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;



                                     Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Clear;
                                     if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux))
                                          then exit;



                                         with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                          begin
                                           infEvento.chMDFe   := Copy(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
                                           infEvento.CNPJ     := DM.EmitenteCNPJ.Text;
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
                                      //   ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS));
                                      //   MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                      //   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                                      //   LoadXML(MemoResp, WBResposta);
                                           dm.CD_Mdf_Dados.edit;
                                        // if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat=101 then
                                            dm.CD_Mdf_DadosSTATUS.Value:=3;


                                          ShowMessage(IntToStr(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat));

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
                                                      dm.Cli_Cad_LogNOME.text:=Frm_Principal.StatusBar1.Panels[0].Text;
                                                      dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                      dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                      dm.Cli_Cad_LogPROCESSO.Text := 'Cancelamento';
                                                      dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                                      dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                   //   Frm_Principal.RzDBMemo1.Lines.Add('Solicitação de Cancelamento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);
                                                      dm.Cli_Cad_Log.Post;
                                                      dm.cli_cad_log.ApplyUpdates(0);



                              end
                               else
                                l:=0;
                            end
                            else
                            ShowMessage('Não foi possivel fazer o cancelamento do MDFe Selecionado!');

                            FrmLogin_Acao:= nil;
                 end;



//end;

procedure TFrmGrade.Button5Click(Sender: TObject);

begin
 if DM.CD_Mdf_DadosSTATUS.Value=1 then
      BEGIN

        if DBGrid1.Canvas.Font.Color = clOlive then
           begin



                           FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                           FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';

                           FrmLogin_Acao.ShowModal;
                     if FileExists(Ini.ReadString('Geral','PathSalvar','')+'\'+FormatDateTime('yyyy""mm',dm.CD_Mdf_DadosDATA.AsDateTime)+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML') then


                           if L = 1 then
                              begin

                              if MessageDlg('deseja realmente encerrar o MDFe selecionado?',mtConfirmation,[mbOK,mbno],0)= mryes then
                                 begin
             

                                     with Frm_MDFCOnfig.ACBrMDFe1.EventoMDFe.Evento.Add do
                                      begin
                                       infEvento.chMDFe   := Copy(dm.CD_Mdf_DadosCHAVE.Text,5,44);  //Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
                                       infEvento.CNPJ     := DM.EmitenteCNPJ.Text;
                                       infEvento.dhEvento := now;
                                  //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
                                  //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
                                  //                  teEncerramento);
                                       infEvento.tpEvento   := teEncerramento;
                                       infEvento.nSeqEvento := 1;

                                       infEvento.detEvento.nProt := Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
                                       infEvento.detEvento.dtEnc := Date;
                                       infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
                                       infEvento.detEvento.cMun  := Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;

                                      end;
                                         ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.EnvEvento.RetWS));


                                         dm.CD_Mdf_Dados.Edit;

                                         Frm_MDFCOnfig.ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote
                                         dm.CD_Mdf_DadosD_ENCERRA.AsDateTime:=date;
                                         dm.CD_Mdf_DadosMDF_PROTOCOLO.Text:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;





                                        dm.CD_Mdf_DadosCHAVE.Value:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                                        dm.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].MDFe.Ide.dhEmi;
                                        dm.CD_Mdf_DadosSTATUS.Value:=2;


                                        dm.Cli_Cad_Log.Insert;
                                        dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                        dm.Cli_Cad_LogNOME.text:=Frm_Principal.StatusBar1.Panels[0].Text;
                                        dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                        dm.Cli_Cad_LogPROCESSO.Text := 'Encerramento';
                                        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                        Frm_Principal.RzDBMemo1.Lines.Add('Encerramento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS);
                                        dm.Cli_Cad_Log.Post;
                                        dm.cli_cad_log.ApplyUpdates(0);




                                          //   ShowMessage(IntToStr(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat));
                                                //Memo2.Lines.Add('cStat: '+ Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Recibo);











                                         dm.CD_Mdf_Dados.Post;
                                         dm.CD_Mdf_Dados.ApplyUpdates(0);

                                      //   if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat then






                                         {
                                         0 digitação
                                                                   1 Em Operação
                                                                   2 Encrrado
                                                                   3 cancelado }

                                              {

                                         CASE Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat OF
                                              100 : dm.CD_Mdf_DadosSTATUS.Value:=1;
                                              0 : dm.CD_Mdf_DadosSTATUS.Value:=2;
                                              101 : dm.CD_Mdf_DadosSTATUS.Value:=3;
                                          END; }

                                        // dm.CD_Mdf_DadosSTATUS.Value:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.cStat;

                                   end
                                   else
                                   l:=0;
                              end;





           end
           else
           MessageDlg('Fora do prazo para encerramento!',mtWarning,[mbOK],0);


      END


                  else
                    ShowMessage('Não foi possivel fazer o encerramento do MDFe Selecionado!');
                    FrmLogin_Acao:= nil;


end;

procedure TFrmGrade.Button6Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrmGrade.Button7Click(Sender: TObject);
begin

 if DM.CD_Mdf_DadosSTATUS.Value<>1 then
    BEGIN
           FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
           FrmLogin_Acao.RzLabel4.Caption :='Liberação para Excluir';

           FrmLogin_Acao.ShowModal;


           if L = 1 then
              begin

                 if dm.CD_Mdf_Dados.RecordCount<>0 then
                   begin
                   case dm.CD_Mdf_DadosSTATUS.Value of
                     0: if MessageDlg('Deseja realmente excluir esta registro',mtConfirmation,[mbYes,mbNo],0)=mryes then
                           begin
                           dm.CD_Mdf_Dados.Delete;
                           dm.CD_Mdf_Dados.ApplyUpdates(0);


                           end;

                     1: MessageDlg('Só registro cancelado ou em edição podera ser excluido!',mtInformation,[mbOK],0);
                     2: MessageDlg('Só registro cancelado ou em edição podera ser excluido!',mtInformation,[mbOK],0);



                     3: if MessageDlg('Deseja realmente excluir este registro',mtConfirmation,[mbYes,mbNo],0)=mryes then
                           begin
                           dm.CD_Mdf_Dados.Delete;
                           dm.CD_Mdf_Dados.ApplyUpdates(0);


                                        dm.Cli_Cad_Log.Insert;
                                         dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                        dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                        dm.Cli_Cad_LogPROCESSO.Text := 'Exclusão';
                                        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                        Frm_Principal.RzDBMemo1.Lines.Add('Exclusão de Registro');
                                        dm.Cli_Cad_Log.Post;
                                        dm.cli_cad_log.ApplyUpdates(0);


                           end;



                   end;
                   end;
              end
               else
                ShowMessage('Não foi possivel fazer o encerramento do MDFe Selecionado!');
                FrmLogin_Acao:= nil;
    END;
end;

procedure TFrmGrade.Button9Click(Sender: TObject);
begin
  Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.CD_Mdf_DadosCHAVE.Text;
  Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;

//  ShowMessage(UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetWS));
  //memoRespWS.Lines.Text :=  UTF8Encode(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.RetornoWS);
//  LoadXML(MemoResp, WBResposta);

end;

procedure TFrmGrade.CancelarSemRegistronoSefaz1Click(Sender: TObject);
begin
dm.CD_Mdf_Dados.Edit;
dm.CD_Mdf_DadosSTATUS.Value:=3;
dm.CD_Mdf_Dados.post;
dm.CD_Mdf_Dados.ApplyUpdates(0)

end;

procedure TFrmGrade.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  d : real;
begin

{Em Digitação
Ativo
Finalizado
Cancelado }

   d := Date - dm.CD_Mdf_DadosDATA.AsDateTime;

  if dm.CD_Mdf_DadosSTATUS.Value = 0  then
      begin
     // DBGrid1.Canvas.Brush.Color := clWhite;
      DBGrid1.Canvas.Font.Color := clBlack;


      end
        else
         if dm.CD_Mdf_DadosSTATUS.Value = 1  then
            begin
             if d>=15  then

                DBGrid1.Canvas.Font.Color := clOlive


                else
           // DBGrid1.Canvas.Brush.Color := clBlue;
               DBGrid1.Canvas.Font.Color := clBlue//clWhite;
            end
            else
             if dm.CD_Mdf_DadosSTATUS.Value = 2  then
                begin
              //  DBGrid1.Canvas.Brush.Color := clSilver;
                DBGrid1.Canvas.Font.Color := clGray;//clWhite;
                end
                else
                 if dm.CD_Mdf_DadosSTATUS.Value = 3  then
                    begin
                  //  DBGrid1.Canvas.Brush.Color := clRed;
                    DBGrid1.Canvas.Font.Color := clBtnFace //clWhite;
                    end;



      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
end;

procedure TFrmGrade.Edit1Change(Sender: TObject);
begin
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
   DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where ID ='+Edit1.Text
   else
  if ComboBox1.ItemIndex=1 then
     DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where NUMERO ='+Edit1.Text
   else
  if ComboBox1.ItemIndex=2 then
     DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where CHAVE Like'''+'%'+Edit1.Text+'%'+''''
     else
   if ComboBox1.ItemIndex=3 then
      begin
      SQLQuery1.Close;
      SQLQUERY1.SQL.Clear;
      SQLQUERY1.SQL.Add('select * from NFE_MDF where N_DA_NFE ='+Edit1.Text);
      SQLQuery1.ExecSQL();
      SQLQuery1.Open;

      if SQLQuery1.RecordCount<>0 then
         DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where ID ='+IntToStr(dm.CD_Nfe_mdfTableID_MDFE.VALUE)+' ORDER BY ID descending';



        {
      dm.CD_Nfe_mdfTable.CLOSE;
      dm.CD_Nfe_mdfTable.CommandText:='select * from NFE_MDF where N_DA_NFE ='+Edit1.Text;
      dm.CD_Nfe_mdfTable.Execute;
      dm.CD_Nfe_mdfTable.OPEN;}




      end;


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
      if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Frm_MDFCOnfig:=nil;
end;

procedure TFrmGrade.FormCreate(Sender: TObject);
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);

end;

procedure TFrmGrade.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
  RzDateTimeEdit3.date:=date;
  RzDateTimeEdit4.Date:=date;
DM.CD_Mdf_Dados.close;
  DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where DATA >=:ini and  DATA <=:fim'+' ORDER BY id descending';
  DM.CD_Mdf_Dados.Params[0].DataType:=ftDate;
  DM.CD_Mdf_Dados.Params[1].DataType:=ftDate;
  dm.CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit3.Date;
  dm.CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit4.Date;
  DM.CD_Mdf_Dados.open;
end;

procedure TFrmGrade.GroupBox1Exit(Sender: TObject);
begin
  DM.CD_Mdf_Dados.close;
  DM.CD_Mdf_Dados.CommandText:='select * from MDFE_DADOS where DATA >=:ini and  DATA <=:fim'+' ORDER BY id descending';
  DM.CD_Mdf_Dados.Params[0].DataType:=ftDate;
  DM.CD_Mdf_Dados.Params[1].DataType:=ftDate;
  dm.CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit3.Date;
  dm.CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit4.Date;
  DM.CD_Mdf_Dados.open;
end;

end.
