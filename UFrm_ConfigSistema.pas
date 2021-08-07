unit UFrm_ConfigSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, RzCmboBx,
  RzDBCmbo, RzButton, RzRadChk, RzDBChk, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  RzPanel, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, RzTabs,
  RzStatus, UFrm_Regiao;

type
  TFrm_ConfigSistema = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Regiao: TSQLDataSet;
    RzGroupBox1: TRzGroupBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    TabSheet2: TRzTabSheet;
    RzGroupBox3: TRzGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzVersionInfo1: TRzVersionInfo;
    RzPanel1: TRzPanel;
    Empresa: TSQLDataSet;
    Prov_Empresa: TDataSetProvider;
    CD_Empresa: TClientDataSet;
    DS_Empresa: TDataSource;
    CD_EmpresaID_EMPRESA: TIntegerField;
    CD_EmpresaTIPO_ATIVIDADE: TSmallintField;
    CD_EmpresaNOME_EMPRESA: TStringField;
    CD_EmpresaRAZAO_SOCIAL: TStringField;
    CD_EmpresaENDERECO: TStringField;
    CD_EmpresaBAIRRO: TStringField;
    CD_EmpresaCOMPLEMENTO: TStringField;
    CD_EmpresaID_REGIAO: TFMTBCDField;
    CD_EmpresaCNPJ: TStringField;
    CD_EmpresaCEP: TStringField;
    CD_EmpresaEMAIL: TStringField;
    CD_EmpresaWEB: TStringField;
    CD_EmpresaFONE1: TStringField;
    CD_EmpresaFONE2: TStringField;
    CD_EmpresaFAX: TStringField;
    CD_EmpresaPRACA: TStringField;
    CD_EmpresaLOGOTIPO: TBlobField;
    CD_EmpresaCHAVE1: TStringField;
    CD_EmpresaCHAVE2: TStringField;
    CD_EmpresaIE: TStringField;
    CD_EmpresaTIPO_DOC: TSmallintField;
    CD_EmpresaSMTP_ENDERECO: TStringField;
    CD_EmpresaSMTP_USUARIO: TStringField;
    CD_EmpresaSMTP_SENHA: TStringField;
    CD_EmpresaRESPONSAVEL: TStringField;
    CD_EmpresaSUBSTITUTO: TSmallintField;
    CD_EmpresaCONTRIB_IPI: TSmallintField;
    CD_EmpresaTIPO_MF: TSmallintField;
    CD_EmpresaSMTP_PORTA: TIntegerField;
    CD_EmpresaREG_TRIBUTARIO: TSmallintField;
    CD_EmpresaNUMERO: TStringField;
    CD_EmpresaIM: TStringField;
    CD_EmpresaSMTP_SSL: TSmallintField;
    CD_EmpresaCODE: TStringField;
    CTE_MDF: TSQLDataSet;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1ID_EMPRESA: TIntegerField;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    RegiaoID_REGIAO: TFMTBCDField;
    RegiaoCIDADE: TStringField;
    RegiaoDISTRITO: TStringField;
    RegiaoUF: TStringField;
    RegiaoID_EMPRESA: TIntegerField;
    RegiaoUSER_UP: TIntegerField;
    RegiaoDATA_UP: TSQLTimeStampField;
    RegiaoLOCAL: TStringField;
    RegiaoCODIGO_IBGE: TStringField;
    RegiaoDATA_RP: TSQLTimeStampField;
    RegiaoID_PAIS: TIntegerField;
    RegiaoPAIS: TStringField;
    CIDADE: TClientDataSet;
    CIDADECIDADE: TStringField;
    DataSource1: TDataSource;
    SQLDataSet2: TSQLDataSet;
    Button1: TButton;
    DBEdit16: TDBEdit;
    Label3: TLabel;
    DataSetProvider2: TDataSetProvider;
    procedure CD_EmpresaBeforeInsert(DataSet: TDataSet);
    procedure CD_EmpresaAfterInsert(DataSet: TDataSet);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure CD_EmpresaAfterOpen(DataSet: TDataSet);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConfigSistema: TFrm_ConfigSistema;

implementation

{$R *.dfm}

