unit UFrm_CTE_VAdicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, DosMove;

type
  TFrm_CTE_VAdicional = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DosMove1: TDosMove;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_VAdicional: TFrm_CTE_VAdicional;

implementation

{$R *.dfm}

uses UCDM, UFrm_CTE_EMISSOR;

procedure TFrm_CTE_VAdicional.BitBtn1Click(Sender: TObject);
begin
if DBEdit1.Text='' then
   begin
   MessageDlg('O Campo descrição não pode ser nulo!!',mtWarning,[mbok],0);
   DBEdit1.SetFocus;
   end
   else
   if DBEdit2.Text='' then
   begin
       MessageDlg('O Campo descrição não pode ser nulo!!',mtWarning,[mbok],0);
       DBEdit2.SetFocus;
   end
   else
   begin
   cdm.CD_CTE_ValorAdicional.Post;
   close;
   end;

end;

procedure TFrm_CTE_VAdicional.BitBtn2Click(Sender: TObject);
begin
 if MessageDlg('Deseja Realmente Cancelar as Alterações?',mtConfirmation,[mbYes,mbNo],0)= mryes then
    begin
    cdm.CD_CTE_ValorAdicional.cancel;
    close;
    end;

end;

end.


