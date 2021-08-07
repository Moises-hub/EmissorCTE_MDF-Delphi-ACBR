unit UFrm_MDFConfig;

interface

uses    WinINet,  IniFiles, ShellAPI,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, ACBrBase, ACBrDFe, ACBrMDFe, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.OleCtrls,
  RzCmboBx, RzDBCmbo, Vcl.FileCtrl, Vcl.Imaging.pngimage,
  DosMove, ACBrMail, Data.FMTBcd, Data.DB, Data.SqlExpr,
  SHDocVw, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFeRLClass, Vcl.Grids, Vcl.DBGrids,
  RzLabel, RzDBLbl,  UCDM, UFrm_MDF_CHAVE, ACBrIntegrador,
  ACBrDFeReport, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, ACBrEAD, Datasnap.DBClient,
  dxGDIPlusClasses, ACBrMDFeDAMDFEFR, frxClass;

type
  TFrm_MDFCOnfig = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    edtEmitCNPJ: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Label9: TLabel;
    Label10: TLabel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwMDFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    Panel4: TPanel;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancelamento: TButton;
    btnCriarEnviar: TButton;
    btnConsultarChave: TButton;
    btnEncerramento: TButton;
    Button3: TButton;
    Panel5: TPanel;
    Label4: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    OpenDialog1: TOpenDialog;
    edtLogoMarca: TDBEdit;
    Label7: TLabel;
    cbUF: TRzDBComboBox;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Button2: TButton;
    Image1: TImage;
    Label11: TLabel;
    DosMove1: TDosMove;
    SQLDataSet1: TSQLDataSet;
    ACBrMDFe1: TACBrMDFe;
    DBEdit2: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox3: TRzDBComboBox;
    RzDBLabel1: TRzDBLabel;
    SaveDialog1: TSaveDialog;
    CTE_CARGA: TSQLQuery;
    ACBrEAD1: TACBrEAD;
    XMLDocument1: TXMLDocument;
    frxReport1: TfrxReport;
    ACBrMDFeDAMDFeRL1: TACBrMDFeDAMDFeRL;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure GravarConfiguracao;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ConfiguraComponente;
    procedure LoadXML(MyMemo: TMemo;MyWebBrowser: TWebBrowser);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnEncerramentoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);
    procedure scStringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure GerarMDFe(NumMDFe: String);
  end;

var
  Frm_MDFCOnfig: TFrm_MDFCOnfig;
  senha:string;
implementation




{$R *.dfm}

uses UDM, UFrmPrincipal, pcnConversao, pmdfeConversaoMDFe, pmdfeMDFe,
   UFrm_Patch, UFrmSequencia, UFrm_MDF, UFrmLogin_Acao, UFrmGrade,
  UFrm_EncerraMDF, UFrm_NaoEncerrado;






