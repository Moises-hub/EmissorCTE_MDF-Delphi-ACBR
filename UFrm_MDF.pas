unit UFrm_MDF;

interface

uses   ShellAPI, Registry,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.Menus, Vcl.Imaging.pngimage,
  Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, ACBrBase,
  ACBrDFe, ACBrMDFe, ACBrMDFeDAMDFeClass, RzCmboBx, RzDBCmbo,
  Vcl.OleCtrls, SHDocVw, DosMove, RzButton, RzPanel, RzLabel, RzDBLbl, RzTabs,
  System.ImageList, Vcl.ImgList,  UFrm_GradeVeiculos, Vcl.XPMan,
  dxGDIPlusClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons;

type
  TFrm_MDF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    Act_L_Car_Novo: TAction;
    Act_L_Car_Apagar: TAction;
    Act_L_Car_Salvar: TAction;
    Act_L_Car_Cancelar: TAction;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    CIDADE: TClientDataSet;
    CIDADEUF: TStringField;
    CIDADECIDADE: TStringField;
    SQLDataSet1: TSQLDataSet;
    Panel3: TPanel;
    Panel4: TPanel;
    Query_Total: TSQLQuery;
    Query_TotalVALOR: TFloatField;
    RzDBComboBox1: TRzDBComboBox;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    Emitida1: TMenuItem;
    NoRegistrada1: TMenuItem;
    RzPanel5: TRzPanel;
    RzLabel1: TRzLabel;
    PageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    RzGroupBox1: TRzGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel17: TPanel;
    DBMemo2: TDBMemo;
    TabSheet2: TRzTabSheet;
    Panel8: TPanel;
    RzPanel3: TRzPanel;
    RzGroupBox4: TRzGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    RzDBComboBox2: TRzDBComboBox;
    RzDBComboBox3: TRzDBComboBox;
    TabSheet3: TRzTabSheet;
    RzPanel4: TRzPanel;
    Info: TRzTabSheet;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    RzGroupBox3: TRzGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    RzGroupBox5: TRzGroupBox;
    DBGrid7: TDBGrid;
    RzGroupBox6: TRzGroupBox;
    DBGrid10: TDBGrid;
    RzPanel6: TRzPanel;
    Button21: TButton;
    Button23: TButton;
    ImageList1: TImageList;
    Button15: TButton;
    RzPageControl1: TRzPageControl;
    TabSheet4: TRzTabSheet;
    TabSheet5: TRzTabSheet;
    DBGrid6: TDBGrid;
    Image3: TImage;
    Image2: TImage;
    Confere: TSQLDataSet;
    RzToolButton1: TRzToolButton;
    Panel5: TPanel;
    RzLabel2: TRzLabel;
    ImageList2: TImageList;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Act_Trajeto: TAction;
    Act_Gerar: TAction;
    Act_Sair: TAction;
    Label27: TLabel;
    RzDBComboBox4: TRzDBComboBox;
    DBEdit1: TDBEdit;
    Label25: TLabel;
    RzToolButton2: TRzToolButton;
    ImageList3: TImageList;
    Label13: TLabel;
    Image4: TImage;
    Image1: TImage;
    DosMove1: TDosMove;
    RzPanel7: TRzPanel;
    RzPanel8: TRzPanel;
    RzToolButton9: TRzToolButton;
    RzLabel3: TRzLabel;
    DBComboBox1: TDBComboBox;
    Label26: TLabel;
    ImageList4: TImageList;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    RzToolButton10: TRzToolButton;
    RzLabel4: TRzLabel;
    DBComboBox2: TDBComboBox;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBGrid5: TDBGrid;
    RzPanel11: TRzPanel;
    DBGrid3: TDBGrid;
    RzPanel12: TRzPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    RzPanel13: TRzPanel;
    RzPanel14: TRzPanel;
    RzToolButton12: TRzToolButton;
    RzLabel5: TRzLabel;
    DBGrid2: TDBGrid;
    Act_CarrNovo: TAction;
    Act_CarrExcluir: TAction;
    Act_DescNovo: TAction;
    Act_DescExcluir: TAction;
    Act_PerNovo: TAction;
    Act_PerExcluir: TAction;
    RzPanel15: TRzPanel;
    RzLabel6: TRzLabel;
    RzPanel16: TRzPanel;
    RzLabel7: TRzLabel;
    RzPanel17: TRzPanel;
    RzLabel8: TRzLabel;
    Act_MotNovo: TAction;
    Act_MotEdit: TAction;
    Act_MotExcluir: TAction;
    RzPanel18: TRzPanel;
    RzLabel9: TRzLabel;
    RzPanel19: TRzPanel;
    RzPanel20: TRzPanel;
    RzToolButton13: TRzToolButton;
    RzLabel10: TRzLabel;
    DBGrid11: TDBGrid;
    RzPanel21: TRzPanel;
    RzLabel11: TRzLabel;
    Act_RebNovo: TAction;
    Act_RebAlterar: TAction;
    Act_Reb_Excluir: TAction;
    Act_BuscarVeiculos: TAction;
    Act_MotExcluirTudo: TAction;
    Act_NFColiseu: TAction;
    Act_NFADD: TAction;
    Act_Excluir: TAction;
    RzPanel1: TRzPanel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzLabel12: TRzLabel;
    Image5: TImage;
    FDQuery1: TFDQuery;
    RzPanel2: TRzPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzLabel13: TRzLabel;
    Image6: TImage;
    DBGrid4: TDBGrid;
    Query_NF: TFDQuery;
    Query_NFID: TIntegerField;
    Query_NFID_MDFE: TIntegerField;
    Query_NFCHAVE_NFE: TStringField;
    Query_NFQNT_UN_TRANSP: TBCDField;
    Query_NFN_DA_NFE: TLargeintField;
    Query_NFPESO: TFloatField;
    Query_NFCOD_MUN: TIntegerField;
    Query_NFVALOR: TFloatField;
    Query_NFREGIAO: TStringField;
    DS_NF: TDataSource;
    RzPanel22: TRzPanel;
    Label28: TLabel;
    RzPanel23: TRzPanel;
    Label29: TLabel;
    RzDBComboBox5: TRzDBComboBox;
    Label75: TLabel;
    RzBitBtn12: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    RzToolButton7: TRzToolButton;
    RzGroupBox7: TRzGroupBox;
    RzPanel24: TRzPanel;
    RzPanel25: TRzPanel;
    RzToolButton8: TRzToolButton;
    RzLabel14: TRzLabel;
    DBGrid8: TDBGrid;
    RzPanel26: TRzPanel;
    Act_Ciot: TAction;
    Query_Delete: TFDQuery;
    Label15: TLabel;
    Proc_NF: TFDStoredProc;
    Query_NFID_REGIAO: TIntegerField;
    Query_NFCHAVE_REF: TStringField;
    Query_UFNF: TFDQuery;
    RzPanel27: TRzPanel;
    RzPanel28: TRzPanel;
    RzLabel15: TRzLabel;
    RzPanel29: TRzPanel;
    RzDBComboBox6: TRzDBComboBox;
    DBEdit2: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit7: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit8: TDBEdit;
    procedure Act_L_Car_ApagarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button13Click(Sender: TObject);
    procedure DBGrid7DblClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure InfoShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button21Click(Sender: TObject);
    procedure DBGrid7CellClick(Column: TColumn);
    procedure Button23Click(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure consultar;
    procedure FormCreate(Sender: TObject);
    procedure gerarmdfe;
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure rota(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure Act_TrajetoExecute(Sender: TObject);
    procedure Act_GerarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Act_CarrNovoExecute(Sender: TObject);
    procedure Act_CarrExcluirExecute(Sender: TObject);
    procedure Act_DescNovoExecute(Sender: TObject);
    procedure Act_DescExcluirExecute(Sender: TObject);
    procedure Act_PerNovoExecute(Sender: TObject);
    procedure Act_PerExcluirExecute(Sender: TObject);
    procedure Act_MotNovoExecute(Sender: TObject);
    procedure Act_MotEditExecute(Sender: TObject);
    procedure Act_MotExcluirExecute(Sender: TObject);
    procedure DBGrid11DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid11CellClick(Column: TColumn);
    procedure Act_RebNovoExecute(Sender: TObject);
    procedure Act_RebAlterarExecute(Sender: TObject);
    procedure Act_Reb_ExcluirExecute(Sender: TObject);
    procedure Act_BuscarVeiculosExecute(Sender: TObject);
    procedure Act_MotExcluirTudoExecute(Sender: TObject);
    procedure Act_NFColiseuExecute(Sender: TObject);
    procedure Act_NFADDExecute(Sender: TObject);
    procedure Act_ExcluirExecute(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid6CellClick(Column: TColumn);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure Query_NFAfterOpen(DataSet: TDataSet);
    procedure RzDBComboBox4Select(Sender: TObject);
    procedure DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid8CellClick(Column: TColumn);
    procedure Act_CiotExecute(Sender: TObject);
  private
    { Private declarations }
  public
    rt:string;
    { Public declarations }
  end;

var
  Frm_MDF: TFrm_MDF;

implementation

{$R *.dfm}



uses UDM, UFrmPrincipal, UFrm_Carregamento, UFrm_Motorista, UFrmReboque,
  UFrm_NFE, UFrm_MDFConfig, pcnConversao, pmdfeConversaoMDFe, pmdfeMDFe,
  pmdfeMDFeR, UFrmGrade, UFrmNFdeCompra, UFrm_Seguro, UFrmTomador, UCDM,
  UFrm_RelCTE, UFrmFuncoes, UFrm_Rotas, UFrm_MDFe_AnexCTE, U_FrmMdfCiot;




procedure TFrm_MDF.LoadXML(MyMemo: TMemo;
  MyWebBrowser: TWebBrowser);
begin
 MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
 MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;




  procedure TFrm_MDF.Query_NFAfterOpen(DataSet: TDataSet);
begin
 Label28.Caption:='Total de NF Adicionada '+IntToStr(Query_NF.RecordCount);
  Label29.Caption:='Total de CTE Adicionado '+IntToStr(dm.CD_MDF_CTE.RecordCount);
end;

procedure TFrm_MDF.rota(Sender: TObject);
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

procedure TFrm_MDF.RzDBComboBox4Select(Sender: TObject);
begin
     if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
         if RzDBComboBox4.ItemIndex = 0 then
            dm.CD_Mdf_DadosCNPJ_TOMADOR.AsString:=dm.EmitenteCNPJ.AsString;


      end;
end;

procedure TFrm_MDF.RzToolButton10Click(Sender: TObject);
begin
 TabSheet1.Show;
   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


           if DBComboBox2.Text<>'' then
              begin
              if DM.CD_Mdfe_l_descarregamentoTable.Active=false then
                 DM.CD_Mdfe_l_descarregamentoTable.Active:=true;

              Frm_Carregamento:=TFrm_Carregamento.Create(self);
              Frm_Carregamento.DBComboBox1.DataSource:=dm.ds_Mdfe_l_descarregamentoTable;
              CIDADE.Close;
              CIDADE.Params[0].AsString:=DBCOMBOBOX2.Text;
              CIDADE.Open;

              Frm_Carregamento.DBComboBox1.Items.Clear;
              if CIDADE.RecordCount<>0 then
                 BEGIN
                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                     Frm_Carregamento.DBComboBox1.Items.ADD(CIDADECIDADE.Text);
                     CIDADE.Next;

                     END;

                 END;



              dm.CD_Mdfe_l_descarregamentoTable.Insert;
              Frm_Carregamento.ShowModal;
              if DM.CD_Mdfe_l_descarregamentoTable.RecordCount<>0 then
                 DBComboBox2.Enabled:=FALSE;
              end
              else
              begin
              MessageDlg('Sr Usuário selecione a UF de Descarregamento',mtWarning,[mbOK],0);
              DBComboBox2.SetFocus;
              end;

              DBGrid5.SetFocus;
      end;
end;

procedure TFrm_MDF.RzToolButton11Click(Sender: TObject);
begin
 if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


      if DM.CD_Mdfe_uf_percursoTable.RECORDCOUNT<>24 then
         BEGIN
              DM.CD_Mdfe_uf_percursoTable.Insert;
              DM.CD_Mdfe_uf_percursoTableUF.Text:=COMBOBOX1.Text;
              ComboBox1.DeleteSelected;
              ComboBox1.ItemIndex:=0;
              DM.CD_Mdfe_uf_percursoTable.POST;

         END
         ELSE
         SHOWMESSAGE('numero maximos de registro é 24');

      end;
end;

procedure TFrm_MDF.RzToolButton2Click(Sender: TObject);
begin
          if dm.CD_Mdf_DadosSTATUS.Value = 0 then
            begin

            frmtomador:=tfrmtomador.create(self);

            frmtomador.showmodal;
            dm.CD_Mdf_Dados.Edit;
             if CDM.CD_Table_Clientes.Active = TRUE then
              dm.CD_Mdf_Dadoscnpj_tomador.asstring:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
             frmtomador.Free;
            end;

end;

procedure TFrm_MDF.RzToolButton4Click(Sender: TObject);

var
vaux, vnumlote : string;
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);

    dm.CD_MDFe_Config.Open;
    dm.REGIAO.Open;


    confere.Close;
    confere.CommandText:='select * from mdfe_dados where status =7 and ID <> '+dm.CD_Mdf_DadosID.AsString;
    confere.Open;
    confere.refresh;
            Frm_MDFCOnfig.ConfiguraComponente;
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
//                    dm.CD_Mdf_DadosCHAVE.Value:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);



    if confere.RecordCount=0 then
       begin
                if  dm.CD_Mdf_DadosNUMERO.Value<1 then
                    begin
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);

                    end;
                if (dm.CD_Mdf_DadosSTATUS.Value=0) or (dm.CD_Mdf_DadosSTATUS.Value=3) then
                    begin
                      Button5Click(sender);

                     if dm.Mdfe_l_carregamentoTable.RecordCount=0 then
                        begin

                        MessageDlg('Adicione o Local de Carregamento!',mtWarning,[mbok],0);
                        TabSheet1.Show;
                        DBComboBox1.SetFocus;

                        end
                        else
                        if dm.Mdfe_l_descarregamentoTable.RecordCount=0 then
                            begin
                            MessageDlg('Adicione o Local de descarregamento!',mtWarning,[mbok],0);
                            TabSheet1.Show;
                            DBComboBox2.SetFocus;

                            end
                            else
                            if RzDBComboBox2.ItemIndex=-1 then
                                begin
                                MessageDlg('Tipo de Carroceria não pode ser Nulo!',mtWarning,[mbok],0);
                                TabSheet2.Show;
                                RzDBComboBox2.SetFocus;

                                end
                                else
                                 if Length(DBEdit5.Text)=0 then
                                    begin
                                    MessageDlg('o campo placa tem que não pode ser Nulo!',mtWarning,[mbok],0);
                                    TabSheet2.Show;
                                    DBEdit5.SetFocus;
                                    end
                                    else
                                    if DBComboBox3.ItemIndex=-1 then
                                        begin
                                        MessageDlg('UF de Licenciamento não pode ser Nulo!',mtWarning,[mbok],0);
                                        TabSheet2.Show;
                                        DBComboBox3.SetFocus;

                                        end
                                        else
                                        if Length(DBEdit12.Text)=0 then
                                           begin
                                            MessageDlg('Tara não pode ser nulo',mtWarning,[mbok],0);
                                             TabSheet2.Show;
                                             DBEdit12.SetFocus;
                                           end
                                            else
                                            if dm.CD_Mdfe_condutorTable.RecordCount=0 then
                                                begin
                                                MessageDlg('Cadastre pelo menos 1 motorista!',mtWarning,[mbok],0);
                                                TabSheet2.Show;
                                                end
                                                else
                                                begin

                                                Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
                                                Frm_MDFCOnfig.GerarMDFe(vAux);

                                                        dm.CD_MDFe_Config.edit;
                                                        dm.CD_MDFe_ConfigNUMERO.Value:=dm.CD_Mdf_DadosNUMERO.Value;
                                                        dm.CD_MDFe_Config.post;
                                                        dm.CD_MDFe_Config.ApplyUpdates(0);

                                                 Frm_MDFCOnfig.ACBrMDFe1.Enviar(StrToInt('1'));


                                                        dm.Cli_Cad_Log.open;
                                                        dm.Cli_Cad_Log.Insert;
                                                        dm.Cli_Cad_LogID_USER.asinteger:=ID;
                                                        if dm.Cli_Cad_LogID_USER.AsInteger = 1 then
                                                            dm.Cli_Cad_LogNOME.Text := 'SUPORTE SILENUS'
                                                            else
                                                            dm.Cli_Cad_LogNOME.Text := Frm_Principal.StatusBar1.Panels[1].Text;

                                                        DM.Cli_Cad_LogDATA.AsDateTime:=now;
                                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                        dm.Cli_Cad_LogPROCESSO.Text := 'Envio';
                                                        dm.Cli_Cad_LogDOC.Text:= dm.CD_Mdf_DadosNUMERO.Text;
                                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                        DBMemo2.Lines.Add('Enviado MDFe Nº'+dm.CD_Mdf_DadosNUMERO.Text);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.xMotivo);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Msg);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID);
                                                        dm.Cli_Cad_Log.Post;
                                                        dm.cli_cad_log.ApplyUpdates(0);




                                                TThread.Synchronize(nil,consultar);





                                                     Label13.Caption:=RzDBComboBox1.Text;
                                                     close;
                                                // Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;

                                                end;

                    end
       end
       else
       MessageDlg('Existe um MDFe em emissão finalize ele primeiro!',mtWarning,[mbok],0);
     //  Frm_MDFCOnfig.destroy;



