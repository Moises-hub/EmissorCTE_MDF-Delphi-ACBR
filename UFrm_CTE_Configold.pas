unit UFrm_CTE_Config;

interface

uses System.IniFiles, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrDFe, ACBrCTe, RzCmboBx,
  RzDBCmbo, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
   Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, ACBrDFeSSL,
  pcnConversao, Data.DB, pcteConversaoCTe, System.Math, Data.SqlExpr, blcksock,
  Datasnap.DBClient, Datasnap.Provider, ACBrMail, ACBrCTeDACTEClass,
  ACBrCTeDACTeRLClass, ACBrMDFe, UFrm_CTE_EMISSOR;

type
  TFrm_CTE_Config = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label11: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    edtEmitCNPJ: TDBEdit;
    Button1: TButton;
    Panel5: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel4: TPanel;
    btnImprimir: TButton;
    btnStatusServ: TButton;
    btnCancelamento: TButton;
    btnCriarEnviar: TButton;
    btnConsultarChave: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    btnInutilizar: TButton;
    btnValidarXML: TButton;
    btnImportarXML: TButton;
    Button3: TButton;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Button2: TButton;
    DBEdit5: TDBEdit;
    RzDBComboBox2: TRzDBComboBox;
    OpenDialog1: TOpenDialog;
    RzDBComboBox3: TRzDBComboBox;
    RzDBComboBox4: TRzDBComboBox;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    ACBrMail1: TACBrMail;
    cbUF: TRzDBComboBox;
    mmEmailMsg: TMemo;
    SaveDialog1: TSaveDialog;
    ACBrCTe1: TACBrCTe;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure lerconfiguracao;
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure btnCancelamentoClick(Sender: TObject);


  private
    { Private declarations }
  public
    procedure gerarcte;
    var
     cidini, cidfim : string;
  end;

var
  Frm_CTE_Config: TFrm_CTE_Config;
  senha:string;
implementation



{$R *.dfm}

uses  UFrm_Patch, UDM, UFrmCTESequencia, UCDM, pcteCTe,
  Winapi.Windows, UFrmLogin_Acao, UFrmPrincipal, UFrm_CTE_CHAVE;

{ TFrm_CTE_Config }

// =============================================================================
//
// Gerar Lote de CTe
//
// =============================================================================
procedure TFrm_CTE_Config.gerarcte;
var
 i, j, k, l, CodigoMunicipio: Integer;
 IE, CNPJ,TomaCNPJ: String;
 OkConversao: Boolean;
  query_filtro : TSQLQuery;
 PROV_Clientes: TDataSetProvider;
 CDS_Clientes: TClientDataSet;
