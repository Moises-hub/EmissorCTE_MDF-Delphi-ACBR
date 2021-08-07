unit UFrm_Principal;

interface

uses Registry,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Data.DB, Data.SqlExpr,
  Vcl.StdCtrls, Data.DBXFirebird, Data.FMTBcd, FireDAC.UI.Intf,
  FireDAC.Stan.Async, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Stan.Intf, FireDAC.Comp.Script, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.VCLUI.Script, FireDAC.Comp.UI, dxGDIPlusClasses,
  Vcl.ExtCtrls, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, IBX.IBDatabase, IBX.IBScript, RzStatus,
  RzLabel, FireDAC.Phys.IBBase, FireDAC.FMXUI.Script;

type
  TFrm_Principal = class(TForm)
    Label1: TLabel;
    FDConnection1: TFDConnection;
    Image1: TImage;
    Query: TFDQuery;
    Instala_MDFe: TFDScript;
    QueryQTDE: TIntegerField;
    Versao: TFDQuery;
    RzVersionInfo1: TRzVersionInfo;
    RzLabel1: TRzLabel;
    Query_Empresa: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Atualizar: TFDScript;
    FDTransaction1: TFDTransaction;
    SCRProcedure: TFDScript;
    FDScript1: TFDScript;
    IBTransaction1: TIBTransaction;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

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



procedure TFrm_Principal.FormCreate(Sender: TObject);
var
 Registro, RegSel:TRegistry;
 navegador : TStringList;
