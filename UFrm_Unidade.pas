unit UFrm_Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, RzCmboBx, RzDBCmbo, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Unidade = class(TForm)
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Query: TFDQuery;
    QueryID_CTE: TIntegerField;
    QueryCHAVE_NFE: TStringField;
    QueryUN: TStringField;
    QueryQNT: TBCDField;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Unidade: TFrm_Unidade;

implementation

{$R *.dfm}

uses UCDM, UFrm_NF_CTE, UFrm_NotaFiscal_A, UFrm_CTE_EMISSOR2;

procedure TFrm_Unidade.Button1Click(Sender: TObject);
begin
if CDM.CD_CTE_UN.RecordCount<>0 then
   begin
              Frm_CTE_EMISSOR2.fdquery1.Close;
              Frm_CTE_EMISSOR2.fdquery1.SQL.Text:='delete from CTE_UNI where id_cte =:t and  id  =:f';
              Frm_CTE_EMISSOR2.fdquery1.params[0].AsInteger:= CDM.CD_CTE_UNID_CTE.AsInteger;
              Frm_CTE_EMISSOR2.fdquery1.params[1].asstring:= CDM.CD_CTE_UNID.AsString;


              Frm_CTE_EMISSOR2.fdquery1.ExecSQL;
              cdm.FDConnection1.Commit;

          cdm.CD_CTE_UN.Close;
          cdm.CD_CTE_UN.CommandText:='Select * from CTE_UNI where id_cte ='+cdm.CD_Emissor_CTEID.Asstring;
          cdm.CD_CTE_UN.open;
   end;




          cdm.Query_Unidade.Close;
          cdm.Query_Unidade.Params[0].AsInteger:=cdm.CD_Emissor_CTEID.asinteger;
          cdm.Query_Unidade.open;


end;

procedure TFrm_Unidade.Button3Click(Sender: TObject);
begin


          CDM.CD_CTE_UN.ApplyUpdates(0);

          cdm.Query_Unidade.Close;
          cdm.Query_Unidade.Params[0].AsInteger:=cdm.CD_Emissor_CTEID.asinteger;
          cdm.Query_Unidade.open;
      close;
end;

end.
