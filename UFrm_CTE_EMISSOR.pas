unit UFrm_CTE_EMISSOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.FMTBcd, Data.SqlExpr,
  Vcl.Menus, RzButton, RzCmboBx, RzDBCmbo, RzPanel, Vcl.Mask, Vcl.DBCtrls,
  RzLabel, RzDBLbl, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons,  RzEdit, RzDBEdit, RzDBGrid,
  System.ImageList, Vcl.ImgList, RzGrids, ACBrBase, ACBrDFe, ACBrCTe,
  System.Math, RzTabs,  RzBckgnd, Vcl.Imaging.jpeg, DosMove,
  RzBHints;

type
  TFrm_CTE_EMISSOR = class(TForm)
    ActionList1: TActionList;
    Act_L_Car_Novo: TAction;
    Act_L_Car_Apagar: TAction;
    Act_L_Car_Salvar: TAction;
    Act_L_Car_Cancelar: TAction;
    OpenDialog1: TOpenDialog;
    Panel15: TPanel;
    Button6: TButton;
    Button17: TButton;
    Query_Total: TSQLQuery;
    Query_TotalVALOR: TFloatField;
    SQLDataSet1: TSQLDataSet;
    CIDADE: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    CIDADECIDADE: TStringField;
    CIDADECODIGO_IBGE: TStringField;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    DosMove1: TDosMove;
    DBMemo2: TDBMemo;
    ImageList1: TImageList;
    RzPanel3: TRzPanel;
    Panel5: TPanel;
    RzLabel3: TRzLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RzGroupBox2: TRzGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label33: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    RzDBComboBox3: TRzDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit20: TDBEdit;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox14: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    RzDBComboBox4: TRzDBComboBox;
    RzDBComboBox5: TRzDBComboBox;
    RzDBComboBox6: TRzDBComboBox;
    RzDBComboBox14: TRzDBComboBox;
    DBEdit12: TDBEdit;
    RzDBComboBox7: TRzDBComboBox;
    RzGroupBox4: TRzGroupBox;
    RzPanel7: TRzPanel;
    RzPanel4: TRzPanel;
    RzGroupBox15: TRzGroupBox;
    RzDBLabel2: TRzDBLabel;
    Label23: TLabel;
    RzToolButton17: TRzToolButton;
    DBComboBox1: TDBComboBox;
    RzDBComboBox15: TRzDBComboBox;
    RzGroupBox16: TRzGroupBox;
    Label7: TLabel;
    RzDBLabel1: TRzDBLabel;
    DBComboBox2: TDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    RzGroupBox10: TRzGroupBox;
    DBGrid1: TDBGrid;
    RzComboBox1: TRzComboBox;
    Button16: TButton;
    Button21: TButton;
    Panel6: TPanel;
    RzGroupBox5: TRzGroupBox;
    RzToolButton1: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton12: TRzToolButton;
    DBEdit9: TDBEdit;
    RzDBComboBox11: TRzDBComboBox;
    RzGroupBox7: TRzGroupBox;
    RzToolButton2: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzToolButton13: TRzToolButton;
    DBEdit11: TDBEdit;
    RzGroupBox6: TRzGroupBox;
    RzToolButton4: TRzToolButton;
    RzToolButton9: TRzToolButton;
    RzToolButton16: TRzToolButton;
    DBEdit10: TDBEdit;
    RzGroupBox11: TRzGroupBox;
    RzToolButton3: TRzToolButton;
    RzToolButton11: TRzToolButton;
    RzToolButton15: TRzToolButton;
    DBEdit17: TDBEdit;
    RzGroupBox17: TRzGroupBox;
    RzToolButton5: TRzToolButton;
    RzToolButton10: TRzToolButton;
    RzToolButton14: TRzToolButton;
    DBEdit18: TDBEdit;
    TabSheet2: TTabSheet;
    RzGroupBox1: TRzGroupBox;
    RzPageControl1: TRzPageControl;
    TabSheet9: TRzTabSheet;
    Label30: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label31: TLabel;
    RzGroupBox19: TRzGroupBox;
    DBGrid2: TDBGrid;
    RzPanel15: TRzPanel;
    BitBtn3: TRzBitBtn;
    BitBtn4: TRzBitBtn;
    BitBtn5: TRzBitBtn;
    DBEdit19: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    TabSheet4: TRzTabSheet;
    RzPanel8: TRzPanel;
    RzMenuButton1: TRzMenuButton;
    Button12: TButton;
    Button1: TButton;
    RzDBGrid2: TRzDBGrid;
    TabSheet5: TRzTabSheet;
    RzPanel9: TRzPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    RzDBGrid1: TRzDBGrid;
    TabSheet6: TRzTabSheet;
    RzPanel11: TRzPanel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    RzDBGrid5: TRzDBGrid;
    TabSheet3: TTabSheet;
    Panel14: TPanel;
    Label19: TLabel;
    Label21: TLabel;
    Label32: TLabel;
    RzDBEdit9: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBEdit3: TRzDBEdit;
    RzGroupBox12: TRzGroupBox;
    RzDBGrid3: TRzDBGrid;
    RzPanel12: TRzPanel;
    Button10: TButton;
    Button11: TButton;
    Button13: TButton;
    RzGroupBox13: TRzGroupBox;
    RzDBGrid4: TRzDBGrid;
    RzPanel13: TRzPanel;
    Button14: TButton;
    Button15: TButton;
    Button18: TButton;
    RzGroupBox18: TRzGroupBox;
    RzDBGrid7: TRzDBGrid;
    RzPanel14: TRzPanel;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    TabSheet8: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    RzToolButton18: TRzToolButton;
    DBComboBox5: TRzDBComboBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    TabSheet7: TTabSheet;
    RzGroupBox8: TRzGroupBox;
    RzDBGrid6: TRzDBGrid;
    RzPanel1: TRzPanel;
    Button5: TButton;
    Button19: TButton;
    Button20: TButton;
    RzPanel6: TRzPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    RzDBEdit5: TRzDBEdit;
    RzDBEdit13: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Button22: TButton;
    TabSheet10: TTabSheet;
    RzGroupBox9: TRzGroupBox;
    DBMemo1: TDBMemo;
    RzPanel5: TRzPanel;
    DBEdit13: TDBEdit;
    Panel4: TPanel;
    RzDBComboBox1: TRzDBComboBox;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzDBComboBox11Select(Sender: TObject);
    procedure RzDBComboBox12Select(Sender: TObject);
    procedure RzDBComboBox13Select(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure DBComboBox5Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure RzGroupBox16Exit(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure conferencia(sender: TObject);
    procedure calcular(sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure RzDBComboBox11Exit(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure RzMenuButton1Click(Sender: TObject);
    procedure RzToolButton12Click(Sender: TObject);
    procedure RzToolButton13Click(Sender: TObject);
    procedure RzToolButton14Click(Sender: TObject);
    procedure RzToolButton15Click(Sender: TObject);
    procedure RzToolButton16Click(Sender: TObject);
    procedure RzToolButton18Click(Sender: TObject);
    procedure RzDBEdit5Change(Sender: TObject);
    procedure RzToolButton17Click(Sender: TObject);
    procedure consulta;
    procedure Timer1Timer(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_EMISSOR: TFrm_CTE_EMISSOR;
  s:integer;
implementation

{$R *.dfm}

uses UCDM, UDM, UFrmTomador, UFrmPrincipal, UFrm_CTE_Veiculo,
  UFrm_CTE_Config, pcnConversao, pcteConversaoCTe, UFrm_NF_CTE,
  UFrm_NotaFiscal_A, UFrm_CTE_OutroDoc, UFrm_CTE_Seguro, UFrm_CTE_Motorista,
  UFrm_CTE_VAdicional, UFrm_Unidade, UFrm_NFE, UFrm_CTENFE, UFrm_Regiao,
  UFrmCad_Regiao;

procedure TFrm_CTE_EMISSOR.BitBtn3Click(Sender: TObject);
begin
  Frm_Unidade:=TFrm_Unidade.Create(self);
   cdm.CD_CTE_UN.Insert;
   cdm.CD_CTE_UNUN.AsString:='UNIDADE';
   Frm_Unidade.ShowModal;

   Frm_Unidade:=nil;
end;

procedure TFrm_CTE_EMISSOR.BitBtn4Click(Sender: TObject);
begin
if cdm.CD_CTE_UN.RecordCount<>0 then
   begin
     Frm_Unidade:=TFrm_Unidade.Create(self);
     cdm.CD_CTE_UN.edit;
     Frm_Unidade.ShowModal;
      Frm_Unidade.free;

   end;

end;

procedure TFrm_CTE_EMISSOR.BitBtn5Click(Sender: TObject);
begin
if cdm.CD_CTE_UN.RecordCount<>0 then
   begin
       cdm.CD_CTE_UN.delete;
   end;
end;

procedure TFrm_CTE_EMISSOR.Button10Click(Sender: TObject);
begin
if  cdm.CD_veiculos.recordcount<>0 then
    begin
         if MessageDlg('deseja realmente excluir o registro selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then

          cdm.CD_veiculos.delete;

    end;
end;

procedure TFrm_CTE_EMISSOR.Button11Click(Sender: TObject);
begin
if cdm.CD_veiculos.RecordCount<4 then
   begin
       Frm_CTE_Veiculo := TFrm_CTE_Veiculo.Create(self);
       cdm.CD_veiculos.Insert;
       Frm_CTE_Veiculo.ShowModal;
   end;

end;

procedure TFrm_CTE_EMISSOR.Button12Click(Sender: TObject);
begin
     if CDM.CD_CTE_NFES.RecordCount<>0 THEN
        begin
          if MessageDlg('deseja realment excluir o registro selecionado??',mtConfirmation,[mbyes,mbno],0)=mryes then
             CDM.CD_CTE_NFES.delete;
        end;
end;

procedure TFrm_CTE_EMISSOR.Button13Click(Sender: TObject);
begin
if cdm.CD_veiculos.RecordCount<>0 then
   begin
         Frm_CTE_Veiculo := TFrm_CTE_Veiculo.Create(self);
         cdm.CD_veiculos.edit;
         Frm_CTE_Veiculo.ShowModal;
   end;
end;

procedure TFrm_CTE_EMISSOR.Button14Click(Sender: TObject);
begin
if cdm.CD_CTE_condutorTable.RecordCount<>0 then
   begin
      if MessageDlg('deseja realmente excluir o documento selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then
         cdm.CD_CTE_condutorTable.delete;
   end;

end;

procedure TFrm_CTE_EMISSOR.Button15Click(Sender: TObject);
begin
Frm_CTE_Motorista:=TFrm_CTE_Motorista.Create(self);
cdm.CD_CTE_condutorTable.Insert;
Frm_CTE_Motorista.ShowModal;
end;

procedure TFrm_CTE_EMISSOR.Button16Click(Sender: TObject);
begin
    cdm.CD_CTE_Percurso.Insert;
    cdm.CD_CTE_PercursoID_CTE.AsInteger:=cdm.CD_Emissor_CTEID.AsInteger;
    cdm.CD_CTE_PercursoUF.AsString:=RzComboBox1.Text;

     RzComboBox1.DeleteSelected;
     cdm.CD_CTE_Percurso.Post;
end;

procedure TFrm_CTE_EMISSOR.Button17Click(Sender: TObject);
begin
    if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
    begin



             if MessageDlg('Deseja Salvar as Alterações??',mtConfirmation,[mbYes,mbNo],0)= mryes then
               begin
                    cdm.CD_Emissor_CTE.edit;
                    Frm_CTE_Config:=TFrm_CTE_Config.Create(self);
                    // Frm_CTE_Config.cidini:=RzDBComboBox15.Text;
                    // Frm_CTE_Config.cidfim:=RzDBComboBox2.Text;
                      if cdm.CD_Emissor_CTECFOP.AsString = '' then
                         begin
                           MessageDlg('Sr Usuário a natureza de operação não pode ser Nula',mtWarning,[mbOk],0);
                           DBLookupComboBox2.SetFocus;
                         end
                         else
                          if cdm.CD_Emissor_CTEINICODIBGE.AsString='' then
                              begin
                                 MessageDlg('Sr Usuário a cidade de inicio do Serviço não pode ser Nula',mtWarning,[mbOk],0);
                                 RzDBComboBox15.SetFocus;
                               end
                               else
                                   if cdm.CD_Emissor_CTEFIMCODIBGE.AsString='' then
                                      begin
                                         MessageDlg('Sr Usuário a cidade Final do Serviço não pode ser Nula',mtWarning,[mbOk],0);
                                         RzDBComboBox2.SetFocus;
                                       end
                                        else
                                        {if cdm.CD_veiculos.RecordCount=0 then
                                            begin
                                               MessageDlg('Sr Usuário tem que cadastrar pelo menos 1 veiculo',mtWarning,[mbOk],0);
                                               TabSheet3.Show;
                                               Button11Click(sender);
                                             end
                                              else
                                         }

                                      {   if  cdm.CD_Emissor_CTEID_TOMADOR.asinteger = 4 then
                                            begin
                                            IF CDM.CD_Emissor_CTENOME.AsString = ''  THEN
                                               MessageDlg('Sr Usuário o Tomador não pode estar nulo na opção outros',mtWarning,[mbOk],0);
                                            end
                                            else
                                          if  cdm.CD_Emissor_CTEID_TOMADOR.asinteger = 1 then
                                            begin
                                            IF CDM.CD_Emissor_CTEREM_NOME.AsString = ''  THEN
                                               MessageDlg('Sr Usuário o remetente não pode estar nulo na opção Com Remetente',mtWarning,[mbOk],0);
                                            end
                                            else
                                           if  cdm.CD_Emissor_CTEID_TOMADOR.asinteger = 2 then
                                            begin
                                            IF CDM.CD_Emissor_CTEDEST_NOME.AsString = ''  THEN
                                               MessageDlg('Sr Usuário o destinatário não pode estar nulo na opção Com destinnatário',mtWarning,[mbOk],0);
                                            end
                                           else   }
                                             begin

                                               if CDM.CD_Emissor_CTEREM_NOME.AsString='' then
                                                  cdm.CD_Emissor_CTEREMETENTE.AsInteger :=1;

                                               if CDM.CD_Emissor_CTEDEST_NOME.AsString='' then
                                                  cdm.CD_Emissor_CTEDESTINATARIO.AsInteger :=1;

                                                   //     CD_Emissor_CTENUMCTE.value:=cdm.CD_CTE_CONFIGNUMERO.AsInteger+1;
                                                      cdm.CD_Emissor_CTENATUREZA_OPERACAO.AsString:=DBLookupComboBox2.Text;
                                                      cdm.CD_Emissor_CTE.ApplyUpdates(0);
                                                      cdm.CD_CTENFE.ApplyUpdates(0);
                                                      cdm.CD_CTE_NFES.ApplyUpdates(0);
                                                      cdm.CD_CTE_condutorTable.ApplyUpdates(0);
                                                      cdm.CD_veiculos.ApplyUpdates(0);
                                                      cdm.CD_CTE_condutorTable.ApplyUpdates(0);
                                                      cdm.CD_CTE_UN.ApplyUpdates(0);
                                                      cdm.CD_CTE_ValorAdicional.ApplyUpdates(0);
                                                      CDM.CD_CTE_UN.ApplyUpdates(0);
                                                      if CDM.CD_CTE_UNNFA.Active = true then
                                                      CDM.CD_CTE_UNNFA.ApplyUpdates(0);
                                                      close;
                                             end;
                                             Frm_CTE_Config.Destroy;


               end

                else
                begin
                  cdm.CD_Emissor_CTE.cancel;
                  close;
                end;



    end
    ELSE
    CLOSE;


end;

procedure TFrm_CTE_EMISSOR.Button19Click(Sender: TObject);
begin
      Frm_CTE_VAdicional:=TFrm_CTE_VAdicional.Create(self);
      cdm.CD_CTE_ValorAdicional.Insert;
      Frm_CTE_VAdicional.ShowModal;
      cdm.CD_CTE_ValorAdicional.First;
      cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency:=0;
        cdm.CD_CTE_ValorAdicional.first;
      while not cdm.CD_CTE_ValorAdicional.Eof do
        begin
        cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency:=cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency+cdm.CD_CTE_ValorAdicionalVALOR.AsCurrency;
        cdm.CD_CTE_ValorAdicional.Next;
        end;
      Frm_CTE_VAdicional.free;

end;

procedure TFrm_CTE_EMISSOR.Button1Click(Sender: TObject);
begin
if CDM.CD_CTE_NFES.RecordCount<>0 THEN
   begin
     Frm_NF_CTE:=TFrm_NF_CTE.Create(SELF);
     CDM.CD_CTE_NFES.Edit;
     Frm_NF_CTE.ShowModal;

   end;
end;

procedure TFrm_CTE_EMISSOR.Button20Click(Sender: TObject);
begin
if  cdm.CD_CTE_ValorAdicional.recordcount<>0 then
    begin
      Frm_CTE_VAdicional:=TFrm_CTE_VAdicional.Create(self);
      cdm.CD_CTE_ValorAdicional.edit;
      Frm_CTE_VAdicional.ShowModal;
      Frm_CTE_VAdicional.free;

    end;
end;

procedure TFrm_CTE_EMISSOR.Button21Click(Sender: TObject);
begin
      if cdm.CD_CTE_Percurso.RecordCount<>0 then
         begin
         RzComboBox1.Items.Add(cdm.CD_CTE_PercursoUF.AsString);
         cdm.CD_CTE_percurso.Delete;
         end;

end;

procedure TFrm_CTE_EMISSOR.Button22Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then

calcular(sender);
end;

procedure TFrm_CTE_EMISSOR.Button23Click(Sender: TObject);
begin
if  cdm.CD_cte_occ.recordcount<>0 then
    begin
         if MessageDlg('deseja realmente excluir o registro selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then

          cdm.CD_cte_occ.delete;

    end;
end;

procedure TFrm_CTE_EMISSOR.Button24Click(Sender: TObject);
begin
if cdm.CD_CTE_OCC.RecordCount<4 then
   begin
       Frm_CTE_Veiculo := TFrm_CTE_Veiculo.Create(self);
       cdm.CD_CTE_OCC.Insert;
       Frm_CTE_Veiculo.ShowModal;
   end;
end;

procedure TFrm_CTE_EMISSOR.Button25Click(Sender: TObject);
begin
if cdm.CD_CTE_OCC.RecordCount<>0 then
   begin
         Frm_CTE_Veiculo := TFrm_CTE_Veiculo.Create(self);
         cdm.CD_CTE_OCC.edit;
         Frm_CTE_Veiculo.ShowModal;
   end;
end;

procedure TFrm_CTE_EMISSOR.Button2Click(Sender: TObject);
begin
if  cdm.CD_CTENFE.recordcount<>0 then
    begin
         if MessageDlg('deseja realmente excluir o documento selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then

          cdm.CD_CTENFE.delete;


    end;
end;

procedure TFrm_CTE_EMISSOR.Button3Click(Sender: TObject);
begin
    Frm_NotaFiscal_A := TFrm_NotaFiscal_A.Create(self);
    cdm.CD_CTENFE.Insert;
    Frm_NotaFiscal_A.ShowModal;
end;

procedure TFrm_CTE_EMISSOR.Button4Click(Sender: TObject);
begin
if  cdm.CD_CTENFE.recordcount<>0 then
    begin
          Frm_NotaFiscal_A := TFrm_NotaFiscal_A.Create(self);
          cdm.CD_CTENFE.edit;
          Frm_NotaFiscal_A.ShowModal;
    end;
end;

procedure TFrm_CTE_EMISSOR.Button5Click(Sender: TObject);
begin
if cdm.CD_CTE_ValorAdicional.RecordCount<>0 then
   begin
    if MessageDlg('Deseja Realmente Excluir o Registro selecionado??',mtConfirmation,[mbYes,mbNo],0)=mryes then
       begin
       cdm.CD_CTE_ValorAdicional.delete;
        cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency:=0;
        cdm.CD_CTE_ValorAdicional.first;
      while not cdm.CD_CTE_ValorAdicional.Eof do
        begin
        cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency:=cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency+cdm.CD_CTE_ValorAdicionalVALOR.AsCurrency;
        cdm.CD_CTE_ValorAdicional.Next;
        end;

       end;

   end;

end;

procedure TFrm_CTE_EMISSOR.Button6Click(Sender: TObject);
begin
      if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
         begin
         cdm.CD_Emissor_CTE.Edit;
         cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime:=now;
         cdm.CD_Emissor_CTEHORA.AsDateTime:=now;
         cdm.CD_Emissor_CTE.post;
         cdm.CD_Emissor_CTE.ApplyUpdates(0);
         Frm_CTE_Config:=tFrm_CTE_Config.Create(self);
       //  Frm_CTE_Config.cidini:=RzDBComboBox15.Text;
      //   Frm_CTE_Config.cidfim:=RzDBComboBox2.Text;
       if cdm.CD_Emissor_CTEmodelo.AsInteger = 57 then
          conferencia(sender);


               if cdm.CD_Emissor_CTECFOP.AsString = '' then
                         begin
                           MessageDlg('Sr Usuário a natureza de operação não pode ser Nula',mtWarning,[mbOk],0);
                           DBLookupComboBox2.SetFocus;
                         end
                         else
                          if cdm.CD_Emissor_CTEINICODIBGE.AsString='' then
                              begin
                                 MessageDlg('Sr Usuário a cidade de inicio do Serviço não pode ser Nula',mtWarning,[mbOk],0);
                                 TabSheet1.Show;
                                 RzDBComboBox15.SetFocus;
                               end
                               else
                                   if cdm.CD_Emissor_CTEFIMCODIBGE.AsString='' then
                                      begin
                                         MessageDlg('Sr Usuário a cidade Final do Serviço não pode ser Nula',mtWarning,[mbOk],0);
                                         RzDBComboBox2.SetFocus;
                                       end
                                        else
                                        if Length(DBEdit2.Text)=0 then
                                            begin
                                               MessageDlg('O Produto Predominante não pode ser Nulo',mtWarning,[mbOk],0);
                                               TabSheet2.Show;
                                               DBEdit2.SetFocus;
                                             end
                                              else


                                             begin
                                              cdm.CD_Emissor_CTE.edit;

                                               if CDM.CD_Emissor_CTEREM_NOME.AsString='' then
                                                  cdm.CD_Emissor_CTEREMETENTE.AsInteger :=1;

                                               if CDM.CD_Emissor_CTEDEST_NOME.AsString='' then
                                                  cdm.CD_Emissor_CTEDESTINATARIO.AsInteger :=1;

                                                   //     CD_Emissor_CTENUMCTE.value:=cdm.CD_CTE_CONFIGNUMERO.AsInteger+1;
                                                      cdm.CD_Emissor_CTENATUREZA_OPERACAO.AsString:=DBLookupComboBox2.Text;
                                                      cdm.CD_Emissor_CTE.ApplyUpdates(0);
                                                      cdm.CD_CTENFE.ApplyUpdates(0);
                                                      cdm.CD_CTEOutroDoc.ApplyUpdates(0);
                                                      cdm.CD_CTE_NFES.ApplyUpdates(0);
                                                      cdm.CD_CTE_condutorTable.ApplyUpdates(0);
                                                      cdm.CD_veiculos.ApplyUpdates(0);
                                                      cdm.CD_CTE_condutorTable.ApplyUpdates(0);
                                                      cdm.CD_CTE_UN.ApplyUpdates(0);
                                                      cdm.CD_CTE_ValorAdicional.ApplyUpdates(0);
                                                      if CDM.CD_CTE_UNNFA.Active = true then
                                                      CDM.CD_CTE_UNNFA.ApplyUpdates(0);





                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.TimeOut := 30000; // tempo de timeout, coloque um tempo maior para resolver problemas
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.AguardarConsultaRet      := 5000;  // tempo padrão que vai aguardar para consultar após enviar a NF-e
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.IntervaloTentativas      := 3000;  // Intervalo entre as tentativas de envio
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.Tentativas               := 30;    // quantidade de tentativas de envio
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
                                                            cdm.CD_Emissor_CTE.edit;
                                                         if Frm_Principal.CTe = 67 then

                                                            cdm.CD_Emissor_CTENUMCTE.AsInteger:=cdm.CD_CTE_CONFIGNUMERO_OS.AsInteger+1
                                                           else
                                                         if Frm_Principal.CTe = 57 then
                                                            cdm.CD_Emissor_CTENUMCTE.AsInteger:=cdm.CD_CTE_CONFIGNUMERO.AsInteger+1;
                                                            cdm.CD_Emissor_CTE.post;
                                                            cdm.CD_Emissor_CTE.ApplyUpdates(0);

                                                      Frm_CTE_Config.GerarCTe;

                                                      Frm_CTE_Config.ACBrCTe1.Conhecimentos.Assinar;

                                                     cdm.CD_Emissor_CTE.Edit;
                                                     cdm.CD_Emissor_CTECHAVE.Value:=Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID;

                                                      cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].CTe.procCTe.nProt;



                                                     cdm.CD_Emissor_CTE.ApplyUpdates(0);
                                                    Frm_CTE_Config.ACBrCTe1.Enviar(1);





                                                      cdm.CD_Emissor_CTE.Edit;

                                                      cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                                                      cdm.CD_Emissor_CTE.Post;
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

                                                TThread.Synchronize(nil,consulta);


                           dm.id.close;
                           dm.id.SQL.Clear;
                           dm.id.SQL.Add('select gen_id(GEN_MDF_LOG_ID,1) from rdb$database');
                           dm.id.ExecSQL();
                           dm.id.Open;

                      Frm_Principal.log.Params[0].AsInteger:=dm.IDGEN_ID.AsInteger;
                      Frm_Principal.log.Params[1].AsInteger:=ID;
                      Frm_Principal.log.Params[2].ASSTRING:=Frm_Principal.StatusBar1.Panels[1].Text;
                      Frm_Principal.log.Params[3].AsSTRING:='EMISSÃO DE CTE Nº'+CDM.CD_Emissor_CTENUMCTE.AsString;
                      Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                      Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                      Frm_Principal.log.Params[6].Asstring:='Enviado CTE Nº'+cdm.CD_Emissor_CTENUMCTE.Text+#13+
                                                            Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.xMotivo+#13+
                                                            Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.Msg;
                      Frm_Principal.log.ExecSQL();









              end;





                                                          close;



         end;










                //try


end;

procedure TFrm_CTE_EMISSOR.Button7Click(Sender: TObject);
begin
if  cdm.CD_CTEOutroDoc.recordcount<>0 then
    begin
         if MessageDlg('deseja realmente excluir o documento selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then

          cdm.CD_CTEOutroDoc.delete;

    end;
end;

procedure TFrm_CTE_EMISSOR.Button8Click(Sender: TObject);
begin
Frm_CTE_OutroDoc:=TFrm_CTE_OutroDoc.Create(self);
cdm.CD_CTEOutroDoc.Insert;
Frm_CTE_OutroDoc.ShowModal;
Frm_CTE_OutroDoc:=NIL;
end;

procedure TFrm_CTE_EMISSOR.Button9Click(Sender: TObject);
begin
if  cdm.CD_CTEOutroDoc.recordcount<>0 then
    begin
          Frm_CTE_OutroDoc := TFrm_CTE_OutroDoc.Create(self);
          cdm.CD_CTEOutroDoc.edit;
          Frm_CTE_OutroDoc.ShowModal;
          Frm_CTE_OutroDoc:=NIL;
    end;
end;

procedure TFrm_CTE_EMISSOR.calcular(sender: TObject);
begin

if cdm.CD_Emissor_CTEPERC_ICMS.Value<>0 then
   cdm.CD_Emissor_CTEVALORICMS.ascurrency:=cdm.CD_Emissor_CTEBASECALCULO.value*(cdm.CD_Emissor_CTEPERC_ICMS.Value/100);

if MessageDlg('deseja adicionar o ICMS no VALOR TOTAL DO SERVIÇO??', mtConfirmation,[mbYes,mbNo],0)=mrYes then

   cdm.CD_Emissor_CTETOTAL_PREST.AsCurrency:=cdm.CD_Emissor_CTEVALOR_RECEBER.Value+cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency+cdm.CD_Emissor_CTEVALORICMS.AsCurrency

   else
   cdm.CD_Emissor_CTETOTAL_PREST.AsCurrency:=cdm.CD_Emissor_CTEVALOR_RECEBER.AsCurrency;

end;

procedure TFrm_CTE_EMISSOR.conferencia(sender: TObject);
begin
          if Length(dm.EmitenteCODIGO_IBGE.AsString)=0 then
             MessageDlg('Emitente com código de IBGE em Branco',mtWarning,[mbOK],0)
             else


                if Length(CDM.CD_Emissor_CTEINICODIBGE.Asstring)=0 then
                       MessageDlg('código de IBGE inicio de serviço em Branco',mtWarning,[mbOK],0)
                       else

                      if Length(CDM.CD_Emissor_CTEFIMCODIBGE.Asstring)=0 then
                             MessageDlg('código de IBGE final de serviço em Branco',mtWarning,[mbOK],0)
                             else

                   

                      if Length(CDM.CD_Emissor_CTEdest_cod_ibge.asSTRING)=0 then
                             MessageDlg('destinatário sem código de ibge',mtWarning,[mbOK],0)
end;

procedure TFrm_CTE_EMISSOR.consulta;
begin
                Panel5.Visible:=true;
                //Timer1.Enabled:=true;

                 Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.CTeChave := CDM.CD_Emissor_CTECHAVE.AsString;
                 Frm_CTE_Config.ACBrCTe1.WebServices.Consulta.Executar;
               if (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 100) or (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 110) then
                     begin
                       cdm.CD_Emissor_CTE.Edit;
                       cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime:=Frm_CTE_Config.ACBrCTe1.conhecimentos.Items[0].cte.Ide.dhEmi;
                       cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrcte1.WebServices.Retorno.Protocolo;
                       cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                       cdm.CD_Emissor_CTE.Post;
                       cdm.CD_Emissor_CTE.ApplyUpdates(0);

                        cdm.CD_CTE_CONFIG.edit;
                        if cdm.CD_Emissor_CTEMODELO.AsInteger = 57 then
                           cdm.CD_CTE_CONFIGNUMERO.asstring:=cdm.CD_Emissor_CTENUMCTE.asstring
                        else
                        if cdm.CD_Emissor_CTEMODELO.AsInteger = 67 then
                           cdm.CD_CTE_CONFIGNUMERO_OS.asstring:=cdm.CD_Emissor_CTENUMCTE.asstring;

                           cdm.CD_CTE_CONFIG.ApplyUpdates(0);

                     end
               else

                begin
                 cdm.CD_Emissor_CTE.Edit;
                 cdm.CD_Emissor_CTESTATUS.asinteger:=0;
                 cdm.CD_Emissor_CTE.Post;
                end;

           //     timer1.Enabled:=false;
                panel5.Visible:=false;
end;

procedure TFrm_CTE_EMISSOR.DBComboBox1Exit(Sender: TObject);
begin
              rzDBComboBox15.Items.Clear;
              rzDBComboBox15.Values.Clear;
              CIDADE.Close;
              CIDADE.CommandText:='select CIDADE, CODIGO_IBGE  from REGIOES  WHERE  UF =:UF and CODIGO_IBGE is not null  GROUP BY CODIGO_IBGE, CIDADE';
              CIDADE.Params[0].AsString:=DBComboBox1.Text;
              CIDADE.Open;


                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                      rzDBComboBox15.Items.ADD(CIDADECIDADE.asstring);
                      rzDBComboBox15.values.ADD(CIDADECODIGO_IBGE.asstring);
                      CIDADE.Next;
                     END;

                   CIDADE.close;
end;

procedure TFrm_CTE_EMISSOR.DBComboBox2Exit(Sender: TObject);
begin
rzDBComboBox2.Items.Clear;
              rzDBComboBox2.Values.Clear;
              CIDADE.Close;
              CIDADE.CommandText:='SELECT CIDADE, CODIGO_IBGE  from REGIOES  WHERE  UF =:UF and CODIGO_IBGE is not null  GROUP BY CODIGO_IBGE, CIDADE';
              CIDADE.Params[0].AsString:=DBComboBox2.Text;
              CIDADE.Open;


                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                      rzDBComboBox2.Items.ADD(CIDADECIDADE.asstring);
                      rzDBComboBox2.values.ADD(CIDADECODIGO_IBGE.asstring);
                      CIDADE.Next;
                     END;

                   CIDADE.close;
end;

procedure TFrm_CTE_EMISSOR.DBComboBox5Exit(Sender: TObject);
begin
    cdm.Query_Partilha.Close;
    cdm.Query_Partilha.Params[0].AsString:=cdm.CD_Emissor_CTEFIMUF.AsString;
    cdm.Query_Partilha.Open;


    if cdm.CD_Emissor_CTEmodelo.AsInteger = 67 then
   if cdm.CD_Emissor_CTERESPONSAVEL.AsInteger > 1 then
      cdm.CD_Emissor_CTERESPONSAVEL.AsInteger:=0



end;

procedure TFrm_CTE_EMISSOR.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;


procedure TFrm_CTE_EMISSOR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
release;
end;

procedure TFrm_CTE_EMISSOR.FormShow(Sender: TObject);

begin
          cdm.CD_CTE_Percurso.Open;
          cdm.CD_CTE_UN.Close;
          cdm.CD_CTE_UN.CommandText:='Select * from CTE_UNI where id_cte ='+cdm.CD_Emissor_CTEID.Asstring;
          cdm.CD_CTE_UN.open;


           DBComboBox2Exit(sender);

if CDM.CD_Emissor_CTESTATUS.AsInteger = 0 then
   RzDBComboBox3.Font.Color:=clBlack
   ELSE
   if (CDM.CD_Emissor_CTESTATUS.AsInteger = 1) or (CDM.CD_Emissor_CTESTATUS.AsInteger = 9) then
      begin
          RzDBComboBox3.Font.Color:=clBlue;
          RzGroupBox3.Enabled:=false;
          RzGroupBox4.Enabled:=false;
          RzGroupBox10.Enabled:=false;
          RzPanel8.Enabled:=false;
          RzPanel9.Enabled:=false;
          RzPanel3.Enabled:=false;
          TabSheet3.Enabled:=false;
          TabSheet7.Enabled:=false;
          TabSheet9.Enabled:=false;
      end
      else
      if CDM.CD_Emissor_CTESTATUS.AsInteger = 2 then
         begin
          RzDBComboBox3.Font.Color:=clRed;
          TabSheet1.Enabled:=false;
          RzPanel8.Enabled:=false;
          RzPanel9.Enabled:=false;
          RzPanel3.Enabled:=false;

          TabSheet3.Enabled:=false;
          TabSheet7.Enabled:=false;
          TabSheet7.Enabled:=true;
         end;


end;

procedure TFrm_CTE_EMISSOR.MenuItem1Click(Sender: TObject);
begin      {
Frm_ct
Frm_CTENFE:=TFrm_CTENFE.Create(self);
cdm.CD_Emissor_CTE.Edit;
cdm.CD_Emissor_CTE.post;


Frm_CTENFE.ShowModal;
cdm.CD_Emissor_CTE.Edit;
Frm_CTENFE:=NIL;    }
end;

procedure TFrm_CTE_EMISSOR.RzDBComboBox11Exit(Sender: TObject);
begin                  {
       if RzDBComboBox11.Text='Emitente' then
                BEGIN

                  cdm.CD_Emissor_CTEpessoa.clear;
                  cdm.CD_Emissor_CTECPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEIE.clear;
                  cdm.CD_Emissor_CTENOME.clear;
                  cdm.CD_Emissor_CTENOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEENDERECO.clear;
                  cdm.CD_Emissor_CTEBAIRRO.clear;
                  cdm.CD_Emissor_CTECOMPLEMENTO.clear;
                  cdm.CD_Emissor_CTECEP.clear;
                  cdm.CD_Emissor_CTEUF.clear;
                  cdm.CD_Emissor_CTECIDADE.clear;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.clear;
                  cdm.CD_Emissor_CTEFONE_RES.Clear;
                END;  }
end;

procedure TFrm_CTE_EMISSOR.RzDBComboBox11Select(Sender: TObject);
begin                                  {
            if cdm.CD_Emissor_CTEID_TOMADOR.AsInteger = 2 then
               cdm.CD_Emissor_CTEREMETENTE.AsInteger:=1
               else
               cdm.CD_Emissor_CTEREMETENTE.AsInteger:=0;


         if cdm.CD_Emissor_CTEID_TOMADOR.AsInteger = 3 then

             cdm.CD_Emissor_CTEDESTINATARIO.AsInteger:=1
              else
               cdm.CD_Emissor_CTEDESTINATARIO.AsInteger:=0;


                                      }



end;

procedure TFrm_CTE_EMISSOR.RzDBComboBox12Select(Sender: TObject);
begin
if RzDBComboBox11.ItemIndex = 0 then
   cdm.CD_Emissor_CTEREMETENTE.AsInteger:=1;
end;

procedure TFrm_CTE_EMISSOR.RzDBComboBox13Select(Sender: TObject);
begin
  if RzDBComboBox11.ItemIndex = 2 then

             cdm.CD_Emissor_CTEDESTINATARIO.AsInteger:=0

end;

procedure TFrm_CTE_EMISSOR.RzDBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_CTE_EMISSOR.RzDBEdit5Change(Sender: TObject);
begin

      if CDM.CD_Emissor_CTESTATUS.AsInteger = 0 then
      if cdm.CD_Emissor_CTE.State in[dsinsert, dsEdit] then

        if cdm.CD_Emissor_CTETOTAL_PREST.Value <> null then




end;

procedure TFrm_CTE_EMISSOR.RzDBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_CTE_EMISSOR.RzGroupBox16Exit(Sender: TObject);
begin
    if cdm.CD_Emissor_CTE.State in [dsinsert,dsedit] then
       begin
       cdm.Query_Partilha.Close;
       cdm.Query_Partilha.Params[0].AsString:=cdm.CD_Emissor_CTEFIMUF.AsString;
       cdm.Query_Partilha.open;
   //    cdm.CD_Emissor_CTEPERC_ICMS.AsFloat:=cdm.Query_PartilhaICMS2.AsFloat;
       end;


end;

procedure TFrm_CTE_EMISSOR.RzMenuButton1Click(Sender: TObject);
begin
   Frm_NF_CTE:=TFrm_NF_CTE.Create(self);
   cdm.CD_CTE_NFES.Insert;
   Frm_NF_CTE.ShowModal;
   cdm.CD_CTE_NFES.Edit;
   Frm_NF_CTE:=NIL;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton10Click(Sender: TObject);
begin
ShowMessage(DBEdit18.Hint);
end;

procedure TFrm_CTE_EMISSOR.RzToolButton11Click(Sender: TObject);
begin
ShowMessage(DBEdit17.Hint);
end;

procedure TFrm_CTE_EMISSOR.RzToolButton12Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin


                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_CTEpessoa.clear;
                  cdm.CD_Emissor_CTECPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEIE.clear;
                  cdm.CD_Emissor_CTENOME.clear;
                  cdm.CD_Emissor_CTENOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEENDERECO.clear;
                  cdm.CD_Emissor_CTEN_ENDERECO.clear;
                  cdm.CD_Emissor_CTEBAIRRO.clear;
                  cdm.CD_Emissor_CTECOMPLEMENTO.clear;
                  cdm.CD_Emissor_CTECEP.clear;
                  cdm.CD_Emissor_CTEUF.clear;
                  cdm.CD_Emissor_CTECIDADE.clear;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.clear;
                  cdm.CD_Emissor_CTEFONE_RES.clear;






   end;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton13Click(Sender: TObject);
begin
    if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_CTEREM_pessoa.clear;
                  cdm.CD_Emissor_CTEREM_CPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEREM_IE.clear;
                  cdm.CD_Emissor_CTEREM_NOME.clear;
                  cdm.CD_Emissor_CTEREM_NOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEREM_ENDERECO.clear;
                  cdm.CD_Emissor_CTEREM_NUMERO.clear;
                  cdm.CD_Emissor_CTEREM_BAIRRO.clear;
                  cdm.CD_Emissor_CTEREM_COMPLEMENTO.clear;
                  cdm.CD_Emissor_CTEREM_CEP.clear;
                  cdm.CD_Emissor_CTEREM_UF.clear;
                  cdm.CD_Emissor_CTEREM_CIDADE.clear;
                  cdm.CD_Emissor_CTEREM_COD_IBGE.clear;
                  cdm.CD_Emissor_CTEREM_FONE_RES.clear;
   END;



end;

procedure TFrm_CTE_EMISSOR.RzToolButton14Click(Sender: TObject);
begin
   if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_cteexp_pessoa.clear;
                  cdm.CD_Emissor_cteexp_CPF_CNPJ.clear;
                  cdm.CD_Emissor_cteexp_IE.clear;
                  cdm.CD_Emissor_cteexp_NOME.clear;
                  cdm.CD_Emissor_cteexp_NOME_FANTASIA.clear;
                  cdm.CD_Emissor_cteexp_ENDERECO.clear;
                  cdm.CD_Emissor_CTEEXP_ENUM.clear;
                  cdm.CD_Emissor_cteexp_BAIRRO.clear;
                  cdm.CD_Emissor_cteexp_COMPLEMENTO.clear;
                  cdm.CD_Emissor_cteexp_CEP.clear;
                  cdm.CD_Emissor_cteexp_UF.clear;
                  cdm.CD_Emissor_cteexp_CIDADE.clear;
                  cdm.CD_Emissor_CTEexp_COD_IBGE.clear;

   END;

end;

procedure TFrm_CTE_EMISSOR.RzToolButton15Click(Sender: TObject);
begin
   if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_cterec_pessoa.clear;
                  cdm.CD_Emissor_cterec_CPF_CNPJ.clear;
                  cdm.CD_Emissor_cterec_IE.clear;
                  cdm.CD_Emissor_cterec_NOME.clear;
                  cdm.CD_Emissor_cterec_NOME_FANTASIA.clear;
                  cdm.CD_Emissor_cterec_ENDERECO.clear;
                  cdm.CD_Emissor_cterec_ENUM.clear;
                  cdm.CD_Emissor_cterec_BAIRRO.clear;
                  cdm.CD_Emissor_cterec_COMPLEMENTO.clear;
                  cdm.CD_Emissor_cterec_CEP.clear;
                  cdm.CD_Emissor_cterec_UF.clear;
                  cdm.CD_Emissor_cterec_CIDADE.clear;
                  cdm.CD_Emissor_CTErec_COD_IBGE.clear;

   END;

end;


procedure TFrm_CTE_EMISSOR.RzToolButton16Click(Sender: TObject);
begin
  if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_ctedest_pessoa.clear;
                  cdm.CD_Emissor_ctedest_CPF_CNPJ.clear;
                  cdm.CD_Emissor_ctedest_IE.clear;
                  cdm.CD_Emissor_ctedest_NOME.clear;
                  cdm.CD_Emissor_ctedest_NOME_FANTASIA.clear;
                  cdm.CD_Emissor_ctedest_ENDERECO.clear;
                  cdm.CD_Emissor_ctedest_NUMERO.clear;
                  cdm.CD_Emissor_ctedest_BAIRRO.clear;
                  cdm.CD_Emissor_ctedest_COMPLEMENTO.clear;
                  cdm.CD_Emissor_ctedest_CEP.clear;
                  cdm.CD_Emissor_ctedest_UF.clear;
                  cdm.CD_Emissor_ctedest_CIDADE.clear;
                  cdm.CD_Emissor_CTEDEST_COD_IBGE.clear;

                  cdm.CD_Emissor_ctedest_FONE_RES.clear;

      END;

end;

procedure TFrm_CTE_EMISSOR.RzToolButton17Click(Sender: TObject);
begin
Frm_Regiao:=TFrm_Regiao.Create(self);
Frm_Regiao.ShowModal;
Frm_Regiao.Destroy;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton18Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin
     cdm.CD_Emissor_CTE.Edit;
     cdm.CD_Emissor_CTERESPONSAVEL.Clear;
     cdm.CD_Emissor_CTESEGURADORA.Clear;
     cdm.CD_Emissor_CTEAPOLICE.Clear;
     cdm.CD_Emissor_CTEAVERBACAO.Clear;
   end;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton1Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin
   if (RzDBComboBox11.ItemIndex = 3) or (RzDBComboBox11.text='Outro') then
      BEGIN
        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
         RzToolButton12Click(sender);

           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                   cdm.CD_Emissor_cte.Edit;
                  cdm.CD_Emissor_CTEpessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_CTECPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_CTEIE.AsString:=CDM.CD_Table_Clientes.FieldByName('IE').AsString;
                  cdm.CD_Emissor_CTENOME.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME').AsString;
                  cdm.CD_Emissor_CTENOME_FANTASIA.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME_FANTASIA').AsString;
                  cdm.CD_Emissor_CTEENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('ENDERECO').AsString;
                  cdm.CD_Emissor_CTEN_ENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('NUMERO').AsString;
                  cdm.CD_Emissor_CTEBAIRRO.AsString:=CDM.CD_Table_Clientes.FieldByName('BAIRRO').AsString;
                  cdm.CD_Emissor_CTECOMPLEMENTO.AsString:=CDM.CD_Table_Clientes.FieldByName('COMPLEMENTO').AsString;
                  cdm.CD_Emissor_CTECEP.AsString:=CDM.CD_Table_Clientes.FieldByName('CEP').AsString;
                  cdm.CD_Emissor_CTEUF.AsString:=CDM.CD_Table_Clientes.FieldByName('UF').AsString;
                  cdm.CD_Emissor_CTECIDADE.AsString:=CDM.CD_Table_Clientes.FieldByName('CIDADE').AsString;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.AsString:=CDM.CD_Table_Clientes.FieldByName('CODIGO_IBGE').AsString;
                  cdm.CD_Emissor_CTEFONE_RES.AsString:=CDM.CD_Table_Clientes.FieldByName('FONE_RES').AsString;
                END;

            frmtomador.Free;
      END


   end;




end;

procedure TFrm_CTE_EMISSOR.RzToolButton2Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
         RzToolButton13Click(sender);
           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_CTEREM_pessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_CTEREM_CPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_CTEREM_IE.AsString:=CDM.CD_Table_Clientes.FieldByName('IE').AsString;
                  cdm.CD_Emissor_CTEREM_NOME.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME').AsString;
                  cdm.CD_Emissor_CTEREM_NOME_FANTASIA.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME_FANTASIA').AsString;
                  cdm.CD_Emissor_CTEREM_ENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('ENDERECO').AsString;
                  cdm.CD_Emissor_CTEREM_NUMERO.AsString:=CDM.CD_Table_Clientes.FieldByName('NUMERO').AsString;
                  cdm.CD_Emissor_CTEREM_BAIRRO.AsString:=CDM.CD_Table_Clientes.FieldByName('BAIRRO').AsString;
                  cdm.CD_Emissor_CTEREM_COMPLEMENTO.AsString:=CDM.CD_Table_Clientes.FieldByName('COMPLEMENTO').AsString;
                  cdm.CD_Emissor_CTEREM_CEP.AsString:=CDM.CD_Table_Clientes.FieldByName('CEP').AsString;
                  cdm.CD_Emissor_CTEREM_UF.AsString:=CDM.CD_Table_Clientes.FieldByName('UF').AsString;
                  cdm.CD_Emissor_CTEREM_CIDADE.AsString:=CDM.CD_Table_Clientes.FieldByName('CIDADE').AsString;
                  cdm.CD_Emissor_CTEREM_COD_IBGE.AsString:=CDM.CD_Table_Clientes.FieldByName('CODIGO_IBGE').AsString;
                  cdm.CD_Emissor_CTEREM_FONE_RES.AsString:=CDM.CD_Table_Clientes.FieldByName('FONE_RES').AsString;
                END;


      END;




end;

procedure TFrm_CTE_EMISSOR.RzToolButton3Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
         RzToolButton15Click(sender);
           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_cterec_pessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_cterec_CPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_cterec_IE.AsString:=CDM.CD_Table_Clientes.FieldByName('IE').AsString;
                  cdm.CD_Emissor_cterec_NOME.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME').AsString;
                  cdm.CD_Emissor_cterec_NOME_FANTASIA.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME_FANTASIA').AsString;
                  cdm.CD_Emissor_cterec_ENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('ENDERECO').AsString;
                  cdm.CD_Emissor_cterec_ENUM.AsString:=CDM.CD_Table_Clientes.FieldByName('NUMERO').AsString;
                  cdm.CD_Emissor_cterec_BAIRRO.AsString:=CDM.CD_Table_Clientes.FieldByName('BAIRRO').AsString;
                  cdm.CD_Emissor_cterec_COMPLEMENTO.AsString:=CDM.CD_Table_Clientes.FieldByName('COMPLEMENTO').AsString;
                  cdm.CD_Emissor_cterec_CEP.AsString:=CDM.CD_Table_Clientes.FieldByName('CEP').AsString;
                  cdm.CD_Emissor_cterec_UF.AsString:=CDM.CD_Table_Clientes.FieldByName('UF').AsString;
                  cdm.CD_Emissor_cterec_CIDADE.AsString:=CDM.CD_Table_Clientes.FieldByName('CIDADE').AsString;
                  cdm.CD_Emissor_CTErec_COD_IBGE.AsString:=CDM.CD_Table_Clientes.FieldByName('CODIGO_IBGE').AsString;

                END;
      END;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton4Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
          RzToolButton16Click(sender);
           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_ctedest_pessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_ctedest_CPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_ctedest_IE.AsString:=CDM.CD_Table_Clientes.FieldByName('IE').AsString;
                  cdm.CD_Emissor_ctedest_NOME.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME').AsString;
                  cdm.CD_Emissor_ctedest_NOME_FANTASIA.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME_FANTASIA').AsString;
                  cdm.CD_Emissor_ctedest_ENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('ENDERECO').AsString;
                  cdm.CD_Emissor_ctedest_NUMERO.AsString:=CDM.CD_Table_Clientes.FieldByName('NUMERO').AsString;
                  cdm.CD_Emissor_ctedest_BAIRRO.AsString:=CDM.CD_Table_Clientes.FieldByName('BAIRRO').AsString;
                  cdm.CD_Emissor_ctedest_COMPLEMENTO.AsString:=CDM.CD_Table_Clientes.FieldByName('COMPLEMENTO').AsString;
                  cdm.CD_Emissor_ctedest_CEP.AsString:=CDM.CD_Table_Clientes.FieldByName('CEP').AsString;
                  cdm.CD_Emissor_ctedest_UF.AsString:=CDM.CD_Table_Clientes.FieldByName('UF').AsString;
                  cdm.CD_Emissor_ctedest_CIDADE.AsString:=CDM.CD_Table_Clientes.FieldByName('CIDADE').AsString;
                  cdm.CD_Emissor_CTEDEST_COD_IBGE.AsString:=CDM.CD_Table_Clientes.FieldByName('CODIGO_IBGE').AsString;

                  cdm.CD_Emissor_ctedest_FONE_RES.AsString:=CDM.CD_Table_Clientes.FieldByName('FONE_RES').AsString;
                END;
      END;


end;

procedure TFrm_CTE_EMISSOR.RzToolButton5Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
         RzToolButton14Click(sender);
           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                  cdm.CD_Emissor_CTE.Edit;
                  cdm.CD_Emissor_cteexp_pessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_cteexp_CPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_cteexp_IE.AsString:=CDM.CD_Table_Clientes.FieldByName('IE').AsString;
                  cdm.CD_Emissor_cteexp_NOME.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME').AsString;
                  cdm.CD_Emissor_cteexp_NOME_FANTASIA.AsString:=CDM.CD_Table_Clientes.FieldByName('NOME_FANTASIA').AsString;
                  cdm.CD_Emissor_cteexp_ENDERECO.AsString:=CDM.CD_Table_Clientes.FieldByName('ENDERECO').AsString;
                  cdm.CD_Emissor_CTEEXP_ENUM.AsString:=CDM.CD_Table_Clientes.FieldByName('NUMERO').AsString;
                  cdm.CD_Emissor_cteexp_BAIRRO.AsString:=CDM.CD_Table_Clientes.FieldByName('BAIRRO').AsString;
                  cdm.CD_Emissor_cteexp_COMPLEMENTO.AsString:=CDM.CD_Table_Clientes.FieldByName('COMPLEMENTO').AsString;
                  cdm.CD_Emissor_cteexp_CEP.AsString:=CDM.CD_Table_Clientes.FieldByName('CEP').AsString;
                  cdm.CD_Emissor_cteexp_UF.AsString:=CDM.CD_Table_Clientes.FieldByName('UF').AsString;
                  cdm.CD_Emissor_cteexp_CIDADE.AsString:=CDM.CD_Table_Clientes.FieldByName('CIDADE').AsString;
                  cdm.CD_Emissor_CTEexp_COD_IBGE.AsString:=CDM.CD_Table_Clientes.FieldByName('CODIGO_IBGE').AsString;


                END;
      END;
end;

procedure TFrm_CTE_EMISSOR.RzToolButton6Click(Sender: TObject);
begin
ShowMessage(DBEdit9.Hint);
end;

procedure TFrm_CTE_EMISSOR.RzToolButton8Click(Sender: TObject);
begin
ShowMessage(DBEdit11.Hint);

end;

procedure TFrm_CTE_EMISSOR.RzToolButton9Click(Sender: TObject);
begin
ShowMessage(DBEdit10.Hint);
end;

procedure TFrm_CTE_EMISSOR.SpeedButton1Click(Sender: TObject);
begin
cdm.CD_CTE_condutorTable.Insert;
end;

procedure TFrm_CTE_EMISSOR.SpeedButton2Click(Sender: TObject);
begin
cdm.CD_CTE_condutorTable.cancel;
end;

procedure TFrm_CTE_EMISSOR.TabSheet3Show(Sender: TObject);
begin
if cdm.CD_Emissor_CTEMODELO.AsString = '57' then
   begin
     Label32.Visible:=false;
     RzDBEdit3.Visible:=false;
   end;
end;

procedure TFrm_CTE_EMISSOR.Timer1Timer(Sender: TObject);
begin
RzLabel3.Caption:='AGUARDE FINALIZANDO O PROCESSO.';
SLEEP(500);
RzLabel3.Caption:='';
RzLabel3.Caption:='AGUARDE FINALIZANDO O PROCESSO..';
SLEEP(500);
RzLabel3.Caption:='';
RzLabel3.Caption:='AGUARDE FINALIZANDO O PROCESSO...';
SLEEP(500);
RzLabel3.Caption:='';
RzLabel3.Caption:='AGUARDE FINALIZANDO O PROCESSO';

end;

end.

