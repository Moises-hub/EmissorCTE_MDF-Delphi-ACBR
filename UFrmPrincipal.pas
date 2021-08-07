unit UFrmPrincipal;

interface

uses Registry,  ShellAPI, Vcl.Consts,  INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.Buttons, RzPanel, Vcl.Imaging.pngimage,
  Vcl.Mask, RzEdit, Vcl.Imaging.jpeg, RzButton, Vcl.Menus, RzStatus,
  RzLabel, System.Actions, Vcl.ActnList, Vcl.DBCtrls, RzDBEdit, Vcl.ComCtrls,
  RzDBLbl, RzBckgnd, RzGroupBar, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Script,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, UFrm_GradeVeiculos,
  Vcl.OleCtrls, SHDocVw, dxGDIPlusClasses;

type
  TFrm_Principal = class(TForm)
    RzPanel1: TRzPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Conf_Emissor_MDF: TMenuItem;
    RzVersionInfo1: TRzVersionInfo;
    RzLabel1: TRzLabel;
    RzPanel2: TRzPanel;
    PopupMenu1: TPopupMenu;
    Usurios1: TMenuItem;
    RzDBMemo1: TRzDBMemo;
    StatusBar1: TStatusBar;
    Image3: TImage;
    RzLabel3: TRzLabel;
    Image4: TImage;
    RzSeparator1: TRzSeparator;
    Panel1: TPanel;
    Image5: TImage;
    Image1: TImage;
    RzSeparator3: TRzSeparator;
    RzLabel5: TRzLabel;
    LinkLabel2: TLinkLabel;
    RzSeparator2: TRzSeparator;
    RzLabel4: TRzLabel;
    LinkLabel1: TLinkLabel;
    RzLabel2: TRzLabel;
    LinkLabel3: TLinkLabel;
    Log1: TMenuItem;
    N1: TMenuItem;
    RzDBLabel1: TRzDBLabel;
    Image7: TImage;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzLabel6: TRzLabel;
    Conf_Emissor_CTE: TMenuItem;
    N2: TMenuItem;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    EmissorMDF: TMenuItem;
    PopupMenu2: TPopupMenu;
    EmissorCTE: TMenuItem;
    ImageList1: TImageList;
    Cadastro1: TMenuItem;
    Pessoas1: TMenuItem;
    NaturezadeOperao1: TMenuItem;
    Regies1: TMenuItem;
    ConfiguraodoSistema1: TMenuItem;
    N4: TMenuItem;
    RzLabel7: TRzLabel;
    Label2: TLabel;
    RzGroupBar1: TRzGroupBar;
    RzGroup1: TRzGroup;
    Ajuda1: TMenuItem;
    SobreoSistema1: TMenuItem;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzToolButton3: TRzToolButton;
    Relatrios1: TMenuItem;
    EmissorCTEos: TMenuItem;
    Veiculos1: TMenuItem;
    ActionList1: TActionList;
    Act_CadPessoas: TAction;
    Act_Cad_Regioes: TAction;
    Act_CadVeiculos: TAction;
    Act_TrocaEmpr: TAction;
    Act_Sair: TAction;
    Image2: TImage;
    Image6: TImage;
    ImageList2: TImageList;
    Relatrio1: TMenuItem;
    CTe1: TMenuItem;
    CTeOS1: TMenuItem;
    RzToolButton4: TRzToolButton;
    ImageList3: TImageList;
    Act_Manifesto: TAction;
    Act_RelManifesto: TAction;
    Act_Natureza: TAction;
    Act_Seguradora: TAction;
    SeguradoraF111: TMenuItem;
    ActionList2: TActionList;
    Action1: TAction;
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Conf_Emissor_MDFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActEmitirExecute(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure JumpTo(const aAdress: String);
    procedure Image5Click(Sender: TObject);
    procedure Log1Click(Sender: TObject);
    procedure Image4DblClick(Sender: TObject);
    procedure Conf_Emissor_CTEClick(Sender: TObject);
    procedure EmissorCTEClick(Sender: TObject);
    procedure NaturezadeOperao1Click(Sender: TObject);
    procedure ConfiguraodoSistema1Click(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure RzGroup1Items3Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DatadeEmisso1Click(Sender: TObject);
    procedure EmissorCTEosClick(Sender: TObject);
    procedure Veiculos1Click(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Act_TrocaEmprExecute(Sender: TObject);
    procedure Act_Cad_RegioesExecute(Sender: TObject);
    procedure Act_CadPessoasExecute(Sender: TObject);
    procedure Act_CadVeiculosExecute(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure CTe1Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure Act_ManifestoExecute(Sender: TObject);
    procedure Act_RelManifestoExecute(Sender: TObject);
    procedure Act_NaturezaExecute(Sender: TObject);
    procedure Act_SeguradoraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    var
    empresa : integer;
    CTe : integer;
    log : Tsqldataset;
    function GetComputerNameFunc : string;
    Const
    InputBoxMsg = WM_USER + 123;
     procedure InputBoxSet(var Msg: TMessage); message InputBoxMsg;
  end;

var
  Frm_Principal: TFrm_Principal;
  s: string[255];
  c : string;
  //c: array[0..255] of Byte absolute s;
  id : integer;


implementation

{$R *.dfm}

uses UFrm_MDF, UDM, UFrm_NFE, UFrm_MDFConfig, UFrmGrade, UFrmSequencia,
  UFrmLogin, UFrm_Cad_Usuario, UFrmLogin_Acao, UFrm_Splash, UFrm_Rellog,
  UFrm_CTE_Config, UCDM, UFrm_CTE_EMISSOR, UFrm_Grade_CTE, UFrm_CadClientes,
  UFrm_Carregamento, UFrmTomador, UFrmCad_NOperacao, UFrmNatureza_Operacao,
  UFrm_Regiao, UFrm_ConfigSistema, UFrmAbout, UFrm_RelMDF_DT, UFrm_Update,
  UFrm_Conexao, UFrm_CadVeiculos, U_FrmRelCTE_DT, UFrm_Rotas,
  UFrm_Cad_Seguradora, UFrm_Info, UFrm_CTEXML;


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



procedure TFrm_Principal.InputBoxSet(var Msg: TMessage);
var
  i: integer;
begin
  for i:=0 to Screen.Forms[0].ComponentCount-1 do
  begin
    if Screen.Forms[0].Components[i] is TEdit then
    begin
      With TEdit( Screen.Forms[0].Components[i] ) do
      begin
        PasswordChar := '*'; //Aqui está o caractere q irá aparecer na inputbox
        Clear;               //Limpamos a caixa de digitação da senha.
      end;
    end;
  end;
end;

procedure TFrm_Principal.JumpTo(const aAdress: String);

var

       buffer: String;

begin

       buffer := 'http://' + aAdress;

       ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);

end;









procedure TFrm_Principal.Log1Click(Sender: TObject);
begin
Frm_Rellog:=TFrm_Rellog.Create(self);
Frm_Rellog.ShowModal;
end;

procedure TFrm_Principal.NaturezadeOperao1Click(Sender: TObject);
begin
FrmNatureza_Operacao:=TFrmNatureza_Operacao.Create(SELF);
FrmNatureza_Operacao.ShowModal;
FrmNatureza_Operacao.Free;
end;

function TFrm_Principal.GetComputerNameFunc : string;
var ipbuffer : string;
      nsize : dword;
begin
   nsize := 255;
   SetLength(ipbuffer,nsize);
   if GetComputerName(pchar(ipbuffer),nsize) then
      result := ipbuffer;
end;

procedure TFrm_Principal.Image1Click(Sender: TObject);
begin
JumpTo('www.youtube.com/user/silenus2000/videos');
end;

procedure TFrm_Principal.Image2Click(Sender: TObject);
begin
JumpTo('https://api.whatsapp.com/send?1=pt_BR&phone=5567984278265');
end;

procedure TFrm_Principal.Image4DblClick(Sender: TObject);
begin
    JumpTo('/www.silenus.com.br/');
end;

procedure TFrm_Principal.Image5Click(Sender: TObject);
begin
JumpTo('www.facebook.com/silenussoftware');
end;

procedure TFrm_Principal.Image6Click(Sender: TObject);
begin
JumpTo('https://www.instagram.com/silenus.software/?hl=pt-br');
end;

procedure TFrm_Principal.ActEmitirExecute(Sender: TObject);
begin
Frm_MDF:=TFrm_mdf.Create(self);
dm.CD_Mdf_Dados.Insert;
Frm_mdf.ShowModal;
Frm_mdf:=nil;;
end;

procedure TFrm_Principal.Act_CadPessoasExecute(Sender: TObject);
begin
FrmTomador:=TFrmTomador.Create(self);
FrmTomador.ShowModal;
FrmTomador.Free;
end;

procedure TFrm_Principal.Act_CadVeiculosExecute(Sender: TObject);
begin
Frm_GradeVeiculos:=TFrm_GradeVeiculos.Create(self);
Frm_GradeVeiculos.Button1.Action:=Frm_GradeVeiculos.Act_Sair;
Frm_GradeVeiculos.showModal;
Frm_GradeVeiculos:=NIL;
end;

procedure TFrm_Principal.Act_Cad_RegioesExecute(Sender: TObject);
begin
Frm_Regiao:=TFrm_Regiao.Create(self);
Frm_Regiao.ShowModal;
Frm_Regiao.Destroy;
end;

procedure TFrm_Principal.Act_ManifestoExecute(Sender: TObject);
begin
  dm.CD_MDFE_CONFIG.Close;
 dm.CD_MDFE_CONFIG.CommandText:= 'select * from MDFE_CONFIG where ID_EMPRESA ='+dm.EmitenteID_EMPRESA.AsString;
 dm.CD_MDFE_CONFIG.open;
FrmGrade:=TFrmGrade.Create(self);
FrmGrade.ShowModal;
FrmGrade:=nil;
end;

procedure TFrm_Principal.Act_NaturezaExecute(Sender: TObject);
begin
   FrmNatureza_Operacao:=TFrmNatureza_Operacao.Create(SELF);
FrmNatureza_Operacao.ShowModal;
FrmNatureza_Operacao.Free;
end;

procedure TFrm_Principal.Act_RelManifestoExecute(Sender: TObject);
begin
    Frm_RelMDF_DT:=TFrm_RelMDF_DT.Create(self);
    Frm_RelMDF_DT.ShowModal;
    Frm_RelMDF_DT:=nil;
end;

procedure TFrm_Principal.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.Act_SeguradoraExecute(Sender: TObject);
begin
Frm_Cad_Seguradora:=TFrm_Cad_Seguradora.Create(self);
Frm_Cad_Seguradora.ShowModal;
end;

procedure TFrm_Principal.Act_TrocaEmprExecute(Sender: TObject);
begin
    FrmLogin:=TFrmLogin.Create(self);
    FrmLogin.ShowModal;
end;

procedure TFrm_Principal.Button4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.Button6Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.Conf_Emissor_MDFClick(Sender: TObject);
var
  senha: string[8];
begin
    IF ID<>1  then
    BEGIN

         PostMessage(Handle, InputBoxMsg, 0, 0);
         senha:=inputbox('Senha de Acesso','Digite a Senha de Acesso','');

        if (senha<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
        begin //no lugar de Master digite sua senha
        SHOWMESSAGE('SENHA INCORRETA');

        end
        else
        begin
              dm.CD_MDFE_CONFIG.Close;
             dm.CD_MDFE_CONFIG.CommandText:= 'select * from MDFE_CONFIG where ID_EMPRESA ='+DM.EmitenteID_EMPRESA.AsString;
             dm.CD_MDFE_CONFIG.open;
            Frm_MDFCOnfig:=tfrm_mdfconfig.Create(self);
            dm.CD_MDFe_Config.Edit;
            Frm_MDFCOnfig.ShowModal;
            Frm_MDFCOnfig:=nil;
        end;
    END
    ELSE
    begin
          dm.CD_MDFE_CONFIG.Close;
         dm.CD_MDFE_CONFIG.CommandText:= 'select * from MDFE_CONFIG where ID_EMPRESA ='+DM.EmitenteID_EMPRESA.AsString;
         dm.CD_MDFE_CONFIG.open;
        Frm_MDFCOnfig:=tfrm_mdfconfig.Create(self);
        dm.CD_MDFe_Config.Edit;
        Frm_MDFCOnfig.ShowModal;
        Frm_MDFCOnfig:=nil;
    end;

end;

procedure TFrm_Principal.CTe1Click(Sender: TObject);
begin
Frm_RelCTE_dt:=TFrm_RelCTE_dt.Create(self);
Frm_relcte_dt.ShowModal;
Frm_RelCTE_dt:=nil;
end;

procedure TFrm_Principal.ConfiguraodoSistema1Click(Sender: TObject);
var
  senha: string[8];
begin
     if ID<>1 then
     BEGIN

         PostMessage(Handle, InputBoxMsg, 0, 0);
         senha:=inputbox('Senha de Acesso','Digite a Senha de Acesso','');

          if (senha<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
          begin //no lugar de Master digite sua senha
          SHOWMESSAGE('SENHA INCORRETA');

          end
          else
          begin
              Frm_ConfigSistema:=TFrm_ConfigSistema.Create(self);

              Frm_ConfigSistema.CD_Empresa.Open;
              Frm_ConfigSistema.ShowModal;
              Frm_ConfigSistema.destroy;
          end;
     END
     ELSE
          begin
              Frm_ConfigSistema:=TFrm_ConfigSistema.Create(self);

              Frm_ConfigSistema.CD_Empresa.Open;
              Frm_ConfigSistema.ShowModal;
              Frm_ConfigSistema.destroy;
          end;
end;

procedure TFrm_Principal.Conf_Emissor_CTEClick(Sender: TObject);
var
  senha: string[8];
begin

   IF ID<>1  then
    BEGIN

         PostMessage(Handle, InputBoxMsg, 0, 0);
         senha:=inputbox('Senha de Acesso','Digite a Senha de Acesso','');

          if (senha<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
          begin //no lugar de Master digite sua senha
          SHOWMESSAGE('SENHA INCORRETA');

          end
          else
          begin
               cdm.CD_CTE_CONFIG.Close;
               cdm.CD_CTE_CONFIG.CommandText:= 'select * from CTE_CONFIG where ID_EMPRESA ='+ dm.EmitenteID_EMPRESA.Asstring;
               cdm.CD_CTE_CONFIG.open;
              Frm_CTE_Config:=TFrm_CTE_Config.Create(SELF);
              Frm_CTE_Config.ShowModal;
              Frm_CTE_Config.Free;
          end;
    END
    ELSE
    begin
     cdm.CD_CTE_CONFIG.Close;
     cdm.CD_CTE_CONFIG.CommandText:= 'select * from CTE_CONFIG where ID_EMPRESA ='+ dm.EmitenteID_EMPRESA.Asstring;
     cdm.CD_CTE_CONFIG.open;
    Frm_CTE_Config:=TFrm_CTE_Config.Create(SELF);
    Frm_CTE_Config.ShowModal;
    Frm_CTE_Config.Free;
end;

end;



procedure TFrm_Principal.EmissorCTEosClick(Sender: TObject);
begin
cdm.CD_CTE_CONFIG.Close;
 cdm.CD_CTE_CONFIG.CommandText:= 'select * from CTE_CONFIG where ID_EMPRESA ='+ dm.EmitenteID_EMPRESA.Asstring;
 cdm.CD_CTE_CONFIG.open;
CDM.CD_Emissor_CTE.open;
CTe:=67;
Frm_Grade_CTE:=TFrm_Grade_CTE.Create(self);
Frm_Grade_CTE.ShowModal;
end;

procedure TFrm_Principal.DatadeEmisso1Click(Sender: TObject);
begin
     Frm_RelMDF_DT:=TFrm_RelMDF_DT.Create(self);
     Frm_RelMDF_DT.ShowModal;
     Frm_RelMDF_DT.Free;
end;

procedure TFrm_Principal.EmissorCTEClick(Sender: TObject);
begin
cdm.CD_CTE_CONFIG.Close;
 cdm.CD_CTE_CONFIG.CommandText:= 'select * from CTE_CONFIG where ID_EMPRESA ='+ dm.EmitenteID_EMPRESA.Asstring;
 cdm.CD_CTE_CONFIG.open;
CDM.CD_Emissor_CTE.open;
CTe:=57;
Frm_Grade_CTE:=TFrm_Grade_CTE.Create(self);


Frm_Grade_CTE.ShowModal;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if MessageDlg(Frm_Principal.StatusBar1.Panels[1].Text+' deseja realmente sair do sistema?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
   begin
                           try
                                     Frm_Principal.log.Close;
                                     Frm_Principal.log.CommandText:='INSERT INTO MDF_LOG(id,ID_USER,NOME,DATA,HORA,PROCESSO,COMPUTADOR,ID_EMPRESA,DADOS) '+
                                                          'VALUES(:i,'+
                                                                    ' :ID,'+
                                                                    ' :NOME, '+
                                                                    ' current_date,'+
                                                                    ' current_time,'+
                                                                    ' :PROC,'+
                                                                    ' :PC, '+
                                                                    ' :EMPR, '+
                                                                    ' :Dados)';


                                               dm.id.close;
                                               dm.id.SQL.Clear;
                                               dm.id.SQL.Add('select gen_id(GEN_MDF_LOG_ID,1) from rdb$database');
                                               dm.id.ExecSQL();
                                               dm.id.Open;

                                          Frm_Principal.log.Params[0].AsInteger:=dm.IDGEN_ID.AsInteger;
                                          Frm_Principal.log.Params[1].AsInteger:=ID;
                                          Frm_Principal.log.Params[2].ASSTRING:=RZLabel1.caption;
                                          Frm_Principal.log.Params[3].AsSTRING:='FINALIZA NAVEGAÇÃO';
                                          Frm_Principal.log.Params[4].AsSTRING:=Frm_Principal.GetComputerNameFunc;
                                          Frm_Principal.log.Params[5].AsInteger:=DM.EmitenteID_EMPRESA.AsInteger;
                                          Frm_Principal.log.Params[6].Asstring:='Sistema Finalizado';
                                          Frm_Principal.log.ExecSQL();




                                     


      Frm_Principal.StatusBar1.Panels[1].Text:=dm.Cli_Cad_LogNOME.Text;

                           except
                               Application.Terminate;
                           end;



   Application.Terminate;
   end
   else
   begin
     Action:=caNone;

   end;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
var
 Registro, RegSel:TRegistry;
 config,dbi : TInifile;
 vers1,vers2 : STRING;
 Sis : string;
begin
      {
if not FileExists(ExtractFilePath(Application.ExeName)+'\Config.ini') then
   BEGIN
    CONFIG:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'Config.ini');
    CONFIG.WriteString ('InfoTransporte','EMPRESA','1');
    CONFIG.WriteString('InfoTransporte','MULTBANCO','1');
    config.Free;
   END;
            }

 if  FileExists(ExtractFilePath(Application.ExeName)+'\config.dll') then
   BEGIN

     config := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.dll');
          dm:=tdm.Create(SELF);
          Cdm:=TCdm.Create(SELF);
    {      RegSel:=TRegistry.Create;

       if  config.ReadString('InfoTransporte', 'MULTBANCO', '')='2' then
      begin
             Frm_Conexao:=TFrm_Conexao.Create(self);
             Frm_Conexao.ShowModal;
             if frm_conexao.RzComboBox1.ItemIndex=0 then
                RegSel.OpenKey('\Software\coliseu\Database',True)
                else
               RegSel.OpenKey('\Software\coliseu\Conexoes\Conexao' + IntToStr(frm_conexao.RzComboBox1.ItemIndex),false);
             frm_conexao.destroy;

      end
      else  }

          if ParamStr(1) <> '' Then
         begin
         if (config.ReadString('0','SERVIDOR','')='LOCALHOST') OR (config.ReadString('0','SERVIDOR','')='127.0.0.0')  THEN
            dm.MdfeConnection.Params.Values['DataBase'] := config.ReadString(ParamStr(1),'BD','')
            else
           dm.MdfeConnection.Params.Values['DataBase'] := config.ReadString(ParamStr(1),'SERVIDOR','')+':'+config.ReadString(ParamStr(1),'BD','');
           dm.MdfeConnection.Params.Values['user_name'] :=config.ReadString(ParamStr(1),'USER','');
           dm.MdfeConnection.Params.Values['password'] :=Crypt('D',config.ReadString(ParamStr(1),'PASSWORD',''));





         //  FDConnection1.Params.Values['DataBase'] := RegSel.ReadString('BancoDados');
           END
           else
           BEGIN
           if (config.ReadString('0','SERVIDOR','')='LOCALHOST') OR (config.ReadString('0','SERVIDOR','')='127.0.0.0')  THEN
               dm.MdfeConnection.Params.Values['DataBase'] := config.ReadString('0','BD','')
               else
                 dm.MdfeConnection.Params.Values['DataBase'] := config.ReadString('0','SERVIDOR','')+':'+config.ReadString('0','BD','');

           dm.MdfeConnection.Params.Values['user_name'] :=config.ReadString('0','USER','');
           dm.MdfeConnection.Params.Values['password'] :=Crypt('D',config.ReadString('0','PASSWORD',''));
           END;

           CDM.CONEXAO.Params.Values['DataBase'] := dm.MdfeConnection.Params.Values['DataBase'];
           CDM.CONEXAO.Params.Values['user_name'] :=dm.MdfeConnection.Params.Values['user_name'];
           CDM.CONEXAO.Params.Values['password'] :=dm.MdfeConnection.Params.Values['password'];

      {  if RegSel.ReadString('Password') = 'oka@4645' Then
           BEGIN
           dm.MdfeConnection.Params.Add('password=oka@4645');
        //   FDConnection1.Params.Add('password=masterkey');
           Cdm.Conexao.Params.Add('password=oka@4645');
           END;}
        // ShowMessage(dm.MdfeConnection.Params.Values['DataBase']);

        Try
          dm.MdfeConnection.Connected := True;
         // Cdm.Conexao.Connected := TRUE;
          //Result := True;
        except

          MessageDlg('Ocorreu um erro ao conectar com o Banco de Dados:'+#13+#10+
                     'Verifique as opções abaixo:'+#13+#10+''+#13+#10+'1) Se o computador for Servidor, entre em contato com o '+#13+#10+'Suporte'+#13+#10+
                     '2) Se o computador for terminal, verifique:'+#13+#10+
                     '    - Se o Servidor está ligado'+#13+#10+
                     '    - Se o Hub ou os cabos de rede estão conectados '+#13+#10+'corretamente.', mtWarning, [mbOK], 0);

          dm.MdfeConnection.Connected := False;
          Cdm.Conexao.Connected := FALSE;
          Application.Terminate;
         // Result := False;
          Exit;
        end;





 Label1.Caption:=DM.MdfeConnection.Params.Values['database'];



      if DM.MdfeConnection.Connected=true then
         begin
         dm.Query.Close;
         dm.Query.SQL.Clear;
         dm.Query.SQL.Add('SELECT COUNT(*) QTDE ' +
                          'FROM RDB$RELATIONS ' +
                          'WHERE RDB$FLAGS=1 and RDB$RELATION_NAME=''CTE_MDF_CONFIG''');

         dm.Query.open;

         dbi := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\dbi.dll');
         dbi.WriteString('DB','PT',DM.MdfeConnection.Params.Values['database']);
         dbi.WriteString('DB','UR',DM.MdfeConnection.Params.Values['user_name']);
         dbi.WriteString('DB','SH',DM.MdfeConnection.Params.Values['password']);
         dbi.Free;
      if dm.Query.FieldByName('QTDE').Value = 0 then
          begin
             Frm_info:=TFrm_info.Create(SELF);
             Frm_info.proces :=0;
             Frm_info.ShowModal;
             Frm_Info.Free;
          end
          else
          begin


               dm.Query.Close;
               dm.Query.SQL.Clear;
               dm.Query.SQL.Add('select first 1 CTE_MDF_CONFIG.versao from CTE_MDF_CONFIG');

               dm.Query.open;

           //    ShowMessage(dm.Query.FieldByName('versao').AsString);
            //sis:=RzVersionInfo1.FileVersion;
                 vers1:=RzVersionInfo1.FileVersion;
              if (Length(dm.Query.FieldByName('versao').AsString) = 0) or (dm.Query.RecordCount = 0) then
                 vers2:='1.0'
                 else
                 vers2:=dm.Query.FieldByName('versao').AsString;




              if vers1 = vers2 then
                 begin
                 dm.Emitente.Open;
                 DM.REGIAO.Open;
                 DM.CD_Mdf_Dados.Open;
                 DM.CD_Mdfe_l_carregamentoTable.Open;
                 DM.CD_Mdfe_uf_percursoTable.Open;
                 DM.CD_Mdfe_l_descarregamentoTable.Open;
                 DM.CD_Mdfe_condutorTable.Open;
                 DM.CD_Mdfe_v_reboqueTable.Open;
                 DM.CD_Nfe_mdfTable.Open;
                 DM.CD_MDFe_Config.Open;
                 //DM.CD_Nota_FiscalTable.Open;

                 end
                 else
                 if vers1 <> vers2 then
                  if FileExists(DM.MdfeConnection.Params.Values['database']) then
                       begin
                         Frm_info:=TFrm_info.Create(SELF);
                         Frm_info.proces :=1;
                         Frm_info.Label9.Caption:=vers2;
                         DM.MdfeConnection.close;
                         CDM.Conexao.Close;
                         dm.FDConnection1.Close;
                         Frm_info.ShowModal;
                         Frm_Info.Free;
                       end
                        else
                          begin
                            MessageDlg('Terminal desatualizado!!',mtWarning,[mbOK],0);
                            Application.Terminate;
                          end;






               Frm_Splash:=TFrm_Splash.Create(self);
               Frm_Splash.ShowModal;



          end;
          end
          else
            begin
               ShowMessage('Banco de Dados não encontrado');
               Application.Terminate;
             end;


//rodar script




 {    try
       query.SQL.Clear;
       query.SQL.Add('CREATE TABLE IF NOT EXISTS CTE_MDF_CONFIG (' +
                     'MODULO           INTEGER, ' +
                     'ID_EMPRESA       INTEGER, ' +
                     'CHAVE            VARCHAR(50), ' +
                     'ULTIMA_ATUALIZA  TIMESTAMP, ' +
                     'VERSAO           VARCHAR(50))');
       query.ExecSQL();

       query.SQL.Clear;
       query.sql.Add('insert into CTE_MDF_CONFIG (MODULO, ID_EMPRESA, VERSAO)');
       query.sql.Add('VALUES (CTE_MDF_CONFIG MODULO, ID_EMPRESA, VERSAO)')

     finally

     end;
  }


   END
   ELSE
   Application.Terminate;





end;


    // ShowMessage(DM.MdfeConnection.Params.Values['DataBase']);




procedure TFrm_Principal.FormShow(Sender: TObject);
var
gen : TFDQuery;
reg : integer;
begin

      // label1.Caption:=DM.MdfeConnection.Params.Values['DataBase'];

    RzLabel6.Caption:='Seja Bem Vindo...'+StatusBar1.Panels[1].Text;
  gen:=tfdquery.Create(self);
  gen.Connection:=dm.FDConnection1;
  gen.SQL.Text:='select max(id)  from mdfe_condutor';
  gen.Open();

  reg:=gen.FieldByName('max').AsInteger+1;



  gen.close;
  gen.SQL.Text:='ALTER SEQUENCE GEN_MDFE_CONDUTOR_ID RESTART WITH '+IntToStr(reg);
  gen.ExecSQL;
  gen.Free;

 Frm_Principal.log:=TSQLDataSet.Create(self);
 Frm_Principal.log.SQLConnection:=dm.MdfeConnection;


end;

procedure TFrm_Principal.Regies1Click(Sender: TObject);
begin
Frm_Regiao:=TFrm_Regiao.Create(self);
Frm_Regiao.ShowModal;
Frm_Regiao.Destroy;
end;

procedure TFrm_Principal.RzBitBtn1Click(Sender: TObject);
begin
    Frm_MDF:=TFrm_mdf.Create(self);
dm.CD_Mdf_Dados.Insert;
dm.CD_Mdf_DadosSTATUS.AsInteger:=0;


        dm.Cli_Cad_Log.Insert;
        dm.Cli_Cad_LogID_USER.asinteger:=ID;
        dm.Cli_Cad_LogNOME.text:=Frm_Principal.StatusBar1.Panels[1].Text;
        dm.Cli_Cad_LogDATA.AsDateTime:=now;
        dm.Cli_Cad_LogHORA.AsDateTime:=now;
        dm.Cli_Cad_LogPROCESSO.Text := 'Adiciona';
        dm.Cli_Cad_LogDOC.Text:=dm.CD_Mdf_DadosNUMERO.Text;
        dm.Cli_Cad_LogCOMPUTADOR.Text:=Frm_Principal.GetComputerNameFunc;
        Frm_Principal.RzDBMemo1.Lines.Add('Adiciona Novo registro MDF '+dm.CD_Mdf_DadosNUMERO.text);
        dm.Cli_Cad_Log.Post;
        dm.cli_cad_log.ApplyUpdates(0);

Frm_mdf.ShowModal;
Frm_mdf:=nil;;
end;

procedure TFrm_Principal.RzBitBtn3Click(Sender: TObject);
begin

//PopupMenu1.Popup(RzBitBtn3.Left,RzPanel2.Top+100);
end;

procedure TFrm_Principal.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.RzGroup1Items3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.RzToolButton3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Principal.RzToolButton4Click(Sender: TObject);
begin
     Frm_Rotas:=TFrm_Rotas.Create(self);
     Frm_Rotas.WebBrowser1.Navigate('https://www.google.com.br/maps/dir/');
     Frm_rotas.ShowModal;
end;

procedure TFrm_Principal.SobreoSistema1Click(Sender: TObject);
begin
FrmAbout:=TFrmAbout.Create(self);
FrmAbout.ShowModal;
FrmAbout.Destroy;
end;

procedure TFrm_Principal.Usurios1Click(Sender: TObject);
var
  senha: string[8];
begin
     if ID<>1 then
     BEGIN
          PostMessage(Handle, InputBoxMsg, 0, 0);
          senha:=inputbox('Senha de Acesso','Digite a Senha de Acesso','');

          if (senha<>'464544'+copy(FormatDateTime('hh""mm',time),3,2)) then
          begin //no lugar de Master digite sua senha
          SHOWMESSAGE('SENHA INCORRETA');

          end
          ELSE
          BEGIN
            Frm_Cad_Usuario := tFrm_Cad_Usuario.Create(self);
            Frm_Cad_Usuario.ShowModal;
            Frm_Cad_Usuario:=nil;
            end;
     END
            ELSE
          BEGIN
            Frm_Cad_Usuario := tFrm_Cad_Usuario.Create(self);
            Frm_Cad_Usuario.ShowModal;
            Frm_Cad_Usuario:=nil;
            end;
end;


procedure TFrm_Principal.Veiculos1Click(Sender: TObject);
begin
Frm_GradeVeiculos:=TFrm_GradeVeiculos.Create(self);
Frm_GradeVeiculos.Button1.Action:=Frm_GradeVeiculos.Act_Sair;
Frm_GradeVeiculos.showModal;
Frm_GradeVeiculos.Destroy;
end;

end.





