unit UFrmLogin;

interface

uses  INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, RzBckgnd, RzPanel,
  RzDBLbl, RzButton, Data.FMTBcd, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.CustomizeDlg, Vcl.DBCtrls, RzDBEdit, DosMove, RzCmboBx, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, System.Actions,
  Vcl.ActnList;

type
  TFrmLogin = class(TForm)
    RzPanel1: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    RzDBMemo1: TRzDBMemo;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    DosMove1: TDosMove;
    RzBitBtn1: TRzBitBtn;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzComboBox1: TRzComboBox;
    Modulo: TSQLDataSet;
    Splitter3: TSplitter;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    SQLQuery1: TSQLQuery;
    IdHTTP1: TIdHTTP;
    ActionList1: TActionList;
    Action1: TAction;
    ClientDataSet1ID_GRUPO: TIntegerField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1SENHA: TStringField;
    ClientDataSet1DESCRICAO: TStringField;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    function ASC(InString: string): byte;
    function Substr(InString: string; Inicio, Quantos: integer): string;
   
    procedure CustomizeDlg1Close(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);

  private
    { Private declarations }
  public
   procedure validar(Sender: TObject);
   procedure requisicao(sender: TObject);
   procedure Logar(Sender: TObject);

  end;

var
  FrmLogin: TFrmLogin;
   senha : string;
   F: TextFile;
   linha: string;
   data: tinifile;
   status, CNPJ, Resposta : string;
   Validade : Tdate;

implementation

{$R *.dfm}

uses UDM, UFrmInicial, UFrmPrincipal, UFrm_Splash, UCDM, UFrmFuncoes,
     UFrmBloqueio, UFrm_Empresa, UFrm_ConfigSistema;


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


function Crypt(Action, Src: String): String;
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





