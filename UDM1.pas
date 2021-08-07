unit UDM;

interface

uses  IniFiles, MidasLib, Midas,
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, IBX.IBDatabase;

type
  TDM = class(TDataModule)
    Mdfe_dadosTable: TSQLDataSet;
    CD_Mdf_Dados: TClientDataSet;
    DS_CD_Dados: TDataSource;
    PROV_Mdfe_l_carregamentoTable: TDataSetProvider;
    CD_Mdfe_l_carregamentoTable: TClientDataSet;
    DS_Mdfe_l_carregamentoTable: TDataSource;
    Mdfe_l_carregamentoTable: TSQLDataSet;
    CD_Mdfe_l_carregamentoTableID: TIntegerField;
    CD_Mdfe_l_carregamentoTableID_MDFE: TIntegerField;
    CD_Mdfe_l_carregamentoTableUF: TStringField;
    CD_Mdfe_l_carregamentoTableMUNICIPIO: TStringField;
    Mdfe_condutorTable: TSQLDataSet;
    prov_Mdfe_condutorTable: TDataSetProvider;
    CD_Mdfe_condutorTable: TClientDataSet;
    DS_Mdfe_condutorTable: TDataSource;
    CD_Mdfe_condutorTableID: TIntegerField;
    CD_Mdfe_condutorTableID_MDFE: TIntegerField;
    CD_Mdfe_condutorTableNOME: TStringField;
    CD_Mdfe_condutorTableCPF: TStringField;
    Mdfe_v_reboqueTable: TSQLDataSet;
    PROV_Mdfe_v_reboqueTable: TDataSetProvider;
    CD_Mdfe_v_reboqueTable: TClientDataSet;
    DS_Mdfe_v_reboqueTable: TDataSource;
    Mdfe_uf_percursoTable: TSQLDataSet;
    Mdfe_l_descarregamentoTable: TSQLDataSet;
    Prov_Mdfe_uf_percursoTable: TDataSetProvider;
    CD_Mdfe_uf_percursoTable: TClientDataSet;
    DS_Mdfe_uf_percursoTable: TDataSource;
    Prov_Mdfe_l_descarregamentoTable: TDataSetProvider;
    CD_Mdfe_l_descarregamentoTable: TClientDataSet;
    DS_Mdfe_l_descarregamentoTable: TDataSource;
    CD_Mdfe_uf_percursoTableID: TIntegerField;
    CD_Mdfe_uf_percursoTableID_MDFE: TIntegerField;
    CD_Mdfe_uf_percursoTableUF: TStringField;
    ID: TSQLQuery;
    IDGEN_ID: TLargeintField;
    CD_Mdfe_l_descarregamentoTableID: TIntegerField;
    CD_Mdfe_l_descarregamentoTableID_MDFE: TIntegerField;
    CD_Mdfe_l_descarregamentoTableUF: TStringField;
    CD_Mdfe_l_descarregamentoTableMUNICIPIO: TStringField;
    CD_Mdfe_v_reboqueTableID: TIntegerField;
    CD_Mdfe_v_reboqueTableID_MDFE: TIntegerField;
    CD_Mdfe_v_reboqueTableCOD_INT_VEIUC: TStringField;
    CD_Mdfe_v_reboqueTablePLACA: TStringField;
    CD_Mdfe_v_reboqueTableRENAVAN: TStringField;
    CD_Mdfe_v_reboqueTableUF_LICENCIAMENTO: TStringField;
    CD_Mdfe_v_reboqueTableTARA: TFMTBCDField;
    CD_Mdfe_v_reboqueTableCAPACIDADE: TFMTBCDField;
    CD_Mdfe_v_reboqueTableCAPC_M3: TFMTBCDField;
    CD_Mdfe_v_reboqueTableCARROCERIA: TStringField;
    Nfe_mdfTable: TSQLDataSet;
    PROV_Nfe_mdfTable: TDataSetProvider;
    CD_Nfe_mdfTable: TClientDataSet;
    DS_Nfe_mdfTable: TDataSource;
    cd_PRO_Nota_fiscalTable: TSQLDataSet;
    PRO_Nota_fiscalTable: TDataSetProvider;
    DS_Nota_fiscalTable: TDataSource;
    CD_Nota_FiscalTable: TClientDataSet;
    CD_Nota_FiscalTableID_NOTA: TFMTBCDField;
    CD_Nota_FiscalTableID_CLIENTE: TIntegerField;
    CD_Nota_FiscalTableID_PEDIDO: TIntegerField;
    CD_Nota_FiscalTableID_NATUREZA: TIntegerField;
    CD_Nota_FiscalTableNOTA_FISCAL: TStringField;
    CD_Nota_FiscalTableDATA_EMISSAO: TDateField;
    CD_Nota_FiscalTableDATA_ES: TDateField;
    CD_Nota_FiscalTableHORA: TTimeField;
    CD_Nota_FiscalTableTR_NOME: TStringField;
    CD_Nota_FiscalTableTR_ENDERECO: TStringField;
    CD_Nota_FiscalTableQUANTIDADE: TSingleField;
    CD_Nota_FiscalTableESPECIE: TStringField;
    CD_Nota_FiscalTableMARCA: TStringField;
    CD_Nota_FiscalTableFPC: TSmallintField;
    CD_Nota_FiscalTableVEICULO_PLACA: TStringField;
    CD_Nota_FiscalTableVEICULO_UF: TStringField;
    CD_Nota_FiscalTableTR_CIDADE: TStringField;
    CD_Nota_FiscalTableTR_UF: TStringField;
    CD_Nota_FiscalTableNUMERO: TStringField;
    CD_Nota_FiscalTablePESO_BRUTO: TSingleField;
    CD_Nota_FiscalTablePESO_LIQUIDO: TSingleField;
    CD_Nota_FiscalTableTR_CPF_CNPJ: TStringField;
    CD_Nota_FiscalTableTR_IE: TStringField;
    CD_Nota_FiscalTableSTATUS: TSmallintField;
    CD_Nota_FiscalTableTIPO: TSmallintField;
    CD_Nota_FiscalTableOBS: TBlobField;
    CD_Nota_FiscalTableBASE_ICMS: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_ICMS: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_FRETE: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_SEGURO: TFMTBCDField;
    CD_Nota_FiscalTableOUTROS: TFMTBCDField;
    CD_Nota_FiscalTableBASE_ICMS_SUB: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_ICMS_SUB: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_IPI: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_PRODUTOS: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_TOTAL: TFMTBCDField;
    CD_Nota_FiscalTableID_DEPTO: TIntegerField;
    CD_Nota_FiscalTablePERCENTUAL1: TSingleField;
    CD_Nota_FiscalTablePERCENTUAL2: TSingleField;
    CD_Nota_FiscalTableID_PROPRIEDADE: TIntegerField;
    CD_Nota_FiscalTableDESCONTO: TSingleField;
    CD_Nota_FiscalTableACRESCIMO: TSingleField;
    CD_Nota_FiscalTableDADOS: TMemoField;
    CD_Nota_FiscalTableSERIE: TStringField;
    CD_Nota_FiscalTableTIPO_NOTA: TSmallintField;
    CD_Nota_FiscalTableID_ENTREGA: TIntegerField;
    CD_Nota_FiscalTableTIPO_NF: TSmallintField;
    CD_Nota_FiscalTableTIPO_DESCONTO: TSmallintField;
    CD_Nota_FiscalTableTIPO_BASE: TSmallintField;
    CD_Nota_FiscalTableNFE_RECIBO: TStringField;
    CD_Nota_FiscalTableNFE_PROTOCOLO: TStringField;
    CD_Nota_FiscalTableNFE_CHAVE: TStringField;
    CD_Nota_FiscalTableNFE_DATA_ENVIO: TDateField;
    CD_Nota_FiscalTableNFE_CHAVE_REF: TStringField;
    CD_Nota_FiscalTableMODELO: TStringField;
    CD_Nota_FiscalTableEXP_UF: TStringField;
    CD_Nota_FiscalTableEXP_LOCAL: TStringField;
    CD_Nota_FiscalTableTIPO_EMISSAO: TSmallintField;
    CD_Nota_FiscalTableVALOR_PIS: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_COFINS: TFMTBCDField;
    CD_Nota_FiscalTableCODE: TStringField;
    CD_Nota_FiscalTableVALOR_PIS_SUB: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_COFINS_SUB: TFMTBCDField;
    CD_Nota_FiscalTableCARTA_CORRECAO: TSmallintField;
    CD_Nota_FiscalTableIMPOSTOS: TSingleField;
    CD_Nota_FiscalTableVALOR_IMPOSTOS: TFMTBCDField;
    CD_Nota_FiscalTableNFE_RETORNO: TSmallintField;
    CD_Nota_FiscalTableVINCULADO: TStringField;
    CD_Nota_FiscalTableNFE_TIPO_DESCRICAO: TSmallintField;
    CD_Nota_FiscalTableEXP_NDRAW: TStringField;
    CD_Nota_FiscalTableEXP_CHAVE_NFE: TStringField;
    CD_Nota_FiscalTableVALOR_ICMS_FCP: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_ICMS_DST: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_ICMS_REM: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_IMPOSTOSF: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_IMPOSTOSE: TFMTBCDField;
    CD_Nota_FiscalTableVALOR_IMPOSTOSM: TFMTBCDField;
    CD_Nota_FiscalTableNFE_DATA_HORA_NULA: TSmallintField;
    CD_Nfe_mdfTableID: TIntegerField;
    CD_Nfe_mdfTableID_MDFE: TIntegerField;
    CD_Nfe_mdfTableCHAVE_NFE: TStringField;
    CD_Nfe_mdfTableQNT_UN_TRANSP: TFMTBCDField;
    CD_Nfe_mdfTableN_DA_NFE: TLargeintField;
    CD_Nfe_mdfTablePESO: TFloatField;
    CD_Nfe_mdfTableVALOR: TFloatField;
    Emitente: TSQLDataSet;
    EmitenteID_EMPRESA: TIntegerField;
    EmitenteTIPO_ATIVIDADE: TSmallintField;
    EmitenteNOME_EMPRESA: TStringField;
    EmitenteRAZAO_SOCIAL: TStringField;
    EmitenteENDERECO: TStringField;
    EmitenteBAIRRO: TStringField;
    EmitenteCOMPLEMENTO: TStringField;
    EmitenteID_REGIAO: TFMTBCDField;
    EmitenteCNPJ: TStringField;
    EmitenteCEP: TStringField;
    EmitenteEMAIL: TStringField;
    EmitenteWEB: TStringField;
    EmitenteFONE1: TStringField;
    EmitenteFONE2: TStringField;
    EmitenteFAX: TStringField;
    EmitentePRACA: TStringField;
    EmitenteLOGOTIPO: TBlobField;
    EmitenteCHAVE1: TStringField;
    EmitenteCHAVE2: TStringField;
    EmitenteIE: TStringField;
    EmitenteTIPO_DOC: TSmallintField;
    EmitenteSMTP_ENDERECO: TStringField;
    EmitenteSMTP_USUARIO: TStringField;
    EmitenteSMTP_SENHA: TStringField;
    EmitenteRESPONSAVEL: TStringField;
    EmitenteSUBSTITUTO: TSmallintField;
    EmitenteCONTRIB_IPI: TSmallintField;
    EmitenteTIPO_MF: TSmallintField;
    EmitenteSMTP_PORTA: TIntegerField;
    EmitenteREG_TRIBUTARIO: TSmallintField;
    EmitenteNUMERO: TStringField;
    EmitenteIM: TStringField;
    EmitenteSMTP_SSL: TSmallintField;
    EmitenteCODE: TStringField;
    DS_Emitente: TDataSource;
    REGIAO: TSQLTable;
    REGIAOID_REGIAO: TFMTBCDField;
    REGIAOCIDADE: TStringField;
    REGIAODISTRITO: TStringField;
    REGIAOUF: TStringField;
    REGIAOID_EMPRESA: TIntegerField;
    REGIAOUSER_UP: TIntegerField;
    REGIAODATA_UP: TSQLTimeStampField;
    REGIAOLOCAL: TStringField;
    REGIAOCODIGO_IBGE: TStringField;
    REGIAODATA_RP: TSQLTimeStampField;
    REGIAOID_PAIS: TIntegerField;
    REGIAOPAIS: TStringField;
    CD_Mdfe_l_carregamentoTableCOD_MUN: TIntegerField;
    CD_Mdfe_l_descarregamentoTableCOD_MUN: TIntegerField;
    CD_Mdf_DadosID: TIntegerField;
    CD_Mdf_DadosID_NFE: TFMTBCDField;
    CD_Mdf_DadosMODELO: TIntegerField;
    CD_Mdf_DadosSERIE: TIntegerField;
    CD_Mdf_DadosNUMERO: TIntegerField;
    CD_Mdf_DadosCODMDF: TIntegerField;
    CD_Mdf_DadosDATA: TDateField;
    CD_Mdf_DadosHORA: TTimeField;
    CD_Mdf_DadosUF: TStringField;
    CD_Mdf_DadosTIPO_EMITENTE: TStringField;
    CD_Mdf_DadosUF_EMIT: TIntegerField;
    CD_Mdf_DadosMODALIDADE: TStringField;
    CD_Mdf_DadosFORMA_EMISSAO: TStringField;
    CD_Mdf_DadosUF_DESCARREGAMENTO: TStringField;
    CD_Mdf_DadosCHAVE: TStringField;
    CD_Mdf_DadosVEI_UF: TStringField;
    CD_Mdf_DadosVEI_RNTRC: TStringField;
    CD_Mdf_DadosVEI_CIOT: TStringField;
    CD_Mdf_DadosCOD_AG_PORTO: TStringField;
    CD_Mdf_DadosCOD_INT_VEIUC: TStringField;
    CD_Mdf_DadosVEI_TIPO_CARROCERIA: TStringField;
    CD_Mdf_DadosVEI_TIPO_RODADO: TStringField;
    CD_Mdf_DadosVEI_PLACA: TStringField;
    CD_Mdf_DadosVEI_RENAVAN: TStringField;
    CD_Mdf_DadosVEI_TARA: TFMTBCDField;
    CD_Mdf_DadosVEI_CAPACIDADE: TFMTBCDField;
    CD_Mdf_DadosVEI_CAPC_M3: TFMTBCDField;
    CD_Mdf_DadosTOT_QNT_NFE_REL_MANIFESTRO: TIntegerField;
    CD_Mdf_DadosTOT_VALOR_TOTAL_MERCADORIA: TFloatField;
    CD_Mdf_DadosTOT_CODUNIDADE: TStringField;
    CD_Mdf_DadosTOT_PESO_BRUTO: TFloatField;
    CD_Mdf_DadosUF_CARREGAMENTO: TStringField;
    CD_Mdf_DadosSTATUS: TIntegerField;
    CD_Mdf_DadosMDF_PROTOCOLO: TStringField;
    CD_Mdf_DadosMDF_D_ENVIO: TSQLTimeStampField;
    MDFe_Config: TSQLDataSet;
    Pro_MdfeConfig: TDataSetProvider;
    DS_Mdfe_Config: TDataSource;
    CD_MDFe_Config: TClientDataSet;
    CD_MDFe_ConfigFORM_EMISSAO: TIntegerField;
    CD_MDFe_ConfigLOGO: TStringField;
    CD_MDFe_ConfigPATHSALVAR: TStringField;
    CD_MDFe_ConfigIDUF: TIntegerField;
    CD_MDFe_ConfigNUMERO: TIntegerField;
    CD_MDFe_ConfigSERIE: TIntegerField;
    CD_MDFe_ConfigMODELO: TStringField;
    CD_Mdf_DadosOBS: TStringField;
    CD_Mdf_DadosOBS2: TStringField;
    Clientes: TSQLDataSet;
    Prov_Clientes: TDataSetProvider;
    DS_Clientes: TDataSource;
    CD_Table_Clientes: TClientDataSet;
    CD_Table_ClientesID_CLIENTE: TFMTBCDField;
    CD_Table_ClientesNOME: TStringField;
    CD_Table_ClientesCPF_CNPJ: TStringField;
    MdfeConnection: TSQLConnection;
    Prov_dadosTable: TDataSetProvider;
    procedure CD_Mdfe_l_carregamentoTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdfe_l_carregamentoTableAfterInsert(DataSet: TDataSet);
    procedure CD_Mdf_DadosBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdf_DadosAfterInsert(DataSet: TDataSet);
    procedure CD_Mdfe_uf_percursoTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdfe_uf_percursoTableAfterInsert(DataSet: TDataSet);
    procedure CD_Mdfe_l_descarregamentoTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdfe_l_descarregamentoTableAfterInsert(DataSet: TDataSet);
    procedure CD_Mdfe_condutorTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdfe_condutorTableAfterInsert(DataSet: TDataSet);
    procedure CD_Mdfe_v_reboqueTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Mdfe_v_reboqueTableAfterInsert(DataSet: TDataSet);
    procedure CD_Nfe_mdfTableBeforeInsert(DataSet: TDataSet);
    procedure CD_Nfe_mdfTableAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.CD_Mdfe_condutorTableAfterInsert(DataSet: TDataSet);
