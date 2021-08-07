unit UFrmAbout;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, RzStatus, RzPanel, Vcl.Imaging.pngimage,
  dxGDIPlusClasses, RzLabel, RzButton;

type
  TFrmAbout = class(TForm)
    Label1: TLabel;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    RzLabel1: TRzLabel;
    RzBitBtn1: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbout: TFrmAbout;

implementation

{$R *.dfm}

uses UFrmPrincipal;

end.
 
