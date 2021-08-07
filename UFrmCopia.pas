unit UFrmCopia;

interface

uses   Shellapi, filectrl,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, dxGDIPlusClasses;

type
  TForm2 = class(TForm)
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  ShFileOpStruct : TShFileOpStruct;
begin
  FillChar(ShFileOpStruct,Sizeof(TShFileOpStruct),0);
  with ShFileOpStruct do begin
    Wnd := Application.Handle;
    wFunc := FO_COPY; {Parametro de cópia do arquivo ou pasta}
    pFrom := PChar(LabeledEdit1.Text); {diretório origem}
    pTo := PChar(ExtractFilePath(Application.ExeName)); {diretório  destino}
    fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
  end;
  try
  ShFileOperation(ShFileOpStruct);
  except
    on E : Exception do
      ShowMessage(' Houve um erro na cópia das imagens: ' + E.Message);
  end;



end;


procedure TForm2.Button2Click(Sender: TObject);
begin
if OpenDialog1.Execute then
   begin
   if OpenDialog1.FileName <> null then

    LabeledEdit1.Text:=ExtractFilePath(OpenDialog1.FileName);

   end;

end;

end.