procedure TFrm_MDFCOnfig.GerarMDFe(NumMDFe: String);
var
placa,cnpj : string;
begin


 with ACBrMDFe1.Manifestos.Add.MDFe do
  begin
   //
   // Dados de Identificação do MDF-e
   //
   Ide.cUF := dm.CD_MDFe_ConfigIDUF.AsInteger;

   // TpcnTipoAmbiente = (taProducao, taHomologacao);
   case dm.CD_MDFe_ConfigTIPOAMB.AsInteger of
    1: Ide.tpAmb := taProducao;
    2: Ide.tpAmb := taHomologacao;
   end;
     // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
   case dm.CD_Mdf_DadosTIPO_EMISSOR.AsInteger of
        0 : Ide.tpEmit  := teTranspCargaPropria;
        1 : Ide.tpEmit  := teTransportadora;
        2 : Ide.tpEmit  := teTranspCTeGlobalizado;
   end;


   case dm.CD_Mdf_DadosTIPO_EMISSOR.AsInteger of
   1 : tot.qCTe := DM.CD_MDF_CTE.RecordCount;
   0 : tot.qNFe := dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.Value;
   end;


   Ide.modelo  := DM.CD_MDFe_ConfigMODELO.Text;
   Ide.serie   := DM.CD_MDFe_ConfigSERIE.Value;
   Ide.nMDF    := DM.CD_Mdf_DadosNUMERO.Value;  //StrToIntDef(NumMDFe, 0);
   Ide.cMDF    := random(99999); // Código Aleatório
   // TMDFeModal = ( moRodoviario, moAereo, moAquaviario, moFerroviario );
   Ide.modal   := moRodoviario;
   Ide.dhEmi   := Now;
   // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA);
 //  Ide.tpEmis  := teNormal;


             case dm.CD_Mdf_DadosID_NFE.AsInteger  of
             1: Ide.tpEmis := teNormal;
             2: if ACBrMDFe1.Configuracoes.WebServices.UFCodigo in [14, 16, 26, 35, 50, 51] then
                    ACBrMDFe1.Configuracoes.Geral.FormaEmissao := teSVCRS
                     else
                      ACBrMDFe1.Configuracoes.Geral.FormaEmissao := teSVCSP;
           end;




   // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
   Ide.procEmi := peAplicativoContribuinte;
   Ide.verProc := dm.CD_MDFe_ConfigVERSAOXML.AsString;
   Ide.UFIni   := dm.CD_Mdf_DadosUF_CARREGAMENTO.Text;
   Ide.UFFim   := dm.CD_Mdf_DadosUF_desCARREGAMENTO.Text;

   // cnpj :=StringReplace(dm.CD_Mdf_DadosCNPJ_TOMADOR.AsString,'.','',[rfReplaceAll]);
   // cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
   // rodo.infANTT.infContratante.Add.CNPJCPF :=StringReplace(cnpj,'-','',[rfReplaceAll]);
    rodo.infANTT.RNTRC:=dm.CD_Mdf_DadosVEI_RNTRC.Text;
   dm.CD_Mdfe_l_carregamentoTable.First;
   while not dm.CD_Mdfe_l_carregamentoTable.eof do
   begin
    with Ide.infMunCarrega.Add do
        begin
         cMunCarrega := dm.CD_Mdfe_l_carregamentoTableCOD_MUN.asinteger;
         xMunCarrega := dm.CD_Mdfe_l_carregamentoTableMUNICIPIO.Value;
        end;
     dm.CD_Mdfe_l_carregamentoTable.next;
   end;

   if dm.Query_MDFE_Ciot.RecordCount<>0 then
     begin
       dm.Query_MDFE_Ciot.First;
      while not dm.Query_MDFE_Ciot.eof do
        begin
           with rodo.infANTT.infCIOT.New do
            begin
              CIOT    := trim(dm.Query_MDFE_CiotCIOT.AsString);
              CNPJCPF := dm.CD_Mdf_DadosCNPJ_TOMADOR.AsString;
            { CNPJCPF := StringReplace(dm.Query_MDFE_CiotCIOT_CNPJ.AsString,'.','',[rfReplaceAll]);
              CNPJCPF := StringReplace(CNPJ,'/','',[rfReplaceAll]);
              CNPJCPF := StringReplace(CNPJ,'-','',[rfReplaceAll]);   }

            end;

            dm.Query_MDFE_Ciot.next;
        end;


     end;

                       with   rodo.infANTT.infContratante.New do
                         begin
                         if length(dm.CD_Mdf_DadosCNPJ_TOMADOR.AsString)>0 then
                            CNPJCPF:=dm.CD_Mdf_DadosCNPJ_TOMADOR.AsString
                            else
                            CNPJCPF:=dm.EmitenteCNPJ.AsString;

                         CNPJCPF:=StringReplace(cnpjcpf,'.','',[rfReplaceAll]);
                         CNPJCPF:=StringReplace(CNPJCPF,'/','',[rfReplaceAll]);
                         CNPJCPF:=StringReplace(CNPJCPF,'-','',[rfReplaceAll]);
                         end;


     try

        if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 1 then
           prodPred.tpCarga := tcGranelSolido
           else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 2 then
           prodPred.tpCarga := tcGranelLiquido
            else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 3 then
           prodPred.tpCarga := tcFrigorificada
            else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 4 then
           prodPred.tpCarga := tcConteinerizada
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 5 then
           prodPred.tpCarga := tcCargaGeral
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 6 then
           prodPred.tpCarga := tcNeogranel
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 7 then
           prodPred.tpCarga := tcPerigosaGranelSolido
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 8 then
           prodPred.tpCarga := tcPerigosaGranelLiquido
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 9 then
           prodPred.tpCarga := tcPerigosaCargaFrigorificada
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 10 then
           prodPred.tpCarga := tcPerigosaConteinerizada
                       else
          if DM.CD_Mdf_DadosPRODPRED_TPCARGA.AsInteger = 11 then
           prodPred.tpCarga := tcPerigosaCargaGeral;





            prodPred.xProd   := DM.CD_Mdf_DadosPRODPRED_DESCRICAO.AsString;
            prodPred.cEAN    := 'SEM GTIN';
            prodPred.NCM     := '00000000';




              // Informações do Local de Carregamento
    // Informar somente quando MDF-e for de carga lotação
    prodPred.infLocalCarrega.CEP       := StrToInt(STRINGREPLACE(DM.CD_Mdf_DadosPRODPRED_CEPCARRE.AsString,'-','',[rfReplaceAll]));
    prodPred.infLocalCarrega.latitude  := 0;
    prodPred.infLocalCarrega.longitude := 0;

    // Informações do Local de Descarregamento
    // Informar somente quando MDF-e for de carga lotação
    prodPred.infLocalDescarrega.CEP       := StrToInt(STRINGREPLACE(DM.CD_Mdf_DadosPRODPRED_CEPDESCARRE.AsString,'-','',[rfReplaceAll]));
    prodPred.infLocalDescarrega.latitude  := 0;
    prodPred.infLocalDescarrega.longitude := 0;
     except

     end;



   if dm.CD_MDF_Seguro.RecordCount<>0 then
       begin
          dm.CD_MDF_Seguro.First;
          while not dm.CD_MDF_Seguro.Eof do
          begin
           with seg.Add  do
                 begin
                 if dm.CD_MDF_SeguroRESPSEGURO.AsString = 'rsEmitente' then

                     respSeg := rsEmitente
                     else
                     respSeg := rsTomadorServico;
                     CNPJ    :=   StringReplace(dm.CD_MDF_SeguroCPFCNPJ.AsString,'.','',[rfReplaceAll]);
                     CNPJ    :=   StringReplace(CNPJ,'/','',[rfReplaceAll]);
                     CNPJ    :=   StringReplace(CNPJ,'-','',[rfReplaceAll]);

                     xSeg    := dm.CD_MDF_SeguroSEGURADORA.AsString;
                     CNPJCPF    :=   StringReplace(dm.CD_MDF_SeguroCNPJ.AsString,'.','',[rfReplaceAll]);
                     CNPJCPF    :=   StringReplace(CNPJCPF,'/','',[rfReplaceAll]);
                     CNPJCPF    :=   StringReplace(CNPJCPF,'-','',[rfReplaceAll]);

                     nApol   :=  dm.CD_MDF_SeguroNAPOLICE.AsString;
                   if dm.CD_MDF_Averbacao.RecordCount<>0 then
                   begin
                     dm.CD_MDF_Averbacao.first;
                     while not dm.CD_MDF_Averbacao.Eof do
                      begin
                          with aver.Add do
                          begin
                            nAver := dm.CD_MDF_AverbacaoAVERBA.AsString;
                          end;
                          dm.CD_MDF_Averbacao.Next;
                      end;
                   end;
                 end;
                  dm.CD_MDF_Seguro.Next;
          end;
       end;


   dm.CD_Mdfe_uf_percursoTable.First;
   while not dm.CD_Mdfe_uf_percursoTable.eof do
     begin
       with Ide.infPercurso.Add do
        begin
          UFPer := dm.CD_Mdfe_uf_percursoTableUF.Text;
        end;
      dm.CD_Mdfe_uf_percursoTable.next;
     end;




   //
   // Dados do Emitente
   //
   Emit.CNPJCPF  := dm.EmitenteCNPJ.Text;
   Emit.IE    := dm.EmitenteIE.Text;
   Emit.xNome := dm.EmitenteRAZAO_SOCIAL.Text;
   Emit.xFant := dm.EmitenteNOME_EMPRESA.Text;

   Emit.EnderEmit.xLgr    := dm.EmitenteENDERECO.Text;
   Emit.EnderEmit.nro     := dm.EmitenteNUMERO.Text;
   Emit.EnderEmit.xCpl    := dm.EmitenteCOMPLEMENTO.Text;
   Emit.EnderEmit.xBairro := dm.EmitenteBAIRRO.Text;
   Emit.EnderEmit.cMun    := StrToInt(dm.REGIAOCODIGO_IBGE.Text);
   Emit.EnderEmit.xMun    := dm.REGIAOCIDADE.Text;
   Emit.EnderEmit.CEP     := StrToInt(copy(dm.Emitentecep.Text,1,5)+copy(dm.Emitentecep.Text,7,3));
   Emit.EnderEmit.UF      := dm.REGIAOUF.Text;
   Emit.EnderEmit.fone    := dm.EmitenteFone1.Text;
   Emit.enderEmit.email   := dm.EmitenteEMAIL.Text;

   rodo.RNTRC := dm.CD_Mdf_DadosVEI_RNTRC.Text;
   rodo.CIOT  := dm.CD_Mdf_DadosVEI_CIOT.Text;


   placa := copy(dm.CD_Mdf_DadosVEI_PLACA.Text,1,3)+Copy(dm.CD_Mdf_DadosVEI_PLACA.Text,5,4);

   rodo.veicTracao.cInt    := dm.CD_Mdf_DadosCOD_INT_VEIUC.Text;
   rodo.veicTracao.placa   := placa;
   rodo.veicTracao.RENAVAM := dm.CD_Mdf_DadosVEI_RENAVAN.Text;
   rodo.veicTracao.tara    := StrToInt(DM.CD_Mdf_DadosVEI_TARA.text);
   rodo.veicTracao.capKG   := StrToInt(DM.CD_Mdf_DadosVEI_CAPACIDADE.text);
   rodo.veicTracao.capM3   := StrToInt(DM.CD_Mdf_DadosVEI_CAPC_M3.text);

   // TpcteTipoRodado = (trNaoAplicavel, trTruck, trToco, trCavaloMecanico, trVAN, trUtilitario, trOutros);
   // Para o MDF-e não utilizar o trNaoAplicavel.

       if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '1' then
          rodo.veicTracao.tpRod := trTruck
          else
          if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '2' then
             rodo.veicTracao.tpRod := trToco
             else
             if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '3' then
                rodo.veicTracao.tpRod := trCavaloMecanico
                else
                if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '4' then
                   rodo.veicTracao.tpRod := trvan
                   else
                   if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '5' then
                      rodo.veicTracao.tpRod := trUtilitario
                      else
                      if DM.CD_Mdf_DadosVEI_TIPO_RODADO.text = '6' then
                         rodo.veicTracao.tpRod := troutros;





       // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);


     if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '1' then
        rodo.veicTracao.tpCar := tcNaoAplicavel
        else
        if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '2' then
           rodo.veicTracao.tpCar := tcAberta
           else
           if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '3' then
              rodo.veicTracao.tpCar := tcfechada
              else
              if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '4' then
                 rodo.veicTracao.tpCar := tcgraneleira
                 else
                 if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '5' then
                    rodo.veicTracao.tpCar := tcPortaContainer
                    else
                    if DM.CD_Mdf_DadosVEI_TIPO_CARROCERIA.Text = '6' then
                       rodo.veicTracao.tpCar := tcsider;


   rodo.veicTracao.UF := dm.CD_Mdf_DadosVEI_UF.Text;
   dm.CD_Mdfe_condutorTable.first;
   while not dm.CD_Mdfe_condutorTable.Eof do
        begin
           with rodo.veicTracao.condutor.Add do
            begin
             xNome := dm.CD_Mdfe_condutorTableNOME.Text;
             CPF   := copy(dm.CD_Mdfe_condutorTableCPF.Text,1,3)+copy(dm.CD_Mdfe_condutorTableCPF.Text,5,3)+copy(dm.CD_Mdfe_condutorTableCPF.Text,9,3)+copy(dm.CD_Mdfe_condutorTableCPF.Text,13,2);
            end;
         dm.CD_Mdfe_condutorTable.Next;
        end;




     if dm.CD_Mdfe_v_reboqueTable.RecordCount<>0 then
           BEGIN
            dm.CD_Mdfe_v_reboqueTable.First;
            while NOT dm.CD_Mdfe_v_reboqueTable.EOF do
                BEGIN

                 with rodo.veicReboque.Add do
                      begin
                       placa := copy(dm.CD_Mdfe_v_reboqueTablePLACA.text,1,3)+Copy(dm.CD_Mdfe_v_reboqueTablePLACA.text,5,4);
                       cInt    := dm.CD_Mdfe_v_reboqueTableCOD_INT_VEIUC.Value;
                       placa   := placa;
                       RENAVAM := dm.CD_Mdfe_v_reboqueTableRENAVAN.Value;
                       if dm.CD_Mdfe_v_reboqueTableTARA.text = '' then
                          tara    :=0
                          else
                          tara    := StrToInt(dm.CD_Mdfe_v_reboqueTableTARA.ASSTRING);


                         if dm.CD_Mdfe_v_reboqueTableCAPACIDADE.ASSTRING = '' then
                          capKG   :=0
                          else
                       capKG   := StrToInt(dm.CD_Mdfe_v_reboqueTableCAPACIDADE.ASSTRING);

                        if dm.CD_Mdfe_v_reboqueTableCAPC_M3.text = '' then
                          capM3    :=0
                          else
                          capM3   := dm.CD_Mdfe_v_reboqueTableCAPC_M3.asinteger;

                       // TpcteTipoCarroceria = (tcNaoAplicavel, tcAberta, tcFechada, tcGraneleira, tcPortaContainer, tcSider);
                          if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '1' then
                              rodo.veicTracao.tpCar := tcNaoAplicavel
                              else
                              if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '2' then
                                  rodo.veicTracao.tpCar := tcAberta
                                  else
                                  if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '3' then
                                      rodo.veicTracao.tpCar := tcfechada
                                      else
                                      if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '4' then
                                          rodo.veicTracao.tpCar := tcgraneleira
                                          else
                                          if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '5' then
                                              rodo.veicTracao.tpCar := tcPortaContainer
                                              else
                                              if  dm.CD_Mdfe_v_reboqueTableCARROCERIA.text = '6' then
                                                  rodo.veicTracao.tpCar := tcsider;




                                       UF := dm.CD_Mdfe_v_reboqueTableUF_LICENCIAMENTO.Text;
                      end;
                 dm.CD_Mdfe_v_reboqueTable.NEXT;
                END;
           end;
          {
   with rodo.valePed.disp.Add do
    begin
     CNPJForn := '';
     CNPJPg   := '';
     nCompra  := '';
    end; }

   dm.CD_Mdfe_l_descarregamentoTable.FIRST;
   while NOT dm.CD_Mdfe_l_descarregamentoTable.EOF do
      BEGIN
         with infDoc.infMunDescarga.Add do
          begin
           cMunDescarga := dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Value;
           xMunDescarga := dm.CD_Mdfe_l_descarregamentoTableMUNICIPIO.Value;
            //  dm.Query_UF.open;

               if dm.CD_Mdf_DadosTIPO_EMISSOR.AsInteger = 1 then
               begin
                dm.Query_UF.Close;
                dm.Query_UF.CommandText:='select * from MDF_DOCCTE where ID_MDFE ='+dm.CD_Mdf_DadosID.ASSTRING+' AND COD_IBGE ='+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.AsString;
               { dm.Query_UF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                           dm.Query_UF.Params[1].Asstring:=;}
                dm.Query_UF.open;

                CTE_CARGA.Close;
                CTE_CARGA.Params[0].AsString:=dm.Query_UF.FieldByName('CHAVE_CTE').AsString;
                CTE_CARGA.Open;

                tot.qCTe:=dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.asinteger;









                    if  dm.Query_UF.RecordCount <> 0 then
                          begin
                          dm.Query_UF.First;
                          WHILE NOT dm.Query_UF.Eof DO
                               BEGIN
                                with infCTe.Add do
                                chCTe := dm.Query_UF.FieldByName('CHAVE_CTE').AsString;
                                tot.vCarga:=dm.Query_UF.FieldByName('VALOR').AsFloat;
                                tot.qCarga:=dm.Query_UF.FieldByName('PESO').AsFloat;
                                cte_carga.First;
                                while not cte_carga.eof do
                                  begin

                                        if cte_carga.FieldByName('UN').AsString='UNIDADE' then
                                          tot.cUnid:=uM3
                                       else
                                        if cte_carga.FieldByName('UN').AsString='KG' then
                                       tot.cUnid:=uUNIDADE
                                       else
                                        if cte_carga.FieldByName('UN').AsString='TON' then
                                       tot.cUnid:=uTON
                                       else
                                        if cte_carga.FieldByName('UN').AsString='LITROS' then
                                          tot.cUnid:=uLITROS
                                          else
                                           tot.cUnid:=uUNIDADE;
                                        tot.qCarga:=CTE_CARGA.FieldByName('QNT').AsFloat;
                                      CTE_CARGA.Next;
                                  end;


                                dm.Query_UF.Next;
                               end;
                          end






               end
               else
               begin


                      Frm_MDF.Query_UFNF.Close;
                      Frm_MDF.Query_UFNF.SQL.Text:='select * from nfe_mdf where ID_MDFE =:i AND cod_mun =:C';
                      Frm_MDF.Query_UFNF.Params[0].AsInteger:=DM.CD_Mdf_DadosID.AsInteger;
                      Frm_MDF.Query_UFNF.Params[1].Asstring:=DM.CD_Mdfe_l_descarregamentoTableCOD_MUN.AsString;
                      Frm_MDF.Query_UFNF.open;




                    if  Frm_MDF.Query_UFNF.RecordCount <> 0 then
                          begin
                          Frm_MDF.Query_UFNF.First;
                          WHILE NOT Frm_MDF.Query_UFNF.Eof DO
                               BEGIN
                               with infNFe.Add do
                                  if LENGTH(Frm_MDF.Query_UFNF.FieldByName('CHAVE_REF').ASSTRING) = 0 then
                                    chNFe := Frm_MDF.Query_UFNF.FieldByName('chave_nfe').Value
                                    ELSE
                                    begin
                                    SegCodBarra:=Frm_MDF.Query_UFNF.FieldByName('CHAVE_REF').ASSTRING;
                                    chNFe:=Frm_MDF.Query_UFNF.FieldByName('CHAVE_nfe').ASSTRING
                                    end;
                                Frm_MDF.Query_UFNF.Next;
                               end;


                          end;

                          tot.qNFe:=dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.asinteger;
               end;




          dm.CD_Mdfe_l_descarregamentoTable.NEXT;
          END;
      END;


   tot.vCarga := dm.CD_Mdf_DadosTOT_VALOR_TOTAL_MERCADORIA.Value;
   // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);
   tot.cUnid  :=  ukg;
   tot.qCarga := dm.CD_Mdf_DadosTOT_PESO_BRUTO.Value;
        {
   with lacres.Add do
    begin
     nLacre := '123';
    end; }

   infAdic.infCpl     := dm.CD_Mdf_DadosOBS.Text;
   infAdic.infAdFisco := dm.CD_Mdf_DadosOBS2.Text;




  ACBrMDFe1.Manifestos.GerarMDFe;

                                       Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].GravarXML('', '');
                                                dm.CD_Mdf_Dados.Edit;
                                                dm.CD_Mdf_DadosSTATUS.AsInteger:=7;
                                                dm.CD_Mdf_DadosMDF_D_ENVIO.AsDateTime:=date;
                                                dm.CD_Mdf_DadosCHAVE.asstring:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                                                dm.CD_Mdf_Dados.post;
                                                dm.CD_Mdf_Dados.ApplyUpdates(0);

  end;



