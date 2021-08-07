unit UFrm_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, Data.FMTBcd, Data.SqlExpr,
  DosMove, RzLabel, RzPanel, RzCmboBx, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList;

type
  TFrm_NFE = class(TForm)
    Nota_fiscalTable: TSQLDataSet;
    DosMove1: TDosMove;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    Query_Departamento: TSQLQuery;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    RzPanel2: TRzPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    Panel2: TPanel;
    Button2: TButton;
    Button1: TButton;
    FDTable1: TFDTable;
    FDTable1ID_NFE: TIntegerField;
    FDTable1SELECIONA: TIntegerField;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    RzPanel3: TRzPanel;
    RzPanel4: TRzPanel;
    RzComboBox1: TRzComboBox;
    RzPanel5: TRzPanel;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzPanel6: TRzPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    FDQuery4: TFDQuery;
    procedure Button2Click(Sender: TObject);
    procedure RzDateTimeEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzDateTimeEdit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzDateTimeEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzDateTimeEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit1Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filtro : string;
   i : integer;
  a : boolean;
  Frm_NFE: TFrm_NFE;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UFrm_MDF;

procedure TFrm_NFE.Button1Click(Sender: TObject);
var
	i: Integer;
	aux: string;
  valor: real;
begin
dm.CD_Nfe_mdfTable.Open;
if fdquery1.RecordCount<>0 then
  begin
	for i := 0 to DBGrid1.SelectedRows.Count - 1 do
   	begin
		fdquery1.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

    if not dm.CD_Nfe_mdfTable.Locate('CHAVE_NFE',fdquery1.FieldByName('NFE_CHAVE').Value,[loCaseInsensitive]) then
       aux := aux + IntToStr(fdquery1.RecNo) + ' - ' +
		    fdquery1.FieldByName('NOTA_FISCAL').AsString + #13

        else
         aux := aux + fdquery1.FieldByName('NOTA_FISCAL').Value+ ' ja Adicionada ao Manifesto' ;


   	end;
     aux :='deseja relacionar os documentos '+aux+' ao Manifesto?';
  begin
  if Application.MessageBox(PChar(aux),'',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1)=mryes  then
      begin
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          fdquery1.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
        if not dm.CD_Nfe_mdfTable.Locate('CHAVE_NFE',fdquery1.FieldByName('NFE_CHAVE').Value,[loCaseInsensitive]) then
            begin

                            Frm_MDF.Proc_NF.ParamByName('ID_MDF').AsInteger :=dm.CD_Mdf_DadosID.AsInteger;
                            Frm_MDF.Proc_NF.ParamByName('CHAVE').Value:=fdquery1.FieldByName('NFE_CHAVE').Value;
                            Frm_MDF.Proc_NF.ParamByName('QNT').Value:=fdquery1.FieldByName('QUANTIDADE').asfloat;
                            Frm_MDF.Proc_NF.ParamByName('NOTA_FISCAL').Text:=fdquery1.FieldByName('NOTA_FISCAL').text;
                            Frm_MDF.Proc_NF.ParamByName('PESO_BRUTO').VALUE:=fdquery1.FieldByName('PESO_BRUTO').VALUE;
                            Frm_MDF.Proc_NF.ParamByName('VALOR_TOTAL').ASFLOAT:=fdquery1.FieldByName('valor_total').ASFLOAT;
                            Frm_MDF.Proc_NF.ParamByName('IBGE').asinteger :=fdquery1.FieldByName('IBGE').asinteger;
                            Frm_MDF.Proc_NF.ParamByName('ID_REGIAO').asinteger :=fdquery1.FieldByName('ID_REGIAO').asinteger;
                            Frm_MDF.Proc_NF.ParamByName('CADASTRO').asinteger :=0;
                            Frm_MDF.Proc_NF.ExecProc;

                            Frm_MDF.Query_NF.Close;
                            Frm_MDF.Query_NF.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                            Frm_MDF.Query_NF.open;

            // ShowMessage(IntToStr(Length(fdquery1NFE_CHAVE.text)))
            end;
        end;


      end;


  end;
  end;


end;



procedure TFrm_NFE.Button2Click(Sender: TObject);
begin
                             dm.CD_Nfe_mdfTable.close;
                            dm.CD_Nfe_mdfTable.open;
                            dm.CD_Nfe_mdfTable.Refresh;


close;
end;

procedure TFrm_NFE.Button3Click(Sender: TObject);
begin
   fdquery1.close;
   fdquery1.sql.text:='select * from mdfe_nf  where data_es >=:i and data_es <=:f and '+
                                 ' ID_DEPTO =:d '+
                                 ' order by nota_fiscal desc';




       fdquery1.Params[0].AsDate:=RzDateTimeEdit1.Date;
       fdquery1.Params[1].AsDate:=RzDateTimeEdit2.Date;
       fdquery1.Params[2].asinteger:=StrToInt(RzComboBox1.Value);
       fdquery1.Open;


  


       DBGrid1.SelectedRows.CurrentRowSelected:=true;
end;

procedure TFrm_NFE.Button4Click(Sender: TObject);
begin
    FDQUERY1.Close;
      FDQUERY1.SQL.Text:=' select FIRST 100 * from mdfe_nf where NOTA_FISCAL =:n order by nota_fiscal desc';


      FDQUERY1.Params[0].Value:=Edit1.Text;
  //    ShowMessage(' select FIRST 50 * from mdfe_nf where ID_DEPTO ='+RzComboBox1.Value+' '+RzComboBox3.Value+' '+RzComboBox2.Value+' order by nota_fiscal desc');
      FDQUERY1.Open;





          DBGrid1.SelectedRows.CurrentRowSelected:=true;