uses UDM, UCDM, UFrmPrincipal, UFrm_Empresa;


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


procedure TFrm_ConfigSistema.Button1Click(Sender: TObject);
begin

        Frm_Regiao:=TFrm_Regiao.Create(self);
        Frm_Regiao.ShowModal;
        cd_empresa.Edit;
        cd_empresaID_REGIAO.AsInteger:=CDM.CD_RegioesID_REGIAO.AsInteger;




              CIDADE.Close;
              CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CDM.CD_RegioesID_REGIAO.Asstring;
              CIDADE.Open;

end;

procedure TFrm_ConfigSistema.CD_EmpresaAfterInsert(DataSet: TDataSet);
begin
CD_EmpresaID_EMPRESA.AsInteger:=SQLDataSet1.recordcount+1;
end;

procedure TFrm_ConfigSistema.CD_EmpresaAfterOpen(DataSet: TDataSet);
begin
dm.CD_CTE_MDF.Open;
end;

procedure TFrm_ConfigSistema.CD_EmpresaBeforeInsert(DataSet: TDataSet);
begin
SQLDataSet1.close;
SQLDataSet1.Open;
SQLDataSet1.prior;
SQLDataSet1.First;
end;

procedure TFrm_ConfigSistema.DBComboBox1Exit(Sender: TObject);
begin
              {rzDBComboBox2.Items.Clear;
              rzDBComboBox2.Values.Clear;
              regiao.Close;
              regiao.CommandText:='select *  from REGIOES  WHERE  UF =:UF   order by  CIDADE';
              regiao.Params[0].AsString:=DBComboBox1.Text;
              regiao.Open;


                 regiao.First;
                 while NOT regiao.Eof do
                     BEGIN
                      rzDBComboBox2.Items.ADD(regiaoCIDADE.asstring);
                      rzDBComboBox2.values.ADD(regiaoCODIGO_IBGE.asstring);
                      regiao.Next;
                     END;

                   regiao.close;}
end;

procedure TFrm_ConfigSistema.FormShow(Sender: TObject);
begin
     Frm_ConfigSistema.CD_Empresa.CLOSE;
     Frm_ConfigSistema.CD_Empresa.CommandText:='SELECT * FROM EMPRESA WHERE ID_EMPRESA ='+DM.EmitenteID_EMPRESA.AsSTRING;
     Frm_ConfigSistema.CD_Empresa.OPEN;
     Frm_ConfigSistema.CD_Empresa.edit;
     dm.CD_CTE_MDF.Close;
     dm.CD_CTE_MDF.CommandText:='select  * from CTE_MDF_CONFIG where id_empresa ='+DM.EmitenteID_EMPRESA.AsSTRING;
     dm.CD_CTE_MDF.open;
     if dm.CD_CTE_MDF.RecordCount<>0 then
        dm.CD_CTE_MDF.edit
        else
        dm.CD_CTE_MDF.insert;


             if CD_empresaID_REGIAO.AsInteger<>0 then
                begin
                CIDADE.Close;
                CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CD_empresaID_REGIAO.Asstring;
                CIDADE.Open;
                end;

end;

procedure TFrm_ConfigSistema.RzBitBtn1Click(Sender: TObject);
begin
if  CD_Empresa.State in[dsInsert,dsEdit] then
    else
    begin
    CD_Empresa.Insert;
    dm.CD_CTE_MDF.Insert;
    dm.CD_CTE_MDFCHAVE.AsString:=Crypt('C',DateToStr(date+1));
    cidade.Close;
    end;
end;

procedure TFrm_ConfigSistema.RzBitBtn3Click(Sender: TObject);
begin
if  CD_Empresa.State in[dsInsert,dsEdit] then
    begin
      if MessageDlg('deseja realmente cancelar as alterações feitas neste registro?',mtConfirmation,[mbYes,mbNo],0)=mryes then
         CD_Empresa.cancel;

      if cd_empresa.RecordCount<>0 then
        begin
         if CD_empresaID_REGIAO.AsInteger<>0 then
                begin
                CIDADE.Close;
                CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CD_empresaID_REGIAO.Asstring;
                CIDADE.Open;
                end;
        end;
    end;