begin

         RegSel:=TRegistry.Create;
          if ParamStr(1) <> '' Then
           Begin
           if RegSel.KeyExists('\Software\Coliseu\Conexoes\Conexao' + ParamStr(1)) Then
              RegSel.OpenKey('\Software\Coliseu\Conexoes\Conexao' + ParamStr(1),True)
              else
              MessageDlg('O Parâmetro informado é inválido!', mtWarning, [mbOK], 0);
           end
           else
           RegSel.OpenKey('\Software\Coliseu\Database',True);

        If RegSel.ReadInteger('Conexao') = 0 Then

           FDConnection1.Params.Values['DataBase'] := RegSel.ReadString('BancoDados')

           else

           FDConnection1.Params.Values['DataBase'] := RegSel.ReadString('Servidor')+':'+RegSel.ReadString('BancoDados');




        // ShowMessage(dm.MdfeConnection.Params.Values['DataBase']);

        Try


          //Result := True;
        except
          If RegSel.ReadInteger('Conexao') = 0 Then
          MessageDlg('Ocorreu um erro ao conectar com o Banco de Dados:'+#13+#10+
                     'Verifique as opções abaixo:'+#13+#10+''+#13+#10+'1) Se o computador for Servidor, entre em contato com o '+#13+#10+'Suporte'+#13+#10+
                     '2) Se o computador for terminal, verifique:'+#13+#10+
                     '    - Se o Servidor está ligado'+#13+#10+
                     '    - Se o Hub ou os cabos de rede estão conectados '+#13+#10+'corretamente.', mtWarning, [mbOK], 0);
          If RegSel.ReadInteger('Conexao') = 1 Then
          MessageDlg('Ocorreu um erro de REDE ao conectar com o Banco de Dados, verifique:'+#13+#10+
                     '    - Se o Servidor está ligado'+#13+#10+
                     '    - Se o Hub ou os cabos de rede estão conectados corretamente'+#13+#10+
                     'Contacte o Suporte Técnico Responsável pela Rede.', mtWarning, [mbOK], 0);
          RegSel.CloseKey;
          RegSel.Free;


          Application.Terminate;
         // Result := False;
          Exit;
        end;

    FDConnection1.Open();
 Label1.Caption:=FDConnection1.Params.Values['database'];



  Registro := TRegistry.Create;

  Registro.RootKey:=HKEY_CURRENT_USER;

  if registro.OpenKey('\SOFTWARE\Microsoft\internet Explorer\main\featureControl\FEATURE_BROWSER_EMULATION',true) then

  begin

    Registro.WriteInteger('coliseu_transporte.exe',0);

  end;

  registro.CloseKey;

  registro.Free;
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
var
 vers : string;
begin



   RzVersionInfo1.FilePath:='Coliseu_Transporte.exe';


          Query.Open();
       if QueryQTDE.AsInteger = 0 then
          begin
             //Dialog.Caption:='Aguarde o Final da Instalação...';

           //IBScript1.ExecuteScript;

           //  instala_MDfe.ValidateAll;

             Memo1.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\mdfe.sql');
             Memo2.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\cte.sql');


            Instala_MDFe.SQLScriptFileName:=ExtractFilePath(Application.ExeName)+'\mdfe.sql';
            instala_MDfe.ExecuteAll;



           Instala_MDFe.SQLScriptFileName:=ExtractFilePath(Application.ExeName)+'\cte.sql';
            instala_MDfe.ExecuteAll;
           //  Instala_CTe.ValidateAll;
            // Instala_CTe.ExecuteAll;


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

           DeleteFile(ExtractFilePath(Application.ExeName)+'\mdfe.sql');
           DeleteFile(ExtractFilePath(Application.ExeName)+'\cte.sql');
          WinExec('Coliseu_Transporte.EXE',SW_NORMAL);
          Application.Terminate;
          end
          else
          begin
              Query_Empresa.Close;
              Query_Empresa.SQL.Clear;
              Query_Empresa.SQL.Add('select id_empresa from EMPRESA');
              Query_Empresa.open;
          //   Dialog.Caption:='Aguarde o Final da Atualização...';


             Memo3.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'\Atualiza.sql');


            Atualizar.SQLScriptFileName:=ExtractFilePath(Application.ExeName)+'\Atualiza.sql';
            Atualizar.ExecuteAll;

            SCRProcedure.ExecuteAll;


          Versao.Close;
          versao.SQL.Clear;
          versao.SQL.Add('update CTE_MDF_CONFIG set versao ='''+RzVersionInfo1.FileVersion+''', ULTIMA_ATUALIZA = current_timestamp ');
          versao.ExecSQL;

      //    DeleteFile(ExtractFilePath(Application.ExeName)+'\Atualiza.sql');

          WinExec('Coliseu_Transporte.EXE',SW_NORMAL);
          close;
          end;




end;

procedure TFrm_Principal.RzButton1Click(Sender: TObject);
begin


(*



   try
     SQLQuery1.Close;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('CREATE TABLE CTE_CARGA ( ' +
                       'ID            INTEGER NOT NULL, ' +
                       'ID_CTE        INTEGER, ' +
                       'COD_UNIDADE   VARCHAR(10), ' +
                       'TIPO_UNIDADE  VARCHAR(10), ' +
                       'QNT           NUMERIC(9,0) ' +
                       ')');

    SQLQuery1.ExecSQL();
     except

  end;


  try

     SQLQuery1.Close;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('ALTER TABLE CTE_CARGA ADD PRIMARY KEY (ID)');
     SQLQuery1.ExecSQL();

   except

  end;

  try
     SQLQuery1.Close;
     SQLQuery1.SQL.Clear;
     SQLQuery1.SQL.Add('CREATE TABLE CTE_CCORRECAO ( ' +
                       'ID         INTEGER NOT NULL, ' +
                       'CHAVE      VARCHAR(80), ' +
                       'EVENTO     DATE, ' +
                       'CPF_CNPJ   VARCHAR(20), ' +
                       'SEQUENCIA  INTEGER)');

      SQLQuery1.ExecSQL();

  except

  end;

  try
      SQLQuery1.Close;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('ALTER TABLE CTE_CCORRECAO ADD PRIMARY KEY (ID)');
      SQLQuery1.ExecSQL();

  except

  end;

  try
      SQLQuery1.Close;
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('CREATE TABLE CTE_CONDUTOR (' +
                        'ID      INTEGER NOT NULL, ' +
                        'ID_CTE  INTEGER, ' +
                        'NOME    VARCHAR(70), ' +
                        'CPF     VARCHAR(20))');
      SQLQuery1.ExecSQL();
  except

  end;


  try
       SQLQuery1.Close;
       SQLQuery1.SQL.Clear;
       SQLQuery1.SQL.Add('ALTER TABLE CTE_CONDUTOR ADD PRIMARY KEY (ID)');
       SQLQuery1.ExecSQL();
  except

  end;


  try
       SQLQuery1.Close;
       SQLQuery1.SQL.Clear;
       SQLQuery1.SQL.Add('CREATE TABLE CTE_CONFIG (' +
                         'ID            INTEGER NOT NULL, ' +
                         'CERTIFICADO   VARCHAR(50), ' +
                         'LOGO          VARCHAR(300), ' +
                         'PATCH         VARCHAR(300), ' +
                         'UF            INTEGER, ' +
                         'MODODACTE     INTEGER, ' +
                         'AMBIENTE      INTEGER, ' +
                         'FORMAEMISSAO  INTEGER, ' +
                         'MODELO        VARCHAR(15), ' +
                         'SERIE         INTEGER, ' +
                         'NUMERO        INTEGER, ' +
                         'VXML          VARCHAR(10), ' +
                         'ESTADO        VARCHAR(5), ' +
                         'ID_EMPRESA    INTEGER)');

        SQLQuery1.ExecSQL();
  except

  end;



  try
       SQLQuery1.Close;
       SQLQuery1.SQL.Clear;
       SQLQuery1.SQL.Add('CREATE TABLE CTE_DADOS (  ' +
                         'ID                      INTEGER NOT NULL primary key, ' +
                         'NUMCTE                  NUMERIC(9,0), ' +
                         'STATUS                  INTEGER, ' +
                         'ID_NATUREZA             INTEGER, ' +
                         'DATA_EMISSAO            DATE, ' +
                         'MODAL                   VARCHAR(15), ' +
                         'TIPO_SERV               VARCHAR(20), ' +
                         'INDIETOMA               VARCHAR(20), ' +
                         'INICODIBGE              INTEGER, ' +
                         'FIMCODIBGE              INTEGER, ' +
                         'ID_TOMADOR              INTEGER, ' +
                         'TOTAL_PREST             DOUBLE PRECISION, ' +
                         'VALOR_RECEBER           DOUBLE PRECISION, ' +
                         'VAL_TOT_TRIB            DOUBLE PRECISION, ' +
                         'CST                     VARCHAR(10), ' +
                         'REDBC                   DOUBLE PRECISION, ' +
                         'BASECALCULO             DOUBLE PRECISION, ' +
                         'PERC_ICMS               DOUBLE PRECISION, ' +
                         'INFADFISCO              VARCHAR(100), ' +
                         'PIS                     DOUBLE PRECISION, ' +
                         'COFINS                  DOUBLE PRECISION, ' +
                         'IR                      DOUBLE PRECISION, ' +
                         'INSS                    DOUBLE PRECISION, ' +
                         'CSLL                    DOUBLE PRECISION, ' +
                         'DESCSERV                VARCHAR(30), ' +
                         'CARGA                   DOUBLE PRECISION, ' +
                         'ID_CLIENTE              INTEGER, ' +
                         'SERIE                   INTEGER, ' +
                         'MODELO                  VARCHAR(15), ' +
                         'NUMERO                  INTEGER, ' +
                         'CHAVE                   VARCHAR(80), ' +
                         'INIUF                   VARCHAR(10), ' +
                         'INICIDADE               VARCHAR(50), ' +
                         'FIMUF                   VARCHAR(10), ' +
                         'FIMCIDADE               VARCHAR(50), ' +
                         'CFOP                    VARCHAR(10), ' +
                         'PESSOA                  INTEGER, ' +
                         'CPF_CNPJ                VARCHAR(20), ' +
                         'IE                      VARCHAR(18), ' +
                         'NOME                    VARCHAR(70), ' +
                         'NOME_FANTASIA           VARCHAR(50), ' +
                         'ENDERECO                VARCHAR(50), ' +
                         'BAIRRO                  VARCHAR(30), ' +
                         'COMPLEMENTO             VARCHAR(30),' +
                         'CEP                     VARCHAR(9), ' +
                         'UF                      VARCHAR(5), ' +
                         'CIDADE                  VARCHAR(50), ' +
                         'FONE_RES                VARCHAR(18), ' +
                         'N_ENDERECO              VARCHAR(8), ' +
                         'REMETENTE               INTEGER, ' +
                         'REM_PESSOA              INTEGER, ' +
                         'REM_CPF_CNPJ            VARCHAR(20), ' +
                         'REM_IE                  VARCHAR(18), ' +
                         'REM_NOME                VARCHAR(70), ' +
                         'REM_NOME_FANTASIA       VARCHAR(50), ' +
                         'REM_ENDERECO            VARCHAR(50), ' +
                         'REM_BAIRRO              VARCHAR(30), ' +
                         'REM_COMPLEMENTO         VARCHAR(30), ' +
                         'REM_CEP                 VARCHAR(9), ' +
                         'REM_UF                  VARCHAR(5), ' +
                         'REM_COD_IBGE            INTEGER, ' +
                         'REM_CIDADE              VARCHAR(50), ' +
                         'REM_FONE_RES            VARCHAR(18), ' +
                         'FORMA_PAGA              VARCHAR(10), ' +
                         'CTE_REFERENCIA          VARCHAR(80), ' +
                         'CTE_COMPLEMENTAR        VARCHAR(80), ' +
                         'PRODUTOS_PREDOMINANTE   VARCHAR(60), ' +
                         'PRODUTO_VALOR_DACARGA   DOUBLE PRECISION, ' +
                         'PRODUTO_OUTRA_CARACTER  VARCHAR(60), ' +
                         'RNTC                    VARCHAR(8), ' +
                         'CIOT                    VARCHAR(8), ' +
                         'INDIC_LOTA              VARCHAR(5), ' +
                         'DATA_PREV               DATE, ' +
                         'DESTINATARIO            INTEGER, ' +
                         'DEST_PESSOA             INTEGER, ' +
                         'DEST_CPF_CNPJ           VARCHAR(20), ' +
                         'DEST_IE                 VARCHAR(18), ' +
                         'DEST_NOME               VARCHAR(70), ' +
                          'DEST_NOME_FANTASIA      VARCHAR(50), ' +
                          'DEST_ENDERECO           VARCHAR(50), ' +
                          'DEST_BAIRRO             VARCHAR(30), ' +
                          'DEST_COMPLEMENTO        VARCHAR(30), ' +
                          'DEST_CEP                VARCHAR(9), ' +
                          'DEST_UF                 VARCHAR(5), ' +
                          'DEST_CIDADE             VARCHAR(50), ' +
                          'DEST_FONE_RES           VARCHAR(18), ' +
                          'DEST_COD_IBGE           INTEGER,  ' +
                          'HORA                    TIME, ' +
                          'NATUREZA_OPERACAO       VARCHAR(50),  ' +
                          'TOMCOD_IBGE             INTEGER, ' +
                          'VALORICMS               DOUBLE PRECISION, ' +
                          'CREDBC                  DOUBLE PRECISION,  ' +
                          'CONTRIBNOME             VARCHAR(50), ' +
                          'CONTRBTEXT              VARCHAR(50), ' +
                          'FISCOCAMPO              VARCHAR(50), ' +
                          'FISCOTEXT               VARCHAR(50), ' +
                          'SUFRAMA                 VARCHAR(50), ' +
                          'ADVALOREM               DOUBLE PRECISION, ' +
                          'PEDAGIO                 DOUBLE PRECISION, ' +
                          'OUTRASDESP              DOUBLE PRECISION, ' +
                          'DEST_NUMERO             VARCHAR(10), ' +
                          'PROTOCOLO               VARCHAR(50), ' +
                          'ID_EMPRESA              INTEGER, ' +
                          'REM_NUMERO              VARCHAR(10), ' +
                          'OBS                     BLOB SUB_TYPE 1 SEGMENT SIZE 200, ' +
                          'RESPONSAVEL             INTEGER,  ' +
                          'SEGURADORA              VARCHAR(30), ' +
                          'APOLICE                 VARCHAR(20), ' +
                          'AVERBACAO               VARCHAR(40)  )')
  except

  end;

{  try
        SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                        SQLQuery1.SQL.Add('ALTER TABLE CTE_DADOS ADD PRIMARY KEY (ID)');
                                SQLQuery1.ExecSQL();
                                  except

                                    end;}




  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_NF (  ' +
                                  'ID                    INTEGER NOT NULL, ' +
                                  'SERIE                 VARCHAR(5), ' +
                                  'NUMERO                VARCHAR(25), ' +
                                  'EMISSAO               VARCHAR(20), ' +
                                  'CFOP                  VARCHAR(10), ' +
                                  'BASE_CALCULO_ICMS     DOUBLE PRECISION, ' +
                                  'VALOR_ICMS            DOUBLE PRECISION, ' +
                                  'BASE_CALCULO_SUBICMS  DOUBLE PRECISION, ' +
                                  'VALOR_SUBICMS         DOUBLE PRECISION, ' +
                                  'VALOR_DOS_PRODUTOS    DOUBLE PRECISION, ' +
                                  'VALOR_DA_NOTA         DOUBLE PRECISION, ' +
                                  'MODELO_NF             VARCHAR(20), ' +
                                  'ID_CTE                INTEGER)');
                 SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE CTE_NF ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();

  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_NFEES ( '+
                                  'ID_CTE  INTEGER, '+
                                  'CHAVE   VARCHAR(80), '+
                                  'NUMERO  INTEGER )');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_OUTRODOC ( '+
                                  'ID_CTE     INTEGER, '+
                                  'TIPO       VARCHAR(20), '+
                                  'DESCRICAO  VARCHAR(20), '+
                                  'NUMERO     VARCHAR(20), '+
                                  'EMISSAO    VARCHAR(20), '+
                                  'VALOR      DOUBLE PRECISION )');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_SEGURO ( '+
                                  'ID          INTEGER NOT NULL, '+
                                  'ID_CTE      INTEGER, '+
                                  'RESPSEGURO  VARCHAR(20), '+
                                  'SEGURADORA  VARCHAR(30), '+
                                  'CPFCNPJ     VARCHAR(20), '+
                                  'NAPOLICE    VARCHAR(20), '+
                                  'CNPJ        VARCHAR(20) )');
               SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_SEGURO_AVERB ('+
                                  'ID         INTEGER NOT NULL, '+
                                  'ID_SEGURO  INTEGER, '+
                                  'AVERBA     VARCHAR(40) )');
                SQLQuery1.ExecSQL();
  except

  end;



  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_UNI ( '+
                                  'ID_CTE     INTEGER, '+
                                  'CHAVE_NFE  VARCHAR(90), '+
                                  'UN         VARCHAR(10), '+
                                  'QNT        NUMERIC(9,0))');
               SQLQuery1.ExecSQL();

  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_VALORADICIONAL (  '+
                                  'ID      INTEGER NOT NULL, '+
                                  'NOME    VARCHAR(50), '+
                                  'VALOR   DOUBLE PRECISION,  '+
                                  'ID_CTE  INTEGER )');
                SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE CTE_VALORADICIONAL ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_VEIC (  '+
                                  'ID               INTEGER NOT NULL, '+
                                  'ID_CTE           INTEGER,  '+
                                  'PLACA            VARCHAR(8), '+
                                  'RENAVAN          VARCHAR(30), '+
                                  'UF               VARCHAR(2),  '+
                                  'TARA             NUMERIC(15,2), '+
                                  'CAPACIDADE       NUMERIC(15,2), '+
                                  'VEI_CAPC_M3      NUMERIC(15,2), '+
                                  'PROPRI_DO_VEIC   CHAR(10), '+
                                  'TIPO_RODADO      VARCHAR(30), '+
                                  'TIPO_CARROCERIA  VARCHAR(30), '+
                                  'TIPO_VEICULO     VARCHAR(30) )');

                 SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE CTE_VEIC ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;

    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE CTE_MDF_CONFIG ( ' +
                                  'MODULO           INTEGER, ' +
                                  'ID_EMPRESA       INTEGER, ' +
                                  'CHAVE            VARCHAR(50), ' +
                                  'VERSAO           VARCHAR(50), ' +
                                  'ULTIMA_ATUALIZA  TIMESTAMP )');
                SQLQuery1.ExecSQL();
   except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_CONDUTOR (  '+
                                  'ID       INTEGER NOT NULL, '+
                                  'ID_MDFE  INTEGER, '+
                                  'NOME     VARCHAR(70), '+
                                  'CPF      VARCHAR(20))');
                SQLQuery1.ExecSQL();

  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE MDFE_CONDUTOR ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_CONFIG ( '+
                                  'FORM_EMISSAO  INTEGER, '+
                                  'LOGO          VARCHAR(500), '+
                                  'PATHSALVAR    VARCHAR(500), '+
                                  'IDUF          INTEGER, '+
                                  'NUMERO        INTEGER, '+
                                  'SERIE         INTEGER, '+
                                  'MODELO        VARCHAR(15), '+
                                  'ID_EMPRESA    INTEGER, '+
                                  'TIPOAMB       INTEGER, '+
                                  'VERSAOXML     VARCHAR(10), '+
                                  'CERTIFICADO   VARCHAR(50), '+
                                  'TIPODAMDFE    INTEGER, '+
                                  'VISUALIZAR    CHAR(5))');
              SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_DADOS ( '+
                                  'ID                          INTEGER NOT NULL PRIMARY KEY, '+
                                  'ID_NFE                      NUMERIC(9,0), '+
                                  'MODELO                      INTEGER, '+
                                  'SERIE                       INTEGER, '+
                                  'NUMERO                      INTEGER, '+
                                  'CODMDF                      INTEGER, '+
                                  'DATA                        DATE, '+
                                  'D_ENCERRA                   TIMESTAMP, '+
                                  'HORA                        TIME, '+
                                  'UF                          VARCHAR(2), '+
                                  'TIPO_EMITENTE               VARCHAR(25), '+
                                  'UF_EMIT                     INTEGER, '+
                                  'MODALIDADE                  VARCHAR(25), '+
                                  'FORMA_EMISSAO               VARCHAR(25), '+
                                  'UF_DESCARREGAMENTO          VARCHAR(2), '+
                                  'CHAVE                       VARCHAR(80), '+
                                  'VEI_UF                      VARCHAR(2), '+
                                  'VEI_RNTRC                   VARCHAR(8), '+
                                  'VEI_CIOT                    VARCHAR(8), '+
                                  'COD_AG_PORTO                VARCHAR(20), '+
                                  'COD_INT_VEIUC               VARCHAR(40), '+
                                  'VEI_TIPO_CARROCERIA         VARCHAR(30), '+
                                  'VEI_TIPO_RODADO             VARCHAR(30), '+
                                  'VEI_PLACA                   VARCHAR(9), '+
                                  'VEI_RENAVAN                 VARCHAR(50), '+
                                  'VEI_TARA                    NUMERIC(15,2), '+
                                  'VEI_CAPACIDADE              NUMERIC(15,2), '+
                                  'VEI_CAPC_M3                 NUMERIC(15,2), '+
                                  'TOT_QNT_NFE_REL_MANIFESTRO  INTEGER, '+
                                  'TOT_VALOR_TOTAL_MERCADORIA  DOUBLE PRECISION, '+
                                  'TOT_CODUNIDADE              VARCHAR(5), '+
                                  'TOT_PESO_BRUTO              DOUBLE PRECISION, '+
                                  'UF_CARREGAMENTO             VARCHAR(2), '+
                                  'STATUS                      INTEGER, '+
                                  'MDF_PROTOCOLO               VARCHAR(50), '+
                                  'MDF_D_ENVIO                 TIMESTAMP, '+
                                  'OBS                         VARCHAR(500), '+
                                  'OBS2                        VARCHAR(500), '+
                                  'ID_EMPRESA                  INTEGER, '+
                                  'TIPO_EMISSOR                INTEGER, '+
                                  'CNPJ_TOMADOR                VARCHAR(20))');

                    SQLQuery1.ExecSQL();
  except

  end;
{
  try
                  SQLQuery1.Close;
                                  SQLQuery1.SQL.Clear;
                                                  SQLQuery1.SQL.Add('ALTER TABLE MDFE_DADOS ADD PRIMARY KEY (ID)');
                                                                  SQLQuery1.ExecSQL();
                                                                    except

                                                                      end;
                                                                      }
  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_L_CARREGAMENTO ( '+
                                  'ID         INTEGER NOT NULL PRIMARY KEY, '+
                                  'ID_MDFE    INTEGER, '+
                                  'UF         VARCHAR(2), '+
                                  'COD_MUN    INTEGER, '+
                                  'MUNICIPIO  VARCHAR(50))');
                SQLQuery1.ExecSQL();
  except


  end;

{   try
                SQLQuery1.Close;
                                SQLQuery1.SQL.Clear;
                                                SQLQuery1.SQL.Add('ALTER TABLE MDFE_L_CARREGAMENTO ADD PRIMARY KEY (ID)');
                                                                SQLQuery1.ExecSQL();
                                                                  except


                                                                    end;}

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_L_DESCARREGAMENTO ( '+
                                  'ID         INTEGER NOT NULL PRIMARY KEY, '+
                                  'ID_MDFE    INTEGER, '+
                                  'UF         VARCHAR(2), '+
                                  'COD_MUN    INTEGER, '+
                                  'MUNICIPIO  VARCHAR(50))');
              SQLQuery1.ExecSQL();
  except


  end;

{  try
                SQLQuery1.Close;
                                SQLQuery1.SQL.Clear;
                                                SQLQuery1.SQL.Add('ALTER TABLE MDFE_L_DESCARREGAMENTO ADD PRIMARY KEY (ID)');
                                                                SQLQuery1.ExecSQL();
                                                                  except


                                                                    end;}

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_UF_PERCURSO (' +
                                  'ID       INTEGER NOT NULL, ' +
                                  'ID_MDFE  INTEGER, ' +
                                  'UF       VARCHAR(2)' +
                                  ')');

                SQLQuery1.ExecSQL();
  except


  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE MDFE_UF_PERCURSO ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;

 try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDFE_V_REBOQUE (  ' +
                                   'ID                INTEGER NOT NULL, ' +
                                   'ID_MDFE           INTEGER, ' +
                                   'COD_INT_VEIUC     VARCHAR(40), ' +
                                  'PLACA             VARCHAR(9), ' +
                                  'RENAVAN           VARCHAR(30), ' +
                                  'UF_LICENCIAMENTO  VARCHAR(2), ' +
                                  'TARA              NUMERIC(15,2), ' +
                                  'CAPACIDADE        NUMERIC(15,2), ' +
                                  'CAPC_M3           NUMERIC(15,2), ' +
                                  'CARROCERIA        VARCHAR(20))');
               SQLQuery1.ExecSQL();
 except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE MDFE_V_REBOQUE ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDF_DOCCTE ( ' +
                                  'ID         INTEGER NOT NULL, ' +
                                  'ID_MDFE    INTEGER, ' +
                                  'CHAVE_CTE  VARCHAR(80), ' +
                                  'VALOR      DOUBLE PRECISION, ' +
                                  'PESO       DOUBLE PRECISION, ' +
                                  'COD_IBGE   INTEGER)');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE MDF_DOCCTE ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDF_LOG (  ' +
                                  'ID_USER     INTEGER NOT NULL, ' +
                                  'DATA        DATE, ' +
                                  'HORA        TIME, ' +
                                  'PROCESSO    VARCHAR(100), ' +
                                  'DOC         INTEGER, ' +
                                  'COMPUTADOR  VARCHAR(50), ' +
                                  'DADOS       BLOB SUB_TYPE 1 SEGMENT SIZE 300, ' +
                                  'ID          INTEGER NOT NULL, ' +
                                  'NOME        VARCHAR(50), ' +
                                  'MDF_CTE     INTEGER, ' +
                                  'ID_EMPRESA  INTEGER)');
               SQLQuery1.ExecSQL();


  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDF_SEGURO ( ' +
                                  'ID          INTEGER NOT NULL, ' +
                                  'ID_MDF      INTEGER, ' +
                                  'RESPSEGURO  VARCHAR(20), ' +
                                  'SEGURADORA  VARCHAR(30), ' +
                                  'CPFCNPJ     VARCHAR(20), ' +
                                  'NAPOLICE    VARCHAR(20), ' +
                                  'CNPJ        VARCHAR(20))');
              SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDF_SEGURO_AVERB ( ' +
                                  'ID         INTEGER NOT NULL, ' +
                                  'ID_SEGURO  INTEGER, ' +
                                  'AVERBA     VARCHAR(40))');
                SQLQuery1.ExecSQL();
  except

  end;
  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE MDF_USUARIO (  ' +
                                  'ID              INTEGER NOT NULL, ' +
                                  'ID_FUNCIONARIO  INTEGER, ' +
                                  'NOME            VARCHAR(50), ' +
                                  'SENHA           VARCHAR(50), ' +
                                  'STATUS          INTEGER)');
               SQLQuery1.ExecSQL();


  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE TABLE NFE_MDF ( ' +
                                  'ID             INTEGER NOT NULL, ' +
                                  'ID_MDFE        INTEGER, ' +
                                  'CHAVE_NFE      VARCHAR(80), ' +
                                  'QNT_UN_TRANSP  NUMERIC(15,2),  ' +
                                  'N_DA_NFE       NUMERIC(15,0), ' +
                                  'PESO           DOUBLE PRECISION, ' +
                                  'COD_MUN        INTEGER, ' +
                                  'VALOR          DOUBLE PRECISION)');
                   SQLQuery1.ExecSQL();
  except

  end;


    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE NFE_MDF ADD PRIMARY KEY (ID)');
                SQLQuery1.ExecSQL();
     except

  end;
                //daqui
  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_CCORRECAO');
                SQLQuery1.ExecSQL();
  except

  end;
      try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_CONDUTOR_ID');
                SQLQuery1.ExecSQL();
     except

  end;
      try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_DADOS_ID');
                SQLQuery1.ExecSQL();
     except

  end;
      try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_NFE_ID');
                SQLQuery1.ExecSQL();
     except

  end;
      try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_SEGURO_AVERB_ID');
                SQLQuery1.ExecSQL();
     except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_SEGURO_ID');
                SQLQuery1.ExecSQL();
  except

  end;


    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_VALORADICIONAL_ID');
                SQLQuery1.ExecSQL();
  except

  end;

    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_CTE_VEIC_ID');
                SQLQuery1.ExecSQL();
  except

  end;

    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_MDF_DOCCTE');
                SQLQuery1.ExecSQL();
  except

  end;

    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_MDF_LOG_ID');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_MDF_SEGURO_AVERB_ID');
                SQLQuery1.ExecSQL();
  except

  end;

    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_MDF_SEGURO_ID');
                SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE GEN_MDF_USUARIO_ID');
                SQLQuery1.ExecSQL();
  except

  end;


    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_CONDUTOR');
                SQLQuery1.ExecSQL();
  except

  end;


  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_DADOS');
                SQLQuery1.ExecSQL();
  except

  end;

  try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_L_CARREGAMENTO_ID');
                SQLQuery1.ExecSQL();
  except

  end;


    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_L_DESCARREGAMENTO');
                SQLQuery1.ExecSQL();
  except

  end;


    try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_UF_PERCURSO');
                SQLQuery1.ExecSQL();
  except

  end;

      try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('CREATE SEQUENCE MDFE_V_REBOQUE');
                SQLQuery1.ExecSQL();
  except

  end;

  ShowMessage('Script Concluido!!');
end;

procedure TFrm_Principal.RzButton2Click(Sender: TObject);
begin    {
          try
                SQLQuery1.Close;
                SQLQuery1.SQL.Clear;
                SQLQuery1.SQL.Add('ALTER TABLE MDFE_DADOS add id_empresa integer,' +
                                  'ADD TIPO_EMISSOR INTEGER, ' +
                                  'ADD CNPJ_TOMADOR VARCHAR(20)');
                SQLQuery1.ExecSQL();
  except

  end;      }


       *)


end;

procedure TFrm_Principal.RzButton2Click(Sender: TObject);
begin

{  Atualizar.ValidateAll;
   Atualizar.ExecuteAll;
   Query_Instala.ExecSQL;
 }


end;

end.
