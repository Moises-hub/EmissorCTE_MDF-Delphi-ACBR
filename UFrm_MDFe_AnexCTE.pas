unit UFrm_MDFe_AnexCTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrm_MDFe_AnexCTE = class(TForm)
    RzPanel2: TRzPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    RzSpacer1: TRzSpacer;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MDFe_AnexCTE: TFrm_MDFe_AnexCTE;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_MDFe_AnexCTE.BitBtn1Click(Sender: TObject);
begin
if Length(DBEdit1.Text)<44 then
   begin
      MessageDlg('O Campo chave não pode ser nullo!',mtWarning,[mbok],0);
      DBEdit1.SetFocus;
   end
     else
         if Length(DBEdit3.Text)=0 then
             begin
                MessageDlg('O Campo valor não pode ser nullo!',mtWarning,[mbok],0);
                DBEdit1.SetFocus;
             end
              else
               BEGIN
                    DM.CD_MDF_CTE.Post;
                    DM.CD_MDF_CTE.ApplyUpdates(0);
                    close;
               END;

end;

procedure TFrm_MDFe_AnexCTE.BitBtn2Click(Sender: TObject);
begin
    DM.CD_MDF_CTE.cancel;
    close;
end;

end.
