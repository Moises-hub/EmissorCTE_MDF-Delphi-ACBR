unit UFrm_Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, RzPanel, RzStatus, Vcl.DBCtrls, RzLabel,
  dxGDIPlusClasses;

type
  TFrm_Splash = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzPanel2: TRzPanel;
    RzVersionInfo1: TRzVersionInfo;
    RzPanel3: TRzPanel;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    DBText1: TDBText;
    Label4: TLabel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    RzVersionInfoStatus2: TRzVersionInfoStatus;
    Image3: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Splash: TFrm_Splash;
  T : INTEGER;
implementation

{$R *.dfm}

uses UFrmLogin, UDM;

procedure TFrm_Splash.FormCreate(Sender: TObject);
begin
 Left := Round((Screen.Width - Width)/2);
  Top := Round((Screen.Height - Height)/6);


   


end;

procedure TFrm_Splash.Timer1Timer(Sender: TObject);

begin
  T:=T+1;



  if T >= 5 then
    begin
    Label3.Caption:='Aguardando Autenticação...';
    FrmLogin:=TFrmLogin.Create(self);
    Timer1.Enabled:=false;

    FrmLogin.ShowModal;
    Close;


    end;

end;

end.
