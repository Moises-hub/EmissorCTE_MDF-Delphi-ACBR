unit UFrm_CTE_EMISSOR2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzRadGrp, RzDBRGrp, Vcl.StdCtrls,
  RzCmboBx, RzDBCmbo, Vcl.DBCtrls, Vcl.Mask, RzPanel, Vcl.ExtCtrls, RzLabel,
  RzTabs, dxGDIPlusClasses, RzDBLbl, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, RzButton, System.ImageList, Vcl.ImgList, cxTextEdit,
  cxDBEdit, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzDBEdit,
  RzEdit, Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider,
  Vcl.OleCtrls, SHDocVw, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_CTE_EMISSOR2 = class(TForm)
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    Panel1: TPanel;
    RzGroupBox1: TRzGroupBox;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    RzDBComboBox5: TRzDBComboBox;
    Label5: TLabel;
    RzDBComboBox6: TRzDBComboBox;
    Label11: TLabel;
    Panel2: TPanel;
    RzDBComboBox3: TRzDBComboBox;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzPanel1: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    DBComboBox1: TDBComboBox;
    Label23: TLabel;
    RzDBLabel2: TRzDBLabel;
    RzDBComboBox15: TRzDBComboBox;
    RzGroupBox3: TRzGroupBox;
    DBComboBox2: TDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    Label7: TLabel;
    RzDBLabel1: TRzDBLabel;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    ImageList1: TImageList;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    RzDBComboBox11: TRzDBComboBox;
    Label25: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    RzToolButton7: TRzToolButton;
    Label39: TLabel;
    Label40: TLabel;
    RzToolButton8: TRzToolButton;
    Label43: TLabel;
    RzToolButton9: TRzToolButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    RzToolButton10: TRzToolButton;
    Label51: TLabel;
    Label52: TLabel;
    RzToolButton11: TRzToolButton;
    Label55: TLabel;
    RzToolButton12: TRzToolButton;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    Button3: TButton;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel9: TPanel;
    RzGroupBox4: TRzGroupBox;
    RzPanel8: TRzPanel;
    RzToolButton14: TRzToolButton;
    RzDBGrid2: TRzDBGrid;
    DBEdit2: TDBEdit;
    Label63: TLabel;
    DBEdit1: TDBEdit;
    Label64: TLabel;
    Label66: TLabel;
    DBEdit19: TDBEdit;
    Label65: TLabel;
    Panel8: TPanel;
    RzGroupBox19: TRzGroupBox;
    DBGrid2: TDBGrid;
    RzPanel15: TRzPanel;
    RzToolButton16: TRzToolButton;
    RzToolButton19: TRzToolButton;
    RzToolButton20: TRzToolButton;
    RzGroupBox5: TRzGroupBox;
    RzPanel3: TRzPanel;
    RzToolButton15: TRzToolButton;
    RzToolButton21: TRzToolButton;
    RzToolButton22: TRzToolButton;
    RzDBGrid5: TRzDBGrid;
    TabSheet8: TTabSheet;
    RzPageControl1: TRzPageControl;
    TabSheet9: TRzTabSheet;
    RzPanel4: TRzPanel;
    TabSheet1: TRzTabSheet;
    TabSheet10: TRzTabSheet;
    RzPanel6: TRzPanel;
    TabSheet3: TRzTabSheet;
    RzPanel7: TRzPanel;
    Panel14: TPanel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    RzDBEdit9: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBEdit3: TRzDBEdit;
    TabSheet4: TTabSheet;
    RzPanel9: TRzPanel;
    TabSheet5: TTabSheet;
    RzGroupBox9: TRzGroupBox;
    DBMemo1: TDBMemo;
    RzPanel11: TRzPanel;
    ImageList2: TImageList;
    RzPanel12: TRzPanel;
    DataSetProvider1: TDataSetProvider;
    CIDADE: TClientDataSet;
    CIDADECIDADE: TStringField;
    CIDADECODIGO_IBGE: TStringField;
    SQLDataSet1: TSQLDataSet;
    RzPanel13: TRzPanel;
    RzDBEdit6: TRzDBEdit;
    Label71: TLabel;
    RzDBEdit7: TRzDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit14: TRzDBEdit;
    Label72: TLabel;
    Label73: TLabel;
    RzDBEdit15: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    Label74: TLabel;
    Label70: TLabel;
    RzDBEdit4: TRzDBEdit;
    Label75: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    TabSheet11: TRzTabSheet;
    RzPanel14: TRzPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    RzToolButton25: TRzToolButton;
    RzToolButton26: TRzToolButton;
    RzToolButton27: TRzToolButton;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    RzGroupBox12: TRzGroupBox;
    RzDBGrid3: TRzDBGrid;
    RzPanel16: TRzPanel;
    Button10: TButton;
    Button11: TButton;
    Button13: TButton;
    cxDBTextEdit16: TcxDBTextEdit;
    Label28: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    Label29: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label30: TLabel;
    RzPanel5: TRzPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    Label41: TLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    Label42: TLabel;
    cxDBTextEdit36: TcxDBTextEdit;
    Label44: TLabel;
    Label53: TLabel;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    Label54: TLabel;
    cxDBTextEdit48: TcxDBTextEdit;
    Label56: TLabel;
    Button4: TButton;
    RzGroupBox13: TRzGroupBox;
    RzDBGrid4: TRzDBGrid;
    RzPanel10: TRzPanel;
    Button14: TButton;
    Button15: TButton;
    Button18: TButton;
    RzDBRadioGroup2: TRzDBRadioGroup;
    FDQuery1: TFDQuery;
    RzToolButton13: TRzToolButton;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzDBComboBox11Select(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure RzToolButton12Click(Sender: TObject);
    procedure RzToolButton16Click(Sender: TObject);
    procedure RzToolButton14Click(Sender: TObject);
    procedure RzToolButton19Click(Sender: TObject);
    procedure RzToolButton20Click(Sender: TObject);
    procedure RzToolButton15Click(Sender: TObject);
    procedure RzToolButton21Click(Sender: TObject);
    procedure RzToolButton22Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzToolButton27Click(Sender: TObject);
    procedure RzToolButton25Click(Sender: TObject);
    procedure RzToolButton26Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure calcularcte;
    procedure RzDBEdit14Exit(Sender: TObject);
    procedure RzDBEdit4Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure RzDBEdit4Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure RzToolButton13Click(Sender: TObject);
    procedure RzBitBtn11Click(Sender: TObject);
    procedure RzBitBtn12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_EMISSOR2: TFrm_CTE_EMISSOR2;

implementation

{$R *.dfm}

uses UDM, UCDM, UFrmTomador, UFrm_Unidade, UFrm_NF_CTE, UFrm_CTE_OutroDoc,
  UFrm_Regiao, UFrm_CTE_Motorista, UFrmPrincipal, UFrm_CTE_Veiculo,
  UFrm_ConfigSistema, UFrm_CTE_Config, UFrm_CTE_Percurso, UFrm_Rotas,
  UFrm_MDFe_AnexCTE, UFrm_CTEXML;

procedure TFrm_CTE_EMISSOR2.Button10Click(Sender: TObject);
begin
if cdm.CD_CTE_condutorTable.RecordCount<>0 then
   begin
      if MessageDlg('deseja realmente excluir o documento selecionado??',mtConfirmation,[mbYes,mbno],0)=mryes then
         cdm.CD_CTE_condutorTable.delete;
   end;

end;

procedure TFrm_CTE_EMISSOR2.Button11Click(Sender: TObject);
begin
if cdm.CD_veiculos.RecordCount<4 then
   begin
       Frm_CTE_Veiculo := TFrm_CTE_Veiculo.Create(self);
       cdm.CD_veiculos.Insert;
       Frm_CTE_Veiculo.ShowModal;
   end;
end;

procedure TFrm_CTE_EMISSOR2.Button13Click(Sender: TObject);
begin
 Frm_CTE_Motorista:=TFrm_CTE_Motorista.Create(self);
cdm.CD_CTE_condutorTable.edit;
Frm_CTE_Motorista.ShowModal;
Frm_CTE_Motorista.Free;
end;

procedure TFrm_CTE_EMISSOR2.Button14Click(Sender: TObject);
begin
if cdm.CD_CTE_condutorTable.RecordCount<>0 then
   begin
      cdm.CD_CTE_condutorTable.delete;
      cdm.CD_CTE_condutorTable.ApplyUpdates(0);

   end;
end;

procedure TFrm_CTE_EMISSOR2.Button15Click(Sender: TObject);
begin
Frm_CTE_Motorista:=TFrm_CTE_Motorista.Create(self);
cdm.CD_CTE_condutorTable.Insert;
Frm_CTE_Motorista.ShowModal;
end;

procedure TFrm_CTE_EMISSOR2.Button18Click(Sender: TObject);
begin
Frm_CTE_Motorista:=TFrm_CTE_Motorista.Create(self);
cdm.CD_CTE_condutorTable.edit;
Frm_CTE_Motorista.ShowModal;
end;

procedure TFrm_CTE_EMISSOR2.Button1Click(Sender: TObject);
begin
          Frm_Regiao:=TFrm_Regiao.Create(self);
          Frm_Regiao.ShowModal;
          Frm_Regiao.Destroy;
end;

procedure TFrm_CTE_EMISSOR2.Button2Click(Sender: TObject);
begin
Frm_CTE_Percurso:=tFrm_CTE_Percurso.Create(self);
Frm_CTE_Percurso.ShowModal;
Frm_Cte_Percurso.Free;
end;

procedure TFrm_CTE_EMISSOR2.Button3Click(Sender: TObject);
begin



     Frm_Rotas:=TFrm_Rotas.Create(self);
     Frm_Rotas.WebBrowser1.Navigate('https://www.google.com.br/maps/dir/'+StringReplace(RzDBComboBox15.Text,' ','+',[rfReplaceAll])+
     ',+'+RzDBComboBox1.Text+'/'+StringReplace(RzDBComboBox2.Text,' ','+',[rfReplaceAll])+',+'+DBComboBox2.text+'/');

     Frm_rotas.ShowModal;
end;

procedure TFrm_CTE_EMISSOR2.Button4Click(Sender: TObject);
begin
    calcularcte;
end;

procedure TFrm_CTE_EMISSOR2.calcularcte;
VAR
REDUCAO : REAL;

begin



              cdm.CD_Emissor_CTE.EDIT;

                cdm.query_partilha.Close;
                cdm.query_partilha.SQL.Text:='select coalesce(tributacao,0) as tributacao ,' +
                                 'coalesce(ICMS,0) as ICMS,' +
                                 'coalesce(reducao_icms,0) as reducao_icms ' +
                                 'from natureza_operacao WHERE codigo_fiscal =:T';
                cdm.query_partilha.PARAMS[0].AsString:= cdm.CD_Emissor_CTECFOP.Asstring;
                cdm.query_partilha.Open;
                cdm.CD_Emissor_CTEST.AsString:=cdm.query_partilha.FieldByName('tributacao').AsString;
                cdm.CD_Emissor_CTEPERC_ICMS.AsString:=cdm.query_partilha.FieldByName('ICMS').AsString;
                cdm.CD_Emissor_CTEREDBC.AsString:=cdm.query_partilha.FieldByName('reducao_icms').AsString;



                  reducao :=cdm.CD_Emissor_CTEREDBC.AsFloat*(CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat/(100));
              IF  cdm.CD_Emissor_CTEST.asstring = '90' THEN
                  cdm.CD_Emissor_CTEBASECALCULO.value:=(CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat)-REDUCAO
                  ELSE
                  cdm.CD_Emissor_CTEBASECALCULO.value:=(CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat);

            if cdm.CD_Emissor_CTEPERC_ICMS.Value<>0 then
               cdm.CD_Emissor_CTEVALORICMS.ascurrency:=cdm.CD_Emissor_CTEBASECALCULO.value*(cdm.CD_Emissor_CTEPERC_ICMS.Value/100);


               cdm.CD_Emissor_CTETOTAL_PREST.AsCurrency:=cdm.CD_Emissor_CTEFRETE.Value+cdm.CD_Emissor_CTEDESPACHO.AsCurrency+cdm.CD_Emissor_CTEPEDAGIO.AsCurrency+cdm.CD_Emissor_CTEVALORICMS.AsCurrency;

               cdm.CD_Emissor_CTEVALOR_RECEBER.AsFloat:= CDM.CD_Emissor_CTEFRETE.AsFloat+CDM.CD_Emissor_CTEDESPACHO.AsFloat+CDM.CD_Emissor_CTEPEDAGIO.AsFloat;


end;

procedure TFrm_CTE_EMISSOR2.DBComboBox1Exit(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.DBComboBox2Exit(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.DBLookupComboBox2Exit(Sender: TObject);
begin
   try
     cdm.CD_Emissor_CTEID_NATUREZA.AsInteger:=CDM.CD_N_OperacaoID_NATUREZA.AsINTEGER;
   except

   end;
end;

procedure TFrm_CTE_EMISSOR2.FormShow(Sender: TObject);
begin








          cdm.CD_CTE_Percurso.Open;
          cdm.CD_CTE_UN.Close;
          cdm.CD_CTE_UN.CommandText:='Select * from CTE_UNI where id_cte ='+cdm.CD_Emissor_CTEID.Asstring;
          cdm.CD_CTE_UN.open;

          cdm.Query_Unidade.Close;
          cdm.Query_Unidade.Params[0].AsInteger:=cdm.CD_Emissor_CTEID.asinteger;
          cdm.Query_Unidade.open;



          CDM.CD_CTE_NFES.CLOSE;
          CDM.CD_CTE_NFES.CommandText:='SELECT * FROM CTE_NFEES WHERE ID_CTE ='+IntToStr(CDM.CD_Emissor_CTEID.AsInteger);
          CDM.CD_CTE_NFES.OPEN;

           DBComboBox1Exit(sender);
           DBComboBox2Exit(sender);

if CDM.CD_Emissor_CTESTATUS.AsInteger = 0 then
   RzDBComboBox3.Font.Color:=clBlack
   ELSE
   if (CDM.CD_Emissor_CTESTATUS.AsInteger = 1) then
      begin
          RzDBComboBox3.Font.Color:=clBlue;
          RzGroupBox3.Enabled:=false;
          RzGroupBox1.Enabled:=false;
          RzGroupBox4.Enabled:=false;
          RzPanel1.Enabled:=false;
          button2.Enabled:=false;
          RzPanel8.Enabled:=false;
          RzPanel9.Enabled:=false;
          RzPanel3.Enabled:=false;
          TabSheet3.Enabled:=false;
          TabSheet7.Enabled:=false;
          TabSheet9.Enabled:=false;
          TabSheet6.Enabled:=false;
          TabSheet8.Enabled:=false;
          TabSheet5.Enabled:=false;
          panel3.Enabled:=false;

      end;






end;

procedure TFrm_CTE_EMISSOR2.RzBitBtn11Click(Sender: TObject);
begin

         if (cdm.CD_Emissor_CTESTATUS.AsInteger <> 1) then
            begin




                                                       cdm.CD_Emissor_CTE.edit;
                                                       cdm.CD_Emissor_CTENATUREZA_OPERACAO.AsString:=cdm.CD_N_OperacaoDESCRICAO_NOTA.AsString;
                                                       cdm.CD_Emissor_CTEINICIDADE.AsString:=RzDBComboBox15.text;
                                                       cdm.CD_Emissor_CTEFIMCIDADE.AsString:=RzDBComboBox2.text;
                                                       cdm.CD_Emissor_CTECODIGO.asinteger:=Random(99999999);
                                                   {    if CD_N_OperacaoORIGEM_MERCADORIA.AsString = '' then
                                                        CD_Emissor_CTECST.AsString:='0'+CD_N_OperacaoTRIBUTACAO.AsString
                                                        ELSE
                                                        CD_Emissor_CTECST.AsString:=CD_N_OperacaoORIGEM_MERCADORIA.AsString+CD_N_OperacaoTRIBUTACAO.AsString;

                                                              }

                                                      Frm_CTE_Config:=tFrm_CTE_Config.Create(self);
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.TimeOut := 30000; // tempo de timeout, coloque um tempo maior para resolver problemas
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.AguardarConsultaRet      := 5000;  // tempo padrão que vai aguardar para consultar após enviar a NF-e
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.IntervaloTentativas      := 3000;  // Intervalo entre as tentativas de envio
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.Tentativas               := 30;    // quantidade de tentativas de envio
                                                      Frm_CTE_Config.ACBrCTe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;



                                                         if Frm_Principal.CTe = 67 then
                                                            begin
                                                            cdm.CD_Emissor_CTENUMCTE.AsInteger:=cdm.CD_CTE_CONFIGNUMERO_OS.AsInteger;
                                                            Frm_CTE_Config.GerarCTeOS;
                                                            cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                                                            cdm.CD_Emissor_CTE.post;
                                                            cdm.CD_Emissor_CTE.ApplyUpdates(0);



                                                            end
                                                           else
                                                         if Frm_Principal.CTe = 57 then
                                                           begin

                                                            cdm.CD_Emissor_CTENUMCTE.AsInteger:=cdm.CD_CTE_CONFIGNUMERO.AsInteger;
                                                           // cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                                                            cdm.CD_Emissor_CTE.post;
                                                            cdm.CD_Emissor_CTE.ApplyUpdates(0);


                                                            Frm_CTE_Config.GerarCTe;
                                                           end;


                                                     Frm_CTE_Config.ACBrCTe1.Conhecimentos.Assinar;


                                                     cdm.CD_Emissor_CTE.Edit;
                                                     cdm.CD_Emissor_CTECHAVE.Value:=Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].NumID;

                                                      cdm.CD_Emissor_CTEPROTOCOLO.AsString:=Frm_CTE_Config.ACBrCTe1.Conhecimentos.Items[0].CTe.procCTe.nProt;



                                                     cdm.CD_Emissor_CTE.ApplyUpdates(0);

                                                     Frm_CTE_Config.ACBrCTe1.Enviar(1);

                                                  if Frm_CTE_Config.ACBrcte1.WebServices.Retorno.cStat = 100 then
                                                     begin
                                                              cdm.CD_Emissor_CTE.Edit;
                                                              cdm.CD_Emissor_CTESTATUS.asinteger:=1;
                                                              cdm.CD_Emissor_CTE.post;
                                                              cdm.CD_Emissor_CTE.ApplyUpdates(0);

                                                            if Frm_Principal.CTe = 57 then
                                                              begin
                                                              cdm.CD_CTE_CONFIG.Edit;
                                                              cdm.CD_CTE_CONFIGNUMERO.AsInteger:=cdm.CD_Emissor_CTENUMCTE.AsInteger+1;
                                                              cdm.CD_CTE_CONFIG.Post;
                                                              cdm.CD_CTE_CONFIG.ApplyUpdates(0);
                                                              end
                                                              else
                                                              begin
                                                              cdm.CD_CTE_CONFIG.Edit;
                                                              cdm.CD_CTE_CONFIGNUMERO_OS.AsInteger:=cdm.CD_Emissor_CTENUMCTE.AsInteger+1;
                                                              cdm.CD_CTE_CONFIG.Post;
                                                              cdm.CD_CTE_CONFIG.ApplyUpdates(0);
                                                              end;

                                                              close;


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
                                                        Frm_Principal.log.Params[3].AsSTRING:='EMISSAO';
                                                        Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                                        Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                                        Frm_Principal.log.Params[6].Asstring:='EMISSÃO DE CTe  Nº'+CDM.CD_Emissor_CTENUMCTE.AsString;
                                                        Frm_Principal.log.ExecSQL();








                                                     end;




            end
            else

               begin
               Frm_CTE_Config:=tFrm_CTE_Config.create(Self);
               Frm_CTE_Config.ACBrCTe1.Conhecimentos.Clear;
               Frm_CTE_Config.lerconfiguracao;
               Frm_CTE_Config.ACBrCTe1.Conhecimentos.LoadFromFile(CDM.CD_CTE_CONFIGPATCH.AsString+'XML'+'\'+FormatDateTime('yyyy"\"mm',cdm.CD_Emissor_CTEDATA_EMISSAO.AsDateTime)+'\'+CDM.CD_Emissor_CTECHAVE.AsString+'-cte.xml');
               Frm_CTE_Config.ACBrCTe1.Conhecimentos.Imprimir;
               Frm_CTE_Config.Free;
               end;
end;

procedure TFrm_CTE_EMISSOR2.RzBitBtn12Click(Sender: TObject);
begin
if CDM.CD_Emissor_CTE.State in[dsInsert,dsEdit] then
   if Application.MessageBox('deseja salvar as alterações??','',MB_ICONQUESTION+MB_YESNO) =mrYes then
      begin
      CDM.CD_Emissor_CTE.post;
      CDM.CD_Emissor_CTE.ApplyUpdates(0);

      end;

close;
end;

procedure TFrm_CTE_EMISSOR2.RzDBComboBox11Select(Sender: TObject);
begin
if RzDBComboBox11.ItemIndex = 4 then
   begin
    RzPanel14.Enabled:=true;
   end
   else
   begin
    RzPanel14.Enabled:= true;
   end;

end;

procedure TFrm_CTE_EMISSOR2.RzDBEdit14Exit(Sender: TObject);
begin
 cdm.CD_Emissor_CTE.Edit;
if cdm.CD_Emissor_CTEPERC_ICMS.Value<>0 then
   cdm.CD_Emissor_CTEVALORICMS.ascurrency:=cdm.CD_Emissor_CTEBASECALCULO.value*(cdm.CD_Emissor_CTEPERC_ICMS.Value/100);

   cdm.CD_Emissor_CTETOTAL_PREST.AsCurrency:=cdm.CD_Emissor_CTEVALOR_RECEBER.Value+cdm.CD_Emissor_CTEOUTRASDESP.AsCurrency+cdm.CD_Emissor_CTEVALORICMS.AsCurrency;
  // calcularcte;

end;

procedure TFrm_CTE_EMISSOR2.RzDBEdit4Change(Sender: TObject);

begin
  //  receber := cdm.CD_Emissor_CTEFRETE.AsFloat+cdm.CD_Emissor_CTEDESPACHO.AsFloat+cdm.CD_Emissor_CTEpedagio.AsFloat;
   // if True then


end;

procedure TFrm_CTE_EMISSOR2.RzDBEdit4Exit(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   if cdm.CD_Emissor_CTE.State in [dsInsert,dsEdit] then
        begin
        if cdm.CD_Emissor_CTEVALOR_RECEBER.Value > cdm.CD_Emissor_CTETOTAL_PREST.Value then
            begin
               cdm.CD_Emissor_CTETOTAL_PREST.Value:= cdm.CD_Emissor_CTEVALOR_RECEBER.Value;
            end;
        end;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton10Click(Sender: TObject);
begin
ShowMessage('É informado como recebedor a pessoa física ou jurídica que receberá a mercadoria, '+
'porém ainda sem ser o destinatário final. Esta situação é utilizada principalmente em CTes de Redespacho, '+
'onde a transportadora que coletou o material no remetente irá entregar em outra transportadora. Neste caso o redespacho é o recebedor. Os dados do recebedor '+
'são obrigatórios sempre que gerado CTe com o tipo de serviço Redespacho Intermediário e Vinculado a Multimodal.');
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton11Click(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton12Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
      //   RzToolButton15Click(sender);
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
                  cdm.CD_Emissor_CTE.POST;
                END;
      END;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton13Click(Sender: TObject);
begin
Frm_CTEXML:=TFrm_CTEXML.Create(self);
Frm_ctexml.ShowModal;
          cdm.Query_Unidade.Close;
          cdm.Query_Unidade.Params[0].AsInteger:=cdm.CD_Emissor_CTEID.asinteger;
          cdm.Query_Unidade.open;

end;

procedure TFrm_CTE_EMISSOR2.RzToolButton14Click(Sender: TObject);
begin
   Frm_NF_CTE:=TFrm_NF_CTE.Create(self);
   cdm.CD_CTE_NFES.Insert;
   cdm.CD_CTE_NFESID_CTE.AsInteger:=CDM.CD_Emissor_CTEID.AsInteger;
   Frm_NF_CTE.ShowModal;
   cdm.CD_CTE_NFES.EDIT;
   cdm.CD_CTE_NFES.post;
   cdm.CD_CTE_NFES.ApplyUpdates(0);
   Frm_NF_CTE:=NIL;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton15Click(Sender: TObject);
begin
Frm_CTE_OutroDoc:=TFrm_CTE_OutroDoc.Create(self);
cdm.CD_CTEOutroDoc.Insert;
Frm_CTE_OutroDoc.ShowModal;
Frm_CTE_OutroDoc:=NIL;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton16Click(Sender: TObject);
begin
  Frm_Unidade:=TFrm_Unidade.Create(self);

   Frm_Unidade.ShowModal;
   Frm_Unidade:=nil;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton19Click(Sender: TObject);
begin
if CDM.CD_CTE_NFES.RecordCount<>0 THEN
   begin
     Frm_NF_CTE:=TFrm_NF_CTE.Create(SELF);
     CDM.CD_CTE_NFES.Edit;
     Frm_NF_CTE.ShowModal;
  // cdm.CD_CTE_NFES.post;
   cdm.CD_CTE_NFES.ApplyUpdates(0);
   end;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton1Click(Sender: TObject);
begin

if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;

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

procedure TFrm_CTE_EMISSOR2.RzToolButton20Click(Sender: TObject);
begin
     if CDM.CD_CTE_NFES.RecordCount<>0 THEN
        begin
          if Application.MessageBox('deseja realmente excluir o registro selecionado?','''Informação',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IdYes  then
             begin
               fdquery1.Close;
               fdquery1.SQL.Text:='delete from CTE_UNI where chave_nfe =:c and id_cte =:t';
               fdquery1.params[0].asstring:= CDM.CD_CTE_NFESCHAVE.AsString;
               fdquery1.params[1].AsInteger:= CDM.CD_CTE_NFESID_CTE.AsInteger;
               fdquery1.ExecSQL;

               fdquery1.Close;
               fdquery1.SQL.Text:='delete from CTE_NFEES where chave =:c and id_cte =:t';
               fdquery1.params[0].asstring:= CDM.CD_CTE_NFESCHAVE.AsString;
               fdquery1.params[1].AsInteger:= CDM.CD_CTE_NFESID_CTE.AsInteger;
               fdquery1.ExecSQL;


              cdm.Query_Unidade.Close;
              cdm.Query_Unidade.Params[0].AsInteger:=cdm.CD_Emissor_CTEID.asinteger;
              cdm.Query_Unidade.open;

               cdm.FDConnection1.Commit;


                CDM.CD_CTE_NFES.CLOSE;
                CDM.CD_CTE_NFES.CommandText:='SELECT * FROM CTE_NFEES WHERE ID_CTE ='+IntToStr(CDM.CD_Emissor_CTEID.AsInteger);
                CDM.CD_CTE_NFES.OPEN;


             end;


        end;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton21Click(Sender: TObject);
begin
if  cdm.CD_CTEOutroDoc.recordcount<>0 then
    begin
          Frm_CTE_OutroDoc := TFrm_CTE_OutroDoc.Create(self);
          cdm.CD_CTEOutroDoc.edit;
          Frm_CTE_OutroDoc.ShowModal;
          Frm_CTE_OutroDoc:=NIL;
    end;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton22Click(Sender: TObject);
begin
if  cdm.CD_CTEOutroDoc.recordcount<>0 then
    begin
         if Application.MessageBox('deseja realment excluir o registro selecionado?','''Informação',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IdYes  then

          cdm.CD_CTEOutroDoc.delete;

    end;
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton25Click(Sender: TObject);
begin
showmessage('No conhecimento de transporte, o tomador do frete é a pessoa física ou jurídica que é responsável '+
' pelo pagamento. Na modalidade CIF, o tomador é o remetente, já na modalidade FOB, o tomador é o destinatário. '+
'Há ainda a possibilidade de nomear um tomador que não esteja caracterizado em nenhuma das condições acima. '+
'Para esta última situação, também é utilizado o termo Consignatário.');
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton26Click(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton27Click(Sender: TObject);
begin
if (cdm.CD_Emissor_CTESTATUS.AsInteger = 0) or (cdm.CD_Emissor_CTESTATUS.AsInteger = 9)  then
   begin
   if (RzDBComboBox11.ItemIndex = 3) or (RzDBComboBox11.text='Outro') then
      BEGIN
        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
      //   RzToolButton12Click(sender);

           if CDM.CD_Table_Clientes.Active = TRUE then
                BEGIN
                   cdm.CD_Emissor_cte.Edit;
                  cdm.CD_Emissor_CTEpessoa.asinteger:=CDM.CD_Table_Clientes.FieldByName('PESSOA').AsInteger;
                  cdm.CD_Emissor_CTECPF_CNPJ.AsString:=CDM.CD_Table_Clientes.FieldByName('CPF_CNPJ').AsString;
                  cdm.CD_Emissor_CTEIE.AsString:=StringReplace(CDM.CD_Table_Clientes.FieldByName('IE').AsString,'.','',[rfReplaceAll]);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton2Click(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton3Click(Sender: TObject);
begin

     ShowMessage('O Destinatário do CTe será, na maioria das vezes, o mesmo destinatário da nota fiscal que está vinculada ao conhecimento de transporte. '+
'É a pessoa física ou jurídica para quem a mercadoria transportada será entregue no final de todo o trajeto.');




end;

procedure TFrm_CTE_EMISSOR2.RzToolButton4Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
     //    RzToolButton13Click(sender);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton5Click(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton6Click(Sender: TObject);
begin
ShowMessage('No CTe, o remetente na maior parte dos casos é o emissor da nota fiscal, independente de onde a mercadoria tenha sido coletada. '+
'Ele encontra-se no ponto inicial do trajeto da carga e é o responsável por promover a saída inicial dos produtos transportados. '+
'Os dados do remetente são de preenchimento obrigatório, exceto quando o tipo de serviço for Redespacho Intermediário.');
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton7Click(Sender: TObject);
begin
ShowMessage('o expedidor é utilizado para informar a origem da mercadoria, quando esta não foi coletada diretamente no remetente. '+
'Neste caso, a transportadora que coletou o material primeiramente no remetente, será caracterizada como expedidor.');
end;

procedure TFrm_CTE_EMISSOR2.RzToolButton8Click(Sender: TObject);
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

procedure TFrm_CTE_EMISSOR2.RzToolButton9Click(Sender: TObject);
begin
if cdm.CD_Emissor_CTESTATUS.AsInteger = 0 then
   begin

        frmtomador:=tfrmtomador.create(self);
        frmtomador.showmodal;
     //    RzToolButton14Click(sender);
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
                  cdm.CD_Emissor_CTE.POST;

                END;
      END;
end;

end.