end;

procedure TFrm_MDF.RzToolButton9Click(Sender: TObject);
begin
 TabSheet1.Show;
     if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

      if DM.CD_Mdfe_uf_percursoTable.recordcount<>100 then
         begin
       if DBComboBox1.Text<>'' then
              begin
              if Active=false then

                 DM.CD_Mdfe_l_carregamentoTable.Active:=true;

              Frm_Carregamento:=TFrm_Carregamento.Create(self);
              Frm_Carregamento.DBComboBox1.DataSource:=dm.ds_Mdfe_l_carregamentoTable;
              CIDADE.Close;
              CIDADE.Params[0].AsString:=DBCOMBOBOX1.Text;
              CIDADE.Open;

              Frm_Carregamento.DBComboBox1.Items.Clear;
              if CIDADE.RecordCount<>0 then
                 BEGIN
                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                     Frm_Carregamento.DBComboBox1.Items.ADD(CIDADECIDADE.Text);
                     CIDADE.Next;

                     END;

                 END;



              dm.CD_Mdfe_l_carregamentoTable.Insert;
              Frm_Carregamento.ShowModal;
              if DM.CD_Mdfe_l_carregamentoTable.RecordCount<>0 then
                 DBComboBox1.Enabled:=FALSE;
              end
              else
              begin
              MessageDlg('Sr Usuário selecione a UF de Carregamento',mtWarning,[mbOK],0);
              DBComboBox1.SetFocus;
              end;
         end;
      end;
      dm.REGIAO.close;
