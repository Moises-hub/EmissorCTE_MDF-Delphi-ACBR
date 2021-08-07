unit UFrmFuncoes;

interface

uses System.zip, Registry, WinProcs,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase;

type
  TFrmFuncoes = class(TForm)
  private
    { Private declarations }
  public
     function testacpf(cpf: string): boolean;
     function FormataCPF(CPF: string): string;
     function FormataCNPJ(CNPJ: String): String;
     function ValidaCNPJ(CNPJ: String):Boolean;
     procedure MakeThumbNail(aSource :TGraphic; aDest: TBitmap; iWidth, iHeight: Integer);
     Procedure GerarCodigo(Codigo: String; Canvas : TCanvas);

     Function SerialNum(FDrive:String) :String;
     Function DataIdade(DataNascimento : String) : Integer;
     function trocarpornumero(s:string):string;
     Function fCheckEmail(Email : String): Boolean;
     Function RoundNExtend(x: Extended; d: Integer): Extended;
     Function Data_Anterior_Mes(xData: TDateTime): Integer;
     Function Data_Proximo_Mes(xData: TDateTime): Integer;
     Function NomedoMes(dData:TDatetime):string;
     function PegarOs: String;
     function GetSerialMotherBoard: String; var a, b, c, d: LongWord;
     procedure SolarizeImage(ABmp: TBitmap);
     function GetWindowsDrive: Char;
     function sonumeros(const texto:string):string;
     function Crypt(Action, Src: String): String;
     function EhNumero(S: string): Boolean;


    { Public declarations }
  end;

var
frmfuncoes:TFrmFuncoes;
implementation
{$R *.dfm}



function TFrmFuncoes.Crypt(Action, Src: String): String;
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
       Key := 'CVIFT';
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


function TFrmFuncoes.sonumeros(const texto:string):string;
var
I:integer;
S:string;
begin
  s:='';
  for I := 1  to Length(texto) do
  begin
    if (texto[i] in ['0'..'9']) then
        begin
          s:=s+copy(texto, I, 1);

        end;
  end;
  result:=S;
end;

function TFrmFuncoes.GetWindowsDrive: Char;
var
  S: string;
begin
  SetLength(S, MAX_PATH);
  if GetWindowsDirectory(PChar(S), MAX_PATH) > 0 then
    Result := string(S)[1]
  else
    Result := #0;
end;

procedure TFrmFuncoes.SolarizeImage(ABmp: TBitmap);
//
//   Clareia a imagem dando efeito de maior incidência de luz.
//
const
  _high = 255;
var
  c: TCursor;
  x, y: Integer;
  R, G, B: Byte;
  ColorRGB: LongInt;
  HCLR: Byte;
begin
  c := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  for x := 0 to (ABmp.Width - 1) do
    for y := 0 to (ABmp.Height - 1) do begin
      ColorRGB := ColorToRGB(ABmp.Canvas.Pixels[x, y]);
      R := GetRValue(ColorRGB);
      G := GetGValue(ColorRGB);
      B := GetBValue(ColorRGB);
      // obtém o maior valor da paleta
      HCLR := 1;
      if R > HCLR then HCLR := R;
      if G > HCLR then HCLR := G;
      if B > HCLR then HCLR := B;
      // aplica a nova cor ao pixel
      ABmp.Canvas.Pixels[x, y] := PaletteRGB(
        R + Abs((R * (_high - HCLR)) div _high),
        G + Abs((G * (_high - HCLR)) div _high),
        B + Abs((B * (_high - HCLR)) div _high)
      );
    end;
  Screen.Cursor := c;
end;




function tfrmfuncoes.GetSerialMotherBoard: String;
var
a, b, c, d: LongWord;
begin
    asm
    push EAX
    push EBX
    push ECX
    push EDX

    mov eax, 1
    db $0F, $A2
    mov a, EAX
    mov b, EBX
    mov c, ECX
    mov d, EDX

    pop EDX
    pop ECX
    pop EBX
    pop EAX

    end;
    result := inttohex(a, 8) +// '-' +
              inttohex(b, 8) +// '-' +
              inttohex(c, 8) +// '-' +
              inttohex(d, 8);
end;


function tfrmfuncoes.PegarOs: String;
var
  PlatformId, VersionNumber: string;
  CSDVersion: String;