begin
    CD_Mdfe_condutorTableID.Value:=IDGEN_ID.Value;
end;

procedure TDM.CD_Mdfe_condutorTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_CONDUTOR,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdfe_l_carregamentoTableAfterInsert(DataSet: TDataSet);
begin
     CD_Mdfe_l_carregamentoTableID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TDM.CD_Mdfe_l_carregamentoTableBeforeInsert(DataSet: TDataSet);
begin

    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_L_CARREGAMENTO_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;


end;

procedure TDM.CD_Mdfe_l_descarregamentoTableAfterInsert(DataSet: TDataSet);
begin
   CD_Mdfe_l_descarregamentoTableID.AsInteger:=IDGEN_ID.Value;
end;

procedure TDM.CD_Mdfe_l_descarregamentoTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_L_DESCARREGAMENTO,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdfe_uf_percursoTableAfterInsert(DataSet: TDataSet);
begin
    CD_Mdfe_uf_percursoTableID.AsInteger:=IDGEN_ID.Value;
end;

procedure TDM.CD_Mdfe_uf_percursoTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_UF_PERCURSO,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdfe_v_reboqueTableAfterInsert(DataSet: TDataSet);
begin
    CD_Mdfe_v_reboqueTableID.Value:=IDGEN_ID.value;
end;