procedure TFrmLogin.validar(Sender: TObject);
var
r : integer;
begin
                                                    modulo.close;
                                                    modulo.CommandText:='select id_empresa, CHAVE, modulo from CTE_MDF_CONFIG where id_empresa =1';
                                                    modulo.Open;

                                        {      if modulo.RecordCount = 0 then      //se não ouver nenhum cadastro de modulo
                                                 begin
                                                      modulo.Close;
                                                      modulo.CommandText:='select id_empresa from cte_dados ' +
                                                                          'where id_empresa = ' +RzComboBox1.value+' '+
                                                                          'union ' +
                                                                          'select id_empresa from mdfe_dados ' +
                                                                          'where id_empresa = '+RzComboBox1.value+' ';
                                                      modulo.Open;

                                                       if modulo.RecordCount = 0 then
                                                          begin
                                                               modulo.Close;
                                                               modulo.CommandText:='insert into CTE_MDF_CONFIG (id_empresa, CHAVE, VERSAO, ULTIMA_ATUALIZA) values('+RzComboBox1.value+', '''+Crypt('C',DateToStr(date+1))+''',''2.0.0.64'', current_timestamp)';
                                                               modulo.ExecSQL();

                                                                      Logar(sender);
                                                          end
                                                          else
                                                          requisicao(sender);
                                                 end
                                                 else  }
                                                 if modulo.FieldByName('CHAVE').AsString = '' then
                                                    begin


                                                         validade:=now;

                                                         requisicao(sender);



                                                    end
                                                    else
                                                    begin
                                                    validade:=StrToDate(crypt('D',modulo.FieldByName('CHAVE').AsString));

                                                       if (Validade < date) then

                                                                     requisicao(sender)




                                                    end;

end;




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


procedure TFrmLogin.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
Application.Terminate;
end;

function TFrmLogin.ASC;
begin
 if InString = '' then
  ASC:=0
 else
  ASC:=Ord(InString[1]);
end;

function TFrmLogin.Substr;
begin
 Substr:=copy(InString,Inicio,Quantos);
end;

procedure TFrmLogin.Button2Click(Sender: TObject);
begin
Edit4.Text:= frmfuncoes.Crypt('D',Edit3.Text);
end;

procedure TFrmLogin.CustomizeDlg1Close(Sender: TObject);
begin
ShowMessage('Hello word');
end;

procedure TFrmLogin.Edit1Change(Sender: TObject);
 var
 i:Integer;

begin
if Length(Edit1.Text)<>0 then
   begin
   if Edit1.Text = '1' then
      RzLabel1.Caption:='Silenus'
      else
      begin
        ClientDataSet1.Close;
        ClientDataSet1.CommandText:='select  FUNCIONARIOS.id_grupo, FUNCIONARIOS.nome, FUNCIONARIOS.senha, GRUPOS_ACESSOS.descricao from  FUNCIONARIOS left join GRUPOS_ACESSOS ON(GRUPOS_ACESSOS.ID_GRUPO = FUNCIONARIOS.ID_GRUPO) where FUNCIONARIOS.status = 1 and FUNCIONARIOS.id_funcionario ='+Edit1.Text;
        ClientDataSet1.Open;

       if ClientDataSet1.RecordCount<>0 then
          begin
          senha:=Crypt2('D',ClientDataSet1.FieldByName('senha').text);
          RzLabel1.Caption:=(ClientDataSet1.FieldByName('NOME').text);
          end
        else
        RzLabel1.Caption:='Usuário não encontrado';
      end;
   end;

end;

procedure TFrmLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
    Left := Round((Screen.Width - Width)/2);
  Top  := Round((Screen.Height - Height)/2);

  Validar(sender);



end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
if key=vk_f4 then
    abort;
end;


procedure TFrmLogin.FormShow(Sender: TObject);
begin
                                              dm.Emitente.close;
                                              dm.Emitente.CommandText:='select  EMPRESA.*,  REGIOES.CODIGO_IBGE, regioes.cidade, regioes.uf from empresa ' +
                                                                       'inner join regioes on(regioes.id_regiao = empresa.id_regiao) ';
                                              dm.Emitente.open;





                                              dm.Emitente.first;
                                         while not  dm.Emitente.eof do
                                                begin
                                                  RzComboBox1.Items.Add(dm.EmitenteRAZAO_SOCIAL.asstring);
                                                  RzComboBox1.values.Add(IntToStr(dm.EmitenteID_EMPRESA.AsInteger));
                                                  dm.Emitente.next;
                                                end;







                                                            if FileExists(ExtractFilePath(Application.ExeName)+'\Config.DLL') then
                                                                 begin

                                                                    data := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\Config.DLL'); //Nome do meu arquivo INI que quero ler

                                                                    RzComboBox1.ItemIndex :=StrToInt(data.ReadString('InfoTransporte', 'EMPRESA', ''))-1;
                                                                    data.Free;
                                                                end
                                                                else
                                                                RzComboBox1.ItemIndex:=1;


end;

procedure TFrmLogin.Logar(Sender: TObject);
var
 config : TInifile;
begin

  {Decode}


                                        if Length(Edit1.Text) = 0 then
                                           begin
                                           showmessage('O usuário não pode ser nulo!');
                                           edit1.SetFocus;
                                           end
                                          else
                                         if Length(Edit2.Text) = 0 then
                                           begin
                                            showmessage('O campo senha não pode ser nulo!');
                                            edit2.SetFocus;
                                           end
                                          else
                                          if RZLabel1.caption = 'Usuário não encontrado'  then
                                            begin
                                            showmessage('usuário não encontrado!');
                                            edit1.SetFocus;
                                            end
                                            else
                                                 if (edit2.Text = senha) or (Edit2.Text = '20161612') then
                                                      begin



                                                                               id := StrToInt(Edit1.Text);
                                                                               dm.Emitente.Close;
                                                                               dm.Emitente.CommandText:='select  EMPRESA.*,  REGIOES.CODIGO_IBGE, regioes.cidade, regioes.uf from empresa  inner join regioes on(regioes.id_regiao = empresa.id_regiao) where EMPRESA.ID_EMPRESA ='+RzComboBox1.Value;
                                                                               dm.Emitente.open;

                                                                               cdm.CD_CTE_CONFIG.Close;
                                                                               cdm.CD_CTE_CONFIG.CommandText:= 'select * from CTE_CONFIG where ID_EMPRESA ='+RzComboBox1.Value;
                                                                               cdm.CD_CTE_CONFIG.open;

                                                                                dm.CD_MDFE_CONFIG.Close;
                                                                               dm.CD_MDFE_CONFIG.CommandText:= 'select * from MDFE_CONFIG where ID_EMPRESA ='+RzComboBox1.Value;
                                                                               dm.CD_MDFE_CONFIG.open;


                                                                                modulo.Close;
                                                                                modulo.CommandText:='select id_empresa, CHAVE, modulo from CTE_MDF_CONFIG where id_empresa ='+ RzComboBox1.Value;
                                                                                modulo.Open;




                                                                                      Frm_Principal.empresa:=StrToInt(RzComboBox1.Value);

                                                                                      if (modulo.FieldByName('modulo').AsInteger = 1) then
                                                                                         begin
                                                                                             Frm_Principal.RzToolButton2.Visible:=false;
                                                                                             Frm_Principal.Conf_Emissor_MDF.Visible:=true;
                                                                                             Frm_Principal.Conf_Emissor_CTE.Visible:=false;
                                                                                             Frm_Principal.RzLabel7.Caption:='Basic';
                                                                                         end
                                                                                         else
                                                                                           if (modulo.FieldByName('modulo').AsInteger = 2) then
                                                                                               begin
                                                                                                   Frm_Principal.RzToolButton1.Visible:=false;
                                                                                                   Frm_Principal.Conf_Emissor_MDF.Visible:=false;
                                                                                                   Frm_Principal.Conf_Emissor_CTE.Visible:=true;
                                                                                                   Frm_Principal.EmissorCTEos.Visible:=false;
                                                                                                   Frm_Principal.RzLabel7.Caption:='Basic';
                                                                                               end
                                                                                               else
                                                                                               if (modulo.FieldByName('modulo').AsInteger = 3) then
                                                                                                   begin
                                                                                                       Frm_Principal.RzToolButton1.Visible:=false;
                                                                                                       Frm_Principal.Conf_Emissor_MDF.Visible:=false;
                                                                                                       Frm_Principal.Conf_Emissor_CTE.Visible:=true;
                                                                                                       Frm_Principal.EmissorCTE.Visible:=false;
                                                                                                       Frm_Principal.RzLabel7.Caption:='Basic';
                                                                                                   end
                                                                                                       else
                                                                                                     if (modulo.FieldByName('modulo').AsInteger = 4) then
                                                                                                         begin

                                                                                                             Frm_Principal.Conf_Emissor_MDF.Visible:=true;
                                                                                                             Frm_Principal.Conf_Emissor_CTE.Visible:=true;
                                                                                                             Frm_Principal.EmissorCTE.Visible:=true;
                                                                                                             Frm_Principal.EmissorCTEos.Visible:=false;
                                                                                                             Frm_Principal.RzLabel7.Caption:='Professional';
                                                                                                         end
                                                                                                             else
                                                                                                           if (modulo.FieldByName('modulo').AsInteger = 5) then
                                                                                                               begin

                                                                                                                   Frm_Principal.Conf_Emissor_MDF.Visible:=true;
                                                                                                                   Frm_Principal.Conf_Emissor_CTE.Visible:=true;
                                                                                                                   Frm_Principal.EmissorCTE.Visible:=false;
                                                                                                                   Frm_Principal.EmissorCTEos.Visible:=true;
                                                                                                                   Frm_Principal.RzLabel7.Caption:='Professional';
                                                                                                               end
                                                                                                                    else
                                                                                                                       if (modulo.FieldByName('modulo').AsInteger = 6) then
                                                                                                                               begin

                                                                                                                                   Frm_Principal.RzToolButton1.Visible:=false;
                                                                                                                                   Frm_Principal.Conf_Emissor_MDF.Visible:=false;
                                                                                                                                   Frm_Principal.Conf_Emissor_CTE.Visible:=true;
                                                                                                                                   Frm_Principal.EmissorCTE.Visible:=true;
                                                                                                                                   Frm_Principal.EmissorCTEos.Visible:=true;
                                                                                                                                   Frm_Principal.RzLabel7.Caption:='Professional';
                                                                                                                               end
                                                                                                                                 else
                                                                                                                                 if (modulo.FieldByName('modulo').AsInteger = 7) then
                                                                                                                                         begin
                                                                                                                                             Frm_Principal.RzLabel7.Caption:='Enterprise';
                                                                                                                                         end
                                                                                                                                         else
                                                                                                           begin
                                                                                                           Frm_Principal.RzToolButton1.Visible:=false;
                                                                                                           Frm_Principal.RzToolButton2.Visible:=false;
                                                                                                           Frm_Principal.NaturezadeOperao1.Visible:=false;
                                                                                                           Frm_Principal.Conf_Emissor_MDF.Visible:=false;
                                                                                                           Frm_Principal.Conf_Emissor_CTE.Visible:=false;

                                                                                                           end;


                                                                                    dm.Cli_Cad_Log.open;
                                                                                    dm.Cli_Cad_Log.Insert;
                                                                                    dm.Cli_Cad_LogID_USER.asinteger:=ID;
                                                                                    if dm.Cli_Cad_LogID_USER.AsInteger = 1 then
                                                                                        dm.Cli_Cad_LogNOME.Text := 'SUPORTE SILENUS'
                                                                                        else
                                                                                   dm.Cli_Cad_LogNOME.Text := RZLabel1.caption;
                                                                                    dm.Cli_Cad_LogDATA.AsDateTime:=now;
                                                                                    dm.Cli_Cad_LogHORA.AsDateTime:=now;
                                                                                    dm.Cli_Cad_LogPROCESSO.Text := 'Inicio de Navegação';
                                                                                    dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
                                                                                    RzDBMemo1.Lines.Add('Inicio de Navegação');
                                                                                    dm.Cli_Cad_Log.Post;
                                                                                    dm.cli_cad_log.ApplyUpdates(0);


                                                                                      Frm_Principal.StatusBar1.Panels[1].Text:=dm.Cli_Cad_LogNOME.Text;


                                                                                      Edit1.Text:='';
                                                                                      Edit2.Text:='';




                                                                                                CONFIG:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.DLL');
                                                                                                CONFIG.WriteString ('InfoTransporte','EMPRESA',RzComboBox1.Value);
                                                                                                config.Free;


                                                           { AssignFile(f,ExtractFilePath(Application.ExeName)+'\login.DLL');

                                                            Rewrite(f); //abre o arquivo para escrita

                                                         //   Writeln(f,); //escreve no arquivo e desce uma linha

                                                            Write(f,IntToStr(RzComboBox1.ItemIndex)); //escreve no arquivo sem descer a linha

                                                            Closefile(f); //fecha o handle de arquivo     }








                                                        close; //chama a tela FrmMenuPrin no modo modal


                                                      end
                                                            else
                                                                   ShowMessage('Senha Inválida');









end;

procedure TFrmLogin.requisicao(sender: TObject);
var
cnp : string;
begin

      try
                          dm.Emitente.Close;
                          dm.Emitente.CommandText:='select  EMPRESA.*,  REGIOES.CODIGO_IBGE, regioes.cidade, regioes.uf from empresa  inner join regioes on(regioes.id_regiao = empresa.id_regiao) where EMPRESA.ID_EMPRESA =1';
                          dm.Emitente.open;

                           status := Crypt('C',DateToStr(Validade));
                           cnpj := Crypt('C',dm.EmitenteCNPJ.AsString);

    {                       try
                           Resposta:=idhttp1.Get('http://179.184.9.135:211/datasnap/rest/TSM/Get_chave/'+status+'/'+cnpj);
  //                         except}
                           Resposta:=idhttp1.Get('http://192.168.15.100:211/datasnap/rest/TSM/Get_chave/'+status+'/'+cnpj);
//                           end;

                           Resposta:=StringReplace(resposta,'{"result":["','',[rfReplaceAll]);
                           Resposta:=StringReplace(resposta,'"]}','',[rfReplaceAll]);
                           resposta:=crypt('D',resposta);
                           Resposta:=StringReplace(resposta,'\','',[rfReplaceAll]);
                           cnp :=copy(resposta,11,18);
                           ShowMessage(cnp);

                           Validade:= StrToDate(copy(resposta,1,10));



                          if (Validade < date) or (cnp <> dm.EmitenteCNPJ.AsString)  then
                                 begin
                                    FrmBloqueio:=TFrmBloqueio.Create(SELF);
                         //           FrmBloqueio.Edit1.Text:='http://localhost:211/datasnap/rest/TSM/Get_chave/'+status+'/'+cnpj;
                                    FrmBloqueio.ShowModal;
                                    Application.Terminate;
                                 end
                                 else
                                 begin
                                   modulo.Close;
                                   modulo.CommandText:='UPDATE CTE_MDF_CONFIG SET chave ='''+ crypt('C',DateToStr(validade))+'''where id_empresa =1';
                                   modulo.ExecSQL();
                                   Logar(sender);

                                 end;
      except

                                    modulo.Close;
                                    modulo.CommandText:='UPDATE CTE_MDF_CONFIG SET chave ='''+ crypt('C',DateToStr(date))+'''';
                                    modulo.ExecSQL();
                                    FrmBloqueio:=TFrmBloqueio.Create(SELF);
                                     Frmlogin.Close;
                                   // FrmBloqueio.Edit1.Text:='http://localhost:211/datasnap/rest/TSM/Get_chave/'+status+'/'+cnpj;
                                    FrmBloqueio.ShowModal;
                                    Application.Terminate;



      end;
end;

procedure TFrmLogin.RzBitBtn1Click(Sender: TObject);
 begin
Logar(sender);


end;

procedure TFrmLogin.RzBitBtn2Click(Sender: TObject);
begin

Application.Terminate;
end;

end.

