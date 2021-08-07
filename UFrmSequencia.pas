unit UFrmSequencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  DosMove;

type
  TFrmSequencia = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Button1: TButton;
    DosMove1: TDosMove;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSequencia: TFrmSequencia;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrmSequencia.Button1Click(Sender: TObject);
begin
if Length(DBEdit1.Text)=0 then
   DBEdit1.Text:='0';
dm.CD_MDFe_Config.Post;
dm.CD_MDFe_Config.ApplyUpdates(0);
close;
end;

end.

