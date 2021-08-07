unit UFrm_CTE_OutroDoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, RzCmboBx, RzDBCmbo;

type
  TFrm_CTE_OutroDoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    RzSpacer1: TRzSpacer;
    RzPanel1: TRzPanel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzDBComboBox1: TRzDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_OutroDoc: TFrm_CTE_OutroDoc;

implementation

{$R *.dfm}

uses UCDM;

procedure TFrm_CTE_OutroDoc.BitBtn1Click(Sender: TObject);
begin


     if DBEdit2.Text='' then
      MessageDlg('o numero do Doc não pode ser nul0!!',mtInformation,[mbok],0)
      else
      begin
        cdm.CD_CTEOutroDoc.Post;
        cdm.CD_CTEOutroDoc.ApplyUpdates(0);
        close;
      end;








end;

procedure TFrm_CTE_OutroDoc.BitBtn2Click(Sender: TObject);
begin
        cdm.CD_CTEOutroDoc.cancel;
        close;
end;

end.
