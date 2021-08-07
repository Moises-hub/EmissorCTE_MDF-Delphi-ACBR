unit UFrm_Cad_Usuario;

interface

uses  db,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Usuario, RzButton, Vcl.ExtCtrls,
  RzPanel, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RzCmboBx, RzDBCmbo;

type
  TFrm_Cad_Usuario = class(TForm)
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn7: TRzBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RzPanel3: TRzPanel;
    Label4: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    Label5: TLabel;
    RzBitBtn2: TRzBitBtn;
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cad_Usuario: TFrm_Cad_Usuario;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;


function Crypt2(Action, Src: String): String;
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

procedure TFrm_Cad_Usuario.RzBitBtn1Click(Sender: TObject);
begin
   if dm.MdfeConnection.Connected = false then
      dm.MdfeConnection.Open;

if dm.Cli_Cad_Usu.State in [dsinsert,dsedit] then
   else
   begin
    dm.Cli_Cad_Usu.Open;
    dm.Cli_Cad_Usu.Insert;
    DBEdit2.SetFocus;
   end;
end;

procedure TFrm_Cad_Usuario.RzBitBtn2Click(Sender: TObject);
begin
 if dm.Cli_Cad_Usu.State in [dsinsert,dsedit] then
    BEGIN
        dm.Cli_Cad_Usu.cancel;
        CLOSE;
     end
      else
        CLOSE;

end;

procedure TFrm_Cad_Usuario.RzBitBtn3Click(Sender: TObject);
begin
   if dm.Cli_Cad_Usu.State in [dsinsert,dsedit] then

    if MessageDlg('deseja realmente cancelar as alterações?',mtConfirmation,[mbYes,mbno],0)=mryes then
       dm.Cli_Cad_Usu.cancel;


end;

procedure TFrm_Cad_Usuario.RzBitBtn4Click(Sender: TObject);
var
  senha1, senha2: string[10];
  i: integer;
begin




     if dm.Cli_Cad_Usu.State in [dsedit] then
        begin
        if Length(DBEdit2.Text)=0 then
           begin
             ShowMessage('o campo nome não pode ser nulo');
             DBEdit2.SetFocus;
           end
           else
           begin
             if MessageDlg('Deseja alterar a senha?',mtConfirmation,[mbYes,mbno],0)=mryes then
                begin

                    senha1:=inputbox('Senha de Acesso','Digite a nova Senha','');
                    senha2:=inputbox('Senha de Acesso','Digite a nova Senha','');

                      if (senha2<>senha1) then
                      begin
                          ShowMessage('as senhas não conferem!');
                          DBEdit1.SetFocus;
                      end
                      else
                      begin
                        {encode}




                          dm.Cli_Cad_UsuSENHA.text :=Crypt2('C',senha2);
                          dm.Cli_Cad_Usu.Post;
                          dm.Cli_Cad_Usu.close;
                      end;
                end
                else

                dm.Cli_Cad_Usu.Post;
                dm.Cli_Cad_Usu.close;
           end;







        end
        else
        if dm.Cli_Cad_Usu.State in [dsinsert] then
        begin
        if Length(DBEdit2.Text)=0 then
           begin
             ShowMessage('o campo nome não pode ser nulo');
             DBEdit2.SetFocus;
           end
           else
           begin
                    senha1:=inputbox('Senha de Acesso','Cadastre sua Senha','');
                    senha2:=inputbox('Senha de Acesso','Confirme sua Senha','');

                      if (senha2<>senha1) then
                      begin
                          ShowMessage('as senhas não conferem!');
                          DBEdit1.SetFocus;
                      end
                      else
                      begin
                        {encode}


                          dm.Cli_Cad_UsuSENHA.text :=Crypt2('C',senha2);
                          dm.Cli_Cad_Usu.Post;
                      end;
           end;
        end;










end;

procedure TFrm_Cad_Usuario.RzBitBtn5Click(Sender: TObject);
begin
 if dm.Cli_Cad_Usu.State in [dsinsert,dsedit] then
    else
    if MessageDlg('deseja realmente excluir o registro?',mtConfirmation,[mbYes,mbno],0)=mryes then
       dm.Cli_Cad_Usu.delete;
end;

PROCEDURE TFrm_Cad_Usuario.RzBitBtn7Click(Sender: TObject);
begin
if dm.Cli_Cad_Usu.State in [dsinsert,dsedit] then
   begin
    if MessageDlg('deseja realmente cancelar as alterações?',mtConfirmation,[mbYes,mbno],0)=mryes then
       begin
        dm.Cli_Cad_Usu.cancel;
        frm_usuario:=tFrm_Usuario.create(self);
        Frm_Usuario.showmodal;
        Frm_Usuario:=nil;


       end;
   end

    else
    begin
        frm_usuario:=tFrm_Usuario.create(self);
        Frm_Usuario.showmodal;
        Frm_Usuario:=nil;
    end;

end;

end.