end;


procedure TFrm_MDFCOnfig.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin
 MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
 MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;




procedure TFrm_MDFCOnfig.ConfiguraComponente;
var
 Ok: Boolean;
 PathMensal: String;
begin
 // Configurações -> Certificados
 {$IFDEF ACBrMDFeOpenSSL}
 //  ACBrMDFe1.Configuracoes.Certificados.Certificado := edtCaminho.Text;
 //  ACBrMDFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
 {$ELSE}
   ACBrMDFe1.Configuracoes.Certificados.NumeroSerie := dm.CD_MDFe_ConfigCERTIFICADO.AsString;
 {$ENDIF}

 ACBrMDFe1.Configuracoes.Certificados.VerificarValidade := TRUE;

 // Configurações -> Arquivos
 ACBrMDFe1.Configuracoes.Arquivos.AdicionarLiteral := True;
 ACBrMDFe1.Configuracoes.Arquivos.EmissaoPathMDFe  := True;
 ACBrMDFe1.Configuracoes.Arquivos.SepararPorMes    := True;
// ACBrMDFe1.Configuracoes.Arquivos.PathMDFe         := Trim(ExtractFilePath(Application.Name)+'\MDFLOG');
 ACBrMDFe1.Configuracoes.Arquivos.Salvar           := True;


 if not DirectoryExists(dm.CD_MDFe_ConfigPATHSALVAR.AsString+'XML') then
       ForceDirectories(dm.CD_MDFe_ConfigPATHSALVAR.AsString+'XML');
          if not DirectoryExists(ExtractFilePath(Application.ExeName)+'MDFe\Docs\Salvar') then
                 ForceDirectories(ExtractFilePath(Application.ExeName)+'MDFe\Docs\Salvar');
                     if not DirectoryExists(ExtractFilePath(Application.ExeName)+'MDFe\Docs\Eventos') then
                            ForceDirectories(ExtractFilePath(Application.ExeName)+'MDFe\Docs\Eventos');


 ACBrMDFe1.Configuracoes.Arquivos.PathMDFe         :=  dm.CD_MDFe_ConfigPATHSALVAR.asstring+'XML';
 ACBrMDFe1.Configuracoes.Arquivos.PathEvento       :=  ExtractFilePath(Application.ExeName)+'MDFe\Docs\Eventos';
 ACBrMDFe1.Configuracoes.Arquivos.PathSchemas      :=  ExtractFilePath(Application.ExeName)+'Schemas\MDFe\';
 ACBrMDFe1.Configuracoes.Arquivos.PathSalvar       :=  ExtractFilePath(Application.ExeName)+'MDFe\Docs\Salvar';


 // Configurações -> Geral
 ACBrMDFe1.Configuracoes.Geral.FormaEmissao :=  StrToTpEmis(OK,IntToStr(dm.CD_MDFe_ConfigFORM_EMISSAO.AsInteger));
 ACBrMDFe1.Configuracoes.Geral.Salvar       := True;
{ case VersaoDF.ItemIndex of
  0: ACBrMDFe1.Configuracoes.Geral.VersaoDF := ve100;   ve300
 } ACBrMDFe1.Configuracoes.Geral.VersaoDF := StrToVersaoMDFe(OK,dm.CD_MDFe_ConfigVERSAOXML.AsString);




 // Configurações -> WebServices
 ACBrMDFe1.Configuracoes.WebServices.AguardarConsultaRet      := 0;
 ACBrMDFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
 ACBrMDFe1.Configuracoes.WebServices.Ambiente                 := StrToTpAmb(Ok, IntToStr(dm.CD_MDFe_ConfigTIPOAMB.AsInteger));
 ACBrMDFe1.Configuracoes.WebServices.IntervaloTentativas      := 0;
 ACBrMDFe1.Configuracoes.WebServices.Tentativas               := 5;
 ACBrMDFe1.Configuracoes.WebServices.UF                       := cbUF.TEXT;
 ACBrMDFe1.Configuracoes.WebServices.Visualizar               := StrToBool(dm.CD_MDFe_ConfigTIPOAMB.asstring);
 ACBrMDFe1.Configuracoes.WebServices.ProxyHost                := '';
 ACBrMDFe1.Configuracoes.WebServices.ProxyPort                := '';
 ACBrMDFe1.Configuracoes.WebServices.ProxyUser                := '';
 ACBrMDFe1.Configuracoes.WebServices.ProxyPass                := '';
 ACBrMDFe1.Configuracoes.WebServices.Salvar                   := True;

 // DAMDFe
 if ACBrMDFe1.DAMDFe <> nil then
  begin
   ACBrMDFe1.DAMDFe.PathPDF           := PathMensal;