procedure TDM.CD_Mdfe_v_reboqueTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_V_REBOQUE,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdf_DadosAfterInsert(DataSet: TDataSet);
begin
     CD_Mdf_DadosID.Value:=IDGEN_ID.Value;
     CD_Mdf_DadosNUMERO.Value:=IDGEN_ID.Value;
     CD_Mdf_DadosDATA.AsDateTime:=date;
     CD_Mdf_DadosHORA.AsDateTime:=time;
     CD_Mdf_DadosSTATUS.AsInteger:=0;
     CD_Mdf_DadosNUMERO.Value:=CD_MDFe_ConfigNUMERO.Value+1;
     CD_Mdf_DadosSERIE.Value:=CD_MDFe_ConfigSERIE.Value;
     CD_Mdf_DadosMODELO.Value:=StrToInt(CD_MDFe_ConfigMODELO.Value);
     CD_MDFe_Config.Edit;
     CD_MDFe_ConfigNUMERO.Value:=CD_Mdf_DadosNUMERO.Value;
     CD_MDFe_Config.post;
     CD_MDFe_Config.ApplyUpdates(0);


end;

procedure TDM.CD_Mdf_DadosBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_DADOS,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Nfe_mdfTableAfterInsert(DataSet: TDataSet);
begin
    CD_Nfe_mdfTableID.Value:=IDGEN_ID.AsInteger;