end;

procedure TFrm_MDF.TabSheet2Show(Sender: TObject);
begin       {
 if dm.CD_Mdfe_l_carregamentoTable.RecordCount=0 then
   begin
   MessageDlg('Sr Usuário local de carregamento não pode ser nulo!',mtWarning,[mbOK],0);
    TabSheet2.Enabled:=false;

   end
   else
   if dm.CD_Mdfe_l_descarregamentoTable.RecordCount=0 then
   begin
   MessageDlg('Sr Usuário local de descarregamento não pode ser nulo!',mtWarning,[mbOK],0);
   TabSheet2.Enabled:=false;

   end
   else
   TabSheet2.Enabled:=true;  }
end;

procedure TFrm_MDF.TabSheet3Show(Sender: TObject);
begin
if DM.CD_Mdf_DadosTIPO_EMISSOR.AsInteger = 1 then
   begin
   TabSheet4.Enabled:=false;
   TabSheet5.Enabled:=true;
   rzPageControl1.ActivePage:=TabSheet5;
   end
   else
   begin
   rzPageControl1.ActivePage:=TabSheet4;
   TabSheet5.Enabled:=false;
   TabSheet4.Enabled:=true;
   end;






    {
     if dm.CD_Mdfe_l_carregamentoTable.RecordCount=0 then
         begin
         MessageDlg('Sr Usuário local de carregamento não pode ser nulo!',mtWarning,[mbOK],0);
         TabSheet3.Enabled:=false;

         end
         else
         if dm.CD_Mdfe_l_descarregamentoTable.RecordCount=0 then
         begin
         MessageDlg('Sr Usuário local de descarregamento não pode ser nulo!',mtWarning,[mbOK],0);
          TabSheet3.Enabled:=false;

         end
         else
         if Length(dm.CD_Mdf_DadosVEI_TIPO_CARROCERIA.text) = 0 then
   begin
   MessageDlg('Sr Usuário selecione o tipo de carroceria!',mtWarning,[mbOK],0);
    TabSheet3.Enabled:=false;
   end
    else
   if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
       begin
       MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
       TabSheet3.Enabled:=false;
       end
        else
         if Length(dm.CD_Mdf_DadosVEI_UF.text) = 0 then
           begin
           MessageDlg('Sr Usuário a UF de licenciamento do veículo não pode ser nulo!',mtWarning,[mbOK],0);
           TabSheet3.Enabled:=false;
           end
            ELSE
             if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
             begin
             MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
             TabSheet3.Enabled:=false;
             end
              else
                if Length(dm.CD_Mdf_DadosVEI_TIPO_RODADO.text) = 0 then
                   begin
                   MessageDlg('Sr Usuário selecione o tipo de rodado!',mtWarning,[mbOK],0);
                   TabSheet3.Enabled:=false;
                   end
                     else
                      if Length(dm.CD_Mdf_DadosVEI_TARA.text) = 0 then
                         begin
                         MessageDlg('Sr Usuário a TARA do veículo não pode ser nula!',mtWarning,[mbOK],0);
                         TabSheet3.Enabled:=false;
                         end
                         else
                         if dm.CD_Mdfe_condutorTable.RecordCount = 0 then
                             begin
                             MessageDlg('Sr Usuário selecione o motorista!',mtWarning,[mbOK],0);
                             TabSheet3.Enabled:=false;

                             end
                             else
                             TabSheet3.Enabled:=true;


                                                 }



end;

procedure TFrm_MDF.TabSheet4Show(Sender: TObject);
begin
Label28.Caption:='Total de NF Adicionada '+IntToStr(Query_NF.RecordCount);
end;

procedure TFrm_MDF.Act_BuscarVeiculosExecute(Sender: TObject);
begin
         if dm.CD_Mdf_DadosSTATUS.Value = 0 then
            begin
              TabSheet2.Show;
              Frm_GradeVeiculos:=TFrm_GradeVeiculos.Create(self);
              Frm_GradeVeiculos.Button1.Action:=Frm_GradeVeiculos.Act_Confirma;
              Frm_GradeVeiculos.showModal;

            end;




Frm_GradeVeiculos.Destroy;
end;

procedure TFrm_MDF.Act_CarrExcluirExecute(Sender: TObject);
begin
  if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


             if dm.CD_Mdf_DadosSTATUS.Value = 0 then
                begin


                if DM.cd_Mdfe_l_carregamentoTable.RecordCount<>0 then
                   begin

                   if MessageDlg('deseja realmente excluir o registro selecionado?',mtConfirmation,[mbYes,mbno],0)=mryes then
                      begin
                      DM.cd_Mdfe_l_carregamentoTable.Delete;

                      DM.cd_Mdfe_l_carregamentoTable.ApplyUpdates(0);
                      end;
                     if DM.CD_Mdfe_l_carregamentoTable.RecordCount=0 then
                           DBComboBox1.Enabled:=TRUE;

                   end;
                end;


                         TabSheet1.Show;
                   DBGrid1.SetFocus;
                  dm.REGIAO.close;
          end;
end;

procedure TFrm_MDF.Act_CarrNovoExecute(Sender: TObject);
begin
     if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

      if DM.CD_Mdfe_uf_percursoTable.recordcount<>100 then
         begin
       if DBComboBox1.Text<>'' then
              begin
              if Active=false then
                 DM.CD_Mdfe_l_carregamentoTable.Active:=true;

              Frm_Carregamento:=TFrm_Carregamento.Create(self);
              Frm_Carregamento.Label2.Caption:='Selecione o Munícipio de Carregamento';
              Frm_Carregamento.DBComboBox1.DataSource:=dm.ds_Mdfe_l_carregamentoTable;
              CIDADE.Close;
              CIDADE.Params[0].AsString:=DBCOMBOBOX1.Text;
              CIDADE.Open;

              Frm_Carregamento.DBComboBox1.Items.Clear;
              if CIDADE.RecordCount<>0 then
                 BEGIN
                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                     Frm_Carregamento.DBComboBox1.Items.ADD(CIDADECIDADE.Text);
                     CIDADE.Next;

                     END;

                 END;



              dm.CD_Mdfe_l_carregamentoTable.Insert;
              Frm_Carregamento.ShowModal;
              if DM.CD_Mdfe_l_carregamentoTable.RecordCount<>0 then
                 DBComboBox1.Enabled:=FALSE;
              end
              else
              begin
              MessageDlg('Sr Usuário selecione a UF de Carregamento',mtWarning,[mbOK],0);
              DBComboBox1.SetFocus;
              end;
         end;
      end;
       TabSheet1.Show;
       DBGrid1.SetFocus;
      dm.REGIAO.close;
end;

procedure TFrm_MDF.Act_CiotExecute(Sender: TObject);
begin
Frm_MDFCiot:=tFrm_MDFCiot.Create(self);
Frm_MDFCiot.ShowModal;
end;

procedure TFrm_MDF.Act_DescExcluirExecute(Sender: TObject);
begin
   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


      if dm.cd_Mdfe_l_descarregamentoTable.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
            dm.cd_Mdfe_l_descarregamentoTable.Delete;
            dm.cd_Mdfe_l_descarregamentoTable.ApplyUpdates(0);
            end;

        if DM.CD_Mdfe_l_descarregamentoTable.RecordCount=0 then
                           DBComboBox2.Enabled:=TRUE;
       TabSheet1.Show;
       DBGrid5.SetFocus;
      end;
end;

procedure TFrm_MDF.Act_DescNovoExecute(Sender: TObject);
begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


           if DBComboBox2.Text<>'' then
              begin
              if DM.CD_Mdfe_l_descarregamentoTable.Active=false then
                 DM.CD_Mdfe_l_descarregamentoTable.Active:=true;

              Frm_Carregamento:=TFrm_Carregamento.Create(self);
              Frm_Carregamento.Label2.Caption:='Selecione o Munícipio de Descarregamento';
              Frm_Carregamento.DBComboBox1.DataSource:=dm.ds_Mdfe_l_descarregamentoTable;
              CIDADE.Close;
              CIDADE.Params[0].AsString:=DBCOMBOBOX2.Text;
              CIDADE.Open;

              Frm_Carregamento.DBComboBox1.Items.Clear;
              if CIDADE.RecordCount<>0 then
                 BEGIN
                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                     Frm_Carregamento.DBComboBox1.Items.ADD(CIDADECIDADE.Text);
                     CIDADE.Next;

                     END;

                 END;



              dm.CD_Mdfe_l_descarregamentoTable.Insert;
              Frm_Carregamento.ShowModal;
              if DM.CD_Mdfe_l_descarregamentoTable.RecordCount<>0 then
                 DBComboBox2.Enabled:=FALSE;
              end
              else
              begin
              MessageDlg('Sr Usuário selecione a UF de Descarregamento',mtWarning,[mbOK],0);
              DBComboBox2.SetFocus;
              end;
              TabSheet1.Show;
              DBGrid5.SetFocus;
      end;