//   ACBrMDFe1.DAMDFe.ExpandirLogoMarca := False;
   ACBrMDFe1.DAMDFe.Logo              := dm.CD_MDFe_ConfigLOGO.asstring;
 //  ACBrMDFe1.DAMDFe.MostrarPreview    := True;
   ACBrMDFe1.DAMDFe.TipoDAMDFe        := StrToTpImp(OK, IntToStr(dm.CD_MDFe_ConfigTIPODAMDFE.AsInteger));
  end;




end;



procedure TFrm_MDFCOnfig.btnCancelamentoClick(Sender: TObject);
begin

                        FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                        FrmLogin_Acao.RzLabel4.Caption :='Liberação para Cancelar';
                        FrmLogin_Acao.ShowModal;

            if L = 1 then
               Begin
                 Frm_MDF_CHAVE:=TFrm_MDF_CHAVE.Create(self);
                 Frm_MDF_CHAVE.ShowModal;
               End;
end;

procedure TFrm_MDFCOnfig.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave do MDF-e:', vChave)) then
    exit;

  ACBrMDFe1.WebServices.Consulta.MDFeChave := vChave;
  ACBrMDFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetornoWS);
  LoadXML(MemoResp, WBResposta);

end;

procedure TFrm_MDFCOnfig.btnConsultarClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Consultar;

   ShowMessage(ACBrMDFe1.WebServices.Consulta.Protocolo);
   MemoResp.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetWS);
   memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.Consulta.RetWS);
   LoadXML(MemoResp, WBResposta);
 end;

