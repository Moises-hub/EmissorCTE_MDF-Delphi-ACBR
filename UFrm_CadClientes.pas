unit UFrm_CadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.DBCtrls, Vcl.StdCtrls,
  RzLabel, Vcl.ExtCtrls, RzPanel, RzCmboBx, RzDBCmbo, Vcl.Mask, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Buttons, DosMove,
  UFrm_Regiao, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, RzButton,
  RzRadChk, RzDBChk, System.Actions, Vcl.ActnList;

type
  TFrm_CadClientes = class(TForm)
    Clientes: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DS_Clientes: TDataSource;
    CD_Table_Clientes: TClientDataSet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Regiao: TSQLDataSet;
    Prov_Regioes: TDataSetProvider;
    CD_Regiao: TClientDataSet;
    DS_Regiao: TDataSource;
    CD_RegiaoID_REGIAO: TFMTBCDField;
    CD_RegiaoCIDADE: TStringField;
    CD_RegiaoDISTRITO: TStringField;
    CD_RegiaoUF: TStringField;
    CD_RegiaoID_EMPRESA: TIntegerField;
    CD_RegiaoUSER_UP: TIntegerField;
    CD_RegiaoDATA_UP: TSQLTimeStampField;
    CD_RegiaoLOCAL: TStringField;
    CD_RegiaoCODIGO_IBGE: TStringField;
    CD_RegiaoDATA_RP: TSQLTimeStampField;
    CD_RegiaoID_PAIS: TIntegerField;
    CD_RegiaoPAIS: TStringField;
    CD_RegiaoCEP: TStringField;
    DosMove1: TDosMove;
    Endereco: TSQLDataSet;
    Prov_Endereco: TDataSetProvider;
    CD_Endereco: TClientDataSet;
    DS_Endereco: TDataSource;
    CD_EnderecoID_CLIENTE: TFMTBCDField;
    CD_EnderecoENDERECO: TStringField;
    CD_EnderecoBAIRRO: TStringField;
    CD_EnderecoCOMPLEMENTO: TStringField;
    CD_EnderecoCEP: TStringField;
    CD_EnderecoPROFISSAO: TStringField;
    CD_EnderecoFONE_COM: TStringField;
    CD_EnderecoFONE_RES: TStringField;
    CD_EnderecoFAX: TStringField;
    CD_EnderecoCELULAR: TStringField;
    CD_EnderecoNOME_CONJUGE: TStringField;
    CD_EnderecoNASCIMENTO_CONJUGE: TDateField;
    CD_EnderecoRENDA_CONJUGE: TFMTBCDField;
    CD_EnderecoESTADO_CIVIL: TSmallintField;
    CD_EnderecoLOCAL_TRABALHO_CONJUGE: TStringField;
    CD_EnderecoLOCAL_TRABALHO: TStringField;
    CD_EnderecoFONE_COM_CONJUGE: TStringField;
    CD_EnderecoENDERECO_COM: TStringField;
    CD_EnderecoBAIRRO_COM: TStringField;
    CD_EnderecoRENDA: TFMTBCDField;
    CD_EnderecoPAI: TStringField;
    CD_EnderecoMAE: TStringField;
    CD_EnderecoTIPO_ENDERECO: TSmallintField;
    CD_EnderecoENDERECO_2: TStringField;
    CD_EnderecoBAIRRO_2: TStringField;
    CD_EnderecoCOMPLEMENTO_2: TStringField;
    CD_EnderecoCEP_2: TStringField;
    CD_EnderecoCIDADE_2: TStringField;
    CD_EnderecoUF_2: TStringField;
    CD_EnderecoTEMPO_SERVICO: TIntegerField;
    CD_EnderecoEMPREGO_ANTERIOR: TStringField;
    CD_EnderecoDATA_CASAMENTO: TDateField;
    CD_EnderecoFONE_SAC: TStringField;
    CD_EnderecoCPF_CONJUGE: TStringField;
    CD_EnderecoRG_CONJUGE: TStringField;
    CD_EnderecoNUMERO: TStringField;
    CD_EnderecoNUMERO_2: TStringField;
    CD_EnderecoCODIGO_IBGE_2: TStringField;
    CD_EnderecoID_REGIAO_2: TIntegerField;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label12: TLabel;
    CIDADE: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    Button1: TButton;
    DataSource1: TDataSource;
    DBEdit12: TDBEdit;
    CIDADECIDADE: TStringField;
    CD_Table_ClientesID_CLIENTE: TFMTBCDField;
    CD_Table_ClientesNOME: TStringField;
    CD_Table_ClientesID_CONVENIO: TIntegerField;
    CD_Table_ClientesNASCIMENTO: TDateField;
    CD_Table_ClientesID_REGIAO: TIntegerField;
    CD_Table_ClientesCLASSIFICACAO: TSmallintField;
    CD_Table_ClientesLIMITE: TFMTBCDField;
    CD_Table_ClientesCPF_CNPJ: TStringField;
    CD_Table_ClientesPESSOA: TSmallintField;
    CD_Table_ClientesIE: TStringField;
    CD_Table_ClientesRG: TStringField;
    CD_Table_ClientesORGAO_EMISSOR: TStringField;
    CD_Table_ClientesDATA_CADASTRO: TDateField;
    CD_Table_ClientesULTIMA_COMPRA: TDateField;
    CD_Table_ClientesEMAIL: TStringField;
    CD_Table_ClientesENVIA_EMAIL: TSmallintField;
    CD_Table_ClientesENVIA_MALA: TSmallintField;
    CD_Table_ClientesVISITA: TSmallintField;
    CD_Table_ClientesOBS: TBlobField;
    CD_Table_ClientesSEXO: TSmallintField;
    CD_Table_ClientesCODIGO_ANTERIOR: TIntegerField;
    CD_Table_ClientesTIPO: TSmallintField;
    CD_Table_ClientesSALDO: TFMTBCDField;
    CD_Table_ClientesNATURALIDADE: TStringField;
    CD_Table_ClientesLOGIN: TStringField;
    CD_Table_ClientesSENHA: TStringField;
    CD_Table_ClientesDIA_VENCIMENTO: TSmallintField;
    CD_Table_ClientesDIAS_ANTES: TSmallintField;
    CD_Table_ClientesNOME_FANTASIA: TStringField;
    CD_Table_ClientesID_VENDEDOR: TIntegerField;
    CD_Table_ClientesSUBSTITUTO: TSmallintField;
    CD_Table_ClientesATUALIZADO: TSmallintField;
    CD_Table_ClientesCLIENTE_ANTERIOR: TSmallintField;
    CD_Table_ClientesIM: TStringField;
    CD_Table_ClientesEMISSAO_RG: TDateField;
    CD_Table_ClientesID_EMPRESA: TIntegerField;
    CD_Table_ClientesUSER_UP: TIntegerField;
    CD_Table_ClientesDATA_UP: TSQLTimeStampField;
    CD_Table_ClientesSITE: TStringField;
    CD_Table_ClientesDATA_AF: TSQLTimeStampField;
    CD_Table_ClientesAUT_CONDICIONAL: TSmallintField;
    CD_Table_ClientesREGISTRO: TStringField;
    CD_Table_ClientesID_CLASSE: TIntegerField;
    CD_Table_ClientesENVIA_RELATO: TSmallintField;
    CD_Table_ClientesDATA_RP: TSQLTimeStampField;
    CD_Table_ClientesUSER_IN: TIntegerField;
    CD_Table_ClientesNUMERO: TStringField;
    CD_Table_ClientesSELECIONA: TSmallintField;
    CD_Table_ClientesID_EMISSOR: TIntegerField;
    CD_Table_ClientesTAG: TSmallintField;
    CD_Table_ClientesVALIDADE: TDateField;
    CD_Table_ClientesVALIDADE_LIMITE: TDateField;
    CD_Table_ClientesVENDA_VISTA: TSmallintField;
    CD_Table_ClientesVENDA_PRAZO: TSmallintField;
    CD_Table_ClientesNUMERO_CONSULTA: TStringField;
    CD_Table_ClientesEMAIL2: TStringField;
    CD_Table_ClientesCODE: TStringField;
    CD_Table_ClientesAN_DATA_HORA: TSQLTimeStampField;
    CD_Table_ClientesAN_FATURAMENTO: TFMTBCDField;
    CD_Table_ClientesAN_ATRASO: TIntegerField;
    CD_Table_ClientesAN_CADASTRO: TIntegerField;
    CD_Table_ClientesAN_VENCIDO: TIntegerField;
    CD_Table_ClientesAN_INATIVO: TIntegerField;
    CD_Table_ClientesID_TABELA: TIntegerField;
    CD_Table_ClientesENVIA_SMS: TSmallintField;
    CD_Table_ClientesSTATUS_ANTERIOR: TSmallintField;
    CD_Table_ClientesEMAIL3: TStringField;
    DBNavigator1: TDBNavigator;
    ImageList1: TImageList;
    RzDBCheckBox1: TRzDBCheckBox;
    CD_Table_ClientesMOTORISTA: TIntegerField;
    ClientesID_CLIENTE: TFMTBCDField;
    ClientesNOME: TStringField;
    ClientesID_CONVENIO: TIntegerField;
    ClientesNASCIMENTO: TDateField;
    ClientesID_REGIAO: TIntegerField;
    ClientesCLASSIFICACAO: TSmallintField;
    ClientesLIMITE: TFMTBCDField;
    ClientesCPF_CNPJ: TStringField;
    ClientesPESSOA: TSmallintField;
    ClientesIE: TStringField;
    ClientesRG: TStringField;
    ClientesORGAO_EMISSOR: TStringField;
    ClientesDATA_CADASTRO: TDateField;
    ClientesULTIMA_COMPRA: TDateField;
    ClientesEMAIL: TStringField;
    ClientesENVIA_EMAIL: TSmallintField;
    ClientesENVIA_MALA: TSmallintField;
    ClientesVISITA: TSmallintField;
    ClientesOBS: TBlobField;
    ClientesSEXO: TSmallintField;
    ClientesCODIGO_ANTERIOR: TIntegerField;
    ClientesTIPO: TSmallintField;
    ClientesSALDO: TFMTBCDField;
    ClientesNATURALIDADE: TStringField;
    ClientesLOGIN: TStringField;
    ClientesSENHA: TStringField;
    ClientesDIA_VENCIMENTO: TSmallintField;
    ClientesDIAS_ANTES: TSmallintField;
    ClientesNOME_FANTASIA: TStringField;
    ClientesID_VENDEDOR: TIntegerField;
    ClientesSUBSTITUTO: TSmallintField;
    ClientesATUALIZADO: TSmallintField;
    ClientesCLIENTE_ANTERIOR: TSmallintField;
    ClientesIM: TStringField;
    ClientesEMISSAO_RG: TDateField;
    ClientesID_EMPRESA: TIntegerField;
    ClientesUSER_UP: TIntegerField;
    ClientesDATA_UP: TSQLTimeStampField;
    ClientesSITE: TStringField;
    ClientesDATA_AF: TSQLTimeStampField;
    ClientesAUT_CONDICIONAL: TSmallintField;
    ClientesREGISTRO: TStringField;
    ClientesID_CLASSE: TIntegerField;
    ClientesENVIA_RELATO: TSmallintField;
    ClientesDATA_RP: TSQLTimeStampField;
    ClientesUSER_IN: TIntegerField;
    ClientesNUMERO: TStringField;
    ClientesSELECIONA: TSmallintField;
    ClientesID_EMISSOR: TIntegerField;
    ClientesTAG: TSmallintField;
    ClientesVALIDADE: TDateField;
    ClientesVALIDADE_LIMITE: TDateField;
    ClientesVENDA_VISTA: TSmallintField;
    ClientesVENDA_PRAZO: TSmallintField;
    ClientesNUMERO_CONSULTA: TStringField;
    ClientesEMAIL2: TStringField;
    ClientesCODE: TStringField;
    ClientesAN_DATA_HORA: TSQLTimeStampField;
    ClientesAN_FATURAMENTO: TFMTBCDField;
    ClientesAN_ATRASO: TIntegerField;
    ClientesAN_CADASTRO: TIntegerField;
    ClientesAN_VENCIDO: TIntegerField;
    ClientesAN_INATIVO: TIntegerField;
    ClientesID_TABELA: TIntegerField;
    ClientesENVIA_SMS: TSmallintField;
    ClientesSTATUS_ANTERIOR: TSmallintField;
    ClientesEMAIL3: TStringField;
    ClientesDESCONTO_ANT: TSingleField;
    ClientesID_NATUREZA: TIntegerField;
    ClientesCEC_CALCADO_TAM: TSmallintField;
    ClientesMOTORISTA: TIntegerField;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    RzCheckBox1: TRzCheckBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    procedure CD_Table_ClientesAfterInsert(DataSet: TDataSet);
    procedure CD_Table_ClientesBeforeInsert(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure CD_EnderecoBeforeInsert(DataSet: TDataSet);
    procedure CD_EnderecoAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CD_Table_ClientesAfterPost(DataSet: TDataSet);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadClientes: TFrm_CadClientes;

implementation

{$R *.dfm}

uses UCDM, UDM, UFrmFuncoes;

procedure TFrm_CadClientes.Act_CancelarExecute(Sender: TObject);
begin
if Application.MessageBox('deseja realmente cancelar as alterações?','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mrYes then
   begin
   CD_Table_Clientes.cancel;
   CD_Table_Clientes.close;
   close;
   end;
end;

procedure TFrm_CadClientes.Act_SalvarExecute(Sender: TObject);
begin
  if RzCheckBox1.Checked = true then
      CD_Table_ClientesCLASSIFICACAO.AsInteger:=1
      else
       CD_Table_ClientesCLASSIFICACAO.AsInteger:=0;

   CD_Table_Clientes.ApplyUpdates(0);
   CD_Endereco.ApplyUpdates(0);

   cdm.CD_Table_Clientes.Close;
   cdm.CD_Table_Clientes.open;
   cdm.CD_Table_Clientes.refresh;


close;
end;

procedure TFrm_CadClientes.Button1Click(Sender: TObject);
begin

        Frm_Regiao:=TFrm_Regiao.Create(self);
        Frm_Regiao.Act_Sair.Caption:='Confirmar';
        Frm_Regiao.ShowModal;
        CD_Table_Clientes.Edit;
        CD_Table_ClientesID_REGIAO.AsInteger:=CDM.CD_RegioesID_REGIAO.AsInteger;




              CIDADE.Close;
              CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CDM.CD_RegioesID_REGIAO.Asstring;
              CIDADE.Open;

        Frm_Regiao:=nil;

end;

procedure TFrm_CadClientes.CD_EnderecoAfterInsert(DataSet: TDataSet);
begin
//CD_EnderecoID.AsInteger:=dm.IDGEN_ID.AsInteger;
end;

procedure TFrm_CadClientes.CD_EnderecoBeforeInsert(DataSet: TDataSet);
begin
 { dm.id.close;
      dm.id.SQL.Clear;
      dm.id.SQL.Add('select gen_id(GEN_CLIENTES_DADOS_ID,1) from rdb$database');
      dm.id.ExecSQL();
      dm.id.Open;}
end;

procedure TFrm_CadClientes.CD_Table_ClientesAfterInsert(DataSet: TDataSet);
begin
     CD_Table_ClientesID_CLIENTE.AsInteger:=dm.IDGEN_ID.AsInteger;
     CD_Table_ClientesPESSOA.AsInteger:=1;
     CD_Table_ClientesTIPO.AsInteger:=1;
     CD_Table_ClientesSUBSTITUTO.AsInteger:=0;

     CD_Endereco.Open;
     CD_Regiao.Open;

end;

procedure TFrm_CadClientes.CD_Table_ClientesAfterPost(DataSet: TDataSet);
begin
CD_Table_Clientes.ApplyUpdates(0)
end;

procedure TFrm_CadClientes.CD_Table_ClientesBeforeInsert(DataSet: TDataSet);
begin
        dm.id.close;
      dm.id.SQL.Clear;
      dm.id.SQL.Add('select gen_id(CLIENTES,1) from rdb$database');
      dm.id.ExecSQL();
      dm.id.Open;
end;

procedure TFrm_CadClientes.DBComboBox1Exit(Sender: TObject);
begin
          {   rzDBComboBox15.Items.Clear;
              rzDBComboBox15.Values.Clear;
              CIDADE.Close;
              CIDADE.CommandText:='select CIDADE, ID_REGIAO  from REGIOES  WHERE  UF =:UF and CODIGO_IBGE is not null  order BY  CIDADE';
              CIDADE.Params[0].AsString:=DBComboBox1.Text;
              CIDADE.Open;


                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                      rzDBComboBox15.Items.ADD(CIDADE.FieldByName('CIDADE').asstring);
                      rzDBComboBox15.values.ADD(CIDADE.FieldByName('ID_REGIAO').asstring);
                      CIDADE.Next;
                     END;

                   CIDADE.close; }
end;

procedure TFrm_CadClientes.DBEdit2Enter(Sender: TObject);
VAR
MASCARA : STRING;
begin
   if DBEdit2.Text <>'' then
      BEGIN
      MASCARA :=StringReplace(DBEdit2.Text,'.','',[rfReplaceAll]);
      MASCARA :=StringReplace(MASCARA,'-','',[rfReplaceAll]);
      MASCARA :=StringReplace(MASCARA,'/','',[rfReplaceAll]);
      DBEdit2.Text:=MASCARA;
      END;
end;

procedure TFrm_CadClientes.DBEdit2Exit(Sender: TObject);
begin
try
      if length(DBEdit2.Text)>3 then
         begin
        if CD_Table_ClientesPESSOA.AsInteger = 1 then
            begin
             if frmfuncoes.testacpf(DBEdit2.Text)= false then
                ShowMessage('CPF Inválido')
                else
                DBEdit2.Text:=frmfuncoes.FormataCPF(DBEdit2.Text);
            end
            else
            if CD_Table_ClientesPESSOA.AsInteger = 2 then
            begin
             if frmfuncoes.ValidaCNPJ(DBEdit2.Text)= false then
                ShowMessage('CNPJ Inválido')
                else
                 DBEdit2.Text:=frmfuncoes.FormataCNPJ(DBEdit2.Text);
            end ;
         end;
except

end;

end;

procedure TFrm_CadClientes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_CadClientes.FormShow(Sender: TObject);
begin

                CD_Endereco.Open;
             if CD_Table_ClientesID_REGIAO.AsInteger<>0 then
                begin
                CIDADE.Close;
                CIDADE.CommandText:='select CIDADE ||''-''||UF as cidade from REGIOES  WHERE id_regiao ='+CD_Table_ClientesID_REGIAO.Asstring;
                CIDADE.Open;
                end;
                if  CD_Table_ClientesCLASSIFICACAO.AsInteger = 1 then
                    RzCheckBox1.Checked := true
                    else
                    RzCheckBox1.Checked := false;
end;

ENd.