end;

procedure TFrm_MDF.Act_ExcluirExecute(Sender: TObject);
begin
if RzPageControl1.ActivePage=TabSheet4 then
   begin
   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


                if Query_NF.RecordCount<>0 then


                   if Application.MessageBox('deseja realmente excluir a NFe selecionada?','',MB_ICONQUESTION+MB_YESNO)=mryes then
                   begin
                      //  dm.CD_Nfe_mdfTable.Locate('CHAVE_NFE',Query_NFCHAVE_NFE.Value,[loCaseInsensitive]);

                          Query_Delete.Params[0].AsInteger:=Query_NFID_MDFE.AsInteger;
                          Query_Delete.Params[1].AsInteger:=Query_NFID.AsInteger;
                          Query_Delete.ExecSQL;
                           // dm.CD_Nfe_mdfTable.ApplyUpdates(0);
                           //
                   end;

          end;
           dm.CD_Nfe_mdfTable.Refresh;
           Query_NF.Refresh;
           Label28.Caption:='Total de NF Adicionada '+IntToStr(Query_NF.RecordCount);
   end
   else
if RzPageControl1.ActivePage=TabSheet5 then
   begin
     if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


                if DM.CD_MDF_CTE.RecordCount<>0 then


                   if MessageDlg('deseja realmente excluir o CTe selecionado?',mtConfirmation,[mbYes,mbno],0)=mryes then
                      DM.CD_MDF_CTE.Delete;

          end;
          Label29.Caption:='Total de CTE Adicionado '+IntToStr(dm.CD_MDF_CTE.RecordCount);
   end;






end;

procedure TFrm_MDF.Act_GerarExecute(Sender: TObject);
var
vaux, vnumlote : string;
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);

    dm.CD_MDFe_Config.Open;
    dm.REGIAO.Open;


    confere.Close;
    confere.CommandText:='select * from mdfe_dados where status =7 and ID <> '+dm.CD_Mdf_DadosID.AsString;
    confere.Open;
    confere.refresh;
            Frm_MDFCOnfig.ConfiguraComponente;
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
//                    dm.CD_Mdf_DadosCHAVE.Value:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);



    if confere.RecordCount=0 then
       begin
                if  dm.CD_Mdf_DadosNUMERO.Value<1 then
                    begin
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);

                    end;
                if (dm.CD_Mdf_DadosSTATUS.Value=0) or (dm.CD_Mdf_DadosSTATUS.Value=3) then
                    begin
                      Button5Click(sender);

                     if dm.Mdfe_l_carregamentoTable.RecordCount=0 then
                        begin

                        MessageDlg('Adicione o Local de Carregamento!',mtWarning,[mbok],0);
                        TabSheet1.Show;
                        DBComboBox1.SetFocus;

                        end
                        else
                        if dm.Mdfe_l_descarregamentoTable.RecordCount=0 then
                            begin
                            MessageDlg('Adicione o Local de descarregamento!',mtWarning,[mbok],0);
                            TabSheet1.Show;
                            DBComboBox2.SetFocus;

                            end
                            else
                            if RzDBComboBox2.ItemIndex=-1 then
                                begin
                                MessageDlg('Tipo de Carroceria não pode ser Nulo!',mtWarning,[mbok],0);
                                TabSheet2.Show;
                                RzDBComboBox2.SetFocus;

                                end
                                else
                                 if Length(DBEdit5.Text)=0 then
                                    begin
                                    MessageDlg('o campo placa tem que não pode ser Nulo!',mtWarning,[mbok],0);
                                    TabSheet2.Show;
                                    DBEdit5.SetFocus;
                                    end
                                    else
                                    if DBComboBox3.ItemIndex=-1 then
                                        begin
                                        MessageDlg('UF de Licenciamento não pode ser Nulo!',mtWarning,[mbok],0);
                                        TabSheet2.Show;
                                        DBComboBox3.SetFocus;

                                        end
                                        else
                                        if Length(DBEdit12.Text)=0 then
                                           begin
                                            MessageDlg('Tara não pode ser nulo',mtWarning,[mbok],0);
                                             TabSheet2.Show;
                                             DBEdit12.SetFocus;
                                           end
                                            else
                                            if dm.CD_Mdfe_condutorTable.RecordCount=0 then
                                                begin
                                                MessageDlg('Cadastre pelo menos 1 motorista!',mtWarning,[mbok],0);
                                                TabSheet2.Show;
                                                end
                                                else
                                                begin

                                                Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
                                                Frm_MDFCOnfig.GerarMDFe(vAux);

                                                        dm.CD_MDFe_Config.edit;
                                                        dm.CD_MDFe_ConfigNUMERO.Value:=dm.CD_Mdf_DadosNUMERO.Value;
                                                        dm.CD_MDFe_Config.post;
                                                        dm.CD_MDFe_Config.ApplyUpdates(0);

                                                 Frm_MDFCOnfig.ACBrMDFe1.Enviar(StrToInt('1'));


                                                       dm.Query_Log.Params[0].AsInteger:=ID;
                                                       dm.Query_Log.Params[4].Asstring:= Frm_Principal.StatusBar1.Panels[1].Text;
                                                       dm.Query_Log.Params[1].Asstring:= 'Envio';
                                                       dm.Query_Log.Params[2].AsString:= dm.CD_Mdf_DadosNUMERO.Text;
                                                       dm.Query_Log.Params[3].Asstring:=copy(Frm_Principal.GetComputerNameFunc,1,50);
                                                       dm.Query_Log.ExecSQL;
                                                        DBMemo2.Lines.Add('Enviado MDFe Nº'+dm.CD_Mdf_DadosNUMERO.Text);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.xMotivo);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Msg);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID);





                                                TThread.Synchronize(nil,consultar);





                                                     Label13.Caption:=RzDBComboBox1.Text;
                                                     close;
                                                // Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;

                                                end;

                    end
       end
       else
       MessageDlg('Existe um MDFe em emissão finalize ele primeiro!',mtWarning,[mbok],0);
     //  Frm_MDFCOnfig.destroy;


end;

procedure TFrm_MDF.Act_L_Car_ApagarExecute(Sender: TObject);
begin
if MessageDlg('Deseja realmente apagar o registro selecionado?',mtConfirmation,[mbyes,mbNo],0)=mryes then
   dm.CD_Mdfe_l_carregamentoTable.Delete;

end;

procedure TFrm_MDF.Act_MotEditExecute(Sender: TObject);
begin
 if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
               TabSheet2.Show;
      if dm.CD_Mdfe_condutorTable.RecordCount<>0 then
         begin
              Frm_Motorista:=TFrm_Motorista.Create(self);
              dm.CD_Mdfe_condutorTable.edit;
              Frm_Motorista.ShowModal;
               TabSheet2.SetFocus;
           DBGrid2.SetFocus;
         end;
      end;
end;

procedure TFrm_MDF.Act_MotExcluirExecute(Sender: TObject);
begin
 if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
                TabSheet2.Show;
      if dm.CD_Mdfe_condutorTable.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
         begin
          dm.CD_Mdfe_condutorTable.Delete;
          dm.CD_Mdfe_condutortable.ApplyUpdates(0);
           TabSheet2.SetFocus;
           DBGrid2.SetFocus;
         end;
      end;
end;

procedure TFrm_MDF.Act_MotExcluirTudoExecute(Sender: TObject);
begin
                           TabSheet2.Show;
                dm.query.CLOSE;
                dm.query.SQL.Text:='delete from MDFE_CONDUTOR where ID_MDFE ='+dm.CD_Mdf_DadosID.asstring;
               // ShowMessage('select * from MDFE_CADMOTORISTA where id_veiculo ='+IntToStr(dm.CD_VeiculosID.AsInteger)+' and id_motorista ='+dm.CD_CADMOTORISTAID_MOTORISTA.asstring);
                dm.query.ExecSQL;
                dm.CD_Mdfe_condutorTable.Refresh;
end;

procedure TFrm_MDF.Act_MotNovoExecute(Sender: TObject);
begin
   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

         TabSheet2.Show;
        if dm.cd_mdfe_condutortable.RecordCount<>10 then
           begin
              Frm_Motorista:=TFrm_Motorista.Create(self);
              dm.CD_Mdfe_condutorTable.Insert;
              Frm_Motorista.ShowModal;
           end
           else
           ShowMessage('maximo de condutor permitido e de 10');
           TabSheet2.SetFocus;
           DBGrid2.SetFocus;
      end;
end;