begin


 with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
   //
   // Dados de Identificação do CT-e
   //

    Frm_CTE_Config.lerconfiguracao;
    Ide.cUF         := StrToInt(Copy(CDM.CD_CTE_CONFIGUF.AsSTRING,1,2));

             if cdm.CD_Emissor_CTEMODELO.AsInteger=57 then
                 begin
                      Ide.cCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
                      Ide.nCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
                      Ide.serie       := cdm.CD_CTE_CONFIGSERIE.AsInteger;
                 end
                  else
                  if cdm.CD_Emissor_CTEMODELO.AsInteger=67 then

                     begin
                //     ShowMessage(cdm.CD_CTE_CONFIGNUMERO_OS.asstring);

                         Ide.cCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
                         Ide.nCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
                         Ide.serie       :=  cdm.CD_CTE_CONFIGSERIE_OS.AsInteger;
                     end;

          Ide.CFOP        := CDM.CD_Emissor_CTECFOP.AsInteger;
          Ide.natOp       := CDM.CD_Emissor_CTENATUREZA_OPERACAO.AsString;
          Ide.modelo      := cdm.CD_Emissor_CTEMODELO.asinteger;//67, 57;
          Ide.dhEmi       := CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime+CDM.CD_Emissor_CTEHORA.AsDateTime;

       // TpcnTipoAmbiente = (taProducao, taHomologacao);

          case cdm.CD_CTE_CONFIGMODODACTE.AsInteger of
          0: Ide.tpImp       := tiRetrato;
          1: Ide.tpImp       := tiPaisagem;
          end;




             // TpcnTipoEmissao = (teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCRS, teSVCSP);
   //  (AC,AL,AP,AM,BA,CE,DF,ES,GO,MA,MT,MS,MG,PA,PB,PR,PE,PI,RJ,RN,RS,RO,RR,SC,SP,SE,TO);
   //  (12,27,16,13,29,23,53,32,52,21,51,50,31,15,25,41,26,22,33,24,43,11,14,42,35,28,17);

          case cdm.CD_CTE_CONFIGFORMAEMISSAO.AsInteger of
          0: Ide.tpEmis := teNormal;
          1: Ide.tpEmis := teContingencia;
          end;

         if  cdm.CD_CTE_CONFIGAMBIENTE.AsInteger = 2 then
              Ide.tpAmb     := taProducao
              else
              Ide.tpAmb     := taHomologacao;

          case CDM.CD_Emissor_CTEDESCSERV.asinteger  of
          1: ide.indGlobalizado:=tinao;
          2:  ide.indGlobalizado:=tiSim;
                    end;

            // TpcteTipoCTe = (tcNormal, tcComplemento, tcAnulacao, tcSubstituto);
          case CDM.CD_Emissor_CTEDESCSERV.asinteger of
                1 : Ide.tpCTe:=tcNormal;
                2 : Ide.tpCTe:=tcComplemento;
                3 : Ide.tpCTe:=tcAnulacao;
                4 : Ide.tpCTe:=tcSubstituto;
          end;


             // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
              Ide.procEmi     := peAplicativoContribuinte;
              Ide.verProc     := '3.0';


              case cdm.CD_Emissor_CTEMODAL.asinteger of
              1 : Ide.modal       := mdAquaviario;
              0 : Ide.modal       := mdRodoviario;
              end;

              Ide.cMunEnv     := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
              Ide.xMunEnv     := Trim(dm.EmitenteCIDADE.AsString);
              Ide.UFEnv       := Trim(dm.EmitenteUF.AsString);

                  // TpcteTipoServico = (tsNormal, tsSubcontratacao, tsRedespacho, tsIntermediario,  tsTranspPessoas, tsTranspValores, tsExcessoBagagem);
               case cdm.CD_Emissor_CTETIPO_SERV.AsInteger of
                     1 : Ide.tpServ := tsNormal;
                     2 : Ide.tpServ := tsSubcontratacao;
                     3 : Ide.tpServ := tsRedespacho;
                     4 : ide.tpServ := tsTranspPessoas;
                     5 : ide.tpserv := tsTranspValores;
                     6 : ide.tpserv := tsExcessoBagagem;
                end;

                // Origem da Prestação
                Ide.cMunIni     := CDM.CD_Emissor_CTEINICODIBGE.AsInteger;
                dm.REGIAO.open;
                dm.REGIAO.Locate('CODIGO_IBGE',CDM.CD_Emissor_CTEINICODIBGE.AsInteger,[loCaseInsensitive]);
                Ide.xMunIni     := cidini;
                Ide.UFIni       := CDM.CD_Emissor_CTEINIUF.AsString;

               // Destino da Prestação
                Ide.cMunFim     := CDM.CD_Emissor_CTEFIMCODIBGE.AsInteger;
                dm.REGIAO.open;
                dm.REGIAO.Locate('CODIGO_IBGE',CDM.CD_Emissor_CTEFIMCODIBGE.AsInteger,[loCaseInsensitive]);
                Ide.xMunFim     := cidfim;
                Ide.UFFim       := CDM.CD_Emissor_CTEFIMUF.AsString;


                //Percurso

                if cdm.CD_CTE_Percurso.RecordCount<>0 then
                   begin
                         cdm.CD_CTE_Percurso.First;
                   while not cdm.CD_CTE_Percurso.Eof do
                        begin
                         with Ide.infPercurso.Add do
                            begin
                             UFPer:=cdm.CD_CTE_PercursoUF.AsString;
                            end;
                             cdm.CD_CTE_Percurso.Next;
                        end;
                   end;

        if Length(CDM.CD_Emissor_CTEOBS.AsString)<>0 then
         compl.xObs  :=CDM.CD_Emissor_CTEOBS.AsString;




                     {Dados do Emitente}
            cnpj :=StringReplace(dm.EmitenteCNPJ.asstring,'.','',[rfReplaceAll]);
            cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
            cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
           Emit.CNPJ              := Trim(cnpj);
           Emit.IE :=StringReplace(dm.EmitenteIE.AsString,'.','',[rfReplaceAll]);
           Emit.IE :=StringReplace(Emit.IE,'.','',[rfReplaceAll]);
           Emit.IE :=StringReplace(Emit.IE,'-','',[rfReplaceAll]);
      //  ShowMessage(emit.IE);
          Emit.xNome             := Trim(dm.EmitenteRAZAO_SOCIAL.asstring);
          Emit.xFant             := Trim(dm.EmitenteNOME_EMPRESA.asstring);
          Emit.enderEmit.xLgr    := Trim(dm.EmitenteENDERECO.asstring);
          Emit.enderEmit.nro     := Trim(dm.EmitenteNUMERO.asstring);
          Emit.enderEmit.xCpl    := Trim(dm.EmitenteCOMPLEMENTO.AsString);
          Emit.enderEmit.xBairro := Trim(dm.EmitenteBAIRRO.AsString);
          Emit.enderEmit.cMun    := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
          Emit.enderEmit.xMun    := Trim(dm.EmitenteCIDADE.AsString);
          Emit.enderEmit.CEP     := StrToInt(StringReplace(dm.EmitenteCEP.AsString,'-','',[rfReplaceAll]));
          Emit.enderEmit.UF      := Trim(dm.EmitenteUF.AsString);
       // Emit.enderEmit.fone    := Trim(cdm.Query_InfoCommerce);

    cdm.CD_Emissor_CTE.Edit;
    cdm.CD_Emissor_CTENUMCTE.asinteger:=Ide.nCT;
    cdm.CD_Emissor_CTE.Post;

    if Length(CDM.CD_Emissor_CTEINFADFISCO.AsString)<>0 then
        with compl.ObsFisco.Add do
        begin
         xCampo := 'AO FÍSCO';
         xTexto := CDM.CD_Emissor_CTEINFADFISCO.AsString;
        end;



  {   with compl.ObsCont.Add do
      begin
       xCampo := 'Lei da Transparencia';
       xTexto := CDM.CD_Emissor_CTEOBS.AsString;
      end;
             }





          if cdm.CD_Emissor_CTEMODELO.AsInteger = 67 then
            begin
            if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger=4 then
              begin
              cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              toma.CNPJCPF           := Trim(cnpj);
              if (Length(CDM.CD_Emissor_CTEIE.AsString)=0) or (CDM.CD_Emissor_CTEIE.AsString='ISENTO')  then
                 toma.IE :='123456789'
                 ELSE
                 BEGIN
                 toma.IE                :=StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
                 toma.IE                :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
                 END;

                  toma.CNPJCPF           := CNPJ;
                  toma.xNome             := CDM.CD_Emissor_CTENOME.AsString;
                  toma.xFant             := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
                  toma.fone              := '';
                  toma.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
                  toma.enderToma.nro     := CDM.CD_Emissor_CTEN_ENDERECO.AsString;
                  toma.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
                  toma.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
                  toma.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
                  toma.enderToma.xMun    := CDM.CD_Emissor_CTECIDADE.AsString;

                  try
                   toma.enderToma.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT

                  end;

                  toma.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
                  toma.enderToma.cPais   := 1058;
                  toma.enderToma.xPais   := 'BRASIL';
                  toma.email             := '';
             end
             else
             begin
              cnpj :=StringReplace(dm.EmitenteCNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              toma.CNPJCPF           := Trim(cnpj);
              if (Length(DM.EmitenteIE.AsString)=0) or (DM.EmitenteIE.AsString='ISENTO')  then
                 toma.IE :='123456789'
                 ELSE
                 BEGIN
                 toma.IE                :=StringReplace(DM.EmitenteIE.AsString,'.','',[rfReplaceAll]);
                 toma.IE                :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
                 END;

                  toma.CNPJCPF           := CNPJ;
                  toma.xNome             := DM.EmitenteRAZAO_SOCIAL.AsString;
                  toma.xFant             := DM.EmitenteNOME_EMPRESA.AsString;
                  toma.fone              := '';
                  toma.enderToma.xLgr    := DM.EmitenteENDERECO.AsString;
                  toma.enderToma.nro     := DM.EmitenteNUMERO.AsString;
                  toma.enderToma.xCpl    := DM.EmitenteCOMPLEMENTO.AsString;
                  toma.enderToma.xBairro := DM.EmitenteBAIRRO.AsString;
                  toma.enderToma.cMun    := DM.EmitenteCODIGO_IBGE.AsInteger;
                  toma.enderToma.xMun    := DM.EmitenteCIDADE.AsString;

                  try
                   toma.enderToma.CEP     := StrToInt(StringReplace(DM.EmitenteCEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT

                  end;

                  toma.enderToma.UF      := DM.EmitenteUF.AsString;
                  toma.enderToma.cPais   := 1058;
                  toma.enderToma.xPais   := 'BRASIL';
                  toma.email             := '';
             end;
            end;





            case cdm.CD_Emissor_CTEFORMA_PAGA.AsInteger of
            0:  Ide.forPag:=fpPago;
            1:  Ide.forPag:=fpAPagar;
            end;


             {Carrega valores da prestacao de servico}
              vPrest.vTPrest         := CDM.CD_Emissor_CTETOTAL_PREST.AsFloat;
              vPrest.vRec            := CDM.CD_Emissor_CTEVALOR_RECEBER.AsFloat;



                 // Relação dos Componentes da Prestação de Serviço
                 //

                       cdm.CD_CTE_ValorAdicional.Open;
                       cdm.CD_CTE_ValorAdicional.First;
                   if  cdm.CD_CTE_ValorAdicional.RecordCount<>0 then
                       begin
                        while not cdm.CD_CTE_ValorAdicional.eof do
                           begin
                              with vPrest.comp.Add do
                              begin
                                xNome                := cdm.CD_CTE_ValorAdicionalNOME.AsString;
                                vComp                := cdm.CD_CTE_ValorAdicionalVALOR.AsFloat;
                              end;
                             cdm.CD_CTE_ValorAdicional.next;
                           end;
                       end;


                        // TpcteRetira = (rtSim, rtNao);

                               if cdm.CD_Emissor_CTEMODELO.AsInteger = 57 then
                                        begin
                                         Ide.retira     := rtSim;
                                         Ide.xdetretira := '';

                                             case CDM.CD_Emissor_CTEID_TOMADOR.AsInteger of
                                              1: Ide.Toma03.Toma:=tmRemetente;
                                              2: ide.toma03.Toma:=tmExpedidor;
                                              3: Ide.Toma03.Toma:=tmRecebedor;
                                              4: Ide.Toma03.Toma:=tmDestinatario;
                                              5: Ide.toma4.Toma:=tmOutros;
                                             end;


                                                          cnpj :=StringReplace( CDM.CD_Emissor_CTEDEST_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                                          cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
                                                          cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
                                                          dest.CNPJCPF := Trim(cnpj);
                                                  if (Length(CDM.CD_Emissor_CTEDEST_IE.AsString) =0) or (CDM.CD_Emissor_CTEDEST_IE.AsString = 'ISENTO') then
                                                                 begin
                                                                   if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger = 1   then
                                                                       Ide.indIEToma := inIsento;
                                                                       dest.IE :='ISENTO';
                                                                 end
                                                                 ELSE
                                                                   BEGIN
                                                                   dest.IE                :=StringReplace(CDM.CD_Emissor_CTEDEST_IE.AsString,'.','',[rfReplaceAll]);
                                                                   dest.IE                :=StringReplace(dest.IE,'.','',[rfReplaceAll]);
                                                                   dest.IE                :=StringReplace(dest.IE,'-','',[rfReplaceAll]);
                                                                   END;

                                                                 try
                                                  //              dest.IE                := CDM.CD_Emissor_CTEDEST_IE.AsString;
                                                                    dest.xNome             := CDM.CD_Emissor_CTEdest_NOME.AsString;
                                                                    dest.enderdest.xLgr    := CDM.CD_Emissor_CTEdest_ENDERECO.AsString;
                                                                    dest.enderdest.nro     := CDM.CD_Emissor_CTEdest_NUMERO.AsString;
                                                                    dest.enderdest.xCpl    := CDM.CD_Emissor_CTEdest_COMPLEMENTO.AsString;
                                                                    dest.enderdest.xBairro := CDM.CD_Emissor_CTEdest_BAIRRO.AsString;
                                                                    dest.enderdest.cMun    := CDM.CD_Emissor_CTEdest_cod_ibge.AsInteger;
                                                                    dest.enderdest.xMun    := CDM.CD_Emissor_CTEDEST_CIDADE.AsString;
                                                                    dest.enderdest.UF      := CDM.CD_Emissor_CTEdest_UF.AsString;
                                                                    dest.enderdest.cPais   := 1058;
                                                                    dest.enderdest.xPais   := 'BRASIL';
                                                                 except

                                                                 end;

                                                                  try

                                                                     dest.enderdest.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEdest_CEP.AsString,'-','',[rfReplaceAll]));
                                                                    EXCEPT

                                                                    end;


                                                      //    end;




                                                   //  Dados do Remetente

                                                   try

                                                              rem.CNPJCPF :=StringReplace(cdm.CD_Emissor_CTEREM_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                                              rem.CNPJCPF :=StringReplace(rem.CNPJCPF,'-','',[rfReplaceAll]);
                                                              rem.CNPJCPF :=StringReplace(rem.CNPJCPF,'/','',[rfReplaceAll]);



                                                                       rem.IE                :=StringReplace(CDM.CD_Emissor_CTErem_IE.AsString,'.','',[rfReplaceAll]);
                                                                       Rem.IE                :=StringReplace(rem.IE,'-','',[rfReplaceAll]);


                                                                      rem.xNome             := CDM.CD_Emissor_CTEREM_NOME.AsString;
                                                                      rem.enderReme.xLgr    := cDM.CD_Emissor_CTEREM_ENDERECO.AsString;
                                                                      rem.enderReme.nro     := cDM.CD_Emissor_CTEREM_NUMERO.AsString;
                                                                      rem.enderReme.xCpl    := cDM.CD_Emissor_CTEREM_COMPLEMENTO.AsString;
                                                                      rem.enderReme.xBairro := cDM.CD_Emissor_CTEREM_BAIRRO.AsString;
                                                                      rem.enderReme.cMun    := cDM.CD_Emissor_CTEREM_COD_IBGE.AsInteger;
                                                                      rem.enderReme.xMun    := cdm.CD_Emissor_CTEREM_CIDADE.AsString;
                                                                      rem.enderReme.UF      := cDM.CD_Emissor_CTEREM_UF.AsString;
                                                                      rem.enderReme.cPais   := 1058;
                                                                      rem.enderReme.xPais   := 'BRASIL';

                                                                      try
                                                                        rem.enderReme.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEREM_CEP.AsString,'-','',[rfReplaceAll]));
                                                                      EXCEPT

                                                                      end;





                                                   except

                                                   end;

                                                   // Totamdor do Serviço no CTe 4 = Outros


                                                   if cdm.CD_Emissor_CTEID_TOMADOR.AsINTEGER = 5 then
                                                      begin
                                                      cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                                      cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
                                                      cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
                                                      ide.toma4.CNPJCPF           := Trim(cnpj);
                                                      if (Length(CDM.CD_Emissor_CTEIE.AsString)=0) or (CDM.CD_Emissor_CTEIE.AsString='ISENTO')  then
                                                         begin
                                                         ide.toma4.IE :='';
                                                         Ide.indIEToma := inIsento;
                                                         end
                                                         ELSE
                                                         BEGIN
                                                         ide.toma4.IE                :=StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
                                                         ide.toma4.IE                :=StringReplace(ide.toma4.IE,'.','',[rfReplaceAll]);
                                                         ide.toma4.IE                :=StringReplace(ide.toma4.IE,'-','',[rfReplaceAll]);
                                                         Ide.indIEToma := inContribuinte;
                                                         END;
                                                      Ide.toma4.xNome             := CDM.CD_Emissor_CTENOME.AsString;
                                                      Ide.toma4.xFant             := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
                                                      Ide.toma4.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
                                                      Ide.toma4.enderToma.nro     := CDM.CD_Emissor_CTEN_ENDERECO.AsString;
                                                      Ide.toma4.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
                                                      Ide.toma4.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
                                                      try
                                                      Ide.toma4.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
                                                      except

                                                      end;
                                                      Ide.toma4.enderToma.xMun    := CDM.CD_Emissor_CTECIDADE.AsString;
                                                      Ide.toma4.enderToma.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
                                                      Ide.toma4.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
                                                      Ide.toma4.enderToma.cPais   := 1058;
                                                      Ide.toma4.enderToma.xPais   := 'BRASIL';
                                                      Ide.toma4.email             := '';
                                                      end;

                                        end
                                        else






                                        //recebedor
                                                          if Length(CDM.CD_Emissor_CTEREC_NOME.Text)<>0 then
                                                           begin

                                                            receb.CNPJCPF :=StringReplace(cdm.CD_Emissor_CTEREC_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                                            receb.CNPJCPF :=StringReplace(receb.CNPJCPF,'-','',[rfReplaceAll]);
                                                            receb.CNPJCPF :=StringReplace(receb.CNPJCPF,'/','',[rfReplaceAll]);



                                                         //                             Ide.indIEToma := inIsento



                                                                       receb.IE                :=StringReplace(CDM.CD_Emissor_CTEREC_IE.AsString,'.','',[rfReplaceAll]);
                                                                       receb.IE                :=StringReplace(receb.IE,'-','',[rfReplaceAll]);


                                                                      receb.xNome             := CDM.CD_Emissor_CTErec_NOME.AsString;
                                                                      receb.enderReceb.xLgr    := cDM.CD_Emissor_CTEREC_ENDERECO.AsString;
                                                                      receb.enderreceb.nro     := cDM.CD_Emissor_CTErec_ENUM.AsString;
                                                                      receb.enderreceb.xCpl    := cDM.CD_Emissor_CTErec_COMPLEMENTO.AsString;
                                                                      receb.enderreceb.xBairro := cDM.CD_Emissor_CTErec_BAIRRO.AsString;
                                                                      receb.enderreceb.cMun    := cDM.CD_Emissor_CTErec_COD_IBGE.AsInteger;
                                                                      receb.enderreceb.xMun    := cdm.CD_Emissor_CTErec_CIDADE.AsString;
                                                                       try

                                                                        receb.enderreceb.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTErec_CEP.AsString,'-','',[rfReplaceAll]));
                                                                      EXCEPT

                                                                      end;

                                                                      receb.enderreceb.UF      := cDM.CD_Emissor_CTErec_UF.AsString;
                                                                      receb.enderreceb.cPais   := 1058;
                                                                      receb.enderreceb.xPais   := 'BRASIL';
                                                           end;


                                                     //   expeditor
                                                        if Length(CDM.CD_Emissor_CTEEXP_NOME.Text)<>0 then
                                                           begin

                                                            exped.CNPJCPF :=StringReplace(cdm.CD_Emissor_CTEEXP_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                                            exped.CNPJCPF :=StringReplace(exped.CNPJCPF,'-','',[rfReplaceAll]);
                                                            exped.CNPJCPF :=StringReplace(exped.CNPJCPF,'/','',[rfReplaceAll]);



                                                                if (Length(CDM.CD_Emissor_CTEEXP_IE.AsString) =0) OR (CDM.CD_Emissor_CTEEXP_IE.AsString = 'ISENTO') then
                                                                if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger = 2  then
                                                                                        Ide.indIEToma := inIsento;


                                                                       exped.IE                :=StringReplace(CDM.CD_Emissor_CTEEXP_IE.AsString,'.','',[rfReplaceAll]);
                                                                       exped.IE                :=StringReplace(exped.IE,'-','',[rfReplaceAll]);


                                                                      exped.xNome             := CDM.CD_Emissor_CTEEXP_NOME.AsString;
                                                                      exped.enderexped.xLgr    := cDM.CD_Emissor_CTEEXP_ENDERECO.AsString;
                                                                      exped.enderexped.nro     := cDM.CD_Emissor_CTEEXP_ENUM.AsString;
                                                                      exped.enderexped.xCpl    := cDM.CD_Emissor_CTEEXP_COMPLEMENTO.AsString;
                                                                      exped.enderexped.xBairro := cDM.CD_Emissor_CTEEXP_BAIRRO.AsString;
                                                                      exped.enderexped.cMun    := cDM.CD_Emissor_CTEEXP_COD_IBGE.AsInteger;
                                                                      exped.enderexped.xMun    := cdm.CD_Emissor_CTEEXP_CIDADE.AsString;
                                                                       try

                                                                        EXPED.enderExped.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEEXP_CEP.AsString,'-','',[rfReplaceAll]));
                                                                      EXCEPT

                                                                      end;

                                                                      EXPED.enderExped.UF      := cDM.CD_Emissor_CTEEXP_UF.AsString;
                                                                      EXPED.enderExped.cPais   := 1058;
                                                                      EXPED.enderExped.xPais   := 'BRASIL';

                                                           end;



                                           if CDM.CD_Emissor_CTERESPONSAVEL.asstring<>'' then
                                              begin

                                                  with infCTeNorm.Seg.Add do
                                                  begin

                                                          case CDM.CD_Emissor_CTERESPONSAVEL.AsInteger of
                                                           0: respSeg := rsEmitenteCTe;
                                                           1: respSeg := rsTomadorServico;
                                                           2: respSeg := rsRemetente;
                                                           3: respSeg := rsDestinatario;
                                                          end;


                                                    xSeg    :=  trim(CDM.CD_Emissor_CTEAPOLICE.AsString);
                                                    nApol   :=  trim(CDM.CD_Emissor_CTEAVERBACAO.AsString);
                                                  end;

                                              end;




          {   else
              begin

              cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              toma.CNPJCPF           := Trim(cnpj);
              if (Length(CDM.CD_Emissor_CTEIE.AsString)=0) or (CDM.CD_Emissor_CTEIE.AsString='ISENTO')  then
                 toma.IE :='123456789'
                 ELSE
                 BEGIN
                 toma.IE                :=StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
                 toma.IE                :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
                 END;

                  toma.CNPJCPF           := CNPJ;
                  toma.xNome             := CDM.CD_Emissor_CTENOME.AsString;
                  toma.xFant             := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
                  toma.fone              := '';
                  toma.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
                  toma.enderToma.nro     := CDM.CD_Emissor_CTENUMERO.AsString;
                  toma.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
                  toma.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
                  toma.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
                  toma.enderToma.xMun    := CDM.CD_Emissor_CTEENDERECO.AsString;

                  try

                   toma.enderToma.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT
                   ShowMESSAGE('CEP do Tomador inválido')
                  end;

                  toma.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
                  toma.enderToma.cPais   := 1058;
                  toma.enderToma.xPais   := 'BRASIL';
                  toma.email             := '';
              end;
                    }






   //
   // Dados do DESTINATARIO
   //


   {         if cdm.CD_Emissor_CTEDESTINATARIO.AsInteger = 0 then
               begin}






         (*   else
             begin
                rem.CNPJCPF :=StringReplace(cdm.CD_Emissor_CTEREM_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                rem.CNPJCPF :=StringReplace(rem.CNPJCPF,'-','',[rfReplaceAll]);
                rem.CNPJCPF :=StringReplace(rem.CNPJCPF,'/','',[rfReplaceAll]);



                {   if (Length(CDM.CD_Emissor_CTEREM_IE.AsString) =0) OR (CDM.CD_Emissor_CTEREM_IE.AsString = 'ISENTO') then
                                       rem.IE :='123456789'
                                                              ELSE                                                                                              BEGIN}
                rem.IE                :=StringReplace(CDM.CD_Emissor_CTEREM_IE.AsString,'.','',[rfReplaceAll]);
                rem.IE                :=StringReplace(dest.IE,'.','',[rfReplaceAll]);
                rem.xNome             := CDM.CD_Emissor_CTEREM_NOME.AsString;
                rem.enderReme.xLgr    := CDM.CD_Emissor_CTEREM_ENDERECO.AsString;
                rem.enderReme.nro     := CDM.CD_Emissor_CTEREM_NUMERO.AsString;
                rem.enderReme.xCpl    := CDM.CD_Emissor_CTEREM_COMPLEMENTO.AsString;
                rem.enderReme.xBairro := CDM.CD_Emissor_CTEREM_BAIRRO.AsString;
                rem.enderReme.cMun    := CDM.CD_Emissor_CTEREM_COD_IBGE.AsInteger;
                rem.enderReme.xMun    := CDM.CD_Emissor_CTEREM_CIDADE.AsString;
                 rem.enderReme.xMun    := DM.EmitenteCIDADE.AsString;
                   try

                    rem.enderReme.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEREM_CEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT
                   ShowMESSAGE('CEP do remetente inválido')
                  end;
                rem.enderReme.UF      := CDM.CD_Emissor_CTEREM_UF.AsString;
                rem.enderReme.cPais   := 1058;
                rem.enderReme.xPais   := 'BRASIL';
             end;



                      *)

     //
     // Relação das Notas Fiscais
     //


          //nf avulsa e ou nf produtor

    cdm.CD_CTENFE.open;
  if cdm.CD_CTENFE.RecordCount<>0 then
       begin
          cdm.CD_CTENFE.first;
         while not cdm.CD_CTENFE.eof do
          begin
               with infCTeNorm.infDoc.infNF.Add do
                     begin

                              if cdm.CD_CTENFEMODELO_NF.AsString = 'NF Modelo 01/1A e Avulsa' then
                                  Modelo := moNF011AAvulsa
                                else
                                  Modelo := moNFProdutor;


                                serie := cdm.CD_CTENFESerie.AsString;
                                nDoc  := cdm.CD_CTENFENUMERO.AsString;
                                try
                                dEmi  := cdm.CD_CTENFEEMISSAO.AsDateTime;
                                except

                                end;
                                vBC   := RoundTo(cdm.CD_CTENFEBASE_CALCULO_ICMS.AsFloat, -2);
                                vICMS := RoundTo(cdm.CD_CTENFEVALOR_ICMS.AsFloat, -2);
                                vBCST := RoundTo(cdm.CD_CTENFEBASE_CALCULO_SUBICMS.AsFloat, -2);
                                vST   := RoundTo(cdm.CD_CTENFEVALOR_SUBICMS.AsFloat, -2);
                                vProd := RoundTo(cdm.CD_CTENFEVALOR_DOS_PRODUTOS.AsFloat, -2);
                                vNF   := RoundTo(cdm.CD_CTENFEVALOR_DA_NOTA.AsFloat, -2);
                                nCFOP := StrToInt(cdm.CD_CTENFECFOP.AsString);

                     end;
                          cdm.CD_CTENFE.next;
          end;

       end;

     //nfe

        cdm.CD_CTE_NFES.Open;
     if cdm.CD_CTE_NFES.RecordCount<>0 then
          begin
                 cdm.CD_CTE_NFES.first;
              while not cdm.CD_CTE_NFES.eof do
                  begin
                    with infCTeNorm.infDoc.infNFe.Add do

                        chave := CDM.CD_CTE_NFESCHAVE.AsString;
                     //   PIN   := DM_CNT.NotasPinSuframa.AsString;

                       cdm.CD_CTE_NFES.next;
                  end;

          end;


          //Outros Docs

           cdm.CD_CTEOutroDoc.Open;
           if cdm.CD_CTEOutroDoc.RecordCount<>0 then
              begin
                 cdm.CD_CTEOutroDoc.first;
                  with infCTeNorm.infDoc.infOutros.Add do
                           begin
                           if cdm.CD_CTEOutroDocTIPO.AsString = 'Declaração' then
                               tpDoc := tdDeclaracao
                             else
                             if cdm.CD_CTEOutroDocTIPO.AsString = 'Dutoviário' then
                                tpDoc := tdDutoviario
                                else
                                if cdm.CD_CTEOutroDocTIPO.AsString = 'CF-e SAT' then
                                   tpDoc := tdCFeSAT
                                   else
                                    if cdm.CD_CTEOutroDocTIPO.AsString = 'NFC-e' then
                                       tpDoc := tdNFCe
                                       else
                                        if cdm.CD_CTEOutroDocTIPO.AsString = 'Outros' then
                                           begin
                                           tpDoc      := tdOutros;
                                           descOutros := CDM.CD_CTEOutroDocDESCRICAO.AsString;
                                           end;


                            nDoc     := CDM.CD_CTEOutroDocNUMERO.AsString;
                            try
                            dEmi     := CDM.CD_CTEOutroDocEMISSAO.AsDateTime;
                            except

                            end;
                            vDocFisc := RoundTo(CDM.CD_CTEOutroDocVALOR.AsFloat, -2);
                           end;

                     cdm.CD_CTEOutroDoc.next;
              end;
   //





                                                     {  Remetente
                                                        Expeditor
                                                        Recebedor
                                                        Destinatário
                                                        Outro
                                                      }
            if cdm.CD_Emissor_CTETIPO_SERV.AsInteger<>1 then
                    begin
                    With   infCTeNorm.docAnt.emiDocAnt.Add do
                          begin
                         if cdm.CD_Emissor_CTEID_TOMADOR.AsINTEGER =1 then
                           begin
                            TomaCNPJ :=StringReplace(CDM.CD_Emissor_CTEREM_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                            TomaCNPJ :=StringReplace( TomaCNPJ,'-','',[rfReplaceAll]);
                            TomaCNPJ :=StringReplace( TomaCNPJ,'/','',[rfReplaceAll]);
                           CNPJCPF:= TomaCNPJ;
                           IE:=CDM.CD_Emissor_CTEREM_IE.AsString;
                           UF :=CDM.CD_Emissor_CTEREM_UF.AsString;
                           xNome:=CDM.CD_Emissor_CTEREM_NOME.AsString ;

                           end
                           else
                          if cdm.CD_Emissor_CTEID_TOMADOR.AsINTEGER =3 then
                                  begin
                                   TomaCNPJ :=StringReplace(CDM.CD_Emissor_CTEREC_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                   TomaCNPJ :=StringReplace( TomaCNPJ,'-','',[rfReplaceAll]);
                                   TomaCNPJ :=StringReplace( TomaCNPJ,'/','',[rfReplaceAll]);
                                   CNPJCPF:= TomaCNPJ;
                                   IE:=CDM.CD_Emissor_CTEREC_IE.AsString;
                                   UF :=CDM.CD_Emissor_CTEREC_UF.AsString;
                                   xNome:=CDM.CD_Emissor_CTEREC_NOME.AsString;
                                   end
                                    else
                                      if cdm.CD_Emissor_CTEID_TOMADOR.AsINTEGER =4 then
                                          begin
                                           TomaCNPJ :=StringReplace(CDM.CD_Emissor_CTEDEST_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                           TomaCNPJ :=StringReplace( TomaCNPJ,'-','',[rfReplaceAll]);
                                           TomaCNPJ :=StringReplace( TomaCNPJ,'/','',[rfReplaceAll]);
                                           CNPJCPF:= TomaCNPJ;
                                           IE:=CDM.CD_Emissor_CTEDEST_IE.AsString;
                                           UF :=CDM.CD_Emissor_CTEDEST_UF.AsString;
                                           xNome:=CDM.CD_Emissor_CTEDEST_NOME.AsString;
                                           end
                                            ELSE

                                   if cdm.CD_Emissor_CTEID_TOMADOR.AsINTEGER =5 then
                                      begin
                                         TomaCNPJ :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                                         TomaCNPJ :=StringReplace(TomaCNPJ,'-','',[rfReplaceAll]);
                                         TomaCNPJ :=StringReplace(TomaCNPJ,'/','',[rfReplaceAll]);
                                       CNPJCPF:= TomaCNPJ;
                                       IE:= cdm.CD_Emissor_CTEIE.asstring;
                                       UF := cdm.CD_Emissor_CTEUF.AsString;
                                       xNome:=cdm.CD_Emissor_CTENOME.AsString;




                                        //  showmessage(CDM.CD_Emissor_CTECTE_REFERENCIA.AsString);







                                end;


                                 with idDocAnt.Add.idDocAntEle.add do
                                       chCTe:=CDM.CD_Emissor_CTECTE_REFERENCIA.AsString;

                      end;
                    end;





   //


   //

   //
   //  Valores dos Impostos
   //
   // TpcnCSTIcms = (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
   //                cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
   //                cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN); //80 e 81 apenas para CTe

            {Carrega Impostos}
     // if  CDM.CD_Emissor_CTECST.ASSTRING <> '' then



      case CDM.CD_Emissor_CTECST.AsInteger of
       00: begin
            Imp.ICMS.SituTrib    := cst00;
            Imp.ICMS.ICMS00.CST   := cst00; // Tributação Normal ICMS
            Imp.ICMS.ICMS00.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
            Imp.ICMS.ICMS00.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
            Imp.ICMS.ICMS00.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
           end;
        20: begin
              Imp.ICMS.SituTrib     := cst20;
              Imp.ICMS.ICMS20.CST    := cst20; // Tributação com BC reduzida do ICMS
              Imp.ICMS.ICMS20.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
              Imp.ICMS.ICMS20.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
              Imp.ICMS.ICMS20.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
             end;
       40: begin
            Imp.ICMS.SituTrib  := cst40;
            Imp.ICMS.icms45.CST := cst40; // ICMS Isento
           end;
         41: begin
              Imp.ICMS.SituTrib  := cst41;
              Imp.ICMS.icms45.CST := cst41; // ICMS não Tributada
             end;
       51: begin
            Imp.ICMS.SituTrib  := cst51;
            Imp.ICMS.icms45.CST := cst51; // ICMS diferido
           end;



       90: if Emit.enderEmit.UF = Rem.enderReme.UF then
                begin
                  Imp.ICMS.SituTrib     := cst90;
                  Imp.ICMS.ICMS90.CST   := cst90;
                  Imp.ICMS.ICMS90.pRedBC:= RoundTo(CDM.CD_Emissor_CTEREDBC.asFloat, -2);
                  Imp.ICMS.ICMS90.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
                  Imp.ICMS.ICMS90.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
                  Imp.ICMS.ICMS90.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
                  Imp.ICMS.ICMS90.vCred := RoundTo(CDM.CD_Emissor_CTECREDBC.asFloat, -2);
                end
                else
                begin
                  Imp.ICMS.SituTrib                  := cstICMSOutraUF;
                  Imp.ICMS.ICMSOutraUF.CST           := cstICMSOutraUF; // ICMS Outros
                  Imp.ICMS.ICMSOutraUF.pRedBCOutraUF := RoundTo(CDM.CD_Emissor_CTEREDBC.asFloat, -2);
                  Imp.ICMS.ICMSOutraUF.vBCOutraUF    := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
                  Imp.ICMS.ICMSOutraUF.pICMSOutraUF  := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
                  Imp.ICMS.ICMSOutraUF.vICMSOutraUF  := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
                end;





      end;





   // Valor Total dos Tributos
   imp.vTotTrib := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);

   // Obs do Contribuinte
   {
   if (imp.vTotTrib <> 0.0)
    then begin
     with compl.ObsCont.Add do
      begin
       xCampo := 'Lei da Transparencia';
       xTexto := 'O valor aproximado de tributos incidentes sobre o preco deste servico e de R$ ' +
                 FormatFloat('##0.00', imp.vTotTrib) + ' (' +
                 FormatFloat('#0.00', RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2) + '%) ' +
                 'Fonte: IBPT';
      end;
    end;    }

            query_filtro:=TSQLQuery.Create(self);
            PROV_Clientes:=TDataSetProvider.Create(self);
            CDS_Clientes:=TClientDataSet.Create(self);
            query_filtro.SQLConnection:=CDM.Conexao;

            PROV_Clientes.DataSet:=query_filtro;
            CDS_Clientes.SetProvider(PROV_Clientes);

            query_filtro.Close;
            query_filtro.SQL.Add('select cte_uni.un,sum(CTE_UNI.qnt)as qnt from cte_uni where id_cte ='+cdm.CD_Emissor_CTEID.AsString+' group by  cte_uni.un ');
            CDS_Clientes.open;



     if CDS_Clientes.RecordCount<>0 then
        begin
           CDS_Clientes.first;
          while not CDS_Clientes.eof do
            begin
                // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);      UNIDADE
             with infCTeNorm.infCarga.InfQ.Add do
                 begin
                 if CDS_Clientes.FieldByName('UN').AsString = 'UNIDADE' then
                     BEGIN
                        cUnid  := uUNIDADE;
                        tpMed  := 'UNIDADE';
                     END
                     ELSE
                      if CDS_Clientes.FieldByName('UN').AsString = 'M3' then
                         BEGIN
                            cUnid  := uM3;
                            tpMed  := 'm3';
                         END
                         ELSE
                           if CDS_Clientes.FieldByName('UN').AsString = 'KG' then
                               BEGIN
                                  cUnid  := uKG;
                                  tpMed  := 'Kg';
                               END
                               ELSE
                           if CDS_Clientes.FieldByName('UN').AsString = 'TON' then
                               BEGIN
                                  cUnid  := uTON;
                                  tpMed  := 'TONELADA';
                               END
                               ELSE
                                if CDS_Clientes.FieldByName('UN').AsString = 'LITROS' then
                                   BEGIN
                                      cUnid  := uLITROS;
                                      tpMed  := 'LITROS';
                                   END
                                   else
                                    BEGIN
                                        cUnid  := uUNIDADE;
                                        tpMed  := 'UNIDADE';
                                     END;


                        qCarga := (CDS_Clientes.FieldByName('QNT').AsFloat);
                 end;
                 CDS_Clientes.NEXT;
            end;

        end;


          //
          //  Informações da Seguradora
          //

          //
          //  Dados do Modal Rodoviário
          //

          infCTeNorm.infCarga.vCarga  := RoundTo(CDM.CD_Emissor_CTEPRODUTO_VALOR_DACARGA.AsFloat, -2);
          if cdm.CD_Emissor_CTEMODELO.AsInteger = 57 then
             begin
             infCTeNorm.infCarga.proPred := CDM.CD_Emissor_CTEPRODUTOS_PREDOMINANTE.AsString;
              infCTeNorm.rodo.RNTRC := cdm.CD_Emissor_CTERNTC.AsString;
             end
          else
          if cdm.CD_Emissor_CTEMODELO.AsInteger = 67 then
          begin
          infCTeNorm.infServico.xDescServ:=CDM.CD_Emissor_CTEPRODUTOS_PREDOMINANTE.AsString;
          infCTeNorm.rodoOS.NroRegEstadual:=CDM.CD_Emissor_CTENROREGESTADUAL.AsString;
          //infCTeNorm.rodoOS.NroRegEstadual := cdm.CD_Emissor_CTENROREGESTADUAL.AsString;
          end;


          infCTeNorm.Rodo.dPrev := (cdm.CD_Emissor_CTEDATA_PREV.AsDateTime+1);



           infCTeNorm.Rodo.Lota := ltNao;
           infCTeNorm.Rodo.CIOT := Trim(CDM.CD_Emissor_CTECIOT.AsString);


     if cdm.CD_Emissor_CTEMODELO.AsInteger=57 then
         begin
           if cdm.CD_CTE_OCC.RecordCount<>0 then
                 begin
                        cdm.CD_CTE_OCC.first;
                     while not cdm.CD_CTE_OCC.eof do
                        begin
                          cnpj :=StringReplace(dm.EmitenteCNPJ.asstring,'.','',[rfReplaceAll]);
                          cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
                          cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);

                           with infCTeNorm.rodo.occ.Add do
                             begin
                               serie:=IntToStr(cdm.CD_CTE_OCCSERIE.AsInteger);
                               nOcc:=cdm.CD_CTE_OCCNOCC.AsInteger;
                               dEmi:=now;
                               cnpj:=CNPJ;
                               IE:= StringReplace(dm.EmitenteIE.AsString,'.','',[rfReplaceAll]);
                               IE:= StringReplace(IE,'.','',[rfReplaceAll]);
                               IE:= StringReplace(IE,'-','',[rfReplaceAll]);
                               IE :=StringReplace(IE,'-','',[rfReplaceAll]);

                             end;

                            cdm.CD_CTE_OCC.next;
                        end;

                 end;
         end
         else
         if cdm.CD_Emissor_CTEMODELO.AsInteger=67 then
            begin
              cdm.CD_veiculos.First;
              while not cdm.CD_veiculos.Eof do
              begin

              with infCTeNorm.rodoOS.veic do
                    begin
                      placa    := StringReplace(cdm.CD_veiculosPLACA.AsString,'-','',[rfReplaceAll]);
                      RENAVAM  := cdm.CD_veiculosRENAVAN.AsString;
                      UF       := cdm.CD_veiculosUF.AsString;
                    end;
                  cdm.CD_veiculos.next;

              end;
            end;
         end;





          //
          //  Informações sobre os produtos Perigosos
          //
          {
          DM_CNT.Produtos.Close;
          DM_CNT.Produtos.SQL.Clear;
          DM_CNT.Produtos.SQL.Add('Select * From Cnt_Produtos');
          DM_CNT.Produtos.SQL.Add('Where Codigo = :xCodigo');
          DM_CNT.Produtos.SQL.Add('and Serie = :xSerie');
          DM_CNT.Produtos.SQL.Add('and Numero = :xNumero');
          DM_CNT.Produtos.SQL.Add('Order By Item');
          DM_CNT.Produtos.Params[0].AsInteger := DM_CNT.ConhecimentoCodigo.AsInteger;
          DM_CNT.Produtos.Params[1].AsInteger := DM_CNT.ConhecimentoSerie.AsInteger;
          DM_CNT.Produtos.Params[2].AsInteger := DM_CNT.ConhecimentoNumero.AsInteger;
          DM_CNT.Produtos.Active := True;
          DM_CNT.Produtos.Open;
          DM_CNT.Produtos.Last;
          j := DM_CNT.Produtos.RecordCount;
          if j > 0
           then begin
            DM_CNT.Produtos.First;
            for i := 1 to j do
             begin
          {$IFDEF PL_200}
        //      with infCTeNorm.peri.Add do

          {{$ENDIF
               begin
                nONU        := DM_CNT.ProdutosNumeroONU.AsString;
                xNomeAE     := Trim(DM_CNT.ProdutosNome.AsString);
                xClaRisco   := Trim(DM_CNT.ProdutosClasse.AsString);
                grEmb       := Trim(DM_CNT.ProdutosGrupo.AsString);
                qTotProd    := Trim(DM_CNT.ProdutosQtde.AsString);
                qVolTipo    := Trim(DM_CNT.ProdutosVolumes.AsString);
                PontoFulgor := Trim(DM_CNT.ProdutosFulgor.AsString);
               end;
              DM_CNT.Produtos.Next;
             end;
           end;       }

          //
          //  Informações sobre os veículos novos transportados


                      Frm_CTE_Config.ACBrCTe1.Conhecimentos.GerarCTe;


    // fim da adição do conhecimento ao compomente



end;





procedure TFrm_CTE_Config.btnCancelamentoClick(Sender: TObject);

begin


                        FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
                        FrmLogin_Acao.RzLabel4.Caption :='Liberação para Cancelar';
                        FrmLogin_Acao.ShowModal;

            if L = 1 then
               Begin
                 Frm_CTE_CHAVE:=TFrm_CTE_CHAVE.Create(self);
                 Frm_CTE_CHAVE.ShowModal;
               End;
end;














{             FrmLogin_Acao:=TFrmLogin_Acao.Create(self);
             FrmLogin_Acao.RzLabel4.Caption :='Liberação para Encerrar';
             FrmLogin_Acao.ShowModal;


             if L = 1 then
             begin
               OpenDialog1.Title := 'Selecione o CTe a ser Cancelado';
               OpenDialog1.DefaultExt := '*-cte.xml';
               OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
               OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathCTe;

               if OpenDialog1.Execute then
                begin
                 ACBrCTe1.Conhecimentos.Clear;
                 ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
                 if not(InputQuery('Cancelamento do CTe:', 'Justificativa', vAux))
                  then exit;

                 ACBrCTe1.EventoCTe.Evento.Clear;

                 with ACBrCTe1.EventoCTe.Evento.Add do
                  begin
                   infEvento.nSeqEvento      := 1; // Para o Evento de Cancelamento: nSeqEvento sempre = 1
                   infEvento.chCTe           := Copy(ACBrCTe1.Conhecimentos.Items[0].CTe.infCTe.Id, 4, 44);
                   infEvento.CNPJ            := edtEmitCNPJ.Text;
                   infEvento.dhEvento        := now;
                   infEvento.tpEvento        := teCancelamento;
                   infEvento.detEvento.xJust := trim(vAux);
                   infEvento.detEvento.nProt := ACBrCTe1.Conhecimentos.Items[0].CTe.procCTe.nProt;
                  end;

                 iLote := 1; // Numero do Lote do Evento
                 ACBrCTe1.EnviarEvento(iLote);

                 MemoResp.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.EnvEvento.RetWS);
                 memoRespWS.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.EnvEvento.RetWS);

                 ShowMessage(IntToStr(Frm_CTE_Config.ACBrcte1.WebServices.Retorno.cStat));

                                        if (Frm_CTE_Config.ACBrcte1.WebServices.Retorno.cStat = 135)  then
                                            begin
                                              cdm.CD_Emissor_CTE.Close;
                                              cdm.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where chave ='''+Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID+'''';
                                              cdm.CD_Emissor_CTE.open;
                                               if cdm.CD_Emissor_CTE.RecordCount<>0 then
                                                  begin


                                                              cdm.CD_Emissor_CTE.Edit;
                                                              cdm.CD_Emissor_CTESTATUS.asinteger:=9;
                                                              cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
                                                              cdm.CD_Emissor_CTE.post;
                                                              cdm.CD_CTE_CONFIG.edit;
                                                              cdm.CD_CTE_CONFIGNUMERO.asstring:=cdm.CD_Emissor_CTENUMCTE.asstring;
                                                              cdm.CD_CTE_CONFIG.post;
                                                              cdm.CD_CTE_CONFIG.ApplyUpdates(0);



                                                               dm.Cli_Cad_Log.Insert;
                                                                dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
                                                                dm.Cli_Cad_LogNOME.text:=usuario;
                                                                dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                                dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                                dm.Cli_Cad_LogPROCESSO.Text := 'Cancelamento de CT-e';
                                                                dm.Cli_Cad_LogDOC.Text:=cdm.CD_Emissor_CTENUMCTE.Text;
                                                                 dm.Cli_Cad_Logmdf_cte.asinteger:=2;
                                                                dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                                Frm_Principal.RzDBMemo1.Lines.Add('Cancelamento, '+Frm_CTE_Config.ACBrCTe1.WebServices.Retorno.RetornoWS);
                                                                dm.Cli_Cad_Log.Post;
                                                                dm.cli_cad_log.ApplyUpdates(0);
                                                                                                                  {
                                                               Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile( Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID+'-cte.xml');
                                                               Frm_CTE_Config.ACBrCTe1.Conhecimentos.Imprimir;
                                                  end;
                                            end;
                end;
             end;

                }



procedure TFrm_CTE_Config.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave do CT-e:', vChave)) then
    exit;

  ACBrCTe1.WebServices.Consulta.CTeChave := vChave;
  ACBrCTe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.Consulta.RetWS);
  memoRespWS.Lines.Text :=  UTF8Encode(ACBrCTe1.WebServices.Consulta.RetornoWS);

end;

procedure TFrm_CTE_Config.btnCriarEnviarClick(Sender: TObject);
begin
cdm.CD_CTE_CONFIG.Edit;
FrmCTESequencia:=TFrmCTESequencia.Create(self);
FrmCTESequencia.ShowModal;
FrmCTESequencia.free;
end;

procedure TFrm_CTE_Config.btnImportarXMLClick(Sender: TObject);
var
 Para : String;
 CC   : Tstrings;
begin
 if not(InputQuery('Enviar Email', 'Email de destino', Para))
  then exit;

 OpenDialog1.Title := 'Selecione o CTe';
 OpenDialog1.DefaultExt := '*-cte.xml';
 OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathCTe;

 if OpenDialog1.Execute then
  begin
   ACBrCTe1.Conhecimentos.Clear;
   ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
   CC:=TstringList.Create;
   CC.Add(''); //especifique um email válido
   CC.Add(''); //especifique um email válido

   ACBrCTe1.Conhecimentos.Items[0].EnviarEmail(Para
                                             ,'Conhecimento de Transporte '
                                             , mmEmailMsg.Lines
                                             , true //Enviar PDF junto
                                             , nil //Lista com emails que serão enviado cópias - TStrings
                                             , nil // Lista de anexos - TStrings
                                              );
   CC.Free;
  end;

end;

procedure TFrm_CTE_Config.btnImprimirClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o ProcInutCTe';
  OpenDialog1.DefaultExt := '*-ProcInutCTe.xml';
  OpenDialog1.Filter := 'Arquivos ProcInutCTe (*-ProcInutCTe.xml)|*-ProcInutCTe.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrCTe1.InutCTe.LerXML(OpenDialog1.FileName);
    ACBrCTe1.ImprimirInutilizacao;

   dm.Cli_Cad_Log.Insert;
    dm.Cli_Cad_LogID_USER.asinteger:=FrmLogin_Acao.ClientDataSet1ID_FUNCIONARIO.AsInteger;
    dm.Cli_Cad_LogNOME.text:=usuario;
    dm.Cli_Cad_LogDATA.AsDateTime:=now;
    dm.Cli_Cad_LogHORA.AsDateTime:=now;
    dm.Cli_Cad_LogPROCESSO.Text := 'Inutilização de CT-e';
    dm.Cli_Cad_LogDOC.Text:=cdm.CD_Emissor_CTENUMCTE.Text;
    dm.Cli_Cad_Logmdf_cte.asinteger:=2;
    dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
    Frm_Principal.RzDBMemo1.Lines.Add('Inutilização, '+Frm_CTE_Config.ACBrCTe1.WebServices.Retorno.RetornoWS);
    dm.Cli_Cad_Log.Post;
    dm.cli_cad_log.ApplyUpdates(0);
  end;


end;

procedure TFrm_CTE_Config.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa))
  then exit;
 ACBrCTe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano),
                                StrToInt(Modelo), StrToInt(Serie),
                                StrToInt(NumeroInicial), StrToInt(NumeroFinal));
 MemoResp.Lines.Text   := UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.Inutilizacao.RetWS);


