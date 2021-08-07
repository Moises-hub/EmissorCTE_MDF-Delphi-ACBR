unit UFrm_MDF_Averbacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_MDF_Averbacao = class(TForm)
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Button2: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MDF_Averbacao: TFrm_MDF_Averbacao;

implementation

{$R *.dfm}

uses UDM, UFrm_Seguro;

procedure TFrm_MDF_Averbacao.Button1Click(Sender: TObject);
begin
 dm.CD_MDF_Averbacao.Cancel;
 close;

end;

procedure TFrm_MDF_Averbacao.Button2Click(Sender: TObject);
begin
if DBEdit5.Text<>'' then
   begin
   dm.CD_MDF_Averbacao.Post;
   close;
   end
   else
   begin
     MessageDlg('digite o nº da averbação',mtWarning,[mbOK],0);
     DBEdit5.SetFocus;
   end;


end;

end.