procedure TFrm_MDF.Act_NFADDExecute(Sender: TObject);
var
cod_regiao : TFDQuery;
begin

                cod_regiao:=TFDQuery.Create(nil);
                cod_regiao.Connection:=dm.FDConnection1;
                cod_regiao.SQL.Text:='select id_regiao from regioes where codigo_ibge =:f';



   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
           if DM.CD_Mdf_DadosTIPO_EMISSOR.AsInteger = 0 then
            begin

                 FrmNFdeCompra:=TFrmNFdeCompra.Create(self);
                 FrmNFdeCompra.Panel1.Visible:=TRUE;
                 Proc_NF.ParamByName('CADASTRO').AsInteger:=0;


              dm.CD_Mdfe_l_descarregamentoTable.First;
              while not  dm.CD_Mdfe_l_descarregamentoTable.Eof do
               begin
                 FrmNFdeCompra.RzComboBox1.Items.Add(dm.CD_Mdfe_l_descarregamentoTableMUNICIPIO.asstring);

                 cod_regiao.Close;
                 cod_regiao.Params[0].AsString:=dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.asstring;
                 cod_regiao.open;
                 FrmNFdeCompra.RzComboBox1.Values.Add(IntToStr(cod_regiao.FieldByName('id_regiao').AsInteger));
                 dm.CD_Mdfe_l_descarregamentoTable.next;
               end;








                 FrmNFdeCompra.ShowModal;
                 FrmNFdeCompra:=nil;



            end
            else
            begin

               Frm_MDFe_AnexCTE:=TFrm_MDFe_AnexCTE.Create(self);
               dm.CD_MDF_CTE.Append;
               Frm_MDFe_AnexCTE.ShowModal;
               Frm_MDFe_AnexCTE.Free;

            end;
      end;




  Label28.Caption:='Total de NF Adicionada '+IntToStr(Query_NF.RecordCount);
    Label29.Caption:='Total de CTE Adicionado '+IntToStr(dm.CD_MDF_CTE.RecordCount);
end;

procedure TFrm_MDF.Act_NFColiseuExecute(Sender: TObject);
begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
      TabSheet3.Show;
        if DM.CD_Mdf_DadosTIPO_EMISSOR.AsInteger = 0 then
            begin


                     TabSheet4.Show;
                     Frm_NFE:=tFrm_NFE.Create(self);
                     Frm_NFE.ShowModal;
                     FrmNFdeCompra:=nil;


            end
            else
            begin
              TabSheet5.Show;
              Frm_RelCTE:=TFrm_RelCTE.Create(self);
              Frm_RelCTE.ShowModal;
              Frm_RelCTE.Free;

            end;
      end;

      dm.CD_Nfe_mdfTable.Refresh;
     Label28.Caption:='Total de NF Adicionada '+IntToStr(Query_NF.RecordCount);
       Label29.Caption:='Total de CTE Adicionado '+IntToStr(dm.CD_MDF_CTE.RecordCount);
end;

procedure TFrm_MDF.Act_PerExcluirExecute(Sender: TObject);
begin
  IF dm.CD_Mdfe_uf_percursoTable.RecordCount<>0 THEN
      BEGIN

       if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


            if dm.CD_Mdf_DadosSTATUS.Value = 0 then
            begin

            if MessageDlg('Deseja realmente excluir o registro de percurso?',mtConfirmation,[mbYes,mbNo],0)=mryes then

                dm.CD_Mdfe_uf_percursoTable.delete;
                dm.CD_Mdfe_uf_percursoTable.ApplyUpdates(0);

            end;


          end;
          TabSheet1.Show;
          DBGrid3.SetFocus;
      END;
end;

procedure TFrm_MDF.Act_PerNovoExecute(Sender: TObject);
begin
 TabSheet1.Show;
 if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


      if DM.CD_Mdfe_uf_percursoTable.RECORDCOUNT<>24 then
         BEGIN
              DM.CD_Mdfe_uf_percursoTable.Insert;
              DM.CD_Mdfe_uf_percursoTableUF.Text:=COMBOBOX1.Text;
              ComboBox1.DeleteSelected;
              ComboBox1.ItemIndex:=0;
              DM.CD_Mdfe_uf_percursoTable.POST;

         END
         ELSE
         SHOWMESSAGE('numero maximos de registro é 24');
         TabSheet1.Show;
          DBGrid3.SetFocus;
      end;
end;

procedure TFrm_MDF.Act_RebAlterarExecute(Sender: TObject);
begin
    if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
                TabSheet2.Show;
      if dm.CD_Mdfe_v_reboqueTable.RecordCount<>0 then
         begin
         FrmReboque:=TFrmReboque.Create(self);
         dm.CD_Mdfe_v_reboqueTable.edit;
         FrmReboque.ShowModal;
         end;
                  TabSheet2.SetFocus;
         DBGrid11.SetFocus;
      end;
end;

procedure TFrm_MDF.Act_RebNovoExecute(Sender: TObject);
begin
    if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
                  TabSheet2.Show;
         FrmReboque:=TFrmReboque.Create(self);
         dm.CD_Mdfe_v_reboqueTable.insert;
         FrmReboque.ShowModal;

         TabSheet2.SetFocus;
         DBGrid11.SetFocus;

      end;
end;

procedure TFrm_MDF.Act_Reb_ExcluirExecute(Sender: TObject);
begin
 if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
                   TabSheet2.Show;
      if dm.CD_Mdfe_v_reboqueTable.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
            dm.CD_Mdfe_v_reboqueTable.Delete;

      end;
           TabSheet2.SetFocus;
         DBGrid11.SetFocus;
end;

procedure TFrm_MDF.Act_SairExecute(Sender: TObject);
begin
if  dm.CD_Mdf_Dados.State in[dsEdit,dsinsert] then
  begin
   if MessageDlg('Deseja salvar as alterações?',mtConfirmation,[mbYes,mbNo],0)=mryes then
       begin
       Button5Click(sender);
       close;
       end
       else
       begin
               dm.CD_Mdf_Dados.CancelUpdates;
               dm.CD_Mdfe_l_carregamentoTable.CancelUpdates;
               dm.CD_Mdfe_l_descarregamentoTable.CancelUpdates;
               dm.CD_Mdfe_condutorTable.CancelUpdates;
               dm.CD_Mdfe_v_reboqueTable.CancelUpdates;
               dm.CD_Mdfe_uf_percursoTable.CancelUpdates;
               dm.CD_MDF_CTE.ApplyUpdates(0);
               dm.CD_Nfe_mdfTable.CancelUpdates;
       end;

  end;

        close;
end;

procedure TFrm_MDF.Act_TrajetoExecute(Sender: TObject);
begin
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

procedure TFrm_MDF.BitBtn1Click(Sender: TObject);
begin
   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


    if dm.cd_mdfe_uf_percursotable.RecordCount<>0 then
        begin

        ComboBox1.Items.Add(dm.CD_Mdfe_uf_percursoTableUF.Text);
        dm.CD_Mdfe_uf_percursoTable.Delete;

        end;
      end;
end;

procedure TFrm_MDF.Button13Click(Sender: TObject);
begin
    if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

      if dm.CD_Mdfe_v_reboqueTable.RecordCount<>0 then
         begin
         FrmReboque:=TFrmReboque.Create(self);
         dm.CD_Mdfe_v_reboqueTable.edit;
         FrmReboque.ShowModal;
         end;
      end;
end;

procedure TFrm_MDF.Button14Click(Sender: TObject);
var
vaux, vnumlote : string;
begin
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);
    Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(self);
    dm.CD_MDFe_Config.Open;
    dm.REGIAO.Open;

                    confere.Close;
                    confere.CommandText:='select * from mdfe_dados where status = 7 and ID <> '+dm.CD_Mdf_DadosID.AsString;
                    confere.Open;
                    confere.refresh;

                    Frm_MDFCOnfig.ConfiguraComponente;
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;

