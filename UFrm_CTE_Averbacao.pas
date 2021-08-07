unit UFrm_CTE_Averbacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_CTE_Averbacao = class(TForm)
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_Averbacao: TFrm_CTE_Averbacao;

implementation

{$R *.dfm}

uses UCDM;

procedure TFrm_CTE_Averbacao.Button1Click(Sender: TObject);
begin

close;
end;

end.