end;

procedure TFrm_ConfigSistema.RzBitBtn4Click(Sender: TObject);
var
up : TSQLQuery;
begin
  CD_Empresa.Edit;
    if DBEdit2.Text = '' then
       begin

           MessageDlg('O campo nome fantasia não pode ser nulo',mtWarning,[mbOK],0);
           TabSheet1.Show;
           DBEdit2.SetFocus;
       end
       else
        if DBEdit3.Text = '' then
           begin

               MessageDlg('O campo Razão Social não pode ser nulo',mtWarning,[mbOK],0);
               TabSheet1.Show;
               DBEdit3.SetFocus;
           end
           else
             if Length(DBEdit4.Text) <> 18 then
                 begin

                     MessageDlg('O campo CNPJ não pode ser nulo',mtWarning,[mbOK],0);
                     TabSheet1.Show;
                     DBEdit4.SetFocus;
                 end

                       else
                       if DBEdit6.Text = '' then
                             begin

                                 MessageDlg('O campo Endereço não pode ser nulo',mtWarning,[mbOK],0);
                                  TabSheet1.Show;
                                  DBEdit6.SetFocus;
                             end
                             else
                              if Length(DBEdit10.Text) <> 9 then
                                    begin
                                       MessageDlg('O campo Bairro não pode ser nulo',mtWarning,[mbOK],0);
                                       TabSheet1.Show;
                                       DBEdit10.SetFocus;
                                   end
                                   else
                                   if RzDBComboBox1.ItemIndex = -1 then
                                       begin
                                       MessageDlg('O Modulo não pode ser nulo',mtWarning,[mbOK],0);
                                       TabSheet2.Show;
                                       RzDBComboBox1.SetFocus;
                                       end
                                       else
                                       BEGIN

                                       up:=TSQLQuery.Create(self);
                                       up.SQLConnection:=DM.MdfeConnection;
                                       up.SQL.Add('update CTE_MDF_CONFIG set modulo ='+RzDBComboBox1.Value+' where id_empresa ='+CD_EmpresaID_EMPRESA.Asstring);
                                      { dm.CD_CTE_MDFID_EMPRESA.AsInteger:=CD_EmpresaID_EMPRESA.AsInteger;
                                       dm.CD_CTE_MDF.ApplyUpdates(0);
                                       }
                                       up.ExecSQL();
                                       up.Destroy;
                                         CD_Empresa.edit;
                                         CD_Empresa.Post;
                                          CD_Empresa.ApplyUpdates(0);
                                       ShowMessage('Registro Salvo com Sucesso!!');
                                       END;



end;

procedure TFrm_ConfigSistema.RzBitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ConfigSistema.RzBitBtn6Click(Sender: TObject);
begin
Frm_Empresa:=TFrm_Empresa.Create(self);


if  CD_Empresa.State in[dsInsert,dsEdit] then
    begin
       Frm_ConfigSistema.CD_Empresa.cancel;
       Frm_ConfigSistema.CD_Empresa.CLOSE;
       Frm_ConfigSistema.CD_Empresa.CommandText:='SELECT * FROM EMPRESA';
       Frm_ConfigSistema.CD_Empresa.OPEN;
       dm.CD_CTE_MDF.Close;
       dm.CD_CTE_MDF.CommandText:='select  * from CTE_MDF_CONFIG where id_empresa ='+Frm_ConfigSistema.CD_EmpresaID_EMPRESA.AsSTRING;
       dm.CD_CTE_MDF.open;



    end;

  Frm_Empresa.ShowModal;
  dm.CD_CTE_MDF.Close;
     dm.CD_CTE_MDF.CommandText:='select  * from CTE_MDF_CONFIG where id_empresa ='+Frm_ConfigSistema.CD_EmpresaID_EMPRESA.AsSTRING;
     dm.CD_CTE_MDF.open;
      Frm_ConfigSistema.CD_Empresa.edit;


      if CD_empresaID_REGIAO.AsInteger<>0 then
                begin
                CIDADE.Close;
                CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CD_empresaID_REGIAO.Asstring;
                CIDADE.Open;
                end;

  Frm_Empresa.destroy;
end;

end.