end;

procedure TFrm_NFE.DBGrid1CellClick(Column: TColumn);
var
aux: string;
begin


   if DBGrid1.SelectedField.FieldName = 'BT' then
          begin

          if fdquery1.RecordCount<>0 then
              begin



                    if not Frm_MDF.Query_NF.Locate('CHAVE_NFE',fdquery1.FieldByName('NFE_CHAVE').Value,[loCaseInsensitive]) then
                        begin
                            Frm_MDF.Proc_NF.ParamByName('ID_MDF').AsInteger :=dm.CD_Mdf_DadosID.AsInteger;
                            Frm_MDF.Proc_NF.ParamByName('CHAVE').Value:=fdquery1.FieldByName('NFE_CHAVE').Value;
                            Frm_MDF.Proc_NF.ParamByName('QNT').Value:=fdquery1.FieldByName('QUANTIDADE').asfloat;
                            Frm_MDF.Proc_NF.ParamByName('NOTA_FISCAL').Text:=fdquery1.FieldByName('NOTA_FISCAL').text;
                            Frm_MDF.Proc_NF.ParamByName('PESO_BRUTO').VALUE:=fdquery1.FieldByName('PESO_BRUTO').VALUE;
                            Frm_MDF.Proc_NF.ParamByName('VALOR_TOTAL').ASFLOAT:=fdquery1.FieldByName('valor_total').ASFLOAT;
                            Frm_MDF.Proc_NF.ParamByName('IBGE').asinteger :=fdquery1.FieldByName('IBGE').asinteger;
                            Frm_MDF.Proc_NF.ParamByName('ID_REGIAO').asinteger :=fdquery1.FieldByName('ID_REGIAO').asinteger;
                            Frm_MDF.Proc_NF.ParamByName('CADASTRO').asinteger :=0;
                            Frm_MDF.Proc_NF.ExecProc;


                             Frm_MDF.Query_NF.Refresh;

                        end
                        else
                        aux := aux + fdquery1.FieldByName('NOTA_FISCAL').Value+ ' ja Adicionada ao Manifesto' ;






              end;
          end;




end;

procedure TFrm_NFE.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
 
begin
 if datacol =4 then
   begin
     TDBGrid(Sender).Canvas.FillRect(Rect);
     ImageList1.Draw(TDBGrid(Sender).Canvas, Rect.Left +5,Rect.Top + 1, 0);
   end;
end;

procedure TFrm_NFE.Edit1Exit(Sender: TObject);
var
i : integer;
s : string;
begin
if Length(Edit1.Text)<>0 then
   begin

                                                   {

                                             i:=1;
                                             filtro:='';

                                             dm.CD_Mdfe_l_descarregamentoTable.First;
                                             while not dm.CD_Mdfe_l_descarregamentoTable.eof do
                                                   begin
                                                    if i < dm.CD_Mdfe_l_descarregamentoTable.RecordCount then
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+''' or '
                                                      else
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+'''';
                                                      i:=i+1;
                                                      dm.CD_Mdfe_l_descarregamentoTable.next;
                                                   end;  }






   end;





end;

procedure TFrm_NFE.FormShow(Sender: TObject);
begin
        RzDateTimeEdit1.Date:=Date;
        RzDateTimeEdit2.Date:=Date;


        a :=true;
        Query_Departamento.Close;
        Query_Departamento.Open;
        RzComboBox1.Items.Clear;
        RzComboBox1.values.Clear;
   if Query_Departamento.RecordCount<>0 then
      begin

        query_departamento.First;
       while not Query_Departamento.Eof do
        begin
          RzComboBox1.Items.Add(query_departamento.FieldByName('DESCRICAO').AsString);
          RzComboBox1.Values.Add(query_departamento.FieldByName('ID_DEPTO').AsString);
          Query_Departamento.next;
        end;

      end
      else
      begin
          RzComboBox1.Items.Add('PADRÃO');
          RzComboBox1.Values.Add(dm.EmitenteID_EMPRESA.AsString);
      end;

 

       RzComboBox1.ItemIndex:=0;
       Button3.OnClick(Sender);









    end;

procedure TFrm_NFE.RzDateTimeEdit1Change(Sender: TObject);
begin



    //   dm.CD_Nota_FiscalTable.Execute;

end;

procedure TFrm_NFE.RzDateTimeEdit1Exit(Sender: TObject);

begin                                                     {
                                            filtro:='';
                                             dm.CD_Nota_FiscalTable.Close;
                                              i:=1;
                                             dm.CD_Mdfe_l_descarregamentoTable.First;
                                             while not dm.CD_Mdfe_l_descarregamentoTable.eof do
                                                   begin
                                                    if i < dm.CD_Mdfe_l_descarregamentoTable.RecordCount then
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+''' or '
                                                      else
                                                      filtro:=filtro+' regioes.CODIGO_IBGE ='''+dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.Text+'''';
                                                      i:=i+1;
                                                      dm.CD_Mdfe_l_descarregamentoTable.next;
                                                   end;
                                                            }





end;

procedure TFrm_NFE.RzDateTimeEdit1KeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key in['0'..'9',ansiChar(8)]) then Key:= #0;
end;

procedure TFrm_NFE.RzDateTimeEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',Chr(8)]) then Key:= #0;

end;

end.
