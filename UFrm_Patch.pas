unit UFrm_Patch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls,
  Vcl.ComCtrls, RzTreeVw, RzFilSys, Vcl.Mask;

type
  TFrm_Patch = class(TForm)
    Label1: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Patch: TFrm_Patch;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Patch.Button1Click(Sender: TObject);
begin
dm.CD_MDFe_Config.Edit;
dm.CD_MDFe_ConfigPATHSALVAR.Text:=Label2.Caption;
dm.CD_MDFe_Config.post;
close;
end;

procedure TFrm_Patch.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Patch.FormShow(Sender: TObject);
begin
Label2.Caption:=ExtractFileDir(application.ExeName);
end;

end.
