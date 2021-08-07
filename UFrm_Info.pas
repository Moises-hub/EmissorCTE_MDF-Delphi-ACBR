unit UFrm_Info;

interface

uses  SHELLAPI,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPrgres, Vcl.StdCtrls, RzLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxGDIPlusClasses, Vcl.ExtCtrls, IBX.IBDatabase,
  IBX.IBDatabaseInfo, RzStatus, RzPanel, System.Actions, Vcl.ActnList,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TFrm_info = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label6: TLabel;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    Label7: TLabel;
    Label2: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label1: TLabel;
    RzProgressBar1: TRzProgressBar;
    ActionList1: TActionList;
    Action1: TAction;
    Label8: TLabel;
    Label9: TLabel;
    RzVersionInfo1: TRzVersionInfo;
    FDQuery1: TFDQuery;
    Query_Empresa: TFDQuery;
    versao: TFDQuery;
    Label10: TLabel;
    procedure RodaScript(Script, Descricao : String);
    function WinExecAndWait32(FileName: String; Visibility: Integer): Integer;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
     var
     proces : integer;
  end;

var
  Frm_info: TFrm_info;

implementation

{$R *.dfm}
{$R E:\Delphi_Projetos\InfoTransporte\RES\SCRIPT.RES}
uses UDM, UFrmLogin, UCDM;

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



function TFrm_Info.WinExecAndWait32(FileName: String; Visibility: Integer): Integer;
var
 zAppName:array[0..255] of char;
 zCurDir:array[0..255] of char;
 WorkDir:String;
 StartupInfo:TStartupInfo;
 ProcessInfo:TProcessInformation;
 Resultado: DWord;

begin

StrPCopy(zAppName,FileName);
GetDir(0,WorkDir);
StrPCopy(zCurDir,WorkDir);
FillChar(StartupInfo,Sizeof(StartupInfo),#0);
StartupInfo.cb := Sizeof(StartupInfo);

StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Visibility;

if not CreateProcess(nil,
 zAppName,                      { pointer to command line string }
 nil,                           { pointer to process security attributes}
 nil,                           { pointer to thread security attributes}
 false,                         { handle inheritance flag }
 CREATE_NEW_CONSOLE or          { creation flags }
 NORMAL_PRIORITY_CLASS,
 nil,                           { pointer to new environment block }
 nil,                           { pointer to current directory name }
 StartupInfo,                   { pointer to STARTUPINFO }
 ProcessInfo) then Result := -1 { pointer to PROCESS_INF }

else begin
 WaitforSingleObject(ProcessInfo.hProcess,INFINITE);
 GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
 Result := Resultado;
end;

Application.ProcessMessages;

end;

procedure TFrm_info.Action1Execute(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrm_info.Button1Click(Sender: TObject);
begin


    if  Label2.Caption ='0' then
    begin

       Label10.Caption :='Criando  Tabelas';
       RodaScript('TABELAS','');

       Label10.Caption :='Criando e Atualizando os Generators';
       RodaScript('GENERATOR','');
       Label10.Caption :='Atualizando Versão';
       RodaScript('UPDATE','');
       Label10.Caption :='Criando e Atualizando as Procedures';
       RodaScript('PROCEDURE','');
       Label10.Caption :='Criando e Atualizando as Views';
       RodaScript('VIEW','');
       Label10.Caption :='Criando e Atualizando as Triggers';
       RodaScript('TRIGGER','');
              Label10.Caption :='Concluido';


      if Proces=0 then
         begin
              Query_Empresa.Close;
              Query_Empresa.SQL.Clear;
              Query_Empresa.SQL.Add('select id_empresa from EMPRESA');
              Query_Empresa.open;
              query_empresa.First;
              while not Query_Empresa.Eof do
               begin
                  Versao.Close;
                  versao.SQL.Clear;
                  versao.SQL.Add('insert into CTE_MDF_CONFIG  (id_empresa, ultima_atualiza, versao, chave) '+
                                  'values('+query_empresa.FieldByName('id_empresa').AsString+', current_timestamp,'''+RzVersionInfo1.FileVersion+''','''+Crypt('C',DateToStr(date+1))+''')');
                  versao.ExecSQL;
                  Query_Empresa.Next;
               end;
         end
         else
     if Proces=1 then
            begin
              Versao.Close;
              versao.SQL.Clear;
              versao.SQL.Add('update CTE_MDF_CONFIG set versao ='''+RzVersionInfo1.FileVersion+''', ULTIMA_ATUALIZA = current_timestamp ');
              versao.ExecSQL;
            end;






      DM.MdfeConnection.open;
      CDM.Conexao.open;
      dm.FDConnection1.open;
      dm.CD_Mdfe_v_reboqueTable.Open;
      close;
    end
    else
    BEGIN
    TRY
    FrmLogin.Free;
    Application.Terminate;
    EXCEPT

    END;
    END;
end;

procedure TFrm_info.FormShow(Sender: TObject);
begin

//   IBDatabase1.DatabaseName:=dm.FDConnection1.Params.Values['DataBase'];
//   IBDatabase1.open;
//   IBDatabaseInfo1.
{dm.MdfeConnection.Close;
cdm.Conexao.Close;
cdm.FDConnection1.Close;

FDQuery1.Open();
   Label2.Caption:=IntToStr(FDQuery1.FieldByName('conexoes').AsInteger-1);
       if  Label2.Caption ='0' then
                                      }
              button1.Caption:='ATUALIZAR';
         {  ELSE
              button1.Caption:='ENCERRAR'; }


end;

procedure TFrm_Info.RodaScript(Script, Descricao : String);
var
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile : string;
  PathToSave : String;
  Res : TResourceStream;
  SCR, FB_User, FB_Pass,BD : String;

begin


   Label1.Caption := 'Rodando Script ' + Descricao;
   Label1.Refresh;
   Update;



         BD :=DM.FDConnection1.Params.Values['database'];
         FB_User := dm.MdfeConnection.Params.Values['user_name'];
         FB_Pass := dm.MdfeConnection.Params.Values['password'];

      //   DM.FDConnection1.Close;
         PathToSave :=ExtractFilePath(Application.ExeName)+Script+'.sql';


  If not FileExists(PathToSave) Then
    Begin
      Res := TResourceStream.Create(Hinstance, Script, 'TEXT');
      Try
        Res.SavetoFile(PathToSave);
      Finally
        Res.Free;
      End;
    end;





          SCR := PathToSave + ' -D' + BD + ' -U' + FB_User + ' -P' + FB_Pass + ' -N -S -CWIN1252';


  WinExecAndWait32('ibescript.exe ' + SCR, 0);

  RZProgressBar1.Percent:=RZProgressBar1.Percent+17;
  Update;
  DeleteFile(PathToSave);



end;



end.


