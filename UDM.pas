unit UDM;

interface

uses  IniFiles, Midas, MidasLib,  registry,
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, IBX.IBDatabase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

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
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    Query_UF: TClientDataSet;
    CD_Nfe_mdfTableCOD_MUN: TIntegerField;
    CD_Mdf_DadosD_ENCERRA: TSQLTimeStampField;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID_CLIENTE: TFMTBCDField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1ID_CONVENIO: TIntegerField;
    ClientDataSet1NASCIMENTO: TDateField;
    ClientDataSet1ID_REGIAO: TIntegerField;
    ClientDataSet1CLASSIFICACAO: TSmallintField;
    ClientDataSet1LIMITE: TFMTBCDField;
    ClientDataSet1CPF_CNPJ: TStringField;
    ClientDataSet1PESSOA: TSmallintField;
    ClientDataSet1IE: TStringField;
    ClientDataSet1RG: TStringField;
    ClientDataSet1ORGAO_EMISSOR: TStringField;
    ClientDataSet1DATA_CADASTRO: TDateField;
    ClientDataSet1ULTIMA_COMPRA: TDateField;
    ClientDataSet1EMAIL: TStringField;
    ClientDataSet1ENVIA_EMAIL: TSmallintField;
    ClientDataSet1ENVIA_MALA: TSmallintField;
    ClientDataSet1VISITA: TSmallintField;
    ClientDataSet1OBS: TBlobField;
    ClientDataSet1SEXO: TSmallintField;
    ClientDataSet1CODIGO_ANTERIOR: TIntegerField;
    ClientDataSet1TIPO: TSmallintField;
    ClientDataSet1SALDO: TFMTBCDField;
    ClientDataSet1NATURALIDADE: TStringField;
    ClientDataSet1LOGIN: TStringField;
    ClientDataSet1SENHA: TStringField;
    ClientDataSet1DIA_VENCIMENTO: TSmallintField;
    ClientDataSet1DIAS_ANTES: TSmallintField;
    ClientDataSet1NOME_FANTASIA: TStringField;
    ClientDataSet1ID_VENDEDOR: TIntegerField;
    ClientDataSet1SUBSTITUTO: TSmallintField;
    ClientDataSet1ATUALIZADO: TSmallintField;
    ClientDataSet1CLIENTE_ANTERIOR: TSmallintField;
    ClientDataSet1IM: TStringField;
    ClientDataSet1EMISSAO_RG: TDateField;
    ClientDataSet1SITE: TStringField;
    ClientDataSet1ID_EMPRESA: TIntegerField;
    ClientDataSet1USER_UP: TIntegerField;
    ClientDataSet1DATA_UP: TSQLTimeStampField;
    ClientDataSet1DATA_AF: TSQLTimeStampField;
    ClientDataSet1AUT_CONDICIONAL: TSmallintField;
    ClientDataSet1REGISTRO: TStringField;
    ClientDataSet1ID_CLASSE: TIntegerField;
    ClientDataSet1ENVIA_RELATO: TSmallintField;
    ClientDataSet1DATA_RP: TSQLTimeStampField;
    ClientDataSet1USER_IN: TIntegerField;
    ClientDataSet1NUMERO: TStringField;
    ClientDataSet1SELECIONA: TSmallintField;
    ClientDataSet1ID_EMISSOR: TIntegerField;
    ClientDataSet1TAG: TSmallintField;
    ClientDataSet1VALIDADE: TDateField;
    ClientDataSet1VALIDADE_LIMITE: TDateField;
    ClientDataSet1VENDA_VISTA: TSmallintField;
    ClientDataSet1VENDA_PRAZO: TSmallintField;
    ClientDataSet1NUMERO_CONSULTA: TStringField;
    ClientDataSet1EMAIL2: TStringField;
    ClientDataSet1CODE: TStringField;
    ClientDataSet1AN_DATA_HORA: TSQLTimeStampField;
    ClientDataSet1AN_FATURAMENTO: TFMTBCDField;
    ClientDataSet1AN_ATRASO: TIntegerField;
    ClientDataSet1AN_CADASTRO: TIntegerField;
    ClientDataSet1AN_VENCIDO: TIntegerField;
    ClientDataSet1AN_INATIVO: TIntegerField;
    ClientDataSet1ID_TABELA: TIntegerField;
    ClientDataSet1ENVIA_SMS: TSmallintField;
    ClientDataSet1STATUS_ANTERIOR: TSmallintField;
    ClientDataSet1EMAIL3: TStringField;
    DataSource2: TDataSource;
    MDF_Cad_Usu: TSQLDataSet;
    Prov_Cad_Usu: TDataSetProvider;
    DS_Cli_Cad_Usu: TDataSource;
    Cli_Cad_Usu: TClientDataSet;
    MDF_Log: TSQLDataSet;
    Prov_MDF_Log: TDataSetProvider;
    DS_Cad_Log: TDataSource;
    Cli_Cad_Log: TClientDataSet;
    Cli_Cad_LogDATA: TDateField;
    Cli_Cad_LogHORA: TTimeField;
    Cli_Cad_LogPROCESSO: TStringField;
    Cli_Cad_LogDOC: TIntegerField;
    Cli_Cad_LogCOMPUTADOR: TStringField;
    Cli_Cad_LogDADOS: TMemoField;
    Cli_Cad_LogID: TIntegerField;
    Cli_Cad_LogNOME: TStringField;
    Cli_Cad_LogID_USER: TIntegerField;
    SQL_MDF_Seguro: TSQLDataSet;
    Prov_Seguro: TDataSetProvider;
    DS_MDF_Seguro: TDataSource;
    CD_MDF_Seguro: TClientDataSet;
    CD_MDF_SeguroID: TIntegerField;
    CD_MDF_SeguroID_MDF: TIntegerField;
    CD_MDF_SeguroRESPSEGURO: TStringField;
    CD_MDF_SeguroSEGURADORA: TStringField;
    CD_MDF_SeguroCPFCNPJ: TStringField;
    CD_MDF_SeguroNAPOLICE: TStringField;
    CD_MDF_SeguroCNPJ: TStringField;
    SQL_MDF_Averbacao: TSQLDataSet;
    Prov_MDF_Averb: TDataSetProvider;
    DS_Seguro_Averbacao: TDataSource;
    CD_MDF_Averbacao: TClientDataSet;
    CD_MDF_AverbacaoID: TIntegerField;
    CD_MDF_AverbacaoID_SEGURO: TIntegerField;
    CD_MDF_AverbacaoAVERBA: TStringField;
    Cli_Cad_LogID_EMPRESA: TIntegerField;
    CD_Mdf_DadosID_EMPRESA: TIntegerField;
    Query_Delete: TSQLQuery;
    EmitenteCODIGO_IBGE: TStringField;
    EmitenteCIDADE: TStringField;
    EmitenteUF: TStringField;
    Cli_Cad_LogMDF_CTE: TIntegerField;
    DS_Script: TSQLDataSet;
    Query: TSQLQuery;
    CD_Mdf_DadosVEI_PLACA: TStringField;
    CD_Mdfe_v_reboqueTablePLACA: TStringField;
    CD_Mdf_DadosTIPO_EMISSOR: TIntegerField;
    CD_Mdf_DadosCNPJ_TOMADOR: TStringField;
    SQL_CTE: TSQLDataSet;
    Prov_SQL_CTE: TDataSetProvider;
    DS_CDMDF_CTE: TDataSource;
    CD_MDF_CTE: TClientDataSet;
    CD_MDF_CTEID: TIntegerField;
    CD_MDF_CTEID_MDFE: TIntegerField;
    CD_MDF_CTECHAVE_CTE: TStringField;
    CD_MDF_CTEVALOR: TFloatField;
    CD_MDF_CTEPESO: TFloatField;
    CD_MDF_CTECOD_IBGE: TIntegerField;
    CTE_MDF: TSQLDataSet;
    DS_CD_CTE_MDF: TDataSource;
    Prov_CTE_MDF: TDataSetProvider;
    CD_CTE_MDF: TClientDataSet;
    CD_CTE_MDFMODULO: TIntegerField;
    CD_CTE_MDFID_EMPRESA: TIntegerField;
    CD_CTE_MDFCHAVE: TStringField;
    CD_CTE_MDFULTIMA_ATUALIZA: TSQLTimeStampField;
    CD_CTE_MDFVERSAO: TStringField;
    SQL_Veiculos: TSQLDataSet;
    Prov_Veiculos: TDataSetProvider;
    CD_Veiculos: TClientDataSet;
    DS_Veiculos: TDataSource;
    CD_VeiculosID: TIntegerField;
    CD_VeiculosCOD_INT_VEIC: TStringField;
    CD_VeiculosRENAVAM: TStringField;
    CD_VeiculosTIPO_CARROCERIA: TStringField;
    CD_VeiculosPLACA: TStringField;
    CD_VeiculosTARA: TFMTBCDField;
    CD_VeiculosTIPO_RODADO: TStringField;
    CD_VeiculosUF_LICENCIAMENTO: TStringField;
    SQL_CADMOTORISTA: TSQLDataSet;
    PROV_CADMOTORISTA: TDataSetProvider;
    CD_CADMOTORISTA: TClientDataSet;
    DS_MOTORISTA: TDataSource;
    CD_CADMOTORISTAID: TIntegerField;
    CD_CADMOTORISTAID_VEICULO: TIntegerField;
    CD_CADMOTORISTAID_MOTORISTA: TIntegerField;
    CD_CADMOTORISTANOME: TStringField;
    CD_CADMOTORISTACPF_CNPJ: TStringField;
    Query_Motorista: TSQLQuery;
    Query_MotoristaID: TIntegerField;
    Query_MotoristaID_VEICULO: TIntegerField;
    Query_MotoristaID_MOTORISTA: TIntegerField;
    CD_VeiculosCAPACIDADE: TFMTBCDField;
    CD_VeiculosCAPM3: TFMTBCDField;
    Cli_Cad_UsuID_FUNCIONARIO: TIntegerField;
    Cli_Cad_UsuNOME: TStringField;
    Cli_Cad_UsuENDERECO: TStringField;
    Cli_Cad_UsuBAIRRO: TStringField;
    Cli_Cad_UsuCOMPLEMENTO: TStringField;
    Cli_Cad_UsuCEP: TStringField;
    Cli_Cad_UsuCPF: TStringField;
    Cli_Cad_UsuID_REGIAO: TIntegerField;
    Cli_Cad_UsuCARGO: TStringField;
    Cli_Cad_UsuID_GRUPO: TIntegerField;
    Cli_Cad_UsuSALARIO: TFMTBCDField;
    Cli_Cad_UsuTIPO: TSmallintField;
    Cli_Cad_UsuRG: TStringField;
    Cli_Cad_UsuCNH: TStringField;
    Cli_Cad_UsuNASCIMENTO: TDateField;
    Cli_Cad_UsuDATA_ADMISSAO: TDateField;
    Cli_Cad_UsuDATA_DEMISSAO: TDateField;
    Cli_Cad_UsuFORMACAO: TSmallintField;
    Cli_Cad_UsuESTADO_CIVIL: TSmallintField;
    Cli_Cad_UsuFONE: TStringField;
    Cli_Cad_UsuCELULAR: TStringField;
    Cli_Cad_UsuOBS: TBlobField;
    Cli_Cad_UsuSENHA: TStringField;
    Cli_Cad_UsuCOMISSAO: TSingleField;
    Cli_Cad_UsuCOM_PEDIDO: TSmallintField;
    Cli_Cad_UsuCOM_VENDEDOR: TSmallintField;
    Cli_Cad_UsuCOM_CATEGORIA: TSmallintField;
    Cli_Cad_UsuCOM_PRODUTO: TSmallintField;
    Cli_Cad_UsuMETA_DIARIA: TFMTBCDField;
    Cli_Cad_UsuMETA_MENSAL: TFMTBCDField;
    Cli_Cad_UsuSTATUS: TSmallintField;
    Cli_Cad_UsuID_CAIXA: TIntegerField;
    Cli_Cad_UsuCOMISSAO2: TSingleField;
    Cli_Cad_UsuPESSOA: TSmallintField;
    Cli_Cad_UsuREGISTRO: TStringField;
    Cli_Cad_UsuREGISTRO_CR: TStringField;
    Cli_Cad_UsuREGISTRO_VT: TStringField;
    Cli_Cad_UsuEMAIL: TStringField;
    Cli_Cad_UsuCOM_PEDIDOI: TSmallintField;
    Cli_Cad_UsuID_EMPRESA: TIntegerField;
    Cli_Cad_UsuCOMISSAOS: TSingleField;
    Cli_Cad_UsuAPELIDO: TStringField;
    Cli_Cad_UsuID_MOBILE: TIntegerField;
    CD_VeiculosRNTRC: TStringField;
    CD_Nfe_mdfTableID_REGIAO: TIntegerField;
    FDConnection1: TFDConnection;
    CD_Nfe_mdfTableCHAVE_REF: TStringField;
    Proc_MDF_CIOT: TFDStoredProc;
    Query_MDFE_Ciot: TFDQuery;
    Query_MDFE_CiotCIOT: TStringField;
    Query_MDFE_CiotCIOT_CNPJ: TStringField;
    DS_Query_MDFE_Ciot: TDataSource;
    Query_MDFE_CiotX: TStringField;
    CD_MDFe_Config: TClientDataSet;
    CD_MDFe_ConfigFORM_EMISSAO: TIntegerField;
    CD_MDFe_ConfigLOGO: TStringField;
    CD_MDFe_ConfigPATHSALVAR: TStringField;
    CD_MDFe_ConfigIDUF: TIntegerField;
    CD_MDFe_ConfigNUMERO: TIntegerField;
    CD_MDFe_ConfigSERIE: TIntegerField;
    CD_MDFe_ConfigMODELO: TStringField;
    CD_MDFe_ConfigTIPOAMB: TIntegerField;
    CD_MDFe_ConfigVERSAOXML: TStringField;
    CD_MDFe_ConfigCERTIFICADO: TStringField;
    CD_MDFe_ConfigTIPODAMDFE: TIntegerField;
    CD_MDFe_ConfigVISUALIZAR: TStringField;
    CD_MDFe_ConfigID_EMPRESA: TIntegerField;
    CD_Nota_FiscalTable: TClientDataSet;
    Query_Log: TFDQuery;
    Rel_NF: TFDQuery;
    Rel_NFN_NF: TIntegerField;
    Rel_NFPESO: TBCDField;
    Rel_NFVALOR: TFloatField;
    CD_Mdf_DadosPRODPRED_TPCARGA: TIntegerField;
    CD_Mdf_DadosPRODPRED_DESCRICAO: TStringField;
    CD_Mdf_DadosPRODPRED_CEAN: TStringField;
    CD_Mdf_DadosPRODPRED_NCM: TStringField;
    CD_Mdf_DadosPRODPRED_CEPCARRE: TStringField;
    CD_Mdf_DadosPRODPRED_CEPDESCARRE: TStringField;
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
    procedure CD_Mdfe_v_reboqueTableBeforePost(DataSet: TDataSet);
    procedure CD_Mdf_DadosBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Cli_Cad_UsuAfterDelete(DataSet: TDataSet);
    procedure Cli_Cad_UsuBeforeInsert(DataSet: TDataSet);
    procedure Cli_Cad_UsuAfterInsert(DataSet: TDataSet);
    procedure Cli_Cad_LogAfterInsert(DataSet: TDataSet);
    procedure Cli_Cad_UsuAfterPost(DataSet: TDataSet);
    procedure MdfeConnectionAfterConnect(Sender: TObject);
    procedure CD_MDFe_ConfigAfterPost(DataSet: TDataSet);
    procedure CD_MDF_SeguroAfterInsert(DataSet: TDataSet);
    procedure CD_MDF_SeguroBeforeInsert(DataSet: TDataSet);
    procedure CD_MDF_AverbacaoAfterInsert(DataSet: TDataSet);
    procedure CD_MDF_AverbacaoBeforeInsert(DataSet: TDataSet);
    procedure CD_MDF_SeguroBeforeDelete(DataSet: TDataSet);
    procedure CD_MDFe_ConfigAfterInsert(DataSet: TDataSet);
    procedure CD_Mdf_DadosBeforeDelete(DataSet: TDataSet);
    procedure CD_MDF_CTEBeforeInsert(DataSet: TDataSet);
    procedure CD_MDF_CTEAfterInsert(DataSet: TDataSet);
    procedure CD_Mdf_DadosAfterOpen(DataSet: TDataSet);
    procedure CD_VeiculosBeforeInsert(DataSet: TDataSet);
    procedure CD_CADMOTORISTABeforeInsert(DataSet: TDataSet);
    procedure CD_VeiculosAfterInsert(DataSet: TDataSet);
    procedure CD_CADMOTORISTAAfterInsert(DataSet: TDataSet);
    procedure CD_CADMOTORISTAAfterDelete(DataSet: TDataSet);
    procedure CD_Nfe_mdfTableAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFrmPrincipal;

