unit UFrm_RelCTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.Menus, Vcl.StdCtrls, RzLabel, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask,
  RzEdit, RzPanel, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_RelCTE = class(TForm)
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    RzSpacer8: TRzSpacer;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    Panel3: TPanel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    CancelarSemRegistronoSefaz1: TMenuItem;
    ImageList1: TImageList;
    Button1: TButton;
    Button2: TButton;
    FDQuery1: TFDQuery;
    procedure Edit1Change(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelCTE: TFrm_RelCTE;

implementation

{$R *.dfm}

uses UCDM, UDM, UFrmPrincipal;

procedure TFrm_RelCTE.Button1Click(Sender: TObject);
var
	i: Integer;
	aux: string;
  valor: real;
  cc:string;
begin
if cdm.CD_Emissor_CTE.RecordCount<>0 then
  begin
	for i := 0 to DBGrid1.SelectedRows.Count - 1 do
	begin
		cdm.CD_Emissor_CTE.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

    if not dm.CD_MDF_CTE.Locate('CHAVE_CTE',cdm.CD_Emissor_CTE.FieldByName('CHAVE').Value,[loCaseInsensitive]) then
       aux := aux + IntToStr(cdm.CD_Emissor_CTE.RecNo) + ' - ' +
		    cdm.CD_Emissor_CTE.FieldByName('NUMCTE').AsString + #13

        else
         aux := aux + cdm.CD_Emissor_CTE.FieldByName('NUMCTE').Value+ ' ja Adicionada ao Manifesto' ;

	end;
  begin
  if  MessageDlg('deseja relacionar os documentos' + #13 + aux +'ao Manifesto  linhas ',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
        begin
          cdm.CD_Emissor_CTE.GotoBookmark(DBGrid1.SelectedRows.Items[i]);
        if not dm.CD_MDF_CTE.Locate('CHAVE_CTE',cdm.CD_Emissor_CTE.FieldByName('CHAVE').AsString,[loCaseInsensitive]) then
            begin

             FDQuery1.Close;
             FDQUERY1.Params[0].AsString:=cdm.CD_Emissor_CTE.FieldByName('CHAVE').AsString;
             FDQuery1.Open();

            dm.CD_MDF_CTE.Insert;

            dm.CD_MDF_CTECHAVE_CTE.asstring:=cdm.CD_Emissor_CTE.FieldByName('CHAVE').AsString;
            dm.CD_MDF_CTEVALOR.Value:=cdm.CD_Emissor_CTEPRODUTO_VALOR_DACARGA.asfloat;
            dm.CD_MDF_CTECOD_IBGE.AsInteger:=cdm.CD_Emissor_CTEFIMCODIBGE.AsInteger;
            dm.CD_MDF_CTEPESO.Value:=FDQuery1.FieldByName('PESO').AsFloat;
            dm.CD_MDF_CTE.post;
            dm.CD_MDF_CTE.ApplyUpdates(0);
            // ShowMessage(IntToStr(Length(cdm.CD_Nota_FiscalTableNFE_CHAVE.text)))
            end;
        end;


      end;


  end;
  end;

end;

procedure TFrm_RelCTE.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_RelCTE.Edit1Change(Sender: TObject);
begin
if Length(Edit1.Text)<> 0 then
  begin
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where NUMCTE ='+Edit1.Text+' AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' and status = 1 ORDER BY id descending';
  CDM.CD_Emissor_CTE.open;
  end
  else
  BEGIN
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where CHAVE LIKE:C AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' and status = 1 ORDER BY id descending';
  CDM.CD_Emissor_CTE.PARAMS[0].AsString:='%'+Edit1.Text+'%';
  CDM.CD_Emissor_CTE.open;
  END;
end;

procedure TFrm_RelCTE.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
  RzDateTimeEdit3.date:=date;
  RzDateTimeEdit4.Date:=date;
  GroupBox2Exit(Sender);
end;

procedure TFrm_RelCTE.GroupBox2Exit(Sender: TObject);
begin
  CDM.CD_Emissor_CTE.close;
  CDM.CD_Emissor_CTE.CommandText:='select * from CTE_DADOS where DATA_EMISSAO >=:ini and  DATA_EMISSAO <=:fim AND ID_EMPRESA ='+Dm.EmitenteID_EMPRESA.ASstring+' and status = 1 ORDER BY id descending';
  CDM.CD_Emissor_CTE.Params[0].DataType:=ftDate;
  CDM.CD_Emissor_CTE.Params[1].DataType:=ftDate;
  CDM.CD_Emissor_CTE.Params[0].AsDate:=RzDateTimeEdit3.Date;
  CDM.CD_Emissor_CTE.Params[1].AsDate:=RzDateTimeEdit4.Date;
  CDM.CD_Emissor_CTE.open;
end;

end.
