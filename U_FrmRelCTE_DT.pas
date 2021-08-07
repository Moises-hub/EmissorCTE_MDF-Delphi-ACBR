unit U_FrmRelCTE_DT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, RzCmboBx, Vcl.Mask,
  RzEdit, Vcl.ExtCtrls, RzPanel, RLReport, RzButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DosMove;

type
  TFrm_RelCTE_dt = class(TForm)
    SQL_CTE: TSQLDataSet;
    Prov_CTE: TDataSetProvider;
    CD_CTE: TClientDataSet;
    DS_CTE: TDataSource;
    CD_CTEID: TIntegerField;
    CD_CTENUMCTE: TFMTBCDField;
    CD_CTEDATA_EMISSAO: TDateField;
    CD_CTEINICIO: TStringField;
    CD_CTEFIM: TStringField;
    CD_CTEREMETENTE: TStringField;
    CD_CTEDEST_NOME: TStringField;
    CD_CTEREC_NOME: TStringField;
    CD_CTEEXP_NOME: TStringField;
    CD_CTEMOTORISTA: TStringField;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLImage1: TRLImage;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    CD_CTETOMADOR: TStringField;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    CD_CTEVALOR_RECEBER: TFloatField;
    RLSystemInfo3: TRLSystemInfo;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    RadioGroup1: TRadioGroup;
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand8: TRLBand;
    RLDBText13: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLBand9: TRLBand;
    RLSystemInfo6: TRLSystemInfo;
    RLBand13: TRLBand;
    Query_Soma: TFDQuery;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand10: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel26: TRLLabel;
    DosMove1: TDosMove;
    procedure filtrar;
    procedure Button1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelCTE_dt: TFrm_RelCTE_dt;

implementation

{$R *.dfm}

uses UDM, UCDM;

procedure TFrm_RelCTE_dt.Button1Click(Sender: TObject);
begin
filtrar;
end;

procedure TFrm_RelCTE_dt.filtrar;
begin

       try
      RLImage1.Picture.LoadFromFile(cdm.CD_CTE_CONFIGLOGO.AsString);

      except

      end;
      RLLabel12.Caption:='de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
      RLLabel15.Caption:='de '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;
     cd_cte.Close;
     cd_cte.CommandText:='select ' +
                         'CTE_DADOS.id, ' +
                         'CTE_DADOS.numcte, ' +
                         'CTE_DADOS.data_emissao, ' +
                         '  cte_dados.inicidade||''-''||cte_dados.iniuf inicio, ' +
                         '  cte_dados.fimcidade||''-''||cte_dados.fimuf fim, ' +
                          ' (CASE CTE_DADOS.id_tomador WHEN 1 THEN CTE_DADOS.rem_nome ' +
                          '                            WHEN 2 THEN CTE_DADOS.exp_nome ' +
                          '                            WHEN 3 THEN CTE_DADOS.rec_nome ' +
                          '                            WHEN 4 THEN CTE_DADOS.dest_nome ' +
                          '                            WHEN 5 THEN CTE_DADOS.nome END) AS TOMADOR, '+
                         'CTE_DADOS.rem_nome as remetente, ' +
                         'CTE_DADOS.dest_nome, ' +
                         'CTE_DADOS.rec_nome, ' +
                         'CTE_DADOS.exp_nome, ' +
                         'cte_condutor.nome||''-''||cte_condutor.cpf as motorista, ' +
                         'cte_DADOS.valor_receber '+
                         'FROM cte_dados ' +
                         'left join cte_condutor on(cte_condutor.id_cte = cte_dados.id) ' +
                         'where ((CTE_DADOS.data_emissao >=:p) and (CTE_DADOS.data_emissao <=:y)) and cte_dados.status = 1 and cte_dados.modelo =''57'' ' +
                         'order by CTE_DADOS.numcte';
                          cd_cte.params[0].AsDate:=RzDateTimeEdit1.Date;
                          cd_cte.params[1].AsDate:=RzDateTimeEdit2.Date;
      cd_cte.open;

                if cd_cte.RecordCount<>0 then
                  BEGIN
                   case RadioGroup1.ItemIndex of
                   0 : RLReport2.PreviewModal;
                   1 : RLReport1.PreviewModal
                   end;
                  END
                 else
                 ShowMessage('Nenhum Registro Encontrado!');


end;

procedure TFrm_RelCTE_dt.FormShow(Sender: TObject);
begin
     RzDateTimeEdit1.Date:=date-30;
     RzDateTimeEdit2.Date:=date;
end;

procedure TFrm_RelCTE_dt.RzBitBtn1Click(Sender: TObject);
begin
query_soma.Close;
query_soma.Params[0].AsDate:=RzDateTimeEdit1.Date;
query_soma.Params[1].AsDate:=RzDateTimeEdit2.Date;
query_soma.Open();
RLLabel21.Caption:='REGISTROS ENCONTRADOS: '+IntToStr(query_soma.FieldByName('qtd').AsInteger);
RLLabel22.Caption:='      TOTAL: '+FloatToStrF(query_soma.FieldByName('total').AsFloat,ffCurrency,15,2);
filtrar;
end;

end.