end;

procedure TFrm_CTE_Config.btnStatusServClick(Sender: TObject);
begin
 lerconfiguracao;
 ACBrCTe1.WebServices.StatusServico.Executar;
 MemoResp.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrCTe1.WebServices.StatusServico.RetWS);


 PageControl2.ActivePageIndex := 5;
 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrCTe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrCTe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrCTe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrCTe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrCTe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrCTe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrCTe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrCTe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrCTe1.WebServices.StatusServico.xObs);
end;

procedure TFrm_CTE_Config.btnValidarXMLClick(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o CTe';
 OpenDialog1.DefaultExt := '*-cte.xml';
 OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrCTe1.Conhecimentos.Clear;
   ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
   ACBrCTe1.Conhecimentos.Validar;
   showmessage('Conhecimento de Transporte Eletrônico Valido');
  end;
end;

procedure TFrm_CTE_Config.Button1Click(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o Logo';
 OpenDialog1.DefaultExt := '*.bmp';
 OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  CDM.CD_CTE_CONFIG.Edit;
if OpenDialog1.Execute then

     if OpenDialog1.FileName<>'' then

        DBEdit4.Text:=OpenDialog1.FileName;

 cdm.CD_CTE_CONFIG.post;
end;

procedure TFrm_CTE_Config.FormClose(Sender: TObject; var Action: TCloseAction);
begin


//cdm.CD_CTE_CONFIGUF.AsString:=RzDBComboBox1.Value;

   if MessageDlg('deseja salvar as alterações feitas?',mtConfirmation,[mbYes,mbNo],0)=mryes then
      begin
      cdm.CD_CTE_CONFIG.Edit;
      cdm.CD_CTE_CONFIGESTADO.AsString:=cbUF.Text;
      cdm.CD_CTE_CONFIGID_EMPRESA.AsInteger:=dm.EmitenteID_EMPRESA.AsInteger;

      cdm.CD_CTE_CONFIG.Post;
      cdm.CD_CTE_CONFIG.ApplyUpdates(0);
      end;


end;

procedure TFrm_CTE_Config.FormCreate(Sender: TObject);
begin
try
lerconfiguracao;
except

end;
end;
    (*
procedure TFrm_CTE_Config.gerarcte(NumCTe: STRING);
var
 i, j, CodigoMunicipio, Tomador: Integer;
 cnpj, filtro, VERSAO :string;
 query_filtro : TSQLQuery;
 PROV_Clientes: TDataSetProvider;
 CDS_Clientes: TClientDataSet;
begin
  //CTeOS


  with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
//    infCTe.versao :='3.00';
    Ide.cUF         := StrToInt(Copy(CDM.CD_CTE_CONFIGUF.AsSTRING,1,2));
    Ide.cCT         := CDM.CD_Emissor_CTENUMCTE.AsInteger;
    Ide.CFOP        := CDM.CD_Emissor_CTECFOP.AsInteger;
    Ide.natOp       := CDM.CD_Emissor_CTENATUREZA_OPERACAO.AsString;
    Ide.modelo      := cdm.CD_CTE_CONFIGMODELO.asinteger;//67;
    Ide.serie       := cdm.CD_CTE_CONFIGSERIE.AsInteger;
    Ide.nCT         := CDM.CD_Emissor_CTENUMCTE.AsInteger;
    Ide.dhEmi       := CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime+CDM.CD_Emissor_CTEHORA.AsDateTime;





    case cdm.CD_CTE_CONFIGFORMAEMISSAO.AsInteger of
      0: Ide.tpEmis := teNormal;
      1: Ide.tpEmis := teContingencia;
      end;
    if  cdm.CD_CTE_CONFIGAMBIENTE.AsInteger = 0 then
      Ide.tpAmb     := taProducao
    else
      Ide.tpAmb     := taHomologacao;


      case CDM.CD_Emissor_CTEDESCSERV.asinteger of
        1 : Ide.tpCTe:=tcNormal;
        2 : Ide.tpCTe:=tcComplemento;
        3 : Ide.tpCTe:=tcAnulacao;
        4 : Ide.tpCTe:=tcSubstituto;
      end;


    Ide.procEmi     := peAplicativoContribuinte;
    Ide.verProc     := '3.0';
    Ide.cMunEnv     := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
    Ide.xMunEnv     := Trim(dm.EmitenteCIDADE.AsString);
    Ide.UFEnv       := Trim(dm.EmitenteUF.AsString);
    if cdm.CD_Emissor_CTEMODAL.asstring = '1' then
    Ide.modal       := mdAquaviario
    else
    Ide.modal       := mdRodoviario;

    case cdm.CD_Emissor_CTETIPO_SERV.AsInteger of
         1 : Ide.tpServ := tsNormal;
         2 : Ide.tpServ := tsSubcontratacao;
         3 : Ide.tpServ := tsRedespacho;
         4 : Ide.tpServ := tsIntermediario;
         5 : Ide.tpServ := tsMultimodal;
         6 : Ide.tpServ := tsTranspPessoas;
         7 : Ide.tpServ := tsTranspValores;
         8 : Ide.tpServ := tsExcessoBagagem;
    end;
   // Ide.tpServ      := StrToTpServ(ok,s,CDM.CD_Emissor_CTETIPO_SERV.AsString);


   // ide.indIEToma   := inContribuinte;
    Ide.cMunIni     := CDM.CD_Emissor_CTEINICODIBGE.AsInteger;
    Ide.xMunIni     := CDM.CD_Emissor_CTEINICIDADE.AsString;
    Ide.UFIni       := CDM.CD_Emissor_CTEINIUF.AsString;
    Ide.cMunFim     := CDM.CD_Emissor_CTEFIMCODIBGE.AsInteger;
    Ide.xMunFim     := CDM.CD_Emissor_CTEFIMCIDADE.AsString;;
    Ide.UFFim       := CDM.CD_Emissor_CTEFIMUF.AsString;

    {Dados do Percurso}
    //ide.infPercurso.Add.UFPer := 'PR';

    {Dados do Emitente}
    cnpj :=StringReplace(dm.EmitenteCNPJ.asstring,'.','',[rfReplaceAll]);
    cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
    cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
    Emit.CNPJ              := Trim(cnpj);
  //  if (dm.EmitenteIE.AsString = UpperCase('ISENTO')) or (Length(dm.EmitenteIE.AsString)=0) then
       Emit.IE                := '00000';
  //     else
  //     Emit.IE                := trim(dm.EmitenteIE.AsString);
  //  ShowMessage(emit.IE);
    Emit.xNome             := Trim(dm.EmitenteRAZAO_SOCIAL.asstring);
    Emit.xFant             := Trim(dm.EmitenteRAZAO_SOCIAL.asstring);
    Emit.enderEmit.xLgr    := Trim(dm.EmitenteENDERECO.asstring);
    Emit.enderEmit.nro     := Trim(dm.EmitenteNUMERO.asstring);
    Emit.enderEmit.xCpl    := Trim(dm.EmitenteCOMPLEMENTO.AsString);
    Emit.enderEmit.xBairro := Trim(dm.EmitenteBAIRRO.AsString);
    Emit.enderEmit.cMun    := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
    Emit.enderEmit.xMun    := Trim(dm.EmitenteCIDADE.AsString);
    Emit.enderEmit.CEP     := StrToInt(StringReplace(dm.EmitenteCEP.AsString,'-','',[rfReplaceAll]));
    Emit.enderEmit.UF      := Trim(dm.EmitenteUF.AsString);
   // Emit.enderEmit.fone    := Trim(cdm.Query_InfoCommerce);

    //Adiciona dados do tomador do serviço
   case CDM.CD_Emissor_CTEID_TOMADOR.AsInteger of
    1: Ide.Toma03.Toma:=tmRemetente;
    2: Ide.Toma03.Toma:=tmExpedidor;
    3: Ide.Toma03.Toma:=tmDestinatario;
    4: Ide.Toma03.Toma:=tmOutros;
   end;

          if cdm.CD_Emissor_CTENOME.AsString <> '' then
              begin
              cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              toma.CNPJCPF           := Trim(cnpj);
              if CDM.CD_Emissor_CTEIE.AsString = '' then
                 toma.IE :='ISENTO'
                 ELSE
                 BEGIN
                 toma.IE                :=StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
                 toma.IE                :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
                 END;
              toma.xNome             := CDM.CD_Emissor_CTENOME.AsString;
              toma.xFant             := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
              toma.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
              toma.enderToma.nro     := CDM.CD_Emissor_CTENUMERO.AsString;
              toma.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
              toma.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
              toma.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
              toma.enderToma.xMun    := CDM.CD_Emissor_CTEENDERECO.AsString;
              toma.enderToma.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
              toma.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
              toma.enderToma.cPais   := 1058;
              toma.enderToma.xPais   := 'BRASIL';
              toma.email             := '';

              end;


             if cdm.CD_Emissor_CTEdest_NOME.AsString <> '' then
              begin
              cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              dest.CNPJCPF           := Trim(cnpj);
               if CDM.CD_Emissor_CTEDEST_IE.AsString = '' then
                 dest.IE :='ISENTO'
                 ELSE
                 BEGIN
                 dest.IE                :=StringReplace(CDM.CD_Emissor_CTEDEST_IE.AsString,'.','',[rfReplaceAll]);
                 dest.IE                :=StringReplace(dest.IE,'.','',[rfReplaceAll]);
                 END;
//              dest.IE                := CDM.CD_Emissor_CTEDEST_IE.AsString;
              dest.xNome             := CDM.CD_Emissor_CTEdest_NOME.AsString;
              dest.enderdest.xLgr    := CDM.CD_Emissor_CTEdest_ENDERECO.AsString;
              dest.enderdest.nro     := CDM.CD_Emissor_CTEdest_NUMERO.AsString;
              dest.enderdest.xCpl    := CDM.CD_Emissor_CTEdest_COMPLEMENTO.AsString;
              dest.enderdest.xBairro := CDM.CD_Emissor_CTEdest_BAIRRO.AsString;
              dest.enderdest.cMun    := CDM.CD_Emissor_CTEdest_cod_ibge.AsInteger;
              dest.enderdest.xMun    := CDM.CD_Emissor_CTEdest_ENDERECO.AsString;
              dest.enderdest.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEdest_CEP.AsString,'-','',[rfReplaceAll]));
              dest.enderdest.UF      := CDM.CD_Emissor_CTEdest_UF.AsString;
              dest.enderdest.cPais   := 1058;
              dest.enderdest.xPais   := 'BRASIL';
             end;


             if cdm.CD_Emissor_CTErem_NOME.AsString <> '' then
                begin
                cnpj :=StringReplace(CDM.CD_Emissor_CTEREM_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
                cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
                cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
                rem.CNPJCPF           := Trim(cnpj);
                   if CDM.CD_Emissor_CTEREM_IE.AsString = '' then
                       dest.IE :='ISENTO'
                       ELSE
                       BEGIN
                       rem.IE                :=StringReplace(CDM.CD_Emissor_CTEREM_IE.AsString,'.','',[rfReplaceAll]);
                       rem.IE                :=StringReplace(dest.IE,'.','',[rfReplaceAll]);
                       END;
               // rem.IE                := CDM.CD_Emissor_CTEREM_IE.AsString;
                rem.xNome             := CDM.CD_Emissor_CTEREM_NOME.AsString;
                rem.enderReme.xLgr    := CDM.CD_Emissor_CTEREM_ENDERECO.AsString;
                rem.enderReme.nro     := CDM.CD_Emissor_CTEREM_NUMERO.AsString;
                rem.enderReme.xCpl    := CDM.CD_Emissor_CTEREM_COMPLEMENTO.AsString;
                rem.enderReme.xBairro := CDM.CD_Emissor_CTEREM_BAIRRO.AsString;
                rem.enderReme.cMun    := CDM.CD_Emissor_CTEREM_cod_ibge.AsInteger;
                rem.enderReme.xMun    := CDM.CD_Emissor_CTEREM_ENDERECO.AsString;
                rem.enderReme.CEP     := StrToInt(StringReplace(CDM.CD_Emissor_CTEREM_CEP.AsString,'-','',[rfReplaceAll]));
                rem.enderReme.UF      := CDM.CD_Emissor_CTEREM_UF.AsString;
                rem.enderReme.cPais   := 1058;
                rem.enderReme.xPais   := 'BRASIL';
               end;



     {Carrega valores da prestacao de servico}
          vPrest.vTPrest         := CDM.CD_Emissor_CTETOTAL_PREST.AsFloat;
          vPrest.vRec            := CDM.CD_Emissor_CTEVALOR_RECEBER.AsFloat;


    {Carrega componentes do valor da prestacao}

         cdm.CD_CTE_ValorAdicional.Open;
         cdm.CD_CTE_ValorAdicional.First;
     if  cdm.CD_CTE_ValorAdicional.RecordCount<>0 then
         begin
          while not cdm.CD_CTE_ValorAdicional.eof do
             begin
                with vPrest.comp.Add do
                begin
                  xNome                := cdm.CD_CTE_ValorAdicionalNOME.AsString;
                  vComp                := cdm.CD_CTE_ValorAdicionalVALOR.AsFloat;
                end;
               cdm.CD_CTE_ValorAdicional.next;
             end;
         end;


           {Carrega Impostos}
      case CDM.CD_Emissor_CTECST.AsInteger of
       000: begin
            Imp.ICMS.SituTrib    := cst00;
            Imp.ICMS.ICMS00.CST   := cst00; // Tributação Normal ICMS
            Imp.ICMS.ICMS00.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
            Imp.ICMS.ICMS00.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
            Imp.ICMS.ICMS00.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
           end;
         020: begin
              Imp.ICMS.SituTrib     := cst20;
              Imp.ICMS.ICMS20.CST    := cst20; // Tributação com BC reduzida do ICMS
              Imp.ICMS.ICMS20.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
              Imp.ICMS.ICMS20.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
              Imp.ICMS.ICMS20.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
             end;
       040: begin
            Imp.ICMS.SituTrib  := cst40;
            Imp.ICMS.icms45.CST := cst40; // ICMS Isento
           end;
         041: begin
              Imp.ICMS.SituTrib  := cst41;
              Imp.ICMS.icms45.CST := cst41; // ICMS não Tributada
             end;
       051: begin
            Imp.ICMS.SituTrib  := cst51;
            Imp.ICMS.icms45.CST := cst51; // ICMS diferido
           end;

       090: if Emit.enderEmit.UF = Rem.enderReme.UF then
                begin
                  Imp.ICMS.SituTrib     := cst90;
                  Imp.ICMS.ICMS90.CST   := cst90;
                  Imp.ICMS.ICMS90.pRedBC:= RoundTo(CDM.CD_Emissor_CTEREDBC.asFloat, -2);
                  Imp.ICMS.ICMS90.vBC   := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
                  Imp.ICMS.ICMS90.pICMS := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
                  Imp.ICMS.ICMS90.vICMS := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
                  Imp.ICMS.ICMS90.vCred := RoundTo(CDM.CD_Emissor_CTECREDBC.asFloat, -2);
                end
                else
                begin
                  Imp.ICMS.SituTrib                  := cstICMSOutraUF;
                  Imp.ICMS.ICMSOutraUF.CST           := cstICMSOutraUF; // ICMS Outros
                  Imp.ICMS.ICMSOutraUF.pRedBCOutraUF := RoundTo(CDM.CD_Emissor_CTEREDBC.asFloat, -2);
                  Imp.ICMS.ICMSOutraUF.vBCOutraUF    := RoundTo(CDM.CD_Emissor_CTEBASECALCULO.AsFloat, -2);
                  Imp.ICMS.ICMSOutraUF.pICMSOutraUF  := RoundTo(CDM.CD_Emissor_CTEPERC_ICMS.AsFloat, -2);
                  Imp.ICMS.ICMSOutraUF.vICMSOutraUF  := RoundTo(CDM.CD_Emissor_CTEvaloricms.asFloat, -2);
                end;
      end;

    //SN - Simples Nacional
    if dm.EmitenteREG_TRIBUTARIO.AsInteger >=4 then
       begin
            Imp.ICMS.SituTrib     := cstICMSSN;
            Imp.ICMS.ICMSSN.indSN := 1;
       end;

    Imp.infAdFisco := cdm.CD_Emissor_CTEINFADFISCO.AsString;
    imp.vTotTrib   := cdm.CD_Emissor_CTEPERC_ICMS.AsFloat;





    //nf avulsa e ou nf produtor

    cdm.CD_CTENFE.open;
  if cdm.CD_CTENFE.RecordCount<>0 then
       begin
          cdm.CD_CTENFE.first;
         while not cdm.CD_CTENFE.eof do
          begin
               with infCTeNorm.infDoc.infNF.Add do
                     begin
                              //  nRoma := DM_CNT.NotasRomaneioNF.AsString;
                              //  nPed  := DM_CNT.NotasPedidoNF.AsString;
                              //moNF011AAvulsa, moNFProdutor

                              if cdm.CD_CTENFEMODELO_NF.AsString = 'NF Modelo 01/1A e Avulsa' then
                                  Modelo := moNF011AAvulsa
                                else
                                  Modelo := moNFProdutor;


                                serie := cdm.CD_CTENFESerie.AsString;
                                nDoc  := cdm.CD_CTENFENUMERO.AsString;
                                try
                                dEmi  := cdm.CD_CTENFEEMISSAO.AsDateTime;
                                except

                                end;
                                vBC   := RoundTo(cdm.CD_CTENFEBASE_CALCULO_ICMS.AsFloat, -2);
                                vICMS := RoundTo(cdm.CD_CTENFEVALOR_ICMS.AsFloat, -2);
                                vBCST := RoundTo(cdm.CD_CTENFEBASE_CALCULO_SUBICMS.AsFloat, -2);
                                vST   := RoundTo(cdm.CD_CTENFEVALOR_SUBICMS.AsFloat, -2);
                                vProd := RoundTo(cdm.CD_CTENFEVALOR_DOS_PRODUTOS.AsFloat, -2);
                                vNF   := RoundTo(cdm.CD_CTENFEVALOR_DA_NOTA.AsFloat, -2);
                                nCFOP := StrToInt(cdm.CD_CTENFECFOP.AsString);
                              //  nPeso := RoundTo(DM_CNT.NotasPesoKg.AsFloat, -2);
                             //   PIN   := DM_CNT.NotasPinSuframa.AsString;
                     end;
                  cdm.CD_CTENFE.next;
          end;

       end;

     //nfe

        cdm.CD_CTE_NFES.Open;
     if cdm.CD_CTE_NFES.RecordCount<>0 then
          begin
                 cdm.CD_CTE_NFES.first;
              while not cdm.CD_CTE_NFES.eof do
                  begin
                    with infCTeNorm.infDoc.infNFe.Add do

                        chave := CDM.CD_CTE_NFESCHAVE.AsString;
                     //   PIN   := DM_CNT.NotasPinSuframa.AsString;

                       cdm.CD_CTE_NFES.next;
                  end;

          end;


          //Outros Docs

           cdm.CD_CTEOutroDoc.Open;
           if cdm.CD_CTEOutroDoc.RecordCount<>0 then
              begin
                 cdm.CD_CTEOutroDoc.first;
                  with infCTeNorm.infDoc.infOutros.Add do
                           begin
                           if cdm.CD_CTEOutroDocTIPO.AsString = 'Declaração' then
                               tpDoc := tdDeclaracao
                             else
                             if cdm.CD_CTEOutroDocTIPO.AsString = 'Dutoviário' then
                                tpDoc := tdDutoviario
                                else
                                if cdm.CD_CTEOutroDocTIPO.AsString = 'CF-e SAT' then
                                   tpDoc := tdCFeSAT
                                   else
                                    if cdm.CD_CTEOutroDocTIPO.AsString = 'NFC-e' then
                                       tpDoc := tdNFCe
                                       else
                                        if cdm.CD_CTEOutroDocTIPO.AsString = 'Outros' then
                                           begin
                                           tpDoc      := tdOutros;
                                           descOutros := CDM.CD_CTEOutroDocDESCRICAO.AsString;
                                           end;


                            nDoc     := CDM.CD_CTEOutroDocNUMERO.AsString;
                            try
                            dEmi     := CDM.CD_CTEOutroDocEMISSAO.AsDateTime;
                            except

                            end;
                            vDocFisc := RoundTo(CDM.CD_CTEOutroDocVALOR.AsFloat, -2);
                           end;

                     cdm.CD_CTEOutroDoc.next;
              end;

            query_filtro:=TSQLQuery.Create(self);
            PROV_Clientes:=TDataSetProvider.Create(self);
            CDS_Clientes:=TClientDataSet.Create(self);
            query_filtro.SQLConnection:=CDM.Conexao;

            PROV_Clientes.DataSet:=query_filtro;
            CDS_Clientes.SetProvider(PROV_Clientes);

            query_filtro.Close;
            query_filtro.SQL.Add('select cte_uni.un,sum(CTE_UNI.qnt)as qnt from cte_uni where id_cte ='+cdm.CD_Emissor_CTEID.AsString+' group by  cte_uni.un ');
            CDS_Clientes.open;

     if CDS_Clientes.RecordCount<>0 then
        begin
           CDS_Clientes.first;
          while not CDS_Clientes.eof do
            begin
                // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);      UNIDADE
             with infCTeNorm.infCarga.InfQ.Add do
                 begin
                 if CDS_Clientes.FieldByName('UN').AsString = 'UNIDADE' then
                     BEGIN
                        cUnid  := uUNIDADE;
                        tpMed  := 'UNIDADE';
                     END
                     ELSE
                      if CDS_Clientes.FieldByName('UN').AsString = 'M3' then
                         BEGIN
                            cUnid  := uM3;
                            tpMed  := 'M³';
                         END
                         ELSE
                           if CDS_Clientes.FieldByName('UN').AsString = 'KG' then
                               BEGIN
                                  cUnid  := uKG;
                                  tpMed  := 'KG';
                               END
                               ELSE
                           if CDS_Clientes.FieldByName('UN').AsString = 'TON' then
                               BEGIN
                                  cUnid  := uTON;
                                  tpMed  := 'TONELADA';
                               END
                               ELSE
                                if CDS_Clientes.FieldByName('UN').AsString = 'LITROS' then
                                   BEGIN
                                      cUnid  := uLITROS;
                                      tpMed  := 'LITROS';
                                   END;

                        qCarga := RoundTo(CDS_Clientes.FieldByName('QNT').AsFloat, -2);
                 end;
                 CDS_Clientes.NEXT;
            end;

        end;



          infCTeNorm.infCarga.vCarga  := RoundTo(CDM.CD_Emissor_CTEPRODUTO_VALOR_DACARGA.AsFloat, -2);
          infCTeNorm.infCarga.proPred := CDM.CD_Emissor_CTEPRODUTOS_PREDOMINANTE.AsString;
          infCTeNorm.rodo.RNTRC := cdm.CD_Emissor_CTERNTC.AsString;
          infCTeNorm.Rodo.dPrev := (cdm.CD_Emissor_CTEDATA_PREV.AsDateTime+1);
          infCTeNorm.Rodo.Lota := ltNao;
          infCTeNorm.Rodo.CIOT := Trim(CDM.CD_Emissor_CTECIOT.AsString);



   { with infCTeNorm.Seg.Add do
    begin
      respSeg := rsTomadorServico;
      xSeg    := 'TESTE';
      nApol   := '3743784738473847';
    end;
    }


    {Carega inf veiculos do modal rodo 0-1}
    cdm.CD_veiculos.First;
    while not cdm.CD_veiculos.Eof do
    begin

    with infCTeNorm.rodoOS.veic do
          begin
            placa    := StringReplace(cdm.CD_veiculosPLACA.AsString,'-','',[rfReplaceAll]);
            RENAVAM  := cdm.CD_veiculosRENAVAN.AsString;
            UF       := cdm.CD_veiculosUF.AsString;
          end;
        cdm.CD_veiculos.next;
        ACBrCTe1.Conhecimentos.GerarCTe;
        Frm_CTE_Config.ACBrCTe1.Enviar(1);
    end;

  //
     //CDS_Clientes.Close;
          {   PROV_Clientes.Destroy;
                       query_filtro.Destroy;}

    {Carrega dados da CTe substituta 0-1}
    {with infCTeNorm.infCTeSub do
    begin
      chCte := '';
      //Se tomador não é Contribuinte
        tomaNaoICMS.refCteAnu := '';

      //Se tomador for Contribuinte
        case TipoDoc of //Tipo do Documento que o Tomador Emitiu para anulação de valor do Cte Anterior
          0: tomaICMS.refNFe := '';//NFe
          1: tomaICMS.refCte := '';//CTe
          2://NF
          begin
            tomaICMS.refNF.CNPJCPF  := '';
            tomaICMS.refNF.modelo   := '';
            tomaICMS.refNF.serie    := 0;
            tomaICMS.refNF.subserie := 0;
            tomaICMS.refNF.nro      := 0;
            tomaICMS.refNF.valor    := 0;
            tomaICMS.refNF.dEmi     := Date;
          end;
        end;
    end;}


    {CTe de Complemento de valor}
      //InfCTeComp.chave := '';

    {CTe de Anulacao de valores}
      //infCteAnu.chCTe := '';
      //infCteAnu.dEmi  := Date;

    {Seleciona o dados dos Autorizados a baixar o xml}
      //autXML.Add.CNPJCPF := '';



      //try
      //
  end;

end;       *)



procedure TFrm_CTE_Config.lerconfiguracao;
var
  Ok         : Boolean;
 StreamMemo : TMemoryStream;
begin

  ACBrCTe1.Configuracoes.Certificados.NumeroSerie := CDM.CD_CTE_CONFIGCERTIFICADO.asstring;

//  ACBrCTe1.configuracoes.Certificados.ArquivoPFX:='C:\transpNossa.pfx';


  ACBrCTe1.SSL.DescarregarCertificado;


  ACBrCTe1.Configuracoes.Arquivos.PathSalvar := CDM.CD_CTE_CONFIGPATCH.asstring;
  ACBrCTe1.Configuracoes.WebServices.UF  := CDM.CD_CTE_CONFIGESTADO.asstring;

  if CDM.CD_CTE_CONFIGAMBIENTE.asinteger = 1 then
     ACBrCTe1.Configuracoes.WebServices.Ambiente   := taHomologacao
     else
      if CDM.CD_CTE_CONFIGAMBIENTE.asinteger = 2 then
         ACBrCTe1.Configuracoes.WebServices.Ambiente   := taProducao;


  ACBrCTe1.Configuracoes.WebServices.Visualizar := true;
  ACBrCTe1.Configuracoes.Geral.VersaoDF:=ve300;
 try
  if cdm.CD_Emissor_CTEMODELO.AsInteger = 67 then
       ACBrCTe1.Configuracoes.Geral.ModeloDF := moCTeOS
            else
                 if cdm.CD_Emissor_CTEMODELO.AsInteger = 57 then
                     ACBrCTe1.Configuracoes.Geral.ModeloDF := moCTe;
      except
  ACBrCTe1.Configuracoes.Geral.ModeloDF := moCTe;
 end;



   if ACBrCTe1.DACTe <> nil then
   begin
    ACBrCTe1.DACTe.TipoDACTe    := StrToTpImp(OK,IntToStr(CDM.CD_CTE_CONFIGMODODACTE.AsInteger));
    ACBrCTe1.DACTe.Logo         := CDM.CD_CTE_CONFIGLOGO.asstring;
    if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'XML') then
       ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'XML');
          if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'SALVAR') then
                 ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'SALVAR');
                     if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'Eventos') then
                            ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'Eventos');
                                if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza') then
                                       ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza');




    ACBrCTe1.Configuracoes.Arquivos.PathCTe := CDM.CD_CTE_CONFIGPATCH.AsString+'XML';
    ACBrCTe1.Configuracoes.Arquivos.PathSalvar := CDM.CD_CTE_CONFIGPATCH.AsString+'Salvar';
    ACBrCTe1.Configuracoes.Arquivos.PathEvento := CDM.CD_CTE_CONFIGPATCH.AsString+'Eventos';
    ACBrCTe1.Configuracoes.Arquivos.PathInu :=   CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza';
    ACBrCTe1.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName)+'Schemas\CTe\';


     { ACBrCTe1.MAIL.Host := DM.EmitenteSMTP_ENDERECO.asstring;
      ACBrCTe1.MAIL.Port :=  DM.EmitenteSMTP_PORTA.asstring;
      ACBrCTe1.MAIL.Username :=  DM.EmitenteSMTP_USUARIO.asstring;
      ACBrCTe1.MAIL.Password :=  DM.EmitenteSMTP_SENHA.asstring;
      ACBrCTe1.MAIL.ReadingConfirmation := False;
      }

    ACBrCTe1.DACTe.TamanhoPapel := tpA4;
   end;



  StreamMemo := TMemoryStream.Create;

  StreamMemo.Free;






