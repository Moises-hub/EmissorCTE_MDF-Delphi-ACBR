unit UFrm_Rotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Web.HTTPApp,
  Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, dxGDIPlusClasses, System.ImageList,
  Vcl.ImgList;

type
  TFrm_Rotas = class(TForm)
    WebBrowser1: TWebBrowser;
    RzPanel1: TRzPanel;
    Button1: TButton;
    Image1: TImage;
    Button2: TButton;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rotas: TFrm_Rotas;

implementation

{$R *.dfm}

procedure WBPrintNoDialog(WB: TWebBrowser) ;

var

  vIn, vOut: OleVariant;

begin

  WB.ControlInterface.ExecWB(OLECMDID_PRINT,

    OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut);

end;



{ Abre a tela de impressão }

procedure WBPrintWithDialog(WB: TWebBrowser) ;

var

  vIn, vOut: OleVariant;

begin

  WB.ControlInterface.ExecWB(OLECMDID_PRINT,

    OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;

end;



{ Pré-visualização da impressão }

procedure WBPrintPreview(WB: TWebBrowser) ;

var

  vIn, vOut: OleVariant;

begin

  WB.ControlInterface.ExecWB(OLECMDID_PRINTPREVIEW,

    OLECMDEXECOPT_DONTPROMPTUSER, vIn, vOut) ;

end;



{ Abre a tela de configuração da página }

procedure WBPrintPageSetup(WB: TWebBrowser) ;

var

  vIn, vOut: OleVariant;

begin

  WB.ControlInterface.ExecWB(OLECMDID_PAGESETUP,

    OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;

end;

procedure TFrm_Rotas.Button1Click(Sender: TObject);
begin
     WBPrintPreview(WebBrowser1);
end;

procedure TFrm_Rotas.Button2Click(Sender: TObject);
begin
close;
end;

end.