begin
  CSDVersion := '';

  // Detecta Plataforma
  case Win32Platform of
    // Teste para familia do windows 95,9X
    VER_PLATFORM_WIN32_WINDOWS:
    begin
      if Win32MajorVersion = 4 then
        case Win32MinorVersion of
          0:  if (Length(Win32CSDVersion) > 0) and
                 (Win32CSDVersion[1] in ['B', 'C']) then
                PlatformId := '95 OSR2'
              else
                PlatformId := '95';
          10: if (Length(Win32CSDVersion) > 0) and
                 (Win32CSDVersion[1] = 'A') then
                PlatformId := '98 SE'
              else
                PlatformId := '98';
          90: PlatformId := 'ME';
        end
      else
        PlatformId := '9x version (unknown)';
    end;
   //Teste para familia NT
    VER_PLATFORM_WIN32_NT:
    begin
      if Length(Win32CSDVersion) > 0 then CSDVersion := Win32CSDVersion;
      if Win32MajorVersion <= 4 then
        PlatformId := 'NT'
      else
        if Win32MajorVersion = 5 then
          case Win32MinorVersion of
            0: PlatformId := '2000';
            1: PlatformId := 'XP';
            2: PlatformId := 'Server 2003';
          end
        else if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
          PlatformId := 'Vista'
        else
          PlatformId := 'Windows 7';
    end;
  end;
  Result :=PlatformId;
end;
Function tFrmFuncoes.NomedoMes(dData:TDatetime):string;
var
nAno,nMes,nDia:word;
cMes:array[1..12] of string;
begin
cMes[01] := 'Janeiro';
cMes[02] := 'Fevereiro';
cMes[03] := 'Março';
cMes[04] := 'Abril';
cMes[05] := 'Maio';
cMes[06] := 'Junho';
cMes[07] := 'Julho';
cMes[08] := 'Agosto';
cMes[09] := 'Setembro';
cMes[10] := 'Outubro';
cMes[11] := 'Novembro';
cMes[12] := 'Dezembro';
decodedate(dData,nAno,nMes,nDia);
if (nMes>=1) and (nMes<=13)then
begin
Result:=cMes[nMes];
end
else
begin
Result:='';
end;
end;


{

Veja nesta função como obter o mês seguinte a partir de uma determinada data.

Parametros de Entrada : xData : TDateTime

Retorno : Integer

}

Function tFrmFuncoes.Data_Proximo_Mes(xData: TDateTime): Integer;//Data_Proximo_Mes

Var

   Year, Month, Day: Word;

   MesAtual : Integer;

   NovMes : Integer;

Begin

   Result := -1;

   Try

      DecodeDate(xData, Year, Month, Day);

      MesAtual := Integer(Month);

      NovMes := ((MesAtual + 12 + 1) mod 12);

      If NovMes = 0 Then NovMes := 12;

         Result := NovMes;

   Except

      Result := -1;

   End;

End;









function TFrmFuncoes.EhNumero(S: string): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 1 to Length(S) do begin
    if not (S[I] in ['0'..'9']) then begin
      Result := False;
      Break;
    end;
  end;
end;



{

Veja nesta função como obter o mês anterior a partir de uma determinada data.

Parametros de Entrada : xData : TDateTime

Retorno : Integer

}

Function tFrmFuncoes.Data_Anterior_Mes(xData: TDateTime): Integer;//Data_Anterior_Mes

Var

   Year, Month, Day: Word;

   MesAtual : Integer;

   NovMes : Integer;

Begin

   Result := -1;

   Try

      DecodeDate(xData, Year, Month, Day);

      MesAtual := Integer(Month);

      NovMes := ((MesAtual + 24 - 1) mod 12);

      If NovMes = 0 Then NovMes := 12;

      Result := NovMes;

   Except

      Result := -1;

   End;

End;



{Agora vamos usar as duas funções através do clique do Button1



procedure TFrmPrincipal.Button1Click(Sender: TObject);

begin

   ShowMessage(' O próximo mês é : ' +

                        IntToStr(Data_Proximo_Mes(DateTimePicker1.DateTime)));

   ShowMessage(' O mês anterior é : ' +

                        IntToStr(Data_Anterior_Mes(DateTimePicker1.DateTime)));

end;



   }