{$R *.dfm}

procedure TDM.CD_CADMOTORISTAAfterDelete(DataSet: TDataSet);
begin
CD_CADMOTORISTA.ApplyUpdates(0)
end;

procedure TDM.CD_CADMOTORISTAAfterInsert(DataSet: TDataSet);
begin
  CD_CADMOTORISTAID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TDM.CD_CADMOTORISTABeforeInsert(DataSet: TDataSet);
begin
  id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(GEN_MDFE_CADMOTORISTA_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdfe_condutorTableAfterInsert(DataSet: TDataSet);
begin
    CD_Mdfe_condutorTableID.Value:=IDGEN_ID.Value;
end;

procedure TDM.CD_Mdfe_condutorTableBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(GEN_MDFE_CONDUTOR_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_MDFe_ConfigAfterInsert(DataSet: TDataSet);
begin
      CD_MDFe_ConfigSERIE.AsInteger:=1;
      CD_MDFe_ConfigNUMERO.AsInteger:=1;
      CD_MDFe_ConfigMODELO.AsString:='58';
      CD_MDFe_ConfigTIPOAMB.AsInteger:=2;
      CD_MDFe_ConfigVERSAOXML.AsString:='3.00';
      CD_MDFe_ConfigTIPODAMDFE.AsInteger:=0;
      CD_MDFe_ConfigVISUALIZAR.AsString:='TRUE';
      CD_MDFe_ConfigIDUF.AsInteger:=50;
      CD_MDFe_ConfigID_EMPRESA.AsInteger:=EmitenteID_EMPRESA.AsInteger;
end;

procedure TDM.CD_MDFe_ConfigAfterPost(DataSet: TDataSet);
begin
   CD_MDFe_Config.ApplyUpdates(0);
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

procedure TDM.CD_Mdfe_v_reboqueTableBeforePost(DataSet: TDataSet);
begin
   if CD_Mdfe_v_reboqueTableCAPACIDADE.Value=-1 then
      CD_Mdfe_v_reboqueTableCAPACIDADE.Value:=0;
end;

procedure TDM.CD_MDF_AverbacaoAfterInsert(DataSet: TDataSet);
begin
CD_MDF_AverbacaoID.AsInteger:=IDGEN_ID.AsInteger;
CD_MDF_AverbacaoID_SEGURO.AsInteger:=CD_MDF_SeguroID.AsInteger;
end;

procedure TDM.CD_MDF_AverbacaoBeforeInsert(DataSet: TDataSet);
begin
 id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(GEN_MDF_SEGURO_AVERB_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_MDF_CTEAfterInsert(DataSet: TDataSet);
begin
     CD_MDF_CTEID.AsInteger:=IDGEN_ID.AsInteger;;
end;

procedure TDM.CD_MDF_CTEBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(gen_mdf_doccte,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Mdf_DadosAfterInsert(DataSet: TDataSet);
begin
     CD_Mdf_DadosID.Value:=IDGEN_ID.Value;
     CD_Mdf_DadosTIPO_EMISSOR.AsInteger:=0;
     CD_Mdf_DadosID_NFE.AsInteger:=1; // 1-Normal 2-Cotigencia  Ide.tpEmis
     CD_Mdf_DadosDATA.AsDateTime:=date;
     CD_Mdf_DadosHORA.AsDateTime:=time;
     CD_Mdf_DadosSTATUS.AsInteger:=0;
     CD_Mdf_DadosSERIE.Value:=CD_MDFe_ConfigSERIE.Value;
     CD_Mdf_DadosMODELO.Value:=StrToInt(CD_MDFe_ConfigMODELO.Value);
     CD_Mdf_DadosID_EMPRESA.AsInteger:=EmitenteID_EMPRESA.AsInteger;
     CD_MDF_Seguro.Open;
     CD_MDF_CTE.Open;

end;

procedure TDM.CD_Mdf_DadosAfterOpen(DataSet: TDataSet);
begin
CD_MDF_CTE.Open;
end;

procedure TDM.CD_Mdf_DadosBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin    {
if dm.CD_MDFe_ConfigNUMERO.Value <> dm.CD_Mdf_DadosNUMERO.Value then
                 begin
                  dm.CD_MDFe_Config.Edit;
                  dm.CD_MDFe_ConfigNUMERO.Value:=dm.CD_Mdf_DadosNUMERO.Value;
                  dm.CD_MDFe_Config.post;
                  dm.CD_MDFe_Config.ApplyUpdates(0);
                 end;     }

                 if dm.CD_MDF_CTE.RecordCount<>0 then
                    dm.CD_MDF_CTE.ApplyUpdates(0);

end;

procedure TDM.CD_Mdf_DadosBeforeDelete(DataSet: TDataSet);
begin
     Query_Delete.Close;
     Query_Delete.sql.Clear;
     Query_Delete.sql.add('delete from MDFE_CONDUTOR where ID_MDFE ='+dm.CD_Mdf_DadosID.AsString);
     Query_Delete.ExecSQL();

      Query_Delete.Close;
     Query_Delete.sql.Clear;
     Query_Delete.sql.add('delete from MDFE_L_CARREGAMENTO where ID_MDFE ='+dm.CD_Mdf_DadosID.AsString);
     Query_Delete.ExecSQL();

      Query_Delete.Close;
     Query_Delete.sql.Clear;
     Query_Delete.sql.add('delete from MDFE_L_DESCARREGAMENTO where ID_MDFE ='+dm.CD_Mdf_DadosID.AsString);
     Query_Delete.ExecSQL();

      Query_Delete.Close;
     Query_Delete.sql.Clear;
     Query_Delete.sql.add('delete from NFE_MDF where ID_MDFE ='+dm.CD_Mdf_DadosID.AsString);
     Query_Delete.ExecSQL();

     dm.CD_MDF_Seguro.open;
     dm.CD_MDF_Seguro.First;
     while not dm.CD_MDF_Seguro.eof do
       begin
         dm.CD_MDF_Seguro.delete;
         dm.CD_MDF_Seguro.next;
       end;
end;

procedure TDM.CD_Mdf_DadosBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(MDFE_DADOS,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_MDF_SeguroAfterInsert(DataSet: TDataSet);
begin
CD_MDF_SeguroID.AsInteger:=IDGEN_ID.AsInteger;
CD_MDF_SeguroRESPSEGURO.AsString:='rsEmitente';
end;

procedure TDM.CD_MDF_SeguroBeforeDelete(DataSet: TDataSet);
begin

   dm.CD_MDF_Averbacao.close;
   dm.CD_MDF_Averbacao.CommandText:='select * from MDF_SEGURO_AVERB where ID_SEGURO ='+dm.CD_MDF_SeguroID.AsString;
   dm.CD_MDF_Averbacao.open;

   dm.CD_MDF_Averbacao.first;
   while not dm.CD_MDF_Averbacao.eof do
     begin
      dm.CD_MDF_Averbacao.delete;
      dm.CD_MDF_Averbacao.next;

     end;


end;

procedure TDM.CD_MDF_SeguroBeforeInsert(DataSet: TDataSet);
begin
 id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(GEN_MDF_SEGURO_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.CD_Nfe_mdfTableAfterDelete(DataSet: TDataSet);
begin
  DM.CD_Nfe_mdfTable.ApplyUpdates(0);
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

procedure TDM.CD_VeiculosAfterInsert(DataSet: TDataSet);
begin
  CD_VeiculosID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TDM.CD_VeiculosBeforeInsert(DataSet: TDataSet);
begin
   id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(GEN_MDFE_VEICULO_ID,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.Cli_Cad_LogAfterInsert(DataSet: TDataSet);
begin
 Cli_Cad_LogID.AsInteger:=IDGEN_ID.Value;
 Cli_Cad_LogID_EMPRESA.AsInteger:=EmitenteID_EMPRESA.AsInteger;

end;

procedure TDM.Cli_Cad_UsuAfterDelete(DataSet: TDataSet);
begin
     DM.Cli_Cad_Usu.ApplyUpdates(0);
end;

procedure TDM.Cli_Cad_UsuAfterInsert(DataSet: TDataSet);
begin
  Cli_Cad_UsuID_fUNCIONARIO.AsInteger:=IDGEN_ID.Value;
  Cli_Cad_UsuSTATUS.AsInteger:=0;
end;

procedure TDM.Cli_Cad_UsuAfterPost(DataSet: TDataSet);
begin
    Cli_Cad_Usu.ApplyUpdates(0);
end;

procedure TDM.Cli_Cad_UsuBeforeInsert(DataSet: TDataSet);
begin
    id.close;
    id.SQL.Clear;
    id.SQL.Add('select gen_id(FUNCIONARIOS,1) from rdb$database');
    id.ExecSQL();
    id.Open;
end;

procedure TDM.MdfeConnectionAfterConnect(Sender: TObject);
begin
           FDConnection1.Params.Values['DataBase'] := dm.MdfeConnection.Params.Values['DataBase'];
           FDConnection1.Params.Values['user_name'] :=dm.MdfeConnection.Params.Values['user_name'];
           FDConnection1.Params.Values['password'] :=dm.MdfeConnection.Params.Values['password'];
//FDConnection1.Params.Values['database']:=MdfeConnection.Params.Values['database'];
FDConnection1.Open();



         {

       if CD_Mdf_DadosVEI_PLACA.Size = 7 then
   begin
    id.SQL.Clear;
    id.SQL.add('ALTER TABLE mdfe_dados ALTER vei_placa TYPE VARCHAR(8)');
    id.ExecSQL();

    CD_Mdf_DadosVEI_PLACA.Size := 8;

   end;




if CD_Mdfe_v_reboqueTablePLACA.Size = 7 then
   begin
    id.SQL.Clear;
    id.SQL.add('ALTER TABLE MDFE_V_REBOQUE ALTER PLACA TYPE VARCHAR(8)');
    id.ExecSQL();

    CD_Mdfe_v_reboqueTablePLACA.Size := 8;

   end;   }

end;

end.