//                    dm.CD_Mdf_DadosCHAVE.Value:=Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);



    if confere.RecordCount=0 then
       begin
                if  dm.CD_Mdf_DadosNUMERO.Value<1 then
                    begin
                    dm.CD_Mdf_Dados.Edit;
                    dm.CD_Mdf_DadosNUMERO.Value:=dm.CD_MDFe_ConfigNUMERO.Value+1;
                    dm.CD_Mdf_Dados.Post;
                    dm.CD_Mdf_Dados.ApplyUpdates(0);

                    end;
                if (dm.CD_Mdf_DadosSTATUS.Value=0) or (dm.CD_Mdf_DadosSTATUS.Value=3) then
                    begin
                      Button5Click(sender);

                     if dm.Mdfe_l_carregamentoTable.RecordCount=0 then
                        begin

                        MessageDlg('Adicione o Local de Carregamento!',mtWarning,[mbok],0);
                        TabSheet1.Show;
                        DBComboBox1.SetFocus;

                        end
                        else
                        if dm.Mdfe_l_descarregamentoTable.RecordCount=0 then
                            begin
                            MessageDlg('Adicione o Local de descarregamento!',mtWarning,[mbok],0);
                            TabSheet1.Show;
                            DBComboBox2.SetFocus;

                            end
                            else
                            if RzDBComboBox2.ItemIndex=-1 then
                                begin
                                MessageDlg('Tipo de Carroceria não pode ser Nulo!',mtWarning,[mbok],0);
                                TabSheet2.Show;
                                RzDBComboBox2.SetFocus;

                                end
                                else
                                 if Length(DBEdit5.Text)=0 then
                                    begin
                                    MessageDlg('o campo placa tem que não pode ser Nulo!',mtWarning,[mbok],0);
                                    TabSheet2.Show;
                                    DBEdit5.SetFocus;
                                    end
                                    else
                                    if DBComboBox3.ItemIndex=-1 then
                                        begin
                                        MessageDlg('UF de Licenciamento não pode ser Nulo!',mtWarning,[mbok],0);
                                        TabSheet2.Show;
                                        DBComboBox3.SetFocus;

                                        end
                                        else
                                        if Length(DBEdit12.Text)=0 then
                                           begin
                                            MessageDlg('Tara não pode ser nulo',mtWarning,[mbok],0);
                                             TabSheet2.Show;
                                             DBEdit12.SetFocus;
                                           end
                                            else
                                            if dm.CD_Mdfe_condutorTable.RecordCount=0 then
                                                begin
                                                MessageDlg('Cadastre pelo menos 1 motorista!',mtWarning,[mbok],0);
                                                TabSheet2.Show;
                                                end
                                                else
                                                begin

                                                Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
                                                Frm_MDFCOnfig.GerarMDFe(vAux);
                                                      dm.CD_Mdf_Dados.Edit;
                                                       dm.CD_Mdf_DadosDATA.AsDateTime:=date;
                                                      dm.CD_Mdf_DadosSTATUS.Value:=0;
                                                      dm.CD_Mdf_Dados.Post;
                                                      dm.CD_Mdf_Dados.ApplyUpdates(0);

                                                        dm.CD_MDFe_Config.edit;
                                                        dm.CD_MDFe_ConfigNUMERO.Value:=dm.CD_Mdf_DadosNUMERO.Value;

                                                        dm.CD_MDFe_Config.post;
                                                        dm.CD_MDFe_Config.ApplyUpdates(0);

                                                 Frm_MDFCOnfig.ACBrMDFe1.Enviar(StrToInt('1'));


                                                        dm.Cli_Cad_Log.open;
                                                        dm.Cli_Cad_Log.Insert;
                                                        dm.Cli_Cad_LogID_USER.asinteger:=ID;
                                                        if dm.Cli_Cad_LogID_USER.AsInteger = 1 then
                                                            dm.Cli_Cad_LogNOME.Text := 'SUPORTE SILENUS'
                                                            else
                                                            dm.Cli_Cad_LogNOME.Text := Frm_Principal.StatusBar1.Panels[1].Text;

                                                        DM.Cli_Cad_LogDATA.AsDateTime:=now;
                                                        dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                        dm.Cli_Cad_LogPROCESSO.Text := 'Envio';
                                                        dm.Cli_Cad_LogDOC.Text:= dm.CD_Mdf_DadosNUMERO.Text;
                                                        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                        DBMemo2.Lines.Add('Enviado MDFe Nº'+dm.CD_Mdf_DadosNUMERO.Text);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.xMotivo);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Msg);
                                                        DBMemo2.Lines.Add(Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].NumID);
                                                        dm.Cli_Cad_Log.Post;
                                                        dm.cli_cad_log.ApplyUpdates(0);




                                                TThread.Synchronize(nil,consultar);





                                                     Label13.Caption:=RzDBComboBox1.Text;
                                                     close;
                                                // Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;

                                                end;

                    end
       end
       else
       MessageDlg('Existe um MDFe em emissão finalize ele primeiro!',mtWarning,[mbok],0);
     //  Frm_MDFCOnfig.destroy;

end;



procedure TFrm_MDF.Button15Click(Sender: TObject);
begin
if dm.CD_MDF_Seguro.RecordCount <> 0 then
  begin
  if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
        Frm_Seguro:=tfrm_seguro.Create(self);
        dm.CD_MDF_Seguro.edit;
        frm_seguro.ShowModal;
        frm_seguro.Free;
      end;
  end;



