unit UFrm_NF_CTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, RzButton;

type
  TFrm_NF_CTE = class(TForm)
    RzSpacer1: TRzSpacer;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    RzPanel2: TRzPanel;
    Label1: TLabel;
    Label3: TLabel;
    RzPanel3: TRzPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NF_CTE: TFrm_NF_CTE;

implementation

{$R *.dfm}

uses UCDM, UFrm_Unidade, UFrmPrincipal, UFrm_CTE_EMISSOR;

procedure TFrm_NF_CTE.BitBtn1Click(Sender: TObject);
begin
if CDM.CD_CTE_NFES.State IN [DSINSERT,DSEDIT] then
 if Length(DBEdit1.Text)<44 then
    BEGIN
      MessageDlg('CHAVE INVÁLIDA!',mtInformation,[mbok],0);
      DBEdit1.SetFocus;
    END

     ELSE

          BEGIN

             CDM.CD_CTE_NFES.POST;
           //  CDM.CD_CTE_UN.ApplyUpdates(0);
             CLOSE;
           END






end;

procedure TFrm_NF_CTE.BitBtn2Click(Sender: TObject);
begin
CDM.CD_CTE_NFES.CANCEL;
CLOSE;
end;

procedure TFrm_NF_CTE.BitBtn3Click(Sender: TObject);
begin
if CDM.CD_CTE_NFES.State IN [DSINSERT,DSEDIT] then
 if Length(dbEdit1.Text)<>44 then
    BEGIN
      MessageDlg('CHAVE INVÁLIDA!',mtInformation,[mbok],0);
      dbEdit1.SetFocus;

   end;
end;

procedure TFrm_NF_CTE.BitBtn4Click(Sender: TObject);
begin
if cdm.CD_CTE_UN.RecordCount<>0 then
   begin
    if dbEdit1.Text='' then
       begin
         MessageDlg('Digite a Chave da NF antes de adicionar a unidade',mtWarning,[mbOK],0);
         dbEdit1.Setfocus;
       end
       else
       begin
       Frm_Unidade:=TFrm_Unidade.Create(self);
       cdm.CD_CTE_UN.edit;
       Frm_Unidade.ShowModal;
       Frm_Unidade:=nil;
       end;
   end;
end;

procedure TFrm_NF_CTE.BitBtn5Click(Sender: TObject);
begin
        if cdm.CD_CTE_UN.RecordCount<>0 then
           begin
               if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
                  cdm.CD_CTE_UN.Delete;

                  if cdm.CD_CTE_UN.RecordCount<>0 then
                      dbEdit1.enabled:=false
                      else
                      dbEdit1.enabled:=true;
           end;
end;

procedure TFrm_NF_CTE.DBEdit1Change(Sender: TObject);
begin          {
if not cdm.CD_CTE_NFES.LOCATE('CHAVE',DBEdit1.Text ,[loCaseInsensitive]) then
    else
    begin
               MessageDlg('NF já Adicionada',mtWarning,[mbOK],0);
    end;      }
end;

procedure TFrm_NF_CTE.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

end.
