unit UFrm_CTE_Config;

interface

uses System.IniFiles, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrDFe, ACBrCTe, RzCmboBx,
  RzDBCmbo, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
   Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, ACBrDFeSSL,
  pcnConversao, Data.DB, pcteConversaoCTe, System.Math, Data.SqlExpr, blcksock,
  Datasnap.DBClient, Datasnap.Provider, ACBrMail, ACBrCTeDACTEClass,
  ACBrCTeDACTeRLClass, ACBrMDFe, ACBrDFeReport, ACBrNFe;

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
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
  public
    procedure gerarcte;
    procedure GerarCTeOS;

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
 IE, CNPJ,TomaCNPJ,cep: String;
 OkConversao: Boolean;
   query_filtro : TSQLQuery;
 PROV_Clientes: TDataSetProvider;
 CDS_Clientes: TClientDataSet;
 reducao : real;

begin


    Frm_CTE_Config.lerconfiguracao;
     with ACBrCTe1.Conhecimentos.Add.CTe do
      begin

          infCTe.versao := 3.0;

        Ide.cUF    := StrToInt(Copy(CDM.CD_CTE_CONFIGUF.AsSTRING,1,2));
        // Atenção o valor de cCT tem que ser um numero aleatório conforme recomendação
        // da SEFAZ, mas neste exemplo vamos atribuir o mesmo numero do CT-e.

        Ide.cCT         := random(99999);// cdm.CD_Emissor_CTENUMCTE.AsInteger;
        Ide.nCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
        Ide.CFOP        := CDM.CD_Emissor_CTECFOP.AsInteger;
        Ide.natOp       := CDM.CD_Emissor_CTENATUREZA_OPERACAO.AsString;
        case CDM.CD_Emissor_CTEFORMA_PAGA.AsInteger of
         0 :ide.forPag:= fpPago;
         1 :ide.forPag:= fpAPagar;
        end;

        ide.forPag      := fpAPagar; // fpAPagar ou fpPago
        Ide.modelo      := 57;
        Ide.serie       := cdm.CD_CTE_CONFIGSERIE.AsInteger;
        Ide.dhEmi       := CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime+CDM.CD_Emissor_CTEHORA.AsDateTime;


           case cdm.CD_Emissor_CTETIPOEMI.AsInteger  of
             1: Ide.tpEmis := teNormal;
             2: if ACBrCTe1.Configuracoes.WebServices.UFCodigo in [14, 16, 26, 35, 50, 51] then
                    ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCRS
                     else
                      ACBrCTe1.Configuracoes.Geral.FormaEmissao := teSVCSP;
           end;






            case cdm.CD_Emissor_CTETIPOEMI.AsInteger  of
             1:  Ide.tpEmis := teNormal;
          //   2:  Ide.tpEmis := teContingencia;
             2: if ACBrCTe1.Configuracoes.WebServices.UFCodigo in [14, 16, 26, 35, 50, 51]
                    then Ide.tpEmis := teSVCRS
                    else Ide.tpEmis := teSVCSP;
         //    5:  Ide.tpEmis := teOffLine;
         //    6:  Ide.tpEmis := teDPEC;
        //     7:  ide.tpEmis := teFSDA;
            end;






          case cdm.CD_CTE_CONFIGMODODACTE.AsInteger of
                0: Ide.tpImp       := tiRetrato;
                1: Ide.tpImp       := tiPaisagem;
          end;

         if (cdm.CD_Emissor_CTETIPOEMI.AsInteger = 6) or (cdm.CD_Emissor_CTETIPOEMI.AsInteger = 7)  then
            begin
             ide.dhCont :=CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime;
             ide.xJust := 'Sefaz indisponivel';
            end;

        //  TpcnTpEvento:=


         if  cdm.CD_CTE_CONFIGAMBIENTE.AsInteger = 2 then
              Ide.tpAmb     := taProducao
              else
              Ide.tpAmb     := taHomologacao;

        case CDM.CD_Emissor_CTEDESCSERV.asinteger of
                1 : Ide.tpCTe:=tcNormal;
                2 : Ide.tpCTe:=tcComplemento;
                3 : Ide.tpCTe:=tcAnulacao;
                4 : Ide.tpCTe:=tcSubstituto; // tcNormal, tcComplemento, tcAnulacao, tcSubstituto
        end;











        Ide.procEmi    := peAplicativoContribuinte;
        Ide.verProc    := '3.0';
        Ide.cMunEnv     := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
        Ide.xMunEnv     := Trim(dm.EmitenteCIDADE.AsString);
        Ide.UFEnv       := Trim(dm.EmitenteUF.AsString);


        case cdm.CD_Emissor_CTEMODAL.asinteger of
        1 : Ide.modal       := mdAquaviario;
        0 : Ide.modal       := mdRodoviario;
        end;

         case cdm.CD_Emissor_CTETIPO_SERV.AsInteger of
           1 : Ide.tpServ := tsNormal;
           2 : Ide.tpServ := tsSubcontratacao;
           3 : Ide.tpServ := tsRedespacho;
           4 : ide.tpServ := tsTranspPessoas;
           5 : ide.tpserv := tsTranspValores;
           6 : ide.tpserv := tsExcessoBagagem;
         end;





        // Origem da PrestaÃ§Ã£o
        Ide.cMunIni     := CDM.CD_Emissor_CTEINICODIBGE.AsInteger;

      {  dm.REGIAO.open;
        dm.REGIAO.Locate('CODIGO_IBGE',CDM.CD_Emissor_CTEINICODIBGE.AsInteger,[loCaseInsensitive]);}
        Ide.xMunIni     := CDM.CD_Emissor_CTEINICIDADE.AsString;
        Ide.UFIni       := CDM.CD_Emissor_CTEINIUF.AsString;


               // Destino da PrestaÃ§Ã£o
                Ide.cMunFim     := CDM.CD_Emissor_CTEFIMCODIBGE.AsInteger;
                Ide.xMunFim     := CDM.CD_Emissor_CTEFIMCIDADE.AsString;
                Ide.UFFim       := CDM.CD_Emissor_CTEFIMUF.AsString;

          case CDM.CD_Emissor_CTEGLOBALIZADO.asinteger  of
          1:  ide.indGlobalizado:=tinao;
          2:  ide.indGlobalizado:=tiSim;
          end;

        {Dados do Percurso}
        (*
        with ide.infPercurso.Add do
          UFPer := 'PR';
        *)

        case CDM.CD_Emissor_CTEID_TOMADOR.AsInteger of
         1: Ide.Toma03.Toma := tmRemetente; // tmRemetente, tmExpedidor, tmRecebedor, tmDestinatario, tmRemetente
         2: Ide.Toma03.Toma := tmExpedidor;
         3: Ide.Toma03.Toma := tmRecebedor;
         4: Ide.Toma03.Toma := tmDestinatario;
         5: Ide.Toma03.Toma := tmOutros;
        end;




       if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger=5 then
          begin
            {Dados do Tomador: Outros}
              cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
              cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);


            Ide.Toma4.Toma    := tmOutros;
            Ide.Toma4.CNPJCPF := Trim(cnpj);

             { if (Length(CDM.CD_Emissor_CTEIE.AsString)=0) or (CDM.CD_Emissor_CTEIE.AsString='ISENTO')  then
                 BEGIN
                 ide.indIEToma  := inIsento;

                 Ide.Toma4.IE  :='ISENTO'
                 END
                 ELSE
                 BEGIN }
             //    ShowMessage(CDM.CD_Emissor_CTEIE.AsString);
                 Ide.Toma4.IE                 :=CDM.CD_Emissor_CTEIE.AsString;//StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
               //  Ide.Toma4.IE                 :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
             //    END;


            Ide.Toma4.xNome   := CDM.CD_Emissor_CTENOME.AsString;
            Ide.Toma4.xFant   := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
            Ide.Toma4.fone    := '';
            Ide.Toma4.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
            Ide.Toma4.enderToma.nro     := CDM.CD_Emissor_CTEN_ENDERECO.AsString;
            Ide.Toma4.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
            Ide.Toma4.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
            Ide.Toma4.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
            Ide.Toma4.enderToma.xMun    := CDM.CD_Emissor_CTECIDADE.AsString;
                  try
                    Ide.Toma4.enderToma.CEP    := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT

                  end;

            Ide.Toma4.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
            Ide.Toma4.enderToma.cPais   := 1058;
            Ide.Toma4.enderToma.xPais   := 'BRASIL';
            Ide.Toma4.email             := '';


            //ShowMessage(Ide.Toma4.IE);
          end
          else


        {Informações Complementares do CTe}
       { compl.xCaracAd  := 'Caracteristicas Adicionais do Transporte';
        compl.xCaracSer := 'Caracteristicas Adicionais do Serviço';
        compl.xEmi      := 'Nome do Emitente';  }

        // Descricao da Origiem do Fluxo
        compl.fluxo.xOrig := '';

        (*
        with compl.fluxo.pass.Add do
        begin
          xPass := 'Sigla ou código interno da Filial/Porto/Estação/Aeroporto de Passagem ';
        end;

        compl.fluxo.xDest := 'Destino';
        compl.fluxo.xRota := 'Rota';
        *)

        infCTeSupl.qrCodCTe:='http://www.dfe.ms.gov.br/cte/qrcode';
        compl.Entrega.TipoData      := tdSemData;
        compl.Entrega.semData.tpPer := tdSemData;
        // se tdNaData ou tdAteData ou tdApartirData
    //    compl.Entrega.comData.tpPer := tdNaData
    //    compl.Entrega.comData.dProg := Date;
        // se tdNoPeriodo
    //    compl.Entrega.noPeriodo.tpPer := tdNoPeriodo;
    //    compl.Entrega.noPeriodo.dIni  := Date;
    //    compl.Entrega.noPeriodo.dFim  := Date + 5;

        compl.Entrega.TipoHora      := thSemHorario;
        compl.Entrega.semHora.tpHor := thSemHorario;
        // se thNoHorario ou thAteHorario ou thApartirHorario
    //    compl.Entrega.comHora.tpHor := thNoHorario;
    //    compl.Entrega.comHora.hProg := Time;
        // se thNoIntervalo
        compl.Entrega.noInter.tpHor := thNoIntervalo;
        compl.Entrega.noInter.hIni  := Time;
        compl.Entrega.noInter.hFim  := Time + 60;
                                               {
        compl.origCalc := 'Município de origem para efeito de cálculo do frete ';
        compl.destCalc := 'Município de destino para efeito de cálculo do frete '; }
        compl.xObs     := CDM.CD_Emissor_CTEOBS.AsString;

        // Obs Estruturada do Contribuinte - Incluir se necessário
      {with compl.ObsCont.Add do
        begin
          xCampo := 'Coliseu Sistema';
          xTexto := 'Coliseu Sistema texto';
        end; }
        // Obs Estruturada para o Fisco - Incluir se necessário

       { with compl.ObsFisco.Add do
        begin
        // xCampo := '';
         if length(CDM.CD_Emissor_CTEINFADFISCO.AsString)=0 then
            xTexto := 'CONHECIMENTO DE TRANSPORTE EMITIDO CONFORME | ARTIGO 54'
            else
            xTexto := CDM.CD_Emissor_CTEINFADFISCO.AsString;
        end; }

        {Dados do Emitente}
                   {Dados do Emitente}
         try
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
         except


         end;







            {Dados do Remetente}

            try
             cnpj :=StringReplace(cdm.CD_Emissor_CTEREM_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
             cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
             cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
              Rem.CNPJCPF := cnpj;
              Rem.IE      := cdm.CD_Emissor_CTEREM_IE.asstring;
              Rem.xNome   := cdm.CD_Emissor_CTEREM_NOME.AsString;
              Rem.xFant   := cdm.CD_Emissor_CTEREM_NOME_FANTASIA.AsString;
              Rem.fone    := cdm.CD_Emissor_CTEREM_FONE_RES.AsString;

              Rem.EnderReme.xLgr    := cdm.CD_Emissor_CTEREM_ENDERECO.AsString;
             // ShowMessage(cdm.CD_Emissor_CTEREM_NUMERO.AsString);
              Rem.EnderReme.nro     := cdm.CD_Emissor_CTEREM_NUMERO.AsString;
              Rem.EnderReme.xCpl    := cdm.CD_Emissor_CTEREM_COMPLEMENTO.AsString;
              Rem.EnderReme.xBairro := cdm.CD_Emissor_CTEREM_BAIRRO.AsString;
              Rem.EnderReme.cMun    := cdm.CD_Emissor_CTEREM_COD_IBGE.Asinteger;
              Rem.EnderReme.xMun    := cdm.CD_Emissor_CTEREM_CIDADE.AsString;
              try
              Rem.EnderReme.CEP     := StrToInt(StringReplace(cdm.CD_Emissor_CTEREM_CEP.AsString,'-','',[rfReplaceAll]));
              Rem.EnderReme.UF      := cdm.CD_Emissor_CTEREM_UF.AsString;
              except

              end;
              Rem.EnderReme.cPais   := 1058;
              Rem.EnderReme.xPais   := 'BRASIL';
            except



            end;




                //Dados do Expedidor
            try
               cnpj :=StringReplace(cdm.CD_Emissor_CTEEXP_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);

              EXPED.CNPJCPF := cnpj;
              EXPED.IE      := cdm.CD_Emissor_CTEEXP_IE.asstring;
              EXPED.xNome   := cdm.CD_Emissor_CTEEXP_NOME.AsString;
             // EXPED.Fant   := cdm.CD_Emissor_CTEEXP_NOME_FANTASIA.AsString;
              EXPED.fone    :='';
              EXPED.enderExped.xLgr    := cdm.CD_Emissor_CTEEXP_ENDERECO.AsString;
              EXPED.enderExped.nro     := cdm.CD_Emissor_CTEEXP_ENUM.AsString;
              EXPED.enderExped.xCpl    := cdm.CD_Emissor_CTEEXP_COMPLEMENTO.AsString;
              EXPED.enderExped.xBairro := cdm.CD_Emissor_CTEEXP_BAIRRO.AsString;
              EXPED.enderExped.cMun    := cdm.CD_Emissor_CTEEXP_COD_IBGE.Asinteger;
              EXPED.enderExped.xMun    := cdm.CD_Emissor_CTEEXP_CIDADE.AsString;

              try
              EXPED.enderExped.CEP     := StrToInt(StringReplace(cdm.CD_Emissor_CTEexp_CEP.AsString,'-','',[rfReplaceAll]));;
              except

              end;
              EXPED.enderExped.UF      := cdm.CD_Emissor_CTEEXP_UF.AsString;
              EXPED.enderExped.cPais   := 1058;
              EXPED.enderExped.xPais   := 'BRASIL';
            except



            end;




                //Dados do Erecebedor
            try
               cnpj :=StringReplace(cdm.CD_Emissor_CTEREC_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);

              receb.CNPJCPF := cnpj;
              receb.IE      := cdm.CD_Emissor_CTEREC_IE.asstring;
              receb.xNome   := cdm.CD_Emissor_CTEREC_NOME.AsString;
             // receb.Fant   := cdm.CD_Emissor_CTEEXP_NOME_FANTASIA.AsString;
              receb.fone    :='';
              receb.enderReceb.xLgr    := cdm.CD_Emissor_CTEREC_ENDERECO.AsString;
              receb.enderReceb.nro     := cdm.CD_Emissor_CTEREC_ENUM.AsString;
              receb.enderReceb.xCpl    := cdm.CD_Emissor_CTEREC_COMPLEMENTO.AsString;
              receb.enderReceb.xBairro := cdm.CD_Emissor_CTEREC_BAIRRO.AsString;
              receb.enderReceb.cMun    := cdm.CD_Emissor_CTEREC_COD_IBGE.Asinteger;
              receb.enderReceb.xMun    := cdm.CD_Emissor_CTEREC_CIDADE.AsString;
              try
              receb.enderReceb.CEP     := StrToInt(StringReplace(cdm.CD_Emissor_CTEREC_CEP.AsString,'-','',[rfReplaceAll]));
              except

              end;
              receb.enderReceb.UF      := cdm.CD_Emissor_CTEREC_UF.AsString;
              receb.enderReceb.cPais   := 1058;
              receb.enderReceb.xPais   := 'BRASIL';
            except



            end;



                 {Dados do Destinatário}
            try
               cnpj :=StringReplace(cdm.CD_Emissor_CTEDEST_CPF_CNPJ.asstring,'.','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
               cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);

              dest.CNPJCPF := cnpj;
              dest.IE      := cdm.CD_Emissor_CTEdest_IE.asstring;
              dest.xNome   := cdm.CD_Emissor_CTEdest_NOME.AsString;
             // dest.Fant   := cdm.CD_Emissor_CTEEXP_NOME_FANTASIA.AsString;
              dest.fone    :='';
              dest.enderdest.xLgr    := cdm.CD_Emissor_CTEdest_ENDERECO.AsString;
              dest.enderdest.nro     := cdm.CD_Emissor_CTEdest_NUMERO.AsString;
              dest.enderdest.xCpl    := cdm.CD_Emissor_CTEdest_COMPLEMENTO.AsString;
              dest.enderdest.xBairro := cdm.CD_Emissor_CTEdest_BAIRRO.AsString;
              dest.enderdest.cMun    := cdm.CD_Emissor_CTEdest_COD_IBGE.Asinteger;
              dest.enderdest.xMun    := cdm.CD_Emissor_CTEdest_CIDADE.AsString;
              try
              dest.enderdest.CEP     := StrToInt(StringReplace(cdm.CD_Emissor_CTEdest_CEP.AsString,'-','',[rfReplaceAll]));
              except

              end;
              dest.enderdest.UF      := cdm.CD_Emissor_CTEdest_UF.AsString;

              dest.enderdest.cPais   := 1058;
              dest.enderdest.xPais   := 'BRASIL';
            except



            end;



             {Carrega valores da prestacao de servico}

              vPrest.vTPrest         :=cdm.CD_Emissor_CTEFRETE.Value+cdm.CD_Emissor_CTEDESPACHO.AsCurrency+cdm.CD_Emissor_CTEPEDAGIO.AsCurrency+cdm.CD_Emissor_CTEVALORICMS.AsCurrency;

              vPrest.vRec            :=cdm.CD_Emissor_CTEFRETE.Value+cdm.CD_Emissor_CTEDESPACHO.AsCurrency+cdm.CD_Emissor_CTEPEDAGIO.AsCurrency;


        {Carrega componentes do valor da prestacao}
      if CDM.CD_Emissor_CTEFRETE.AsFloat<>0 then
        BEGIN
        with vPrest.comp.Add do
            begin
              xNome := 'FRETE';
              vComp := CDM.CD_Emissor_CTEFRETE.AsFloat;
            end;
        END;
        if CDM.CD_Emissor_CTEDESPACHO.AsFloat<>0 then
            BEGIN
            with vPrest.comp.Add do
                begin
                  xNome := 'DESPACHO';
                  vComp := CDM.CD_Emissor_CTEDESPACHO.AsFloat;
                end;
            END;

            if CDM.CD_Emissor_CTEPEDAGIO.AsFloat<>0 then
                 BEGIN
                with vPrest.comp.Add do
                    begin
                      xNome := 'PEDAGIO';
                      vComp := CDM.CD_Emissor_CTEPEDAGIO.AsFloat;
                    end;
                END;

        {Carrega Impostos}
        //00 - Tributação Normal ICMS
        {Imp.ICMS.SituTrib    := cst00;
        Imp.ICMS.ICMS00.CST  := cst00;
        Imp.ICMS.ICMS00.vBC  := Impostos.Vbc;
        Imp.ICMS.ICMS00.pICMS:= Impostos.Picms;
        Imp.ICMS.ICMS00.vICMS:= Impostos.Vicms;

        //40 - ICMS Isento
        Imp.ICMS.SituTrib  := cst40;
        Imp.ICMS.ICMS45.CST:= cst40;

        //41 - ICMS não Tributada
        Imp.ICMS.SituTrib  := cst41;
        Imp.ICMS.ICMS45.CST:= cst41;

        //51 - ICMS diferido
        Imp.ICMS.SituTrib  := cst51;
        Imp.ICMS.ICMS45.CST:= cst51; }

        //90 - ICMS Outros


         if length(cdm.CD_Emissor_CTEST.asstring) = 0 then
            begin
               Imp.ICMS.SituTrib  := cst41;
               Imp.ICMS.ICMS45.CST:= cst41;
            end
            else

    //   if Emit.enderEmit.UF = Rem.enderReme.UF then
        if cdm.CD_Emissor_CTEST.asstring = '0' then

              begin
                Imp.ICMS.SituTrib     := cst00;
                Imp.ICMS.ICMS00.CST   := cst00;

               if   cdm.CD_N_Operacao.Locate('CODIGO_FISCAL',cdm.CD_Emissor_CTECFOP.AsString,[loCaseInsensitive]) then

                          if cdm.CD_N_OperacaoCALC_ICMS.AsInteger=1 then
                             begin
                                Imp.ICMS.ICMS00.vBC  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat;
                                Imp.ICMS.ICMS00.pICMS:= cdm.CD_Emissor_CTEPERC_ICMS.Value;
                                Imp.ICMS.ICMS00.vICMS:= cdm.CD_Emissor_CTEVALORICMS.Value;
                             end;
              end
              else
           if cdm.CD_Emissor_CTEST.asstring = '20' then

                    begin
                      Imp.ICMS.SituTrib     := cst20;
                      Imp.ICMS.ICMS20.CST   := cst20;
                      Imp.ICMS.ICMS20.pRedBC   := cdm.CD_Emissor_CTEREDBC.AsCurrency;
                      Imp.ICMS.ICMS20.vBC   :=CDM.CD_Emissor_CTEBASECALCULO.AsCurrency;
                      Imp.ICMS.ICMS20.pICMS :=cdm.CD_Emissor_CTEPERC_ICMS.AsFloat;
                      Imp.ICMS.ICMS20.vICMS := cdm.CD_Emissor_CTEVALORICMS.AsFloat;

                    end
              else
             if cdm.CD_Emissor_CTEST.asstring = '40' then

                    begin
                      Imp.ICMS.SituTrib     := cst40;
                      Imp.ICMS.ICMS45.CST   := cst40;
                    end
              else
              if cdm.CD_Emissor_CTEST.asstring = '41' then
                    begin
                      Imp.ICMS.SituTrib     := cst41;
                      Imp.ICMS.ICMS45.CST   := cst41;
                    end
               else
              if cdm.CD_Emissor_CTEST.asstring = '51' then
                    begin
                      Imp.ICMS.SituTrib     := cst51;
                      Imp.ICMS.ICMS45.CST   := cst51;
                    end
                else
                if cdm.CD_Emissor_CTEST.asstring = '90' then
                    begin
                       reducao :=cdm.CD_Emissor_CTEREDBC.AsFloat*(CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat/(100));


                        if Emit.enderEmit.UF = Rem.enderReme.UF then
                            begin
                              Imp.ICMS.SituTrib     := cst90;
                              Imp.ICMS.ICMS90.CST   := cst90;
                              Imp.ICMS.ICMS90.pRedBC :=cdm.CD_Emissor_CTEREDBC.AsFloat;
                              Imp.ICMS.ICMS90.vBC  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat-reducao;
                              Imp.ICMS.ICMS90.vCred:=reducao;

                            end
                            else
                            begin
                              Imp.ICMS.SituTrib     := cstICMSOutraUF;
                              Imp.ICMS.ICMSOutraUF.CST   := cstICMSOutraUF;
                              Imp.ICMS.ICMSOutraUF.pRedBCOutraUF :=cdm.CD_Emissor_CTEREDBC.AsFloat;
                              Imp.ICMS.ICMSOutraUF.vBCOutraUF  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat-reducao;
                              Imp.ICMS.ICMSOutraUF.pICMSOutraUF:= cdm.CD_Emissor_CTEPERC_ICMS.Value;
                              Imp.ICMS.ICMSOutraUF.vICMSOutraUF:= cdm.CD_Emissor_CTEVALORICMS.Value;

                            end;


                    end
                    else
                    if cdm.CD_Emissor_CTEST.asstring = '60' then

                        begin
                          Imp.ICMS.SituTrib     := cst60;
                          Imp.ICMS.ICMS60.CST   := cst60;
                          Imp.ICMS.ICMS60.vBCSTRet :=0;
                          imp.ICMS.ICMS60.vICMSSTRet:=0;
                          imp.ICMS.ICMS60.pICMSSTRet:=0;
                          imp.ICMS.ICMS60.vCred:=0;
                        end;




                           {  with infCTe.idDocAnt.Add.idDocAntEle.add do
                                       chCTe:=CDM.CD_Emissor_CTECTE_REFERENCIA.AsString;

        //SN - Simples Nacional
        {Imp.ICMS.SituTrib     := cstICMSSN;
        Imp.ICMS.ICMSSN.indSN := 1;}

        Imp.infAdFisco :=cdm.CD_Emissor_CTEFISCOTEXT.AsString;
        imp.vTotTrib   := cdm.CD_Emissor_CTEPERC_ICMS.Value;

        {Carrega as informacoes CTe Normal}

          {Carrega as informacoes CTe Normal}
    with infCTeNorm do
                begin
                        query_filtro:=TSQLQuery.Create(self);
                        PROV_Clientes:=TDataSetProvider.Create(self);
                        CDS_Clientes:=TClientDataSet.Create(self);
                        query_filtro.SQLConnection:=CDM.Conexao;

                        PROV_Clientes.DataSet:=query_filtro;
                        CDS_Clientes.SetProvider(PROV_Clientes);

                        query_filtro.Close;
                        query_filtro.SQL.TEXT:='select cte_uni.un,sum(CTE_UNI.qnt)as qnt from cte_uni where id_cte ='+cdm.CD_Emissor_CTEID.AsString+' group by  cte_uni.un ';
                        query_filtro.open;



                       QUERY_FILTRO.first;
                      while not QUERY_FILTRO.eof do
                        begin
                            // UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS);      UNIDADE
                         with infCTeNorm.infCarga.InfQ.Add do
                             begin
                             if QUERY_FILTRO.FieldByName('UN').AsString = 'UNIDADE' then
                                 BEGIN
                                    cUnid  := uUNIDADE;
                                    tpMed  := 'UNIDADE';
                                 END
                                 ELSE
                                  if QUERY_FILTRO.FieldByName('UN').AsString = 'M3' then
                                     BEGIN
                                        cUnid  := uM3;
                                        tpMed  := 'm3';
                                     END
                                     ELSE
                                       if QUERY_FILTRO.FieldByName('UN').AsString = 'KG' then
                                           BEGIN
                                              cUnid  := uKG;
                                              tpMed  := 'Kg';
                                           END
                                           ELSE
                                       if QUERY_FILTRO.FieldByName('UN').AsString = 'TON' then
                                           BEGIN
                                              cUnid  := uTON;
                                              tpMed  := 'TONELADA';
                                           END
                                           ELSE
                                            if QUERY_FILTRO.FieldByName('UN').AsString = 'LITROS' then
                                               BEGIN
                                                  cUnid  := uLITROS;
                                                  tpMed  := 'LITROS';
                                               END
                                               else
                                                BEGIN
                                                    cUnid  := uUNIDADE;
                                                    tpMed  := 'UNIDADE';
                                                 END;


                                    qCarga := (QUERY_FILTRO.FieldByName('QNT').AsFloat);
                             end;
                             QUERY_FILTRO.NEXT;
                        end;



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




                               cdm.CD_CTE_condutorTable.first;
                             while not cdm.CD_CTE_condutorTable.eof do
                                  begin

                                    compl.xObs:=compl.xObs+'    Condutor: '+copy(cdm.CD_CTE_condutorTableNOME.AsString,1,30)+' CPF: '+cdm.CD_CTE_condutorTableCPF.AsString;
                                    cdm.CD_CTE_condutorTable.next;
                                  end;



            if (cdm.CD_Emissor_CTEDESCSERV.AsInteger = 3) or (cdm.CD_Emissor_CTEDESCSERV.AsInteger = 4) then
             begin
             infCteAnu.chCTe:=cdm.CD_Emissor_CTECTE_REFERENCIA.AsString;
             infCteSub.chCte:=cdm.CD_Emissor_CTECTE_REFERENCIA.AsString;
             infCteSub.refCteAnu:=cdm.CD_Emissor_CTECTE_REFERENCIA.AsString;

             infCteAnu.dEmi:=now;
             end
             ELSE
             if (cdm.CD_Emissor_CTEDESCSERV.AsInteger = 2) THEN
                infCteComp.chave:= cdm.CD_Emissor_CTECTE_REFERENCIA.AsString;


                      {Informações dos Documentos}
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



                      {Carrega Informacoes do Modal}
                      {Rodoviario}
                          rodo.RNTRC := CDM.CD_Emissor_CTERNTC.AsString;
                          rodo.dPrev := cdm.CD_Emissor_CTEDATA_PREV.AsDateTime;
                          end;
                    end;




          {Ordens de Coleta associados}
          (*
          with rodo.occ.Add do
          begin
            serie := '001';
            nOcc  := 1;
            dEmi  := Date;

            emiOcc.CNPJ := '12345678000123';
            emiOcc.cInt := '501';
            emiOcc.IE   := '1234567';
            emiOcc.UF   := 'SP';
            emiOcc.fone := '22334455';
          end;
          *)

          {Carrega dados da CTe substituta 0-1}
          {with infCTeSub do
          begin
            chCte := '';
            //Se tomador
             não é Contribuinte
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
          end;

          with cobr do
          begin
            fat.nFat  := '123';
            fat.vOrig := 100;
            fat.vDesc := 0;
            fat.vLiq  := 100;

            with dup.Add do
            begin
              nDup  := '123';
              dVenc := Date + 30;
              vDup  := 100;
            end;
          end; }


        end;
        end;

        {CTe de Complemento de valor}
          //InfCTeComp.chave := '';

        {CTe de Anulacao de valores}
          //infCteAnu.chCTe := '';
          //infCteAnu.dEmi  := Date;

        {Seleciona o dados dos Autorizados a baixar o xml}
          //autXML.Add.CNPJCPF := '';



end;

procedure TFrm_CTE_Config.GerarCTeOS;
VAR
CNPJ : STRING;
REDUCAO : REAL;
begin
  //CTeOS
  with ACBrCTe1.Conhecimentos.Add.CTe do
  begin

      infCTe.versao := 3.0;

    Ide.cUF         := StrToInt(Copy(CDM.CD_CTE_CONFIGUF.AsSTRING,1,2));
    Ide.cCT         := cdm.CD_Emissor_CTECODIGO.asinteger;
    Ide.nCT         := cdm.CD_Emissor_CTENUMCTE.AsInteger;
    Ide.serie       := cdm.CD_CTE_CONFIGSERIE_OS.AsInteger;
    Ide.CFOP        := CDM.CD_Emissor_CTECFOP.AsInteger;
    Ide.natOp       := CDM.CD_Emissor_CTENATUREZA_OPERACAO.AsString;
    Ide.modelo      := 67;
    Ide.dhEmi       := CDM.CD_Emissor_CTEDATA_EMISSAO.AsDateTime+CDM.CD_Emissor_CTEHORA.AsDateTime;
     case cdm.CD_CTE_CONFIGMODODACTE.AsInteger of
          0: Ide.tpImp       := tiRetrato;
          1: Ide.tpImp       := tiPaisagem;
     end;

    case cdm.CD_Emissor_CTETIPOEMI.AsInteger  of
     1:  Ide.tpEmis := teNormal;
     2:  Ide.tpEmis := teContingencia;
     3:  Ide.tpEmis := teSVCRS;
     4:  Ide.tpEmis := teSVCSP;
     5:  Ide.tpEmis := teOffLine;
    end;
         //teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCAN, teSVCRS, teSVCSP, teOffLine;


     case cdm.CD_CTE_CONFIGMODODACTE.AsInteger of
          0: Ide.tpImp       := tiRetrato;
          1: Ide.tpImp       := tiPaisagem;
     end;

         case cdm.CD_CTE_CONFIGMODODACTE.AsInteger of
                0: Ide.tpImp       := tiRetrato;
                1: Ide.tpImp       := tiPaisagem;
          end;





                {
        case rgFormaEmissao.ItemIndex of
          0: Ide.tpEmis := teNormal;
          1: Ide.tpEmis := teDPEC;
          2: Ide.tpEmis := teFSDA;
          3: Ide.tpEmis := teSVCRS;
          4: Ide.tpEmis := teSVCSP;
        end;   }

         if  cdm.CD_CTE_CONFIGAMBIENTE.AsInteger = 2 then
              Ide.tpAmb     := taProducao
              else
              Ide.tpAmb     := taHomologacao;


        Ide.tpCTe      :=tcNormal;
        Ide.procEmi    := peAplicativoContribuinte;
        Ide.verProc    := '3.0';
        Ide.cMunEnv     := StrToInt(dm.EmitenteCODIGO_IBGE.AsString);
        Ide.xMunEnv     := Trim(dm.EmitenteCIDADE.AsString);
        Ide.UFEnv       := Trim(dm.EmitenteUF.AsString);











    //Adiciona dados do tomador do serviço
    cnpj :=StringReplace(CDM.CD_Emissor_CTECPF_CNPJ.asstring,'.','',[rfReplaceAll]);
    cnpj :=StringReplace(cnpj,'-','',[rfReplaceAll]);
    cnpj :=StringReplace(cnpj,'/','',[rfReplaceAll]);
    Toma.CNPJCPF := Trim(cnpj);
    if (Length(CDM.CD_Emissor_CTEIE.AsString)=0) or (CDM.CD_Emissor_CTEIE.AsString='ISENTO')  then
       Toma.IE  :='123456789'
       ELSE
       BEGIN
       Toma.IE                 :=StringReplace(CDM.CD_Emissor_CTEIE.AsString,'.','',[rfReplaceAll]);
       Toma.IE                 :=StringReplace(toma.IE,'.','',[rfReplaceAll]);
       END;
            Toma.xNome   := CDM.CD_Emissor_CTENOME.AsString;
            Toma.xFant   := CDM.CD_Emissor_CTENOME_FANTASIA.AsString;
            Toma.fone    := '';
            Toma.enderToma.xLgr    := CDM.CD_Emissor_CTEENDERECO.AsString;
            Toma.enderToma.nro     := CDM.CD_Emissor_CTEN_ENDERECO.AsString;
            Toma.enderToma.xCpl    := CDM.CD_Emissor_CTECOMPLEMENTO.AsString;
            Toma.enderToma.xBairro := CDM.CD_Emissor_CTEBAIRRO.AsString;
            Toma.enderToma.cMun    := CDM.CD_Emissor_CTEtomcod_ibge.AsInteger;
            Toma.enderToma.xMun    := CDM.CD_Emissor_CTECIDADE.AsString;
            try
                    Toma.enderToma.CEP    := StrToInt(StringReplace(CDM.CD_Emissor_CTECEP.AsString,'-','',[rfReplaceAll]));
                  EXCEPT

                  end;

            Toma.enderToma.UF      := CDM.CD_Emissor_CTEUF.AsString;
            Toma.enderToma.cPais   := 1058;
            Toma.enderToma.xPais   := 'BRASIL';
            Toma.email             := '';



    {Carrega valores da prestacao de servico}
              vPrest.vTPrest         := CDM.CD_Emissor_CTETOTAL_PREST.AsFloat;
              vPrest.vRec            := CDM.CD_Emissor_CTEVALOR_RECEBER.AsFloat;

    {Carrega componentes do valor da prestacao}
        with vPrest.comp.Add do
        begin
          xNome := 'valores Adicionais';
          vComp := CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat;
        end;

    {Carrega Impostos}
    //00 - Tributação Normal ICMS
    {Imp.ICMS.SituTrib    := cst00;
    Imp.ICMS.ICMS00.CST  := cst00;
    Imp.ICMS.ICMS00.vBC  := Impostos.Vbc;
    Imp.ICMS.ICMS00.pICMS:= Impostos.Picms;
    Imp.ICMS.ICMS00.vICMS:= Impostos.Vicms;

    //40 - ICMS Isento
    Imp.ICMS.SituTrib  := cst40;
    Imp.ICMS.ICMS45.CST:= cst40;

    //41 - ICMS não Tributada
    Imp.ICMS.SituTrib  := cst41;
    Imp.ICMS.ICMS45.CST:= cst41;

    //51 - ICMS diferido
    Imp.ICMS.SituTrib  := cst51;
    Imp.ICMS.ICMS45.CST:= cst51; }

    //90 - ICMS Outros
           if length(cdm.CD_Emissor_CTEST.asstring) = 0 then
            begin
               Imp.ICMS.SituTrib  := cst41;
               Imp.ICMS.ICMS45.CST:= cst41;
            end
            else

    //   if Emit.enderEmit.UF = Rem.enderReme.UF then
        if cdm.CD_Emissor_CTEST.asstring = '00' then

              begin
                Imp.ICMS.SituTrib     := cst00;
                Imp.ICMS.ICMS00.CST   := cst00;
                Imp.ICMS.ICMS00.vBC  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat;
                Imp.ICMS.ICMS00.pICMS:= cdm.CD_Emissor_CTEPERC_ICMS.Value;
                Imp.ICMS.ICMS00.vICMS:= cdm.CD_Emissor_CTEVALORICMS.Value;
              end
              else
             if cdm.CD_Emissor_CTEST.asstring = '40' then

                    begin
                      Imp.ICMS.SituTrib     := cst40;
                      Imp.ICMS.ICMS45.CST   := cst40;
                    end
              else
              if cdm.CD_Emissor_CTEST.asstring = '41' then
                    begin
                      Imp.ICMS.SituTrib     := cst41;
                      Imp.ICMS.ICMS45.CST   := cst41;
                    end
               else
              if cdm.CD_Emissor_CTEST.asstring = '51' then
                    begin
                      Imp.ICMS.SituTrib     := cst51;
                      Imp.ICMS.ICMS45.CST   := cst51;
                    end
                else
                if cdm.CD_Emissor_CTEST.asstring = '90' then
                    begin
                       reducao :=cdm.CD_Emissor_CTEREDBC.AsFloat*(CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat/(100));


                        if Emit.enderEmit.UF = Rem.enderReme.UF then
                            begin
                              Imp.ICMS.SituTrib     := cst90;
                              Imp.ICMS.ICMS90.CST   := cst90;
                              Imp.ICMS.ICMS90.pRedBC :=cdm.CD_Emissor_CTEREDBC.AsFloat;
                              Imp.ICMS.ICMS90.vBC  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat-reducao;
                              Imp.ICMS.ICMS90.pICMS:= cdm.CD_Emissor_CTEPERC_ICMS.Value;
                              Imp.ICMS.ICMS90.vICMS:= cdm.CD_Emissor_CTEVALORICMS.Value;
                              Imp.ICMS.ICMS90.vCred:=reducao;

                            end
                            else
                            begin
                                Imp.ICMS.SituTrib     := cstICMSOutraUF;
                              Imp.ICMS.ICMSOutraUF.CST   := cstICMSOutraUF;
                              Imp.ICMS.ICMSOutraUF.pRedBCOutraUF :=cdm.CD_Emissor_CTEREDBC.AsFloat;
                              Imp.ICMS.ICMSOutraUF.vBCOutraUF  := cdm.CD_Emissor_CTEBASECALCULO.AsFloat-reducao;
                              Imp.ICMS.ICMSOutraUF.pICMSOutraUF:= cdm.CD_Emissor_CTEPERC_ICMS.Value;
                              Imp.ICMS.ICMSOutraUF.vICMSOutraUF:= cdm.CD_Emissor_CTEVALORICMS.Value;

                            end;


                    end;

    //SN - Simples Nacional
    {Imp.ICMS.SituTrib     := cstICMSSN;
    Imp.ICMS.ICMSSN.indSN := 1;}

        Imp.infAdFisco :=cdm.CD_Emissor_CTEFISCOTEXT.AsString;
        imp.vTotTrib   := cdm.CD_Emissor_CTEPERC_ICMS.Value;

    //Impostos federais
{    imp.infTribFed.vPIS    := 0;
    imp.infTribFed.vCOFINS := 0;
    imp.infTribFed.vIR     := 0;
    imp.infTribFed.vINSS   := 5.00;
    imp.infTribFed.vCSLL   := 0; }

    {Carrega as informacoes CTe Normal}
    infCTeNorm.infServico.xDescServ:=CDM.CD_Emissor_CTEPRODUTOS_PREDOMINANTE.AsString;
    infCTeNorm.infServico.qCarga    :=CDM.CD_Emissor_CTEPRODUTO_VALOR_DACARGA.Value;

    {Informações dos documentos referenciados}
    {with infCTeNorm.infDocRef.Add do
    begin
      nDoc     := '';
      serie    := '';
      subserie := '';
      dEmi     := Date;
      vDoc     := 0.00;
    end;}

    {Carrega informacoes do seguro}
    with infCTeNorm.Seg.Add do
    begin

      respSeg := rsEmitenteCTe;


              xSeg    := CDM.CD_Emissor_CTENOME.AsString;
              nApol   := '1234567890123456';
    end;

    {Carrega Informacoes do Modal}
    {Rodoviario}

          infCTeNorm.rodoOS.NroRegEstadual:=CDM.CD_Emissor_CTENROREGESTADUAL.AsString;

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

              end;

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
  end;

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
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal))
  then exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa))
  then exit;
 ACBrCTe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt('2019'),
                                StrToInt('57'), StrToInt('1'),
                                StrToInt(NumeroInicial), StrToInt(NumeroInicial));
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
 // ACBrCTe1.Configuracoes.WebServices.UFCodigo := StrToInt(cbUF.Value);

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
          if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CTe\Docs\Salvar') then
                 ForceDirectories(ExtractFilePath(Application.ExeName)+'CTe\Docs\Salvar');
                     if not DirectoryExists(ExtractFilePath(Application.ExeName)+'CTe\Docs\Eventos') then
                            ForceDirectories(ExtractFilePath(Application.ExeName)+'CTe\Docs\Eventos');
                                if not DirectoryExists(CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza') then
                                       ForceDirectories(CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza');




    ACBrCTe1.Configuracoes.Arquivos.PathCTe := CDM.CD_CTE_CONFIGPATCH.AsString+'XML';
    ACBrCTe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName)+'CTe\Docs\Salvar';
    ACBrCTe1.Configuracoes.Arquivos.PathEvento := ExtractFilePath(Application.ExeName)+'CTe\Docs\Eventos';
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

procedure TFrm_CTE_Config.Button4Click(Sender: TObject);
var
  Ok         : Boolean;
 StreamMemo : TMemoryStream;
  cUFAutor, CNPJ, ultNSU, ANSU: string;
begin

  ACBrCTe1.Configuracoes.Certificados.NumeroSerie := CDM.CD_CTE_CONFIGCERTIFICADO.asstring;

//  ACBrnfe1.configuracoes.Certificados.ArquivoPFX:='C:\transpNossa.pfx';


  ACBrcte1.SSL.DescarregarCertificado;


  ACBrcte1.Configuracoes.Arquivos.PathSalvar := CDM.CD_CTE_CONFIGPATCH.asstring;
  ACBrcte1.Configuracoes.WebServices.UF  := CDM.CD_CTE_CONFIGESTADO.asstring;

  if CDM.CD_CTE_CONFIGAMBIENTE.asinteger = 1 then
     ACBrcte1.Configuracoes.WebServices.Ambiente   := taHomologacao
     else
      if CDM.CD_CTE_CONFIGAMBIENTE.asinteger = 2 then
         ACBrcte1.Configuracoes.WebServices.Ambiente   := taProducao;


  ACBrcte1.Configuracoes.WebServices.Visualizar := true;
 // ACBrcte1.Configuracoes.Geral.VersaoDF:=ve400;




    ACBrcte1.Configuracoes.Arquivos.PathCTe := CDM.CD_CTE_CONFIGPATCH.AsString+'XML';
    ACBrcte1.Configuracoes.Arquivos.PathSalvar := CDM.CD_CTE_CONFIGPATCH.AsString+'Salvar';
    ACBrcte1.Configuracoes.Arquivos.PathEvento := CDM.CD_CTE_CONFIGPATCH.AsString+'Eventos';
    ACBrcte1.Configuracoes.Arquivos.PathInu :=   CDM.CD_CTE_CONFIGPATCH.AsString+'Inutiliza';
    ACBrcte1.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName)+'Schemas\CTe\';


     { ACBrnfe1.MAIL.Host := DM.EmitenteSMTP_ENDERECO.asstring;
      ACBrnfe1.MAIL.Port :=  DM.EmitenteSMTP_PORTA.asstring;
      ACBrnfe1.MAIL.Username :=  DM.EmitenteSMTP_USUARIO.asstring;
      ACBrnfe1.MAIL.Password :=  DM.EmitenteSMTP_SENHA.asstring;
      ACBrnfe1.MAIL.ReadingConfirmation := False;
      }

   // ACBrnfe1.DACTe.TamanhoPapel := tpA4;




  StreamMemo := TMemoryStream.Create;

  StreamMemo.Free;


   cUFAutor := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Código da UF do Autor', cUFAutor)) then
     exit;

  CNPJ := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'CNPJ/CPF do interessado no DF-e', CNPJ)) then
     exit;

  ultNSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Último NSU recebido pelo ator', ultNSU)) then
     exit;

  ANSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'NSU específico', ANSU)) then
     exit;

{   ACBrCTe.DistribuicaoDFe(StrToInt(cUFAutor),CNPJ,ultNSU,ANSU);

  MemoResp.Lines.Text := ACBrCTe1.WebServices.DistribuicaoDFe.RetWS;
  memoRespWS.Lines.Text := ACBrCTe1.WebServices.DistribuicaoDFe.RetornoWS;
 }
 //  MemoResp.Lines.Text:=(ACBrNFe1.WebServices.DistribuicaoDFe.RetWS, WBResposta);








end;

procedure TFrm_CTE_Config.sbtnCaminhoCertClick(Sender: TObject);
begin
   cdm.CD_CTE_CONFIG.Edit;
   DBEdit2.Text:=ACBRCTE1.SSL.SelecionarCertificado;

   senha:=ACBRCTE1.SSL.Senha;
   cdm.CD_CTE_CONFIG.post;
end;

end.



