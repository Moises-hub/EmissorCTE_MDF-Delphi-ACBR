unit UFrmNFdeCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, DosMove,
  Vcl.Mask, Vcl.DBCtrls, RzCmboBx, RzDBCmbo, Vcl.ExtCtrls, RzPanel,
  dxGDIPlusClasses, Data.FMTBcd, Data.DB, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  ACBrBase, ACBrDFe, ACBrNFe, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, RzButton;

type
  TFrmNFdeCompra = class(TForm)
    DosMove1: TDosMove;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image5: TImage;
    regiao: TFDQuery;
    Panel1: TPanel;
    Label7: TLabel;
    ButtonedEdit1: TButtonedEdit;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    ImageList1: TImageList;
    Query_Carrega: TFDQuery;
    SQLDataSet1: TFDQuery;
    ACBrNFe1: TACBrNFe;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    cxCalcEdit1: TcxCalcEdit;
    RzComboBox1: TRzComboBox;
    cxCalcEdit2: TcxCalcEdit;
    cxCalcEdit3: TcxCalcEdit;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonedEdit1RightButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNFdeCompra: TFrmNFdeCompra;

implementation

{$R *.dfm}

uses UDM, UFrm_MDF, UCDM;

procedure TFrmNFdeCompra.ButtonedEdit1RightButtonClick(Sender: TObject);
var
i : integer;
T_PROD: Currency;
begin
  opendialog1.execute;

  if OpenDialog1.FileName<>'' then
    begin
            ButtonedEdit1.Text:= OpenDialog1.FileName;
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
     try

                      


                            Edit1.Text:=StringReplace(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,'NFe','',[rfReplaceAll]);
                            cxCalcEdit2.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
                            Edit3.Text:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
                            cxCalcEdit3.VALUE:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
                            cxCalcEdit1.VALUE:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
                            Frm_MDF.Proc_NF.ParamByName('IBGE').asinteger :=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;

                            regiao.close;
                            regiao.sql.Text:='select id_regiao from regioes where codigo_ibge =:f';
                            regiao.params[0].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                            regiao.Open();
                            if regiao.RecordCount<>0 then
                               dm.CD_Nfe_mdfTableID_REGIAO.asinteger :=regiao.FieldByName('ID_REGIAO').asinteger
                               else
                               begin
                                  regiao.close;
                                  regiao.sql.Text:='insert into regioes(id_regiao,cidade,distrito,uf,data_up,codigo_ibge,id_pais,pais,id_empresa,user_up)' +
                                                   '              values((select gen_id(regioes,1)from rdb$database), ' +
                                                   '                      :cid, ' +
                                                   '                      :cid, ' +
                                                   '                      :uf, ' +
                                                   '                       current_timestamp, ' +
                                                   '                      :cod_ibge, ' +
                                                   '                      :id_pais,' +
                                                   '                      :pais, ' +
                                                   '                       1, ' +
                                                   '                       1)';
                                  regiao.params[0].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun);
                                  regiao.params[1].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF);
                                  regiao.params[2].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                                  regiao.params[3].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais;
                                  regiao.params[4].Asstring:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais);
                                  regiao.ExecSQL;
                                  cdm.FDConnection1.Commit;


                                      regiao.close;
                                      regiao.sql.Text:='select id_regiao, cidade from regioes where codigo_ibge =:f';
                                      regiao.params[0].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                                      regiao.Open();
                                      RzComboBox1.Items.clear;
                                      RzComboBox1.Values.clear;
                                      RzComboBox1.Items.Add(regiao.FieldByName('CIDADE').Text);
                                      RzComboBox1.Values.Add(IntToStr(regiao.FieldByName('id_regiao').ASINTEGER));
                                     dm.CD_Nfe_mdfTableID_REGIAO.AsInteger:=regiao.FieldByName('id_regiao').ASINTEGER;
                                 //  RzDBComboBox1.Value:=IntToStr(regiao.FieldByName('id_regiao').ASINTEGER);
                               end;




                            regiao.close;
                            regiao.sql.Text:='select id_regiao from regioes where codigo_ibge =:f';
                            regiao.params[0].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                            regiao.Open();
                            if regiao.RecordCount<>0 then

                               else
                               begin
                                  regiao.close;
                                  regiao.sql.Text:='insert into regioes(id_regiao,cidade,distrito,uf,data_up,codigo_ibge,id_pais,pais,id_empresa,user_up)' +
                                                   '              values((select gen_id(regioes,1)from rdb$database), ' +
                                                   '                      :cid, ' +
                                                   '                      :cid, ' +
                                                   '                      :uf, ' +
                                                   '                       current_timestamp, ' +
                                                   '                      :cod_ibge, ' +
                                                   '                      :id_pais,' +
                                                   '                      :pais, '+
                                                   '                      1, '+
                                                   '                      1) ';
                                  regiao.params[0].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun);
                                  regiao.params[1].AsString:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
                                  regiao.params[2].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                                  regiao.params[3].AsInteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
                                  regiao.params[4].Asstring:=uppercase(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais);
                                  regiao.ExecSQL;
                                  cdm.FDConnection1.Commit;


                               end;


                            cdm.FDConnection1.Commit;
                            Query_Carrega.Close;
                            QUERY_CARREGA.SQL.Text:='SELECT COUNT(*) FROM mdfe_l_descarregamento WHERE (mdfe_l_descarregamento.ID_MDFE =:IDMDF) AND (mdfe_l_descarregamento.COD_MUN =:IBGE)';
                            QUERY_CARREGA.params[0].asinteger:=dm.CD_Mdf_DadosID.AsInteger;
                            QUERY_CARREGA.params[1].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                            QUERY_CARREGA.OPEN;
                            if QUERY_CARREGA.FieldByName('COUNT').AsInteger = 0 then
                               BEGIN
                                  Query_Carrega.Close;
                                  QUERY_CARREGA.SQL.Text:='insert into mdfe_l_descarregamento(ID,ID_MDFE,UF,COD_MUN,MUNICIPIO) ' +
                                                          'VALUES((SELECT GEN_ID(MDFE_L_DESCARREGAMENTO,1) FROM RDB$DATABASE),' +
                                                          '       :IDMDF, ' +
                                                          '       (SELECT FIRST 1 REGIOES.uf FROM REGIOES WHERE REGIOES.codigo_ibge =:IBGE), ' +
                                                          '       :IBGE, ' +
                                                          '       (SELECT FIRST 1 REGIOES.CIDADE FROM REGIOES WHERE REGIOES.codigo_ibge =:IBGE))';

                                  QUERY_CARREGA.params[0].asinteger:=dm.CD_Mdf_DadosID.AsInteger;

                                  QUERY_CARREGA.params[1].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun;
                                  QUERY_CARREGA.ExecSQL;
                               END;




                            cdm.FDConnection1.Commit;
                            Query_Carrega.Close;
                            QUERY_CARREGA.SQL.Text:='SELECT COUNT(*) FROM mdfe_l_carregamento WHERE (mdfe_l_carregamento.ID_MDFE =:IDMDF) AND (mdfe_l_carregamento.COD_MUN =:IBGE)';
                            QUERY_CARREGA.params[0].asinteger:=dm.CD_Mdf_DadosID.AsInteger;
                            QUERY_CARREGA.params[1].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                            QUERY_CARREGA.OPEN;



                            if QUERY_CARREGA.FieldByName('COUNT').AsInteger = 0 then
                               BEGIN
                                  Query_Carrega.Close;
                                  QUERY_CARREGA.SQL.Text:='insert into mdfe_l_carregamento(ID,ID_MDFE,UF,COD_MUN,MUNICIPIO) ' +
                                                          'VALUES((SELECT GEN_ID(MDFE_L_CARREGAMENTO_ID,1) FROM RDB$DATABASE),' +
                                                          '       :IDMDF, ' +
                                                          '       (SELECT FIRST 1 REGIOES.uf FROM REGIOES WHERE REGIOES.codigo_ibge =:IBGE), ' +
                                                          '       :IBGE, ' +
                                                          '       (SELECT FIRST 1 REGIOES.CIDADE FROM REGIOES WHERE REGIOES.codigo_ibge =:IBGE))';

                                  QUERY_CARREGA.params[0].asinteger:=dm.CD_Mdf_DadosID.AsInteger;
                                  QUERY_CARREGA.params[1].asinteger:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
                                  QUERY_CARREGA.ExecSQL;
                               END;

                               CDM.FDConnection1.Commit;



          {  if Length(SQLQuery1.FieldByName('CODIGO_IBGE').Text)=0 then
               begin
               MessageDlg('Código do IBGE não pode ser nulo'+#13+'va em cadastro de Regiões no Infocommerce!',mtError,[mbOK],0);
               dm.CD_Mdfe_l_carregamentoTable.cancel;
               end
               else  }

                         dm.CD_Mdfe_l_carregamentoTable.REFRESH;
                         dm.CD_Mdfe_l_descarregamentoTable.REFRESH;

                            dm.CD_Mdf_Dados.edit;
                            dm.CD_Mdf_DadosUF_CARREGAMENTO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
                            dm.CD_Mdf_DadosUF_DESCARREGAMENTO.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;
                            dm.CD_Mdf_Dados.Post;


                       {     dm.CD_Nfe_mdfTable.Post;
                            dm.CD_Nfe_mdfTable.ApplyUpdates(0);
                            Frm_MDF.Query_NF.Close;
                            Frm_MDF.Query_NF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                            Frm_MDF.Query_NF.open;}
     except

     end;
    end;
end;

procedure TFrmNFdeCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_ESCAPE then
         rzBitBtn2Click(sender);
end;

procedure TFrmNFdeCompra.RzBitBtn1Click(Sender: TObject);
begin
            if Length(Edit1.Text)<>44 then
               begin
               ShowMessage('chave invalida!');
               Edit1.SetFocus;
               end
               else
               if Length(Edit3.Text)=0 then
                   begin
                   ShowMessage('Nº da NF não pode ser nulo');
                   Edit3.SetFocus;
                   end
                       else
                       if Length(RzComboBox1.Text)=0 then
                           begin
                           ShowMessage('A cidade não pode ser nula');
                           RzComboBox1.SetFocus;
                           end
                           else

                           begin
                           regiao.Close;
                           regiao.SQL.Text:='select CODIGO_IBGE from regioes where id_regiao =:u';
                           regiao.Params[0].AsInteger:=StrToInt(RzComboBox1.Value);
                           regiao.open;
                           if LENGTH(regiao.FieldByName('CODIGO_IBGE').AsSTRING)=0 then
                              ShowMessage('Cidade sem código de IBGE Cadastrada')
                              else
                              begin
                                Frm_MDF.Proc_NF.ParamByName('ID_MDF').AsInteger :=dm.CD_Mdf_DadosID.AsInteger;
                                Frm_MDF.Proc_NF.ParamByName('CHAVE').ASSTRING:=Edit1.Text;
                                Frm_MDF.Proc_NF.ParamByName('CHAVE_REF').ASSTRING:=Edit2.Text;
                                Frm_MDF.Proc_NF.ParamByName('QNT').Value:=StrToFloat(cxCalcEdit2.Text);
                                Frm_MDF.Proc_NF.ParamByName('NOTA_FISCAL').Text:=Edit3.Text;
                                Frm_MDF.Proc_NF.ParamByName('PESO_BRUTO').VALUE:=StrToFloat(cxCalcEdit3.Text);
                                Frm_MDF.Proc_NF.ParamByName('VALOR_TOTAL').ASFLOAT:=StrToFloat(cxCalcEdit1.Text);
                                Frm_MDF.Proc_NF.ParamByName('IBGE').asinteger :=regiao.FieldByName('CODIGO_IBGE').AsInteger;
                                Frm_MDF.Proc_NF.ParamByName('ID_REGIAO').asinteger :=StrToInt(RzComboBox1.Value);
                                Frm_MDF.Proc_NF.ExecProc;
                                Frm_MDF.Query_NF.Refresh;
                                close;
                              end;
                           end;
end;

procedure TFrmNFdeCompra.RzBitBtn2Click(Sender: TObject);
begin
dm.CD_Nfe_mdfTable.Cancel;
close;
end;

end.
