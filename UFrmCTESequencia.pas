unit UFrmCTESequencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  DosMove, RzPanel, Vcl.ExtCtrls;

type
  TFrmCTESequencia = class(TForm)
    DosMove1: TDosMove;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RzPanel1: TRzPanel;
    Button1: TButton;
    RzGroupBox2: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCTESequencia: TFrmCTESequencia;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal, UCDM;

procedure TFrmCTESequencia.Button1Click(Sender: TObject);
begin
if Length(DBEdit1.Text)=0 then
   DBEdit1.Text:='0';
cdm.CD_CTE_CONFIG.Post;
cdm.CD_CTE_CONFIG.ApplyUpdates(0);
close;
end;

end.