end;

procedure TFrm_MDFCOnfig.btnCriarEnviarClick(Sender: TObject);
 begin

    FrmSequencia := tFrmSequencia.Create(self);
    dm.CD_MDFe_Config.edit;
    FrmSequencia.ShowModal;
    FrmSequencia:=nil;


end;

procedure TFrm_MDFCOnfig.btnEncerramentoClick(Sender: TObject);
begin


                FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                           FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';

                           FrmLogin_Acao.ShowModal;


               if L = 1 then
                  begin





                       OpenDialog1.Title := 'Selecione o MDFe';
                       OpenDialog1.DefaultExt := '*-MDFe.xml';
                       OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
                       OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

                       if OpenDialog1.Execute then
                        begin

                         ACBrMDFe1.Manifestos.Clear;
                         ACBrMDFe1.EventoMDFe.Evento.Clear;
                         ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);



                         with ACBrMDFe1.EventoMDFe.Evento.Add do
                          begin
                           if Length(Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44))<> 44 then
                              MessageDlg('erro na chave verifique o XML',mtError,[mbYes],0)
                              else
                           infEvento.chMDFe   := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
                           infEvento.CNPJCPF     := edtEmitCNPJ.Text;
                           infEvento.dhEvento := now;
                      //  TpcnTpEvento = (teCCe, teCancelamento, teManifDestConfirmacao, teManifDestCiencia,
                      //                  teManifDestDesconhecimento, teManifDestOperNaoRealizada,
                      //                  teEncerramento);
                           infEvento.tpEvento   := teEncerramento;
                           infEvento.nSeqEvento := 1;

                           infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
                           infEvento.detEvento.dtEnc := Date;
                           infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
                           infEvento.detEvento.cMun  := ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;




                              dm.CD_Mdf_Dados.Close;
                              dm.CD_Mdf_Dados.CommandText:='select * from mdfe_dados where chave ='''+infEvento.chMDFe+'''';
                              dm.CD_Mdf_Dados.open;

                              if dm.CD_Mdf_Dados.recordcount <>0 then
                                 begin
                                      dm.CD_Mdf_Dados.Edit;
                                      dm.CD_Mdf_DadosD_ENCERRA.AsDateTime:=now;
                                      dm.CD_Mdf_DadosMDF_PROTOCOLO.Value:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;
                                      dm.CD_Mdf_DadosSTATUS.Value:=2;
                                      dm.CD_Mdf_Dados.Post;
                                      dm.CD_Mdf_Dados.ApplyUpdates(0);
                                          dm.Cli_Cad_Log.open;
                                        dm.Cli_Cad_Log.Insert;
                                        dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                        dm.Cli_Cad_LogNOME.text:=usuario;
                                        dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                        dm.Cli_Cad_LogPROCESSO.Text := 'Encerramento';
                                        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                        Frm_Principal.RzDBMemo1.Lines.Add('Encerramento, '+Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.RetornoWS);
                                        dm.Cli_Cad_Log.Post;
                                        dm.cli_cad_log.ApplyUpdates(0);




                                 end;




                          end;

                         ACBrMDFe1.EnviarEvento( 1 ); // 1 = Numero do Lote

                         MemoResp.Lines.Text   := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                         memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.EnvEvento.RetWS);
                         LoadXML(MemoResp, WBResposta);
                        end;
                  end;

end;

procedure TFrm_MDFCOnfig.btnImprimirClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;




 if OpenDialog1.Execute then
  begin
{  SQLDataSet1.Close;
    SQLDataSet1.CommandText:='SELECT STATUS FROM MDFE_DADOS WHERE CHAVE LIKE'''+ExtractFilEName(OpenDialog1.FileName)+'%''';
    SQLDataSet1.Open;

    ShowMessage(ExtractFilEName(SQLDataSet1.FieldByName('STATUS').Text));


 }


   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   //ACBrMDFeDAMDFEFR1.frxReport.SaveToFile(OpenDialog1.FileName+'.fr3');
   // ACBrMDFeDAMDFEFR1.FastFile := 'C:\ACBR\Exemplos\ACBrDFe\ACBrMDFe\Delphi\Report\DAMDFe_Retrato_mod2.fr3';
   ACBrMDFeDAMDFeRL1.Encerrado:=False;

   ACBrMDFe1.Manifestos.Imprimir;
  end;

