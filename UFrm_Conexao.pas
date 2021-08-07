unit UFrm_Conexao;

interface

uses   System.Win.Registry,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzGroupBar,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TFrm_Conexao = class(TForm)
    Image2: TImage;
    RzComboBox1: TRzComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   procedure Button(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    var
    RegSel:TRegistry;
  end;

var
  Frm_Conexao: TFrm_Conexao;

implementation



{$R *.dfm}

procedure TFrm_Conexao.Action1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_Conexao.Button(Sender: TObject);
begin
//ShowMessage(IntToStr(RzGroup1.ItemIndex));
close;
end;

procedure TFrm_Conexao.Button1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Conexao.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_Conexao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if RzComboBox1.ItemIndex = -1 then
   Application.Terminate;
end;

procedure TFrm_Conexao.FormCreate(Sender: TObject);
var
i : integer;
begin
  RegSel:=TRegistry.Create;
   if RegSel.KeyExists('\Software\InfoComerceLite\Conexoes\Conexao') Then
               Begin

                    rzComboBox1.Items.Add('CONEXÃO PADRÃO');

                 for i := 1 to 99 do
                   Begin
                      if RegSel.KeyExists('\Software\InfoComerceLite\Conexoes\Conexao'+IntToStr(i)) Then
                        Begin
                           RegSel.OpenKey('\Software\InfoComerceLite\Conexoes\Conexao'+IntToStr(i),False);
                           rzComboBox1.Items.Add(UpperCase(RegSel.ReadString('NomeConexao')));

                        end;
                   end;
                rzComboBox1.ItemIndex := 0;

                { OPDB := 1;
                                 if (rzComboBox1.ItemIndex = 0) Then
                                                    Begin
                                                                         RegSel.OpenKey('\Software\Credigas\Database',True)
                                                                                            end
                                                                                                               else
                                                                                                                                  Begin
                                                                                                                                                       RegSel.OpenKey('\Software\Credigas\Conexoes\Conexao'+IntToStr(rzComboBox1.ItemIndex),False);
                                                                                                                                                                          end;
                                                                                                                                                     frmSelecaoDB.Free;}
               end
               else
               RegSel.OpenKey('\Software\Credigas\Database',True);
end;

procedure TFrm_Conexao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_f4 then
   Application.Terminate;
end;

end.