{if Length(dm.CD_Mdf_DadosVEI_TIPO_CARROCERIA.text) = 0 then
   begin
   MessageDlg('Sr Usuário selecione o tipo de carroceria!',mtWarning,[mbOK],0);
   RzDBComboBox2.SetFocus;
   end
    else
   if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
       begin
       MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
       DBEdit5.SetFocus;
       end
        else
         if Length(dm.CD_Mdf_DadosVEI_UF.text) = 0 then
           begin
           MessageDlg('Sr Usuário a UF de licenciamento do veículo não pode ser nulo!',mtWarning,[mbOK],0);
           DBComboBox3.SetFocus;
           end
            ELSE
             if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
             begin
             MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
             DBEdit5.SetFocus;
             end
              else
                if Length(dm.CD_Mdf_DadosVEI_TIPO_RODADO.text) = 0 then
                   begin
                   MessageDlg('Sr Usuário selecione o tipo de rodado!',mtWarning,[mbOK],0);
                   RzDBComboBox3.SetFocus;
                   end
                     else
                      if Length(dm.CD_Mdf_DadosVEI_TARA.text) = 0 then
                         begin
                         MessageDlg('Sr Usuário a TARA do veículo não pode ser nula!',mtWarning,[mbOK],0);
                         DBEdit12.SetFocus;
                         end
                         else
                         if dm.CD_Mdfe_condutorTable.RecordCount = 0 then
                             begin
                             MessageDlg('Sr Usuário selecione o motorista!',mtWarning,[mbOK],0);
                             GroupBox4.SetFocus;
                             end
                              else
                               begin
                               TabSheet3.visible:=true;
                               PageControl1.ActivePage:=TabSheet3;
                               end;

{
if DM.CD_Mdf_DadosSTATUS.Value=1 then
   BEGIN

 {if OpenDialog1.Execute then
  begin
  Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
   Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.Arquivos.PathSalvar+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
   Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Imprimir;

   END; }
 // end;
end;

procedure TFrm_MDF.Button16Click(Sender: TObject);
var
 Para : String;
 CC   : Tstrings;
 mem  : TMemo;
 begin

if DM.CD_Mdf_DadosSTATUS.Value=1 then
   BEGIN


 if not(InputQuery('Enviar Email', 'Email de destino', Para))
  then exit;


  Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Clear;
  Frm_MDFCOnfig.ACBrMDFe1.Manifestos.LoadFromFile(Frm_MDFCOnfig.ACBrMDFe1.Configuracoes.Arquivos.PathSalvar+'\MDFe\'+DM.CD_Mdf_DadosCHAVE.Text+'-mdfe.XML');
   CC:=TstringList.Create;
  // CC.Add(Para); //especifique um email válido
  // CC.Add('email_2@provedor.com.br'); //especifique um email válido
  FrmGrade.memo1.Lines.Add('MDFe '+dm.CD_Mdf_DadosNUMERO.text);
   Frm_MDFCOnfig.ACBrMDFe1.Manifestos.Items[0].EnviarEmail(Para , 'MDFe '+dm.CD_Mdf_DadosNUMERO.text
                                             , FrmGrade.memo1.Lines
                                             , true //Enviar PDF junto
                                            , nil //Lista com emails que serão enviado cópias - TStrings
                                            , nil // Lista de anexos - TStrings
                                              );

   CC.Free;
end;

 end;


procedure TFrm_MDF.Button21Click(Sender: TObject);
begin
  if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
        Frm_Seguro:=tfrm_seguro.Create(self);
        dm.CD_MDF_Seguro.Insert;
        frm_seguro.ShowModal;
        frm_seguro.Free;
      end;
end;

procedure TFrm_MDF.Button23Click(Sender: TObject);
begin
  if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

      if dm.CD_MDF_Seguro.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
          dm.CD_MDF_Seguro.Delete;
      end;
end;

procedure TFrm_MDF.Button3Click(Sender: TObject);
begin
    if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

         FrmReboque:=TFrmReboque.Create(self);
         dm.CD_Mdfe_v_reboqueTable.insert;
         FrmReboque.ShowModal;

      end;
end;

procedure TFrm_MDF.Button4Click(Sender: TObject);
begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin

      if dm.CD_Mdfe_v_reboqueTable.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
            dm.CD_Mdfe_v_reboqueTable.Delete;

      end;
end;

procedure TFrm_MDF.Button5Click(Sender: TObject);
var
valor : real;
begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin
       try
              //dados
                dm.CD_Mdf_Dados.Edit;
              if Length(DBEdit6.Text)<1 then
                 dm.CD_Mdf_DadosVEI_CAPACIDADE.Value:=0;

              if Length(DBEdit13.Text)<1 then
                 dm.CD_Mdf_DadosVEI_CAPC_M3.Value:=0;


             dm.CD_Mdf_Dados.ApplyUpdates(0);

              //NFE Relacionada

              dm.Rel_NF.Close;
              dm.Rel_NF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.Value;
              dm.Rel_NF.open;



              dm.CD_Mdf_Dados.Edit;
              dm.CD_Mdf_DadosTOT_VALOR_TOTAL_MERCADORIA.Value:=dm.Rel_NFVALOR.Value;
              dm.CD_Mdf_DadosTOT_PESO_BRUTO.Value:= dm.Rel_NFPESO.Value;
              dm.CD_Mdf_Dados.post;
              dm.CD_Mdf_Dados.ApplyUpdates(0);




              if dm.CD_Mdf_DadosTIPO_EMISSOR.AsInteger = 1 then
                  begin
                       dm.CD_Mdf_Dados.Edit;
                      dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.Value:=DM.CD_MDF_CTE.RecordCount;
                      dm.CD_Mdf_Dados.post;
                  end
                  else
                  begin

                      dm.CD_Mdf_Dados.Edit;
                      dm.CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO.Value:=dm.Rel_NFN_NF.Value;
                      dm.CD_Mdf_Dados.post;
                  end;


              
               dm.CD_Mdf_Dados.ApplyUpdates(0);
               dm.CD_Mdfe_l_carregamentoTable.ApplyUpdates(0);
               dm.CD_Mdfe_l_descarregamentoTable.ApplyUpdates(0);
               dm.CD_Mdfe_condutorTable.ApplyUpdates(0);
               dm.CD_Mdfe_v_reboqueTable.ApplyUpdates(0);
               dm.CD_Mdfe_uf_percursoTable.ApplyUpdates(0);
             //  dm.CD_Nfe_mdfTable.ApplyUpdates(0);
               dm.CD_MDF_Seguro.ApplyUpdates(0);
           

               dm.CD_MDF_Averbacao.ApplyUpdates(0);

            //  ShowMessage(FloatToStr(Query_TotalVALOR.Value));
            except

       end;

      end;

end;

procedure TFrm_MDF.consultar;
begin
                                                   Panel5.Visible:=TRUE;
                                                   //Timer1.Enabled:=TRUE;
                                                   Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.MDFeChave :=dm.CD_Mdf_DadosCHAVE.Text;
                                                   Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.Executar;
                                               //   if (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 100) or (Frm_CTE_Config.ACBrcte1.WebServices.Consulta.cStat = 110) then
                                                   if Frm_MDFCOnfig.ACBrMDFe1.WebServices.Consulta.cStat = 100 then
                                                   begin
                                                       Frm_MDFCOnfig.ACBrMDFe1.Manifestos.validar;
                                                       Frm_MDFCOnfig.ACBrMDFe1.Manifestos.assinar;
                                                        dm.CD_MDFe_Config.edit;
                                                        dm.CD_MDFe_ConfigNUMERO.Value:=dm.CD_Mdf_DadosNUMERO.Value;
                                                        dm.CD_MDFe_Config.post;
                                                        dm.CD_MDFe_Config.ApplyUpdates(0);
                                                        dm.CD_Mdf_Dados.Edit;
                                                        dm.CD_Mdf_DadosSTATUS.Value:=1;
                                                        dm.CD_Mdf_DadosMDF_PROTOCOLO.Text:=Frm_MDFCOnfig.ACBrMDFe1.WebServices.Retorno.Protocolo;
                                                        dm.CD_Mdf_Dados.Post;
                                                        dm.CD_Mdf_Dados.ApplyUpdates(0);
                                                        close;

                                                   end
                                                   else
                                                   dm.CD_Mdf_Dados.Edit;
                                                 //  TIMER1.Enabled:=FALSE;
                                                   Panel5.Visible:=FALSE;
end;

procedure TFrm_MDF.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_MDF.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_MDF.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin

if not (Key in[' '..' ',Chr(8)]) then
      Key:= #0;

end;

procedure TFrm_MDF.DBEdit5Enter(Sender: TObject);
begin
 if DM.CD_Mdf_Dados.State IN[DSINSERT,dsEdit] then
    DM.CD_Mdf_DadosVEI_PLACA.AsString:=StringReplace(DM.CD_Mdf_DadosVEI_PLACA.AsString,'-','',[rfReplaceAll]);

end;

procedure TFrm_MDF.DBEdit5Exit(Sender: TObject);
VAR
NUM : STRING;
begin
   NUM:=COPY(DBEdit5.Text,5,1);
   if frmfuncoes.EhNumero(NUM) then
      DBEdit5.Text:=COPY(DBEdit5.Text,1,3)+'-'+COPY(DBEdit5.Text,4,4)
      else
      DBEdit5.Text:=COPY(DBEdit5.Text,1,3)+' '+COPY(DBEdit5.Text,4,4)
end;

procedure TFrm_MDF.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
      if not (Key in['0'..'9','a'..'z','A'..'Z',Chr(8)]) then Key:= #0
end;

procedure TFrm_MDF.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_MDF.DBGrid11CellClick(Column: TColumn);
begin
if DBGrid11.SelectedField.FieldName = 'ID' then
  begin


      Act_RebAlterar.Execute;

  end;


 if DBGrid11.SelectedField.FieldName = 'COD_INT_VEIUC' then
  begin

      Act_Reb_Excluir.Execute;
  end;
end;

procedure TFrm_MDF.DBGrid11DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =4 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);

   end;

   if datacol =5 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;
end;

procedure TFrm_MDF.DBGrid1CellClick(Column: TColumn);
begin
if DBGrid1.SelectedField.FieldName = 'ID' then
  begin


      if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


             if dm.CD_Mdf_DadosSTATUS.Value = 0 then
                begin


                if DM.cd_Mdfe_l_carregamentoTable.RecordCount<>0 then
                   begin

                   if MessageDlg('deseja realmente excluir o registro selecionado?',mtConfirmation,[mbYes,mbno],0)=mryes then
                      begin
                      DM.cd_Mdfe_l_carregamentoTable.Delete;

                      DM.cd_Mdfe_l_carregamentoTable.ApplyUpdates(0);
                      end;
                     if DM.CD_Mdfe_l_carregamentoTable.RecordCount=0 then
                           DBComboBox1.Enabled:=TRUE;

                   end;
                end;

          end;


  end;
end;

procedure TFrm_MDF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =2 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;
end;

procedure TFrm_MDF.DBGrid2CellClick(Column: TColumn);
begin
if DBGrid2.SelectedField.FieldName = 'ID' then
  begin


      Act_MotEdit.Execute;

  end;


 if DBGrid2.SelectedField.FieldName = 'ID_MDFE' then
  begin

      Act_MotExcluir.Execute;
  end;




end;

procedure TFrm_MDF.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =2 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 1);

   end;

   if datacol =3 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;




end;

procedure TFrm_MDF.DBGrid3CellClick(Column: TColumn);
var
x : integer;

begin
if DBGrid3.SelectedField.FieldName = 'ID' then
  begin
  IF dm.CD_Mdfe_uf_percursoTable.RecordCount<>0 THEN
      BEGIN

       if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


            if dm.CD_Mdf_DadosSTATUS.Value = 0 then
            begin

            if MessageDlg('Deseja realmente excluir o registro de percurso?',mtConfirmation,[mbYes,mbNo],0)=mryes then
              begin
                x:=ComboBox1.ItemIndex;
                ComboBox1.Text:= dm.CD_Mdfe_uf_percursoTableUF.AsString;
                ComboBox1.DeleteSelected;
                ComboBox1.Items.Add(dm.CD_Mdfe_uf_percursoTableUF.AsString);
                dm.CD_Mdfe_uf_percursoTable.delete;
                dm.CD_Mdfe_uf_percursoTable.ApplyUpdates(0);
                ComboBox1.ItemIndex:=x;

              end;

            end;


          end;
      END;
  end;
end;

procedure TFrm_MDF.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =1 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);
   end;
end;

procedure TFrm_MDF.DBGrid4DblClick(Sender: TObject);
begin
               Frm_MDFe_AnexCTE:=TFrm_MDFe_AnexCTE.Create(self);
               dm.CD_MDF_CTE.EDIT;
               Frm_MDFe_AnexCTE.ShowModal;
               Frm_MDFe_AnexCTE.Free;
end;

procedure TFrm_MDF.DBGrid5CellClick(Column: TColumn);
begin
   if DBGrid5.SelectedField.FieldName = 'ID' then
  begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
      begin


      if dm.cd_Mdfe_l_descarregamentoTable.RecordCount<>0 then
         if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
            begin
            dm.cd_Mdfe_l_descarregamentoTable.Delete;
            dm.cd_Mdfe_l_descarregamentoTable.ApplyUpdates(0);
            end;

        if DM.CD_Mdfe_l_descarregamentoTable.RecordCount=0 then
                           DBComboBox2.Enabled:=TRUE;


      end;
  end;
end;

procedure TFrm_MDF.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if datacol =2 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;

end;

procedure TFrm_MDF.DBGrid6CellClick(Column: TColumn);
begin       {
if DBGrid6.SelectedField.FieldName = 'ID2' then
  begin

   if dm.CD_Mdf_DadosSTATUS.Value = 0 then
          begin


                if DM.CD_Nfe_mdfTable.RecordCount<>0 then


                   if MessageDlg('deseja realmente excluir a NF-e selecionada?',mtConfirmation,[mbYes,mbno],0)=mryes then
                   BEGIN
                     fdquery1.params[0].AsInteger:=dm.CD_Nfe_mdfTableID.AsInteger;
                     FDQuery1.ExecSQL;
                     DM.CD_Nfe_mdfTable.Refresh;

                   END;

          end;
  end;   }

end;

procedure TFrm_MDF.DBGrid6DblClick(Sender: TObject);
var
cod_regiao : TFDQuery;
begin