end;

procedure TFrm_MDFCOnfig.btnStatusServClick(Sender: TObject);
begin
 ACBrMDFe1.SSL.NumeroSerie:=dm.CD_MDFe_ConfigCERTIFICADO.AsString;
 ACBrMDFe1.WebServices.StatusServico.Executar;
 MemoResp.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrMDFe1.WebServices.StatusServico.RetWS);
 LoadXML(MemoResp, WBResposta);

 PageControl2.ActivePageIndex := 5;
 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrMDFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrMDFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrMDFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrMDFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrMDFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrMDFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrMDFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrMDFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrMDFe1.WebServices.StatusServico.xObs);



end;

procedure TFrm_MDFCOnfig.btnValidarXMLClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o MDFe';
 OpenDialog1.DefaultExt := '*-MDFe.xml';
 OpenDialog1.Filter := 'Arquivos MDFe (*-MDFe.xml)|*-MDFe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrMDFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrMDFe1.Manifestos.Clear;
   ACBrMDFe1.Manifestos.LoadFromFile(OpenDialog1.FileName);
   ACBrMDFe1.Manifestos.Validar;
   showmessage('Manifesto Eletrônico de Documentos Fiscais Valido');
  end;

end;

procedure TFrm_MDFCOnfig.Button1Click(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Logo';
 OpenDialog1.DefaultExt := '*.bmp';
 OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);

  dm.cd_mdfe_config.edit;
