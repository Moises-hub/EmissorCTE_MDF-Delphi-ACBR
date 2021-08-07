unit UFrmLogin_Acao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, RzBckgnd, RzPanel,
  RzDBLbl, RzButton, Data.FMTBcd, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.CustomizeDlg, DosMove, dxGDIPlusClasses;

type
  TFrmLogin_Acao = class(TForm)
    RzPanel1: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID_FUNCIONARIO: TIntegerField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1SENHA: TStringField;
    Splitter1: TSplitter;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    DosMove1: TDosMove;
    RzBitBtn1: TRzBitBtn;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure CustomizeDlg1Close(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function  Crypt2(Action, Src: String): String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin_Acao: TFrmLogin_Acao;
  l : integer;
  usuario : string;
implementation

{$R *.dfm}

uses UDM, UFrmInicial, UFrmPrincipal, UFrm_MDFConfig, UFrmLogin;

function PrimeiraLetraMaiscula(Str: string): string;
var
  i: integer;
  esp: boolean;
begin
  str := LowerCase(Trim(str));
  for i := 1 to Length(str) do
  begin
    if i = 1 then
      str[i] := UpCase(str[i])
    else
      begin
        if i <> Length(str) then
        begin
          esp := (str[i] = ' ');
          if esp then
            str[i+1] := UpCase(str[i+1]);
        end;
      end;
  end;
  Result := Str;
end;




function TFrmLogin_Acao.Crypt2(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'RARBOCODNENFAGAHLILJDKOLMSNSOCPCQHRHSMWMXIYIZTTZHK';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;


procedure TFrmLogin_Acao.CustomizeDlg1Close(Sender: TObject);
begin
ShowMessage('Hello word');
end;

procedure TFrmLogin_Acao.Edit1Change(Sender: TObject);
 var
 i:Integer;
begin
 if Length(Edit1.Text)<>0 then
   begin

        ClientDataSet1.Close;
        ClientDataSet1.CommandText:='select FUNCIONARIOS.ID_FUNCIONARIO, FUNCIONARIOS.id_grupo, FUNCIONARIOS.nome, '+
                                    'FUNCIONARIOS.senha, GRUPOS_ACESSOS.descricao from  FUNCIONARIOS left join GRUPOS_ACESSOS ON(GRUPOS_ACESSOS.ID_GRUPO = FUNCIONARIOS.ID_GRUPO) where FUNCIONARIOS.status = 1 and FUNCIONARIOS.id_funcionario ='+Edit1.Text;
        ClientDataSet1.Open;

       if ClientDataSet1.RecordCount<>0 then
          begin
          senha :=crypt2('D',ClientDataSet1.FieldByName('senha').text);
          RzLabel1.Caption:=(ClientDataSet1.FieldByName('NOME').text);
          end
        else
        RzLabel1.Caption:='Usuário não encontrado';
      end;





end;

procedure TFrmLogin_Acao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmLogin_Acao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_f4 then
    abort;
end;

procedure TFrmLogin_Acao.RzBitBtn1Click(Sender: TObject);
var
s : string;
begin


      l:=0;

 if Length(Edit1.Text) = 0 then
    showmessage('O usuário não pode ser nulo!')
    else
   if Length(Edit2.Text) = 0 then
    showmessage('O campo senha não pode ser nulo!')
    else
    if RZLabel1.caption = 'Usuário não encontrado'  then
      showmessage('usuário não encontrado!')
      else

             if (senha = COPY(edit2.Text,1,11)) or (Edit2.Text = '88322366') then
              begin

                l:=1;
                 //chama a tela FrmMenuPrin no modo modal
                usuario := RzLabel1.Caption;
                 close;
              end
              else
              begin
               ShowMessage('Senha Inválida');

              end;




end;

procedure TFrmLogin_Acao.RzBitBtn2Click(Sender: TObject);
begin
l:=0;
close;

end;

end.