if Query_NF.RecordCount<>0  then
   begin

           FrmNFdeCompra:=TFrmNFdeCompra.Create(self);
           FrmNFdeCompra.Edit1.Text:=Query_NFCHAVE_NFE.AsString;
           FrmNFdeCompra.Edit2.Text:=Query_NFCHAVE_REF.AsString;
           FrmNFdeCompra.Edit3.Text:=Query_NFN_DA_NFE.AsString;
           FrmNFdeCompra.cxCalcEdit3.Value:=Query_NFPESO.Value;
           FrmNFdeCompra.cxCalcEdit2.Value:=Query_NFQNT_UN_TRANSP.Value;
           FrmNFdeCompra.cxCalcEdit1.Value:=Query_NFVALOR.Value;



           FrmNFdeCompra.SQLDataSet1.Close;
           FrmNFdeCompra.SQLDataSet1.Open;







                 cod_regiao:=TFDQuery.Create(nil);
                cod_regiao.Connection:=dm.FDConnection1;
                cod_regiao.SQL.Text:='select id_regiao from regioes where codigo_ibge =:f';



               dm.CD_Mdfe_l_descarregamentoTable.First;
              while not  dm.CD_Mdfe_l_descarregamentoTable.Eof do
               begin
                 FrmNFdeCompra.RzComboBox1.Items.Add(dm.CD_Mdfe_l_descarregamentoTableMUNICIPIO.asstring);
                 cod_regiao.Close;
                 cod_regiao.Params[0].AsString:=dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.asstring;
                 cod_regiao.open;
                 FrmNFdeCompra.RzComboBox1.Values.Add(IntToStr(cod_regiao.FieldByName('id_regiao').AsInteger));
                 dm.CD_Mdfe_l_descarregamentoTable.next;
               end;
                 cod_regiao.Free;


           {   FrmNFdeCompra.SQLDataSet1.first;
              while not FrmNFdeCompra.SQLDataSet1.eof do
                 begin
                 FrmNFdeCompra.RZCOMBOBOX1.Items.Add(FrmNFdeCompra.SQLDataSet1.FieldByName('CIDADE').Text);
                 FrmNFdeCompra.RZCOMBOBOX1.Values.Add(IntToStr(FrmNFdeCompra.SQLDataSet1.FieldByName('ID_REGIAO').ASINTEGER));
                 FrmNFdeCompra.SQLDataSet1.Next;
                 end; }

           FrmNFdeCompra.RZCOMBOBOX1.Value:=Query_NFID_REGIAO.AsString;

           Proc_NF.ParamByName('cadastro').AsInteger:=1;
           Proc_NF.ParamByName('id').AsInteger:=Query_NFID.AsInteger;
           FrmNFdeCompra.ShowModal;
           FrmNFdeCompra:=nil;
           Query_NF.Refresh;

   end;
end;

procedure TFrm_MDF.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin    {
 if datacol =5 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +5,Rect.Top + 1, 0);
   end; }
end;

procedure TFrm_MDF.DBGrid7CellClick(Column: TColumn);
begin
if dm.CD_MDF_Seguro.RecordCount<>0 then
  begin
   dm.CD_MDF_Averbacao.close;
   dm.CD_MDF_Averbacao.CommandText:='select * from MDF_SEGURO_AVERB where ID_SEGURO ='+dm.CD_MDF_SeguroID.AsString;
   dm.CD_MDF_Averbacao.open;
  end;
end;

procedure TFrm_MDF.DBGrid7DblClick(Sender: TObject);
begin
            dm.Query_UF.Close;
            dm.Query_UF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
            dm.Query_UF.Params[1].AsInteger:=DM.CD_Mdfe_l_descarregamentoTableCOD_MUN.AsInteger;
            dm.Query_UF.open;



end;

procedure TFrm_MDF.DBGrid8CellClick(Column: TColumn);
begin
if (DBGrid8.SelectedField.FieldName = 'X') or (DBGrid8.SelectedField.FieldName = ' ') then
  begin


      if dm.Query_MDFE_Ciot.RecordCount <> 0 then
         begin
            dm.Query_MDFE_Ciot.delete;
            dm.Query_MDFE_Ciot.Refresh;
         end;


  end;
end;

procedure TFrm_MDF.DBGrid8DblClick(Sender: TObject);
begin


     Frm_MDFe_AnexCTE:=TFrm_MDFe_AnexCTE.Create(self);
     Frm_MDFe_AnexCTE.ShowModal;
     Frm_MDFe_AnexCTE.Free;
end;

procedure TFrm_MDF.DBGrid8DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if datacol =2 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList4.Draw(TDBGrid(Sender).Canvas, Rect.Left +1,Rect.Top + 1, 0);

   end;
end;

procedure TFrm_MDF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if (dm.CD_Mdf_DadosSTATUS.Value = 7) then
       begin
       dm.CD_Mdf_Dados.Edit;

       dm.CD_Mdf_DadosSTATUS.Value:=0;

       dm.CD_Mdf_Dados.post;
       dm.CD_Mdf_Dados.ApplyUpdates(0);
       end

end;

procedure TFrm_MDF.FormCreate(Sender: TObject);
begin
Frm_MDFCOnfig:=TFrm_MDFCOnfig.Create(nil);



end;

procedure TFrm_MDF.FormShow(Sender: TObject);
begin
DM.CD_Mdfe_uf_percursoTable.open;
dm.CD_Mdfe_l_carregamentoTable.Open;
dm.CD_Mdfe_l_descarregamentoTable.Open;
 dm.CD_Mdfe_condutorTable.open;
TabSheet1.Show;

    dm.CD_MDF_seguro.Open;
   dm.CD_MDF_Averbacao.close;
if dm.cd_mdf_seguro.RecordCount<>0 then
   dm.CD_MDF_Averbacao.CommandText:='select * from MDF_SEGURO_AVERB where ID_SEGURO ='+dm.CD_MDF_SeguroID.AsString
   else
   dm.CD_MDF_Averbacao.CommandText:='select * from MDF_SEGURO_AVERB where ID_SEGURO =0';



   dm.CD_MDF_Averbacao.open;

label21.Caption:= 'Emissão '+FormatDateTime('dd" de "mmmm" de "yyyy', dm.CD_Mdf_DadosDATA.Value)+' '+ FormatDateTime('hh":"mm":"ss', dm.CD_Mdf_DadosHORA.Value);
                             Label13.Caption:=RzDBComboBox1.Text;


if (dm.CD_Mdf_DadosSTATUS.Value=1) or (dm.CD_Mdf_DadosSTATUS.Value=2) then
   begin

   panel8.Enabled:=false;
   Info.Enabled:=false;

   end;

    Query_NF.Close;
    Query_NF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
    Query_NF.open;

 dm.Query_MDFE_Ciot.Close;
 dm.Query_MDFE_Ciot.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
 dm.Query_MDFE_Ciot.Open();


if dm.CD_Mdfe_l_carregamentoTable.RecordCount<>0 then
   DBComboBox1.Enabled:=false;

if dm.CD_Mdfe_l_descarregamentoTable.RecordCount<>0 then
   DBComboBox2.Enabled:=false;


 if dm.CD_MDFe_ConfigTIPOAMB.AsInteger = 1 then
   BEGIN
     Label15.Color:=clBlack;

   Label15.Caption:='PRODUÇÃO'
   END
   ELSE

if dm.CD_MDFe_ConfigTIPOAMB.AsInteger = 2 then
     BEGIN
     Label15.Color:=clSilver;
     Label15.Caption:='HOMOLOGAÇÃO'

   END;

end;

procedure TFrm_MDF.gerarmdfe;
begin
//
end;

procedure TFrm_MDF.InfoShow(Sender: TObject);
begin
{
if dm.CD_Mdfe_l_carregamentoTable.RecordCount=0 then
         begin
         MessageDlg('Sr Usuário local de carregamento não pode ser nulo!',mtWarning,[mbOK],0);
         TabSheet3.Enabled:=false;

         end
         else
         if dm.CD_Mdfe_l_descarregamentoTable.RecordCount=0 then
         begin
         MessageDlg('Sr Usuário local de descarregamento não pode ser nulo!',mtWarning,[mbOK],0);
          TabSheet3.Enabled:=false;

         end
         else
         if Length(dm.CD_Mdf_DadosVEI_TIPO_CARROCERIA.text) = 0 then
   begin
   MessageDlg('Sr Usuário selecione o tipo de carroceria!',mtWarning,[mbOK],0);
    TabSheet3.Enabled:=false;
   end
    else
   if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
       begin
       MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
       TabSheet3.Enabled:=false;
       end
        else
         if Length(dm.CD_Mdf_DadosVEI_UF.text) = 0 then
           begin
           MessageDlg('Sr Usuário a UF de licenciamento do veículo não pode ser nulo!',mtWarning,[mbOK],0);
           TabSheet3.Enabled:=false;
           end
            ELSE
             if Length(dm.CD_Mdf_DadosVEI_PLACA.text) = 0 then
             begin
             MessageDlg('Sr Usuário a placa tipo do veículo não pode ser nula!',mtWarning,[mbOK],0);
             TabSheet3.Enabled:=false;
             end
              else
                if Length(dm.CD_Mdf_DadosVEI_TIPO_RODADO.text) = 0 then
                   begin
                   MessageDlg('Sr Usuário selecione o tipo de rodado!',mtWarning,[mbOK],0);
                   TabSheet3.Enabled:=false;
                   end
                     else
                      if Length(dm.CD_Mdf_DadosVEI_TARA.text) = 0 then
                         begin
                         MessageDlg('Sr Usuário a TARA do veículo não pode ser nula!',mtWarning,[mbOK],0);
                         TabSheet3.Enabled:=false;
                         end
                         else
                         if dm.CD_Mdfe_condutorTable.RecordCount = 0 then
                             begin
                             MessageDlg('Sr Usuário selecione o motorista!',mtWarning,[mbOK],0);
                             TabSheet3.Enabled:=false;

                             end
                             else
                             if dm.CD_Mdf_DadosSTATUS.AsInteger=0 then
                                DBMemo1.Enabled:=true
                                else
                                DBMemo1.Enabled:=false; }

end;

end.