Procedure tFrmFuncoes.GerarCodigo(Codigo: String; Canvas : TCanvas);
const
  digitos : array['0'..'9'] of string[5]= ('00110', '10001', '01001', '11000',
  '00101', '10100', '01100', '00011', '10010', '01010');
var s : string;
    i, j, x, t : Integer;
begin
  // Gerar o valor para desenhar o código de barras
  // Caracter de início
  s := '0000';
  for i := 1 to length(codigo) div 2 do
    for j := 1 to 5 do
      s := s + Copy(Digitos[codigo[i * 2 - 1]], j, 1) + Copy(Digitos[codigo[i * 2]], j, 1);
  // Caracter de fim
  s := s + '100';
  // Desenhar em um objeto canvas
  // Configurar os parâmetros iniciais
  x := 0;
  // Pintar o fundo do código de branco
  Canvas.Brush.Color := clWhite;
  Canvas.Pen.Color := clWhite;
  Canvas.Rectangle(0,0, 2000, 79);
  // Definir as cores da caneta
  Canvas.Brush.Color := clBlack;
  Canvas.Pen.Color := clBlack;
  // Escrever o código de barras no canvas
  for i := 1 to length(s) do
  begin
    // Definir a espessura da barra
    t := strToInt(s[i]) * 2 + 1;
    // Imprimir apenas barra sim barra não (preto/branco - intercalado);
    if i mod 2 = 1 then
      Canvas.Rectangle(x, 0, x + t, 79);
    // Passar para a próxima barra
    x := x + t;
  end;
end;
    {//Como Usar:

procedure TForm1.Button1Click(Sender: TObject);
begin
  CriaCodigo('03213213241',Image1.Canvas);
end;}


Function tFrmFuncoes.RoundNExtend(x: Extended; d: Integer): Extended;
     {RoundN(123, 456, 0) = 123,00
     RoundN(123, 456, 2) = 123,46
     RoundN(123456,  -3) = 123,000 }
   const
      t: array [0..12] of Int64 = (1, 10, 100, 1000, 10000, 100000,
      1000000, 10000000, 100000000, 1000000000, 10000000000,
      100000000000, 1000000000000);

   begin
      if Abs(d) > 12  then
         raise ERangeError.Create('RoundN: Value must be in -12..12');

      if d = 0 then
         result := int(x) + int(Frac(x) * 2)
         else
          if d > 0 then
             begin
              x := x  * t[d];
              Result := (int(x) + Int(Frac(x) * 2)) / t[d];
             end
             else
             begin
                  x := x / t[-d];
                  Result := (int(x) + int(Frac(x) * 2)) - t[-d];


             end;




   end;





Function tFrmFuncoes.fCheckEmail(Email : String): Boolean;
   var {sintaxe: nome@provedor.com.br ou outros}
   s: String;
   EPos: Integer;
begin
   EPos:= pos('@',Email);
   if Epos > 1 then
      begin
         s:= copy(EMail,Epos+1,Length(Email));
         if (pos('.',s)> 1) and (pos('.',s)< length(s)) then
             Result := true
           else
            Result := False;
      end
     else
       Result := False;
End;

function tFrmFuncoes.trocarpornumero(s:string):string;
  var
   i,t:integer;
  begin
    result:='';
    t:=length(s);
    for i:=1 to t do
     if s[i] in ['0'..'9'] then
       result:=result+s[i];
  end;


Function tFrmFuncoes.DataIdade(DataNascimento : String) : Integer;
begin
  try
    strtodate(datanascimento); //-- Verifica se a data é valida
  except
    messagedlg('Data de nascimento inválida!', MTERROR, [MBOK], 0);
    abort;
  end;
  result := Trunc((Date - Strtodate(DataNascimento))/365.25);
end;

Function TfrmFuncoes.SerialNum(FDrive:String) :String;
   Var
      Serial:DWord;
      DirLen,Flags: DWord;
      DLabel : Array[0..11] of Char;
   begin
      Try
         GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
         Result := IntToHex(Serial,8);
      Except Result :='';
   end;
end;

 procedure TfrmFuncoes.MakeThumbNail(aSource :TGraphic; aDest: TBitmap; iWidth, iHeight: Integer);
var
  Escala :Double;
begin
  aDest.Width := iWidth;
  aDest.Height := iHeight;