if OpenDialog1.Execute then

     if OpenDialog1.FileName<>'' then
        begin
        dm.cd_mdfe_configlogo.Text:=OpenDialog1.FileName;
         dm.CD_MDFe_ConfigLOGO.AsString:=OpenDialog1.FileName;
        dm.cd_mdfe_config.post;
        end;
end;


procedure TFrm_MDFCOnfig.Button2Click(Sender: TObject);
begin
 SaveDialog1.Title := 'Caminho dos Arquivos';
 SaveDialog1.InitialDir := ExtractFileDir(application.ExeName);

  dm.cd_mdfe_config.edit;
if SaveDialog1.Execute then

     if SaveDialog1.FileName<>'' then
        begin

         dm.CD_MDFe_ConfigPATHSALVAR.AsString:=ExtractFilePath(SaveDialog1.FileName);
         dm.cd_mdfe_config.post;
        end;
end;

procedure TFrm_MDFCOnfig.Button3Click(Sender: TObject);
var
  vCNPJ: String;
  i,p:integer;
begin
  vCNPJ := dm.EmitenteCNPJ.Text;

  //ACBrMDFe1.Configuracoes.Geral.SSLLib.libCapicom;

{  ACBrMDFe1.Configuracoes.Geral.SSLLib.libCapicom;
  ACBrMDFe1.Configuracoes.Geral.RetirarAcentos := False; }
 {  if not(InputQuery('WebServices Consultar não encerrados', 'Informe o CNPJ:', vCNPJ)) then
    exit;
  }
    ACBrMDFe1.WebServices.ConsultaMDFeNaoEnc( vCNPJ );

    MemoResp.Lines.Text :=  UTF8Encode(ACBrMDFe1.WebServices.ConsMDFeNaoEnc.RetWS);
    memoRespWS.Lines.Text :=  UTF8Encode(ACBrMDFe1.WebServices.ConsMDFeNaoEnc.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    MemoResp.Lines.SaveToFile('naoencerrados.xml');
    XMLDocument1.LoadFromFile ('naoencerrados.xml');

          //  memo2.Lines.add(XMLDocument1.ChildNodes['retConsMDFeNaoEnc'].ChildNodes['infMDFe'].ChildNodes.FindNode(cdata-section));

  //  ClientDataSet1.XMLData:=XMLDocument1.;

Frm_NaoEncerrado:=TFrm_NaoEncerrado.Create(self);

 for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count - 1 do
 begin
   with XMLDocument1.DocumentElement.ChildNodes[i] do
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

procedure TFrm_MDFCOnfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        dm.CD_MDFe_Config.EDIT;
        dm.CD_MDFe_Config.post;
        dm.CD_MDFe_Config.ApplyUpdates(0);
        //GravarConfiguracao;
        try
        ConfiguraComponente;
        except

        end;
end;

procedure TFrm_MDFCOnfig.FormCreate(Sender: TObject);
begin

 try
ConfiguraComponente;

 except

 end;
 dm.CD_MDFe_Config.open;
dm.CD_MDFe_Config.Edit;


end;

procedure TFrm_MDFCOnfig.FormShow(Sender: TObject);
begin

dm.CD_MDFe_Config.Edit;
end;

procedure TFrm_MDFCOnfig.GravarConfiguracao;
var
 IniFile    : String;
 Ini        : TIniFile;
 StreamMemo : TMemoryStream;
begin                  {
 IniFile := ChangeFileExt( Application.ExeName, '.ini');

 Ini := TIniFile.Create( IniFile );
 try
 Ini.WriteString( 'Certificado','NumSerie', edtNumSerie.Text);

  Ini.WriteInteger( 'Geral','DAMDFe'      , TipoDAMDFe.ItemIndex);
  Ini.WriteInteger( 'Geral','FormaEmissao', FormaEmissao.ItemIndex);
  Ini.WriteString( 'Geral','LogoMarca'    , dm.CD_MDFe_ConfigLOGO.Text);
  Ini.WriteBool(   'Geral','Salvar'       , true);
  Ini.WriteString( 'Geral','PathSalvar'   , dm.CD_MDFe_ConfigPATHSALVAR.Text);
  Ini.WriteInteger( 'Geral','VersaoDF'    , VersaoDF.ItemIndex);

  Ini.WriteString( 'WebService','UF'        , cbUF.TEXT);
  Ini.WriteInteger( 'WebService','Ambiente' , CBTipoAmb.ItemIndex);
  Ini.WriteBool(   'WebService','Visualizar', ckVisualizar.Checked);
{
  Ini.WriteString( 'Proxy','Host' , '');
  Ini.WriteString( 'Proxy','Porta', '');
  Ini.WriteString( 'Proxy','User' , edtProxyUser.Text);
  Ini.WriteString( 'Proxy','Pass' , edtProxySenha.Text);

  Ini.WriteString( 'Emitente','CNPJ'       , DM.EmitenteCNPJ.Text);
  Ini.WriteString( 'Emitente','IE'         , DM.EmitenteIE.Text);
  Ini.WriteString( 'Emitente','RazaoSocial', DM.EmitenteRAZAO_SOCIAL.Text);
  Ini.WriteString( 'Emitente','Fantasia'   , DM.EmitenteNOME_EMPRESA.Text);
  Ini.WriteString( 'Emitente','Fone'       , DM.EmitenteFone1.Text);
  Ini.WriteString( 'Emitente','CEP'        , DM.EmitenteCEP.Text);
  Ini.WriteString( 'Emitente','Logradouro' , DM.EmitenteENDERECO.Text);
  Ini.WriteString( 'Emitente','Numero'     , DM.EmitenteNUMERO.Text);
  Ini.WriteString( 'Emitente','Complemento', DM.EmitenteCOMPLEMENTO.Text);
  Ini.WriteString( 'Emitente','Bairro'     , DM.EmitenteBAIRRO.Text);
  Ini.WriteString( 'Emitente','CodCidade'  , DM.REGIAOCODIGO_IBGE.Text);
  Ini.WriteString( 'Emitente','Cidade'     , DM.REGIAOCIDADE.Text);
  Ini.WriteString( 'Emitente','UF'         , DM.REGIAOUF.Text);

  Ini.WriteString( 'Email','Host'   , DM.EmitenteSMTP_ENDERECO.Text);
  Ini.WriteString( 'Email','Port'   , DM.EmitenteSmtp_Porta.Text);
  Ini.WriteString( 'Email','User'   , DM.EmitenteSMTP_USUARIO.Text);
  Ini.WriteString( 'Email','Pass'   , DM.EmitenteSmtp_senha.Text);
  Ini.WriteString( 'Email','Assunto', '');
  Ini.WriteString( 'Email','SSL'    , DM.Emitentesmtp_SSL.text);
  //Ini.WriteBool(   'Email','SSL'    , DM.Emitentesmtp_SSL.text);

  Ini.WriteString( 'Arquivos','PathSchemas', ExtractFilePath(Application.ExeName)+'Schemas');

  StreamMemo := TMemoryStream.Create;
 // mmEmailMsg.Lines.SaveToStream(StreamMemo);
  StreamMemo.Seek(0,soFromBeginning);
  Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo);

  StreamMemo.Free;
  Ini.Free;
 end;               }
end;
















procedure TFrm_MDFCOnfig.sbtnCaminhoCertClick(Sender: TObject);
begin
//GetCertificado;

dm.CD_MDFe_Config.Edit;
dm.CD_MDFe_ConfigCERTIFICADO.AsString:=ACBrMDFe1.SSL.SelecionarCertificado;
senha:=ACBrMDFe1.SSL.Senha;


end;

procedure TFrm_MDFCOnfig.scStringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 //  ShowMessage(scStringGrid1.Cells[ACol,ARow]);
end;

end.