end;

procedure TDM.CD_Nfe_mdfTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(NFE_MDF,1) from rdb$database');
    id.ExecSQL();
    id.Open;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
Var
 IniFile, l    : String;
 Ini        : TIniFile;

 //  Regsel : TRegistry;
Begin

 //NÃO ESQUECA DE ACRESCENTAR INIFILES NO USES



ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
l:=ini.ReadString('config','local','');
DM.MdfeConnection.Params.Values['Servidor']:=ini.ReadString('config','Servidor','');
if l='1' then
   DM.MdfeConnection.Params.Values['DataBase']:=ini.ReadString('config','servidor','')+':'+ini.ReadString('config','Banco','')
   else
   DM.MdfeConnection.Params.Values['DataBase']:=ini.ReadString('config','Banco','');

//DM.MdfeConnection.Params.Values['Servidor']:=ini.ReadString('config','Servidor','');
DM.MdfeConnection.Params.Values['Username']:=ini.ReadString('config','usuario','');
DM.MdfeConnection.Params.Values['password']:=ini.ReadString('config','senha','');
DM.MdfeConnection.Connected := True;

    {
      if DM.MdfeConnection.Connected=true then
          begin
      //   DM.MdfeConnection.Connected := True;
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
          // DM.CD_Nota_FiscalTable.Open;
          end;


     }
end;

end.