// Esta parte é utilizada para manter a proporção, sem que
// o maior dos lados ultrapasse a maior medida informada (acho que está 100%)
  Escala := aSource.Width /aSource.Height;
  if (iWidth *Escala) > iHeight then
    aDest.Height := Round(iHeight /Escala)
  else
    if (iHeight /Escala) > iWidth then
      aDest.Width := Round(iWidth *Escala);

// Desenha a imagem no tamanho calculado
  aDest.Canvas.StretchDraw(Rect(0, 0, aDest.Width, aDest.Height), aSource);
end;

// Carrega imagem para visualização em Image1

function TFrmFuncoes.testacpf(cpf: string): boolean;
var i:integer;
    Want:char;
    Wvalid:boolean;
    Wdigit1,Wdigit2:integer;
begin
    Wdigit1:=0;
    Wdigit2:=0;
    Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
    Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
    Delete(cpf,ansipos('.',cpf),1);
    Delete(cpf,ansipos('-',cpf),1);

   //testar se o cpf é repetido como 111.111.111-11
   for i:=1 to length(cpf) do
     begin
       if cpf[i] <> Want then
         begin
            Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
            break
         end;
     end;
       // se o cpf é composto por numeros repetido retorna falso
     if not Wvalid then
       begin
          result:=false;
          exit;
       end;

     //executa o calculo para o primeiro verificador
     for i:=1 to 9 do
       begin
          wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
       end;
        Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
        {formula do primeiro verificador
            soma=1°*2+2°*3+3°*4.. até 9°*10
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

         //verifica se o 1° digito confere
        if IntToStr(Wdigit1) <> cpf[10] then
          begin
             result:=false;
             exit;
          end;


         for i:=1 to 10 do
       begin
          wdigit2:=Wdigit2+(strtoint(cpf[11-i])*(I+1));
       end;
       Wdigit2:= ((11 - (Wdigit2 mod 11))mod 11) mod 10;
         {formula do segundo verificador
            soma=1°*2+2°*3+3°*4.. até 10°*11
            digito1 = 11 - soma mod 11
            se digito > 10 digito1 =0
          }

       // confere o 2° digito verificador
       if IntToStr(Wdigit2) <> cpf[11] then
          begin
             result:=false;
             exit;
          end;

   //se chegar até aqui o cpf é valido
   result:=true;
end;


function TFrmFuncoes.FormataCPF(CPF: string): string;
begin
  CPF:=StringReplace(CPF,'.','',[rfReplaceAll]);
  CPF:=StringReplace(CPF,'-','',[rfReplaceAll]);

  Result := Copy(CPF,1,3)+'.'+Copy(CPF,4,3)+'.'+Copy(CPF,7,3)+'-'+Copy(CPF,10,2);
end;


function TFrmFuncoes.ValidaCNPJ(CNPJ: String):Boolean;
{Testa se o CNPJ é válido ou não}
Var
d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( CNPJ )-2 do
    begin
    if Pos( Copy( CNPJ, nCount, 1 ), '/-.' ) = 0 then
       begin
       if xx < 5 then
          begin
          fator := 6 - xx;
          end
       else
          begin
          fator := 14 - xx;
          end;
       d1 := d1 + StrToInt( Copy( CNPJ, nCount, 1 ) ) * fator;
       if xx < 6 then
          begin
          fator := 7 - xx;
          end
       else
          begin
          fator := 15 - xx;
          end;
       d4 := d4 + StrToInt( Copy( CNPJ, nCount, 1 ) ) * fator;
       xx := xx+1;
       end;
    end;
    resto := (d1 mod 11);
    if resto < 2 then
       begin
       digito1 := 0;
       end
   else
       begin
       digito1 := 11 - resto;
       end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
      begin
      digito2 := 0;
      end
   else
      begin
      digito2 := 11 - resto;
      end;
   Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(CNPJ,succ(length(CNPJ)-2),2) then
      begin
      Result := False;
      end
   else
      begin
      Result := True;
      end;
End;


function TFrmFuncoes.FormataCNPJ(CNPJ: String): String;
begin
  Result := Copy(CNPJ, 1, 2) + '.' + Copy(CNPJ, 3, 3) + '.' + Copy(CNPJ, 6, 3) +
                  '/' + Copy(CNPJ, 9, 4) + '-' + Copy(CNPJ, 13, 2);
end;



end.
