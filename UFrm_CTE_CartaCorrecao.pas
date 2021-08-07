unit UFrm_CTE_CartaCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  RzDBGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RzPanel, Vcl.ExtCtrls, RzButton,
  pcnConversao, ACBrDFeReport, ACBrCTeDACTEClass, ACBrCTeDACTeRLClass, ACBrBase,
  ACBrDFe, ACBrCTe, frxClass,ACBrDFeSSL,
  pcteConversaoCTe, System.Math, Data.SqlExpr, blcksock,
  Datasnap.DBClient, Datasnap.Provider, ACBrMail, ACBrMDFe,ACBrNFe,
  ACBrCTeDACTEFR;

type
  TFrm_CTE_CartaCorrecao = class(TForm)
    RzPanel1: TRzPanel;
    RzSpacer1: TRzSpacer;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RzPanel3: TRzPanel;
    RzDBGrid1: TRzDBGrid;
    RzSpacer2: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_CartaCorrecao: TFrm_CTE_CartaCorrecao;

implementation

{$R *.dfm}

uses UCDM, UFrmPrincipal, UUFrm_Frm_CTE_GCartaCorrecao, UFrm_CTE_Config, UDM;

procedure TFrm_CTE_CartaCorrecao.RzBitBtn1Click(Sender: TObject);
begin
CDM.CD_GCarta_Correcao.open;
CDM.CD_GCarta_Correcao.Insert;
CDM.CD_GCarta_CorrecaoITEM.AsInteger:=CDM.CD_GCarta_Correcao.RecordCount+1;
Frm_CTE_GCartaCorrecao:=TFrm_CTE_GCartaCorrecao.Create(SELF);
Frm_CTE_GCartaCorrecao.ShowModal;
Frm_CTE_GCartaCorrecao.Free;

end;

procedure TFrm_CTE_CartaCorrecao.RzBitBtn2Click(Sender: TObject);
begin
if CDM.CD_GCarta_Correcao.RecordCount<>0 then
   BEGIN
     Frm_CTE_GCartaCorrecao:=TFrm_CTE_GCartaCorrecao.Create(SELF);
     CDM.CD_GCarta_Correcao.EDIT;
     Frm_CTE_GCartaCorrecao.ShowModal;
   END;

end;

procedure TFrm_CTE_CartaCorrecao.RzBitBtn3Click(Sender: TObject);
begin
if MessageDlg('deseja realmente excluir o registro selecionado??',mtConfirmation,[mbok],0)=mryes then
   begin
   CDM.CD_GCarta_Correcao.Delete;
   cdm.CD_GCarta_Correcao.ApplyUpdates(0);
   end;
end;

procedure TFrm_CTE_CartaCorrecao.RzBitBtn4Click(Sender: TObject);
begin
if CDM.CD_CartaCHAVE.AsString = '' then
   begin
   MessageDlg('A Chave Referenciada não pode ser nula!',mtWarning,[mbOK],0);
   DBEdit1.SetFocus;
   end
   else
    if cdm.CD_GCarta_Correcao.RecordCount=0 then
       begin
        MessageDlg('O campo a ser alterado não pode ser nulo!',mtWarning,[mbOK],0);
        RzBitBtn1Click(sender);

       end
       else
       begin
       CDM.CD_Carta.ApplyUpdates(0);
       cdm.CD_GCarta_Correcao.ApplyUpdates(0);

            Frm_CTE_Config:=tFrm_CTE_Config.Create(NIL);
            Frm_CTE_Config.lerconfiguracao;
            Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Clear;

             with Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Add do
              begin
               infevento.chCTe      := CDM.CD_CartaCHAVE.AsString;
               infEvento.CNPJ       := StringReplace(dm.EmitenteCNPJ.AsString,'.','',[rfReplaceAll]);
               infEvento.CNPJ       := StringReplace(infEvento.CNPJ,'/','',[rfReplaceAll]);
               infEvento.CNPJ       := StringReplace(infEvento.CNPJ,'-','',[rfReplaceAll]);
               infEvento.dhEvento   := now;
               infEvento.tpEvento   := teCCe;
               infEvento.nSeqEvento := CDM.CD_CartaSEQUENCIA.AsInteger;




               Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.detEvento.infCorrecao.Clear;

               cdm.CD_GCarta_Correcao.First;
               while not cdm.CD_GCarta_Correcao.eof do
               begin
                       with Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.detEvento.infCorrecao.Add do
                        begin
                         grupoAlterado   := cdm.CD_GCarta_CorrecaoGRUPOALTERADO.AsString;
                         campoAlterado   := cdm.CD_GCarta_CorrecaoCAMPO.AsString;
                         valorAlterado   := cdm.CD_GCarta_CorrecaoVALOR.AsString;
                         nroItemAlterado := cdm.CD_GCarta_CorrecaoITEM.AsInteger;

                        end;
                        cdm.CD_GCarta_Correcao.NEXT;
               end;

                   InfEvento.detEvento.descEvento:= 'CTE: '+CDM.CD_CartaCHAVE.AsString;











             Frm_CTE_Config.ACBrCTe1.EnviarEvento(1);
             Frm_CTE_Config.ACBrCTe1.ImprimirEvento;

                CDM.CD_Carta.Edit;
                CDM.CD_CartaCHAVE_CC.AsString:=Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Items[0].InfEvento.Id;
                CDM.CD_CartaEVENTO.AsDateTime:=NOW;
                CDM.CD_Carta.ApplyUpdates(0);


             close;


       end;

end;
end;

procedure TFrm_CTE_CartaCorrecao.RzBitBtn5Click(Sender: TObject);
begin
close;
end;

end.