end;

procedure TFrm_CTE_Config.Button2Click(Sender: TObject);
begin




 SaveDialog1.Title := 'Caminho dos Arquivos';
 SaveDialog1.InitialDir := ExtractFileDir(application.ExeName);

 CDM.CD_CTE_CONFIG.Edit;
if SaveDialog1.Execute then

     if SaveDialog1.FileName<>'' then
        begin

         CDM.CD_CTE_CONFIGPATCH.AsString:=ExtractFilePath(SaveDialog1.FileName);
         CDM.CD_CTE_CONFIG.post;

        end;
end;

procedure TFrm_CTE_Config.Button3Click(Sender: TObject);
begin
 OpenDialog1.Title := 'Selecione o CTe';
 OpenDialog1.DefaultExt := '*-cte.xml';
 OpenDialog1.Filter := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrCTe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then
  begin
   ACBrCTe1.Conhecimentos.Clear;
   ACBrCTe1.Conhecimentos.LoadFromFile(OpenDialog1.FileName);
   ACBrCTe1.Conhecimentos.Imprimir;
  end;
end;

procedure TFrm_CTE_Config.sbtnCaminhoCertClick(Sender: TObject);
begin
   cdm.CD_CTE_CONFIG.Edit;
   DBEdit2.Text:=ACBRCTE1.SSL.SelecionarCertificado;

   senha:=ACBRCTE1.SSL.Senha;
   cdm.CD_CTE_CONFIG.post;
end;

end.



