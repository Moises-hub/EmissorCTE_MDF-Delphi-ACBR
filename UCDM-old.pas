unit UCDM;

interface

uses  Midas, MidasLib,
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, Vcl.AppEvnts,
  Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Datasnap.DSConnect;

type
  TCDM = class(TDataModule)
    Conexao: TSQLConnection;
    SQL_CTE_CONFIG: TSQLDataSet;
    Prov_CTE_CONFIG: TDataSetProvider;
    CD_CTE_CONFIG: TClientDataSet;
    DS_CTE_CONFIG: TDataSource;
    SQL_Emissor_CTE: TSQLDataSet;
    Prov_Emissor_CTE: TDataSetProvider;
    CD_Emissor_CTE: TClientDataSet;
    DS_CD_Emissor_CTE: TDataSource;
    DS_Query_NOperacao: TDataSource;
    Query_NOperacao: TSQLDataSet;
    Prov_NOperacao: TDataSetProvider;
    CD_N_Operacao: TClientDataSet;
    CD_N_OperacaoID_NATUREZA: TIntegerField;
    CD_N_OperacaoDESCRICAO: TStringField;
    CD_N_OperacaoDESCRICAO_NOTA: TStringField;
    CD_N_OperacaoCODIGO_FISCAL: TStringField;
    CD_N_OperacaoES: TSmallintField;
    CD_N_OperacaoESTOQUE_FISICO: TSmallintField;
    CD_N_OperacaoESTOQUE_FISCAL: TSmallintField;
    CD_N_OperacaoFINANCEIRO: TSmallintField;
    CD_N_OperacaoCALC_ICMS: TSmallintField;
    CD_N_OperacaoCALC_IPI: TSmallintField;
    CD_N_OperacaoCALC_ISS: TSmallintField;
    CD_N_OperacaoREDUCAO_ICMS: TSingleField;
    CD_N_OperacaoREDUCAO_IPI: TSingleField;
    CD_N_OperacaoTIPO: TSmallintField;
    CD_N_OperacaoPROCESSO: TSmallintField;
    CD_N_OperacaoCALC_COMISSAO: TSmallintField;
    CD_N_OperacaoICMS_ATIVO: TSmallintField;
    CD_N_OperacaoICMS: TSingleField;
    CD_N_OperacaoUF: TStringField;
    CD_N_OperacaoTRIBUTACAO: TSmallintField;
    CD_N_OperacaoOPERACAO: TSmallintField;
    CD_N_OperacaoID_TERMO_OBS: TIntegerField;
    CD_N_OperacaoTIPO_ENTREGA: TSmallintField;
    CD_N_OperacaoTIPO_DESTINO: TSmallintField;
    CD_N_OperacaoIPI_CST: TStringField;
    CD_N_OperacaoPIS_CST: TStringField;
    CD_N_OperacaoCOFINS_CST: TStringField;
    CD_N_OperacaoPIS: TSingleField;
    CD_N_OperacaoIPI: TSingleField;
    CD_N_OperacaoCOFINS: TSingleField;
    CD_N_OperacaoCSOSN: TStringField;
    CD_N_OperacaoCFOP_ATIVO: TSmallintField;
    CD_N_OperacaoICMS_SUB: TSingleField;
    CD_N_OperacaoORIGEM_MERCADORIA: TSmallintField;
    CD_N_OperacaoIPI_ENQLEG: TStringField;
    CD_N_OperacaoACOBERTAMENTO: TSmallintField;
    Clientes: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DS_Clientes: TDataSource;
    CD_Table_Clientes: TClientDataSet;
    Prov_Clientes: TDataSetProvider;
    DS_Clientes_2: TDataSource;
    CD_Clientes: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    CD_ClientesTIPO: TSmallintField;
    CD_ClientesID_CLIENTE: TFMTBCDField;
    CD_ClientesCPF_CNPJ: TStringField;
    CD_ClientesIE: TStringField;
    CD_ClientesNOME: TStringField;
    CD_ClientesNOME_FANTASIA: TStringField;
    CD_ClientesENDERECO: TStringField;
    CD_ClientesNUMERO: TStringField;
    CD_ClientesBAIRRO: TStringField;
    CD_ClientesCOMPLEMENTO: TStringField;
    CD_ClientesCEP: TStringField;
    CD_ClientesFONE_RES: TStringField;
    CD_ClientesUF: TStringField;
    CD_ClientesCIDADE: TStringField;
    CD_ClientesUF_1: TStringField;
    Prov_CTENFE: TDataSetProvider;
    DS_CTENFE: TDataSource;
    CD_CTENFE: TClientDataSet;
    Query_CTENFE: TSQLDataSet;
    CD_CTENFEID: TIntegerField;
    CD_CTENFESERIE: TStringField;
    CD_CTENFENUMERO: TStringField;
    CD_CTENFEEMISSAO: TStringField;
    CD_CTENFECFOP: TStringField;
    CD_CTENFEBASE_CALCULO_ICMS: TFloatField;
    CD_CTENFEVALOR_ICMS: TFloatField;
    CD_CTENFEBASE_CALCULO_SUBICMS: TFloatField;
    CD_CTENFEVALOR_SUBICMS: TFloatField;
    CD_CTENFEVALOR_DOS_PRODUTOS: TFloatField;
    CD_CTENFEVALOR_DA_NOTA: TFloatField;
    CD_CTENFEID_CTE: TIntegerField;
    Query_Veiculos: TSQLDataSet;
    Prov_veiculos: TDataSetProvider;
    DS_Veiculos: TDataSource;
    CD_veiculos: TClientDataSet;
    Query_Info_NF: TSQLDataSet;
    Prov_Info_NF: TDataSetProvider;
    DS_CD_Info_NF: TDataSource;
    CD_Info_NF: TClientDataSet;
    CD_Info_NFID_NOTA: TFMTBCDField;
    CD_Info_NFID_CLIENTE: TIntegerField;
    CD_Info_NFID_PEDIDO: TIntegerField;
    CD_Info_NFID_NATUREZA: TIntegerField;
    CD_Info_NFNOTA_FISCAL: TStringField;
    CD_Info_NFDATA_EMISSAO: TDateField;
    CD_Info_NFDATA_ES: TDateField;
    CD_Info_NFHORA: TTimeField;
    CD_Info_NFTR_NOME: TStringField;
    CD_Info_NFTR_ENDERECO: TStringField;
    CD_Info_NFQUANTIDADE: TSingleField;
    CD_Info_NFESPECIE: TStringField;
    CD_Info_NFMARCA: TStringField;
    CD_Info_NFFPC: TSmallintField;
    CD_Info_NFVEICULO_PLACA: TStringField;
    CD_Info_NFVEICULO_UF: TStringField;
    CD_Info_NFTR_CIDADE: TStringField;
    CD_Info_NFTR_UF: TStringField;
    CD_Info_NFNUMERO: TStringField;
    CD_Info_NFPESO_BRUTO: TSingleField;
    CD_Info_NFPESO_LIQUIDO: TSingleField;
    CD_Info_NFTR_CPF_CNPJ: TStringField;
    CD_Info_NFTR_IE: TStringField;
    CD_Info_NFSTATUS: TSmallintField;
    CD_Info_NFTIPO: TSmallintField;
    CD_Info_NFOBS: TBlobField;
    CD_Info_NFBASE_ICMS: TFMTBCDField;
    CD_Info_NFVALOR_ICMS: TFMTBCDField;
    CD_Info_NFVALOR_FRETE: TFMTBCDField;
    CD_Info_NFVALOR_SEGURO: TFMTBCDField;
    CD_Info_NFOUTROS: TFMTBCDField;
    CD_Info_NFBASE_ICMS_SUB: TFMTBCDField;
    CD_Info_NFVALOR_ICMS_SUB: TFMTBCDField;
    CD_Info_NFVALOR_IPI: TFMTBCDField;
    CD_Info_NFVALOR_PRODUTOS: TFMTBCDField;
    CD_Info_NFVALOR_TOTAL: TFMTBCDField;
    CD_Info_NFID_DEPTO: TIntegerField;
    CD_Info_NFPERCENTUAL1: TSingleField;
    CD_Info_NFPERCENTUAL2: TSingleField;
    CD_Info_NFID_PROPRIEDADE: TIntegerField;
    CD_Info_NFDESCONTO: TSingleField;
    CD_Info_NFACRESCIMO: TSingleField;
    CD_Info_NFDADOS: TMemoField;
    CD_Info_NFSERIE: TStringField;
    CD_Info_NFTIPO_NOTA: TSmallintField;
    CD_Info_NFID_ENTREGA: TIntegerField;
    CD_Info_NFTIPO_NF: TSmallintField;
    CD_Info_NFTIPO_DESCONTO: TSmallintField;
    CD_Info_NFTIPO_BASE: TSmallintField;
    CD_Info_NFNFE_RECIBO: TStringField;
    CD_Info_NFNFE_PROTOCOLO: TStringField;
    CD_Info_NFNFE_CHAVE: TStringField;
    CD_Info_NFNFE_DATA_ENVIO: TDateField;
    CD_Info_NFNFE_CHAVE_REF: TStringField;
    CD_Info_NFMODELO: TStringField;
    CD_Info_NFEXP_UF: TStringField;
    CD_Info_NFEXP_LOCAL: TStringField;
    CD_Info_NFTIPO_EMISSAO: TSmallintField;
    CD_Info_NFVALOR_PIS: TFMTBCDField;
    CD_Info_NFVALOR_COFINS: TFMTBCDField;
    CD_Info_NFCODE: TStringField;
    CD_Info_NFVALOR_PIS_SUB: TFMTBCDField;
    CD_Info_NFVALOR_COFINS_SUB: TFMTBCDField;
    CD_Info_NFCARTA_CORRECAO: TSmallintField;
    CD_Info_NFIMPOSTOS: TSingleField;
    CD_Info_NFVALOR_IMPOSTOS: TFMTBCDField;
    CD_Info_NFNFE_RETORNO: TSmallintField;
    CD_Info_NFVINCULADO: TStringField;
    CD_Info_NFNFE_TIPO_DESCRICAO: TSmallintField;
    CD_Info_NFEXP_NDRAW: TStringField;
    CD_Info_NFEXP_CHAVE_NFE: TStringField;
    CD_Info_NFVALOR_ICMS_FCP: TFMTBCDField;
    CD_Info_NFVALOR_ICMS_DST: TFMTBCDField;
    CD_Info_NFVALOR_ICMS_REM: TFMTBCDField;
    CD_Info_NFVALOR_IMPOSTOSF: TFMTBCDField;
    CD_Info_NFVALOR_IMPOSTOSE: TFMTBCDField;
    CD_Info_NFVALOR_IMPOSTOSM: TFMTBCDField;
    CD_Info_NFNFE_DATA_HORA_NULA: TSmallintField;
    CD_Info_NFNFE_TIPO_CR: TSmallintField;
    CD_Info_NFNFP_UF: TStringField;
    CD_Info_NFNFP_AAMM: TStringField;
    CD_Info_NFNFP_CPF_CNPJ: TStringField;
    CD_Info_NFNFP_MOD: TStringField;
    CD_Info_NFNFP_SERIE: TStringField;
    CD_Info_NFNFP_NF: TStringField;
    CD_Info_NFNFP_IE: TStringField;
    CD_Info_NFCODIGO_FISCAL: TStringField;
    ID: TSQLQuery;
    IDGEN_ID: TLargeintField;
    CD_Table_ClientesTIPO: TSmallintField;
    CD_Table_ClientesID_CLIENTE: TFMTBCDField;
    CD_Table_ClientesCPF_CNPJ: TStringField;
    CD_Table_ClientesPESSOA: TSmallintField;
    CD_Table_ClientesIE: TStringField;
    CD_Table_ClientesNOME: TStringField;
    CD_Table_ClientesNOME_FANTASIA: TStringField;
    CD_Table_ClientesENDERECO: TStringField;
    CD_Table_ClientesNUMERO: TStringField;
    CD_Table_ClientesBAIRRO: TStringField;
    CD_Table_ClientesCOMPLEMENTO: TStringField;
    CD_Table_ClientesCEP: TStringField;
    CD_Table_ClientesFONE_RES: TStringField;
    CD_Table_ClientesUF: TStringField;
    CD_Table_ClientesCIDADE: TStringField;
    CTE_condutorTable: TSQLDataSet;
    prov_CTE_condutorTable: TDataSetProvider;
    CD_CTE_condutorTable: TClientDataSet;
    DS_CTE_condutorTable: TDataSource;
    CD_CTE_condutorTableID: TIntegerField;
    CD_CTE_condutorTableID_CTE: TIntegerField;
    CD_CTE_condutorTableNOME: TStringField;
    CD_CTE_condutorTableCPF: TStringField;
    CTE_VALOR_ADICIONAL: TSQLDataSet;
    PROV_CTE_ValorAdicional: TDataSetProvider;
    CD_CTE_ValorAdicional: TClientDataSet;
    DS_CTE_ValorAdicional: TDataSource;
    CD_CTE_ValorAdicionalNOME: TStringField;
    CD_CTE_ValorAdicionalVALOR: TFloatField;
    CD_CTE_ValorAdicionalID_CTE: TIntegerField;
    CD_CTE_ValorAdicionalID: TIntegerField;
    Query_Partilha: TSQLQuery;
    Query_PartilhaICMS2: TSingleField;
    Prov_CTE_NFES: TDataSetProvider;
    DS_Prov_CTE_NFES: TDataSource;
    CD_CTE_NFES: TClientDataSet;
    Query_NFES: TSQLDataSet;
    CD_CTE_NFESID_CTE: TIntegerField;
    CD_CTE_NFESCHAVE: TStringField;
    CD_CTE_NFESNUMERO: TIntegerField;
    CD_CTENFEMODELO_NF: TStringField;
    Prov_CTEOutroDoc: TDataSetProvider;
    DS_CTEOutroDoc: TDataSource;
    CD_CTEOutroDoc: TClientDataSet;
    Query_CTEOutroDoc: TSQLDataSet;
    CD_CTEOutroDocID_CTE: TIntegerField;
    CD_CTEOutroDocTIPO: TStringField;
    CD_CTEOutroDocDESCRICAO: TStringField;
    CD_CTEOutroDocNUMERO: TStringField;
    CD_CTEOutroDocEMISSAO: TStringField;
    CD_CTEOutroDocVALOR: TFloatField;
    CD_veiculosID: TIntegerField;
    CD_veiculosID_CTE: TIntegerField;
    CD_veiculosPLACA: TStringField;
    CD_veiculosRENAVAN: TStringField;
    CD_veiculosUF: TStringField;
    CD_veiculosTARA: TFMTBCDField;
    CD_veiculosCAPACIDADE: TFMTBCDField;
    CD_veiculosVEI_CAPC_M3: TFMTBCDField;
    CD_veiculosPROPRI_DO_VEIC: TStringField;
    CD_veiculosTIPO_RODADO: TStringField;
    CD_veiculosTIPO_CARROCERIA: TStringField;
    CD_veiculosTIPO_VEICULO: TStringField;
    Query_NF_Itens: TSQLQuery;
    Query_NF_ItensSUM: TFloatField;
    Query_NF_ItensUNIDADE: TStringField;
    DS_CTE_UNIDADE: TDataSource;
    CD_CTE_UNIDADE: TClientDataSet;
    CD_CTE_UNIDADEUN: TStringField;
    CD_CTE_UNIDADEQNT: TLargeintField;
    SQLDataSet2: TSQLDataSet;
    DataSetProvider2: TDataSetProvider;
    SQL_CD_CTE_UNNFA: TSQLDataSet;
    Prov_CD_CTE_UNNFA: TDataSetProvider;
    DS_CD_CTE_UNNFA: TDataSource;
    CD_CTE_UNNFA: TClientDataSet;
    CD_CTE_UNNFAID_CTE: TIntegerField;
    CD_CTE_UNNFACHAVE_NFE: TStringField;
    CD_CTE_UNNFAUN: TStringField;
    CD_CTE_UNNFAQNT: TFMTBCDField;
    Prov_Carga: TDataSetProvider;
    DS_Carga: TDataSource;
    Cd_Carga: TClientDataSet;
    Cd_CargaID_CTE: TIntegerField;
    Cd_CargaCOD_UNIDADE: TStringField;
    Cd_CargaTIPO_UNIDADE: TStringField;
    Cd_CargaQNT: TFMTBCDField;
    Query_Carga: TSQLDataSet;
    SQL_CTE_UN: TSQLDataSet;
    Prov_CTE_UN: TDataSetProvider;
    DS_CTE_UN: TDataSource;
    CD_CTE_UN: TClientDataSet;
    CD_CTE_UNUN: TStringField;
    CD_CTE_UNID_CTE: TIntegerField;
    CD_CTE_UNCHAVE_NFE: TStringField;
    CD_CTE_CONFIGID: TIntegerField;
    CD_CTE_CONFIGCERTIFICADO: TStringField;
    CD_CTE_CONFIGLOGO: TStringField;
    CD_CTE_CONFIGPATCH: TStringField;
    CD_CTE_CONFIGUF: TIntegerField;
    CD_CTE_CONFIGMODODACTE: TIntegerField;
    CD_CTE_CONFIGAMBIENTE: TIntegerField;
    CD_CTE_CONFIGFORMAEMISSAO: TIntegerField;
    CD_CTE_CONFIGMODELO: TStringField;
    CD_CTE_CONFIGSERIE: TIntegerField;
    CD_CTE_CONFIGNUMERO: TIntegerField;
    CD_CTE_CONFIGVXML: TStringField;
    CD_CTE_CONFIGESTADO: TStringField;
    CD_Emissor_CTEID: TIntegerField;
    CD_Emissor_CTENUMCTE: TFMTBCDField;
    CD_Emissor_CTESTATUS: TIntegerField;
    CD_Emissor_CTEID_NATUREZA: TIntegerField;
    CD_Emissor_CTEDATA_EMISSAO: TDateField;
    CD_Emissor_CTEMODAL: TStringField;
    CD_Emissor_CTETIPO_SERV: TStringField;
    CD_Emissor_CTEINDIETOMA: TStringField;
    CD_Emissor_CTEINICODIBGE: TIntegerField;
    CD_Emissor_CTEFIMCODIBGE: TIntegerField;
    CD_Emissor_CTEID_TOMADOR: TIntegerField;
    CD_Emissor_CTETOTAL_PREST: TFloatField;
    CD_Emissor_CTEVALOR_RECEBER: TFloatField;
    CD_Emissor_CTEVAL_TOT_TRIB: TFloatField;
    CD_Emissor_CTECST: TStringField;
    CD_Emissor_CTEREDBC: TFloatField;
    CD_Emissor_CTEBASECALCULO: TFloatField;
    CD_Emissor_CTEPERC_ICMS: TFloatField;
    CD_Emissor_CTEINFADFISCO: TStringField;
    CD_Emissor_CTEPIS: TFloatField;
    CD_Emissor_CTECOFINS: TFloatField;
    CD_Emissor_CTEIR: TFloatField;
    CD_Emissor_CTEINSS: TFloatField;
    CD_Emissor_CTECSLL: TFloatField;
    CD_Emissor_CTEDESCSERV: TStringField;
    CD_Emissor_CTECARGA: TFloatField;
    CD_Emissor_CTEID_CLIENTE: TIntegerField;
    CD_Emissor_CTESERIE: TIntegerField;
    CD_Emissor_CTEMODELO: TStringField;
    CD_Emissor_CTENUMERO: TIntegerField;
    CD_Emissor_CTECHAVE: TStringField;
    CD_Emissor_CTEINIUF: TStringField;
    CD_Emissor_CTEINICIDADE: TStringField;
    CD_Emissor_CTEFIMUF: TStringField;
    CD_Emissor_CTEFIMCIDADE: TStringField;
    CD_Emissor_CTECFOP: TStringField;
    CD_Emissor_CTEPESSOA: TIntegerField;
    CD_Emissor_CTECPF_CNPJ: TStringField;
    CD_Emissor_CTEIE: TStringField;
    CD_Emissor_CTENOME: TStringField;
    CD_Emissor_CTENOME_FANTASIA: TStringField;
    CD_Emissor_CTEENDERECO: TStringField;
    CD_Emissor_CTEBAIRRO: TStringField;
    CD_Emissor_CTECOMPLEMENTO: TStringField;
    CD_Emissor_CTECEP: TStringField;
    CD_Emissor_CTEUF: TStringField;
    CD_Emissor_CTECIDADE: TStringField;
    CD_Emissor_CTEFONE_RES: TStringField;
    CD_Emissor_CTEN_ENDERECO: TStringField;
    CD_Emissor_CTEREMETENTE: TIntegerField;
    CD_Emissor_CTEREM_PESSOA: TIntegerField;
    CD_Emissor_CTEREM_CPF_CNPJ: TStringField;
    CD_Emissor_CTEREM_IE: TStringField;
    CD_Emissor_CTEREM_NOME: TStringField;
    CD_Emissor_CTEREM_NOME_FANTASIA: TStringField;
    CD_Emissor_CTEREM_ENDERECO: TStringField;
    CD_Emissor_CTEREM_BAIRRO: TStringField;
    CD_Emissor_CTEREM_COMPLEMENTO: TStringField;
    CD_Emissor_CTEREM_CEP: TStringField;
    CD_Emissor_CTEREM_UF: TStringField;
    CD_Emissor_CTEREM_COD_IBGE: TIntegerField;
    CD_Emissor_CTEREM_CIDADE: TStringField;
    CD_Emissor_CTEREM_FONE_RES: TStringField;
    CD_Emissor_CTEFORMA_PAGA: TStringField;
    CD_Emissor_CTECTE_REFERENCIA: TStringField;
    CD_Emissor_CTECTE_COMPLEMENTAR: TStringField;
    CD_Emissor_CTEPRODUTOS_PREDOMINANTE: TStringField;
    CD_Emissor_CTEPRODUTO_VALOR_DACARGA: TFloatField;
    CD_Emissor_CTEPRODUTO_OUTRA_CARACTER: TStringField;
    CD_Emissor_CTERNTC: TStringField;
    CD_Emissor_CTECIOT: TStringField;
    CD_Emissor_CTEINDIC_LOTA: TStringField;
    CD_Emissor_CTEDATA_PREV: TDateField;
    CD_Emissor_CTEDESTINATARIO: TIntegerField;
    CD_Emissor_CTEDEST_PESSOA: TIntegerField;
    CD_Emissor_CTEDEST_CPF_CNPJ: TStringField;
    CD_Emissor_CTEDEST_IE: TStringField;
    CD_Emissor_CTEDEST_NOME: TStringField;
    CD_Emissor_CTEDEST_NOME_FANTASIA: TStringField;
    CD_Emissor_CTEDEST_ENDERECO: TStringField;
    CD_Emissor_CTEDEST_BAIRRO: TStringField;
    CD_Emissor_CTEDEST_COMPLEMENTO: TStringField;
    CD_Emissor_CTEDEST_CEP: TStringField;
    CD_Emissor_CTEDEST_UF: TStringField;
    CD_Emissor_CTEDEST_CIDADE: TStringField;
    CD_Emissor_CTEDEST_FONE_RES: TStringField;
    CD_Emissor_CTEDEST_COD_IBGE: TIntegerField;
    CD_Emissor_CTEHORA: TTimeField;
    CD_Emissor_CTENATUREZA_OPERACAO: TStringField;
    CD_Emissor_CTETOMCOD_IBGE: TIntegerField;
    CD_Emissor_CTEVALORICMS: TFloatField;
    CD_Emissor_CTECREDBC: TFloatField;
    CD_Emissor_CTECONTRIBNOME: TStringField;
    CD_Emissor_CTECONTRBTEXT: TStringField;
    CD_Emissor_CTEFISCOCAMPO: TStringField;
    CD_Emissor_CTEFISCOTEXT: TStringField;
    CD_Emissor_CTESUFRAMA: TStringField;
    CD_Emissor_CTEADVALOREM: TFloatField;
    CD_Emissor_CTEPEDAGIO: TFloatField;
    CD_Emissor_CTEOUTRASDESP: TFloatField;
    CD_Emissor_CTEDEST_NUMERO: TStringField;
    CD_Emissor_CTEREM_NUMERO: TStringField;
    CD_Emissor_CTEPROTOCOLO: TStringField;
    CD_CTE_CONFIGID_EMPRESA: TIntegerField;
    CD_Emissor_CTEID_EMPRESA: TIntegerField;
    CD_Table_ClientesCODIGO_IBGE: TStringField;
    DS_regioes: TDataSource;
    Regioes: TSQLDataSet;
    Prov_Regioes: TDataSetProvider;
    CD_Regioes: TClientDataSet;
    CD_RegioesID_REGIAO: TFMTBCDField;
    CD_RegioesCIDADE: TStringField;
    CD_RegioesDISTRITO: TStringField;
    CD_RegioesUF: TStringField;
    CD_RegioesID_EMPRESA: TIntegerField;
    CD_RegioesUSER_UP: TIntegerField;
    CD_RegioesDATA_UP: TSQLTimeStampField;
    CD_RegioesLOCAL: TStringField;
    CD_RegioesCODIGO_IBGE: TStringField;
    CD_RegioesDATA_RP: TSQLTimeStampField;
    CD_RegioesID_PAIS: TIntegerField;
    CD_RegioesPAIS: TStringField;
    CD_Emissor_CTEOBS: TMemoField;
    CD_Carta: TClientDataSet;
    SQL_Carta_Correcao: TSQLDataSet;
    Prov_CTE_Carta_Correcao: TDataSetProvider;
    CD_CartaID: TIntegerField;
    CD_CartaCHAVE: TStringField;
    CD_CartaEVENTO: TDateField;
    CD_CartaCPF_CNPJ: TStringField;
    CD_CartaSEQUENCIA: TIntegerField;
    DS_CD_CartaCorrecao: TDataSource;
    SQL_GCarta_Correcao: TSQLDataSet;
    DS_CD_GCarta_Correcao: TDataSource;
    Prov_GCarta_Correcao: TDataSetProvider;
    CD_GCarta_Correcao: TClientDataSet;
    CD_GCarta_CorrecaoID_CCORRACAO: TIntegerField;
    CD_GCarta_CorrecaoGRUPOALTERADO: TStringField;
    CD_GCarta_CorrecaoCAMPO: TStringField;
    CD_GCarta_CorrecaoVALOR: TStringField;
    CD_GCarta_CorrecaoITEM: TIntegerField;
    CD_Emissor_CTESEGURADORA: TStringField;
    CD_Emissor_CTEAPOLICE: TStringField;
    CD_Emissor_CTEAVERBACAO: TStringField;
    Tab_CTE_Percurso: TSQLTable;
    Tab_CTE_PercursoID: TIntegerField;
    Tab_CTE_PercursoID_CTE: TIntegerField;
    Tab_CTE_PercursoUF: TStringField;
    DS_CD_CTE_Percurso: TDataSource;
    PROV_CTE_Percurso: TDataSetProvider;
    CD_CTE_Percurso: TClientDataSet;
    CD_CTE_PercursoID: TIntegerField;
    CD_CTE_PercursoID_CTE: TIntegerField;
    CD_CTE_PercursoUF: TStringField;
    CD_Emissor_CTERESPONSAVEL: TIntegerField;
    CD_Emissor_CTENROREGESTADUAL: TStringField;
    CD_CTE_CONFIGSERIE_OS: TIntegerField;
    CD_CTE_CONFIGNUMERO_OS: TStringField;
    Tab_CTE_OCC: TSQLTable;
    Prov_CTE_OCC: TDataSetProvider;
    CD_CTE_OCC: TClientDataSet;
    DS_CD_CTE_OCC: TDataSource;
    CD_CTE_OCCID: TIntegerField;
    CD_CTE_OCCID_CTE: TIntegerField;
    CD_CTE_OCCSERIE: TIntegerField;
    CD_CTE_OCCNOCC: TIntegerField;
    CD_CTE_OCCDEMI: TDateField;
    CD_Emissor_CTEGLOBALIZADO: TIntegerField;
    Cd_CargaID: TIntegerField;
    CD_Emissor_CTEEXP_PESSOA: TIntegerField;
    CD_Emissor_CTEEXP_CPF_CNPJ: TStringField;
    CD_Emissor_CTEEXP_IE: TStringField;
    CD_Emissor_CTEEXP_NOME: TStringField;
    CD_Emissor_CTEEXP_NOME_FANTASIA: TStringField;
    CD_Emissor_CTEEXP_ENDERECO: TStringField;
    CD_Emissor_CTEEXP_BAIRRO: TStringField;
    CD_Emissor_CTEEXP_COMPLEMENTO: TStringField;
    CD_Emissor_CTEEXP_CEP: TStringField;
    CD_Emissor_CTEEXP_UF: TStringField;
    CD_Emissor_CTEEXP_COD_IBGE: TIntegerField;
    CD_Emissor_CTEEXP_CIDADE: TStringField;
    CD_Emissor_CTEREC_PESSOA: TIntegerField;
    CD_Emissor_CTEREC_CPF_CNPJ: TStringField;
    CD_Emissor_CTEREC_IE: TStringField;
    CD_Emissor_CTEREC_NOME: TStringField;
    CD_Emissor_CTEREC_NOME_FANTASIA: TStringField;
    CD_Emissor_CTEREC_ENDERECO: TStringField;
    CD_Emissor_CTEREC_BAIRRO: TStringField;
    CD_Emissor_CTEREC_COMPLEMENTO: TStringField;
    CD_Emissor_CTEREC_CEP: TStringField;
    CD_Emissor_CTEREC_UF: TStringField;
    CD_Emissor_CTEREC_COD_IBGE: TIntegerField;
    CD_Emissor_CTEREC_CIDADE: TStringField;
    CD_Emissor_CTEREC_NUMERO: TFMTBCDField;
    CD_Emissor_CTEEXP_NUMERO: TFMTBCDField;
    CD_Emissor_CTEREC_ENUM: TStringField;
    CD_Emissor_CTEEXP_ENUM: TStringField;
    CD_CTE_UNQNT: TFMTBCDField;
    procedure ConexaoAfterConnect(Sender: TObject);
    procedure CD_Emissor_CTEAfterInsert(DataSet: TDataSet);
    procedure CD_CTENFEAfterInsert(DataSet: TDataSet);
    procedure CD_CTENFEBeforeInsert(DataSet: TDataSet);
    procedure CD_CTENFEAfterPost(DataSet: TDataSet);
    procedure CD_Emissor_CTECFOPChange(Sender: TField);
    procedure CD_Emissor_CTEAfterOpen(DataSet: TDataSet);
    procedure CD_CTENFEVALOR_ICMSChange(Sender: TField);
    procedure CD_CTEOutroDocAfterInsert(DataSet: TDataSet);
    procedure CD_CTE_SeguroBeforeInsert(DataSet: TDataSet);
    procedure CD_veiculosBeforeInsert(DataSet: TDataSet);
    procedure CD_veiculosAfterInsert(DataSet: TDataSet);
    procedure CD_Emissor_CTEBeforeInsert(DataSet: TDataSet);
    procedure CD_CTE_condutorTableBeforeInsert(DataSet: TDataSet);
    procedure CD_CTE_condutorTableAfterInsert(DataSet: TDataSet);
    procedure CD_Emissor_CTEBeforePost(DataSet: TDataSet);
    procedure CD_CTE_ValorAdicionalBeforeInsert(DataSet: TDataSet);
    procedure CD_CTE_ValorAdicionalAfterInsert(DataSet: TDataSet);
    procedure CD_CTE_ValorAdicionalAfterPost(DataSet: TDataSet);
    procedure CD_N_OperacaoAfterInsert(DataSet: TDataSet);
    procedure CD_N_OperacaoBeforeInsert(DataSet: TDataSet);
    procedure CD_RegioesBeforeInsert(DataSet: TDataSet);
    procedure CD_RegioesAfterInsert(DataSet: TDataSet);
    procedure CD_CartaBeforeInsert(DataSet: TDataSet);
    procedure CD_CartaAfterInsert(DataSet: TDataSet);
    procedure CD_CTE_ValorAdicionalAfterDelete(DataSet: TDataSet);
    procedure CD_CTE_PercursoBeforeInsert(DataSet: TDataSet);
    procedure CD_CTE_PercursoAfterInsert(DataSet: TDataSet);
    procedure CD_CTE_OCCBeforeInsert(DataSet: TDataSet);
    procedure CD_CTE_OCCAfterInsert(DataSet: TDataSet);
    procedure CD_CTE_CONFIGBeforePost(DataSet: TDataSet);
    procedure CD_CTE_UNBeforePost(DataSet: TDataSet);
  private

  public
    procedure calcular(sender: TObject);
  end;

var
  CDM: TCDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDM;

{$R *.dfm}

procedure TCDM.calcular(sender: TObject);
begin




       if CD_Emissor_CTE.State in [dsInsert,dsEdit] then
          begin
           if dm.EmitenteREG_TRIBUTARIO.Value <> 3 then
              begin
                    CD_Emissor_CTEBASECALCULO.Value:=CD_Emissor_CTEVALOR_RECEBER.AsFloat+CD_Emissor_CTEOUTRASDESP.AsFloat;
                if (CD_Emissor_CTEPERC_ICMS.AsFloat = 0) then
                  begin
                   CD_Emissor_CTEPERC_ICMS.AsFloat :=17;

                  CD_Emissor_CTEVALORICMS.AsFloat:= CD_Emissor_CTEBASECALCULO.AsFloat * (CD_Emissor_CTEPERC_ICMS.AsFloat/100)
                  end
                  else

                  CD_Emissor_CTEVALORICMS.AsFloat:= CD_Emissor_CTEBASECALCULO.AsFloat * (CD_Emissor_CTEPERC_ICMS.AsFloat /100);


              end
              else
              if CD_Emissor_CTEBASECALCULO.AsFloat<>0 then
                 begin
                   if CD_Emissor_CTEPERC_ICMS.AsFloat = 0 then
                        begin
                        CD_Emissor_CTEPERC_ICMS.AsFloat :=17;
                        CD_Emissor_CTEVALORICMS.AsFloat:= CD_Emissor_CTEBASECALCULO.AsFloat * (CD_Emissor_CTEPERC_ICMS.AsFloat/100)
                        end
                        else

                        CD_Emissor_CTEVALORICMS.AsFloat:= CD_Emissor_CTEBASECALCULO.AsFloat * (CD_Emissor_CTEPERC_ICMS.AsFloat/100);



                 end;




                  CD_Emissor_CTETOTAL_PREST.value:=CD_Emissor_CTEVALOR_RECEBER.AsFloat+CD_Emissor_CTEOUTRASDESP.AsFloat+CD_Emissor_CTEVALORICMS.AsFloat;
          end;




end;

procedure TCDM.CD_CartaAfterInsert(DataSet: TDataSet);
begin
CD_CartaID.AsInteger:=IDGEN_ID.AsInteger;
CD_CartaCHAVE.AsString:=CD_Emissor_CTECHAVE.AsString;
CD_CartaCPF_CNPJ.AsString:=DM.EmitenteCNPJ.AsString;
CD_CartaSEQUENCIA.AsInteger:=1;
end;

procedure TCDM.CD_CartaBeforeInsert(DataSet: TDataSet);
begin
id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_CCORRECAO,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_CTENFEAfterInsert(DataSet: TDataSet);
begin
      CD_CTENFEID.AsInteger:=IDGEN_ID.AsInteger;
      CD_CTENFEMODELO_NF.AsString:='NF Modelo 01/1A e Avulsa';

      CD_CTE_UNNFA.Open;
end;

procedure TCDM.CD_CTENFEAfterPost(DataSet: TDataSet);
begin                     {
CD_CTENFE.Close;
      CD_CTENFE.CommandText:='select * from CTE_NFE where ID_CTE ='+ CD_CTENFEID.asstring;
      CD_CTENFE.open;    }
end;

procedure TCDM.CD_CTENFEBeforeInsert(DataSet: TDataSet);
begin



      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_NFE_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_CTENFEVALOR_ICMSChange(Sender: TField);
begin
if CD_CTENFE.State in[dsInsert,dsEdit] then

CD_CTENFEVALOR_DA_NOTA.AsFloat:=CD_CTENFEVALOR_DOS_PRODUTOS.AsFloat+CD_CTENFEVALOR_ICMS.AsFloat+CD_CTENFEVALOR_SUBICMS.AsFloat;
end;

procedure TCDM.CD_CTEOutroDocAfterInsert(DataSet: TDataSet);
begin
CD_CTEOutroDocTIPO.AsString:='Declaração';
end;

procedure TCDM.CD_CTE_condutorTableAfterInsert(DataSet: TDataSet);
begin
CD_CTE_condutorTableID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TCDM.CD_CTE_condutorTableBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_CONDUTOR_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_CTE_CONFIGBeforePost(DataSet: TDataSet);
begin
cdm.CD_CTE_CONFIGID.AsInteger:=dm.EmitenteID_EMPRESA.AsInteger;
end;

procedure TCDM.CD_CTE_OCCAfterInsert(DataSet: TDataSet);
begin
     CD_CTE_OCCID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TCDM.CD_CTE_OCCBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_VEIC_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_CTE_PercursoAfterInsert(DataSet: TDataSet);
begin
     CD_CTE_PercursoID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TCDM.CD_CTE_PercursoBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_UF_PERCURSO_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_CTE_SeguroBeforeInsert(DataSet: TDataSet);
begin

 id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_SEGURO_ID,1) from rdb$database');
      id.open;


end;

procedure TCDM.CD_CTE_UNBeforePost(DataSet: TDataSet);
begin
CD_CTE_UNID_CTE.AsInteger:=CD_Emissor_CTEID.AsInteger;
end;

procedure TCDM.CD_CTE_ValorAdicionalAfterDelete(DataSet: TDataSet);

var
valor : real;
begin
    valor := 0;
       CDM.CD_CTE_ValorAdicional.First;
       while not CDM.CD_CTE_ValorAdicional.Eof do
        begin
            valor :=valor+CDM.CD_CTE_ValorAdicionalVALOR.AsFloat;

            CDM.CD_CTE_ValorAdicional.Next;
        end;
        CDM.CD_Emissor_CTEOUTRASDESP.AsFloat:=valor;

end;

procedure TCDM.CD_CTE_ValorAdicionalAfterInsert(DataSet: TDataSet);
begin
            CD_CTE_ValorAdicionalID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TCDM.CD_CTE_ValorAdicionalAfterPost(DataSet: TDataSet);
var
valor : real;
begin
    valor := 0;
       CDM.CD_CTE_ValorAdicional.First;
       while not CDM.CD_CTE_ValorAdicional.Eof do
        begin
            valor :=valor+CDM.CD_CTE_ValorAdicionalVALOR.AsFloat;

            CDM.CD_CTE_ValorAdicional.Next;
        end;
        CDM.CD_Emissor_CTEOUTRASDESP.AsFloat:=valor;

end;

procedure TCDM.CD_CTE_ValorAdicionalBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_VALORADICIONAL_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_Emissor_CTEAfterInsert(DataSet: TDataSet);
begin



     CD_Emissor_CTEID.AsInteger:=IDGEN_ID.AsInteger;
     // CD_Emissor_CTENUMCTE.value:=cdm.CD_CTE_CONFIGNUMERO.AsInteger+1;
     CD_Emissor_CTESTATUS.AsInteger:=0;
     CD_Emissor_CTEDATA_EMISSAO.AsDateTime:=now;
     CD_Emissor_CTEHORA.AsDateTime:=Time;
     CD_Emissor_CTEGLOBALIZADO.AsInteger:=1;
     CD_CTE_Percurso.Open;
     CD_Emissor_CTEFORMA_PAGA.AsInteger:=0;
     CD_Emissor_CTEMODAL.AsString:='0';


//     CD_Emissor_CTEREMETENTE.AsInteger:=2;
     CD_Emissor_CTEREMETENTE.AsInteger:=0;
     CD_Emissor_CTEDESTINATARIO.AsInteger:=0;
     CD_Emissor_CTEINIUF.AsString:= dm.EmitenteUF.AsString;
     CD_Emissor_CTEINICODIBGE.asstring:=dm.EmitenteCODIGO_IBGE.AsString;
     CD_Emissor_CTEVALOR_RECEBER.AsFloat:=0;
     CD_Emissor_CTEID_EMPRESA.AsInteger:=dm.EmitenteID_EMPRESA.AsInteger;

      cd_veiculos.open;


end;

procedure TCDM.CD_Emissor_CTEAfterOpen(DataSet: TDataSet);
begin
       cdm.CD_N_Operacao.Open;
       cdm.CD_CTE_NFES.Open;
       cdm.CD_CTENFE.Open;
       cdm.CD_CTEOutroDoc.Open;
        cdm.CD_CTE_condutorTable.Open;
       cdm.CD_veiculos.Open;

       cdm.CD_CTE_ValorAdicional.Open;
       cdm.CD_CTE_OCC.Open;
end;

procedure TCDM.CD_Emissor_CTEBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_DADOS_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_Emissor_CTEBeforePost(DataSet: TDataSet);
begin
     CD_N_Operacao.Locate('CODIGO_FISCAL',CD_Emissor_CTECFOP.AsString,[loCaseInsensitive]);

     CDM.CD_Emissor_CTECST.AsString:=CDM.CD_N_OperacaoORIGEM_MERCADORIA.AsString+CDM.CD_N_OperacaoTRIBUTACAO.AsString;

       if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger = 0 then       //emitente
            BEGIN
                   cdm.CD_Emissor_CTEpessoa.clear;
                  cdm.CD_Emissor_CTECPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEIE.clear;
                  cdm.CD_Emissor_CTENOME.clear;
                  cdm.CD_Emissor_CTENOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEENDERECO.clear;
                  cdm.CD_Emissor_CTEBAIRRO.clear;
                  cdm.CD_Emissor_CTECOMPLEMENTO.clear;
                  cdm.CD_Emissor_CTECEP.clear;
                  cdm.CD_Emissor_CTEUF.clear;
                  cdm.CD_Emissor_CTECIDADE.clear;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.clear;
                  cdm.CD_Emissor_CTEFONE_RES.clear;





                  cdm.CD_Emissor_CTEpessoa.asinteger:=2;
                  cdm.CD_Emissor_CTECPF_CNPJ.AsString:=DM.EmitenteCNPJ.AsString;
                  cdm.CD_Emissor_CTEIE.AsString:=DM.EmitenteIE.AsString;
                  cdm.CD_Emissor_CTENOME.AsString:=dm.EmitenteRAZAO_SOCIAL.ASSTRING;
                  cdm.CD_Emissor_CTENOME_FANTASIA.AsString:=dm.EmitenteNOME_EMPRESA.AsString;
                  cdm.CD_Emissor_CTEENDERECO.AsString:=dm.EmitenteENDERECO.AsString;
                  cdm.CD_Emissor_CTEBAIRRO.AsString:=DM.EmitenteBAIRRO.AsString;
                  cdm.CD_Emissor_CTECOMPLEMENTO.AsString:=DM.EmitenteCOMPLEMENTO.AsString;
                  cdm.CD_Emissor_CTECEP.AsString:=DM.EmitenteCEP.AsString;
                  cdm.CD_Emissor_CTEUF.AsString:=DM.EmitenteUF.AsString;
                  cdm.CD_Emissor_CTECIDADE.AsString:=DM.EmitenteCIDADE.AsString;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.AsString:=DM.EmitenteCODIGO_IBGE.AsString;
                  cdm.CD_Emissor_CTEFONE_RES.AsString:=DM.EmitenteFONE1.AsString;


            END
            ELSE
              if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger = 1 then          //remetente
            BEGIN
                    cdm.CD_Emissor_CTEpessoa.clear;
                  cdm.CD_Emissor_CTECPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEIE.clear;
                  cdm.CD_Emissor_CTENOME.clear;
                  cdm.CD_Emissor_CTENOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEENDERECO.clear;
                  cdm.CD_Emissor_CTEBAIRRO.clear;
                  cdm.CD_Emissor_CTECOMPLEMENTO.clear;
                  cdm.CD_Emissor_CTECEP.clear;
                  cdm.CD_Emissor_CTEUF.clear;
                  cdm.CD_Emissor_CTECIDADE.clear;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.clear;
                  cdm.CD_Emissor_CTEFONE_RES.clear;

                  cdm.CD_Emissor_CTEpessoa.asSTRING:=cdm.CD_Emissor_CTEREM_pessoa.asSTRING;
                  cdm.CD_Emissor_CTECPF_CNPJ.AsString:=cdm.CD_Emissor_CTEREM_CPF_CNPJ.AsString;
                  cdm.CD_Emissor_CTEIE.AsString:=cdm.CD_Emissor_CTEREM_IE.AsString;
                  cdm.CD_Emissor_CTENOME.AsString:=cdm.CD_Emissor_CTEREM_NOME.ASSTRING;
                  cdm.CD_Emissor_CTENOME_FANTASIA.AsString:=cdm.CD_Emissor_CTEREM_NOME_FANTASIA.AsString;
                  cdm.CD_Emissor_CTEENDERECO.AsString:=cdm.CD_Emissor_CTEREM_ENDERECO.AsString;
                  cdm.CD_Emissor_CTEBAIRRO.AsString:=cdm.CD_Emissor_CTEREM_BAIRRO.AsString;
                  cdm.CD_Emissor_CTECOMPLEMENTO.AsString:=cdm.CD_Emissor_CTEREM_COMPLEMENTO.AsString;
                  cdm.CD_Emissor_CTECEP.AsString:=cdm.CD_Emissor_CTEREM_CEP.AsString;
                  cdm.CD_Emissor_CTEUF.AsString:=cdm.CD_Emissor_CTEREM_UF.AsString;
                  cdm.CD_Emissor_CTECIDADE.AsString:=cdm.CD_Emissor_CTEREM_CIDADE.AsString;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.AsString:=cdm.CD_Emissor_CTEREM_COD_IBGE.AsString;

                  cdm.CD_Emissor_CTEFONE_RES.AsString:=cdm.CD_Emissor_CTEREM_FONE_RES.AsString;


            END
            ELSE
              if CDM.CD_Emissor_CTEID_TOMADOR.AsInteger = 2 then    //destinatario
            BEGIN
                    cdm.CD_Emissor_CTEpessoa.clear;
                  cdm.CD_Emissor_CTECPF_CNPJ.clear;
                  cdm.CD_Emissor_CTEIE.clear;
                  cdm.CD_Emissor_CTENOME.clear;
                  cdm.CD_Emissor_CTENOME_FANTASIA.clear;
                  cdm.CD_Emissor_CTEENDERECO.clear;
                  cdm.CD_Emissor_CTEBAIRRO.clear;
                  cdm.CD_Emissor_CTECOMPLEMENTO.clear;
                  cdm.CD_Emissor_CTECEP.clear;
                  cdm.CD_Emissor_CTEUF.clear;
                  cdm.CD_Emissor_CTECIDADE.clear;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.clear;
                  cdm.CD_Emissor_CTEFONE_RES.clear;

                  cdm.CD_Emissor_CTEpessoa.asSTRING:=cdm.CD_Emissor_CTEDEST_pessoa.asSTRING;
                  cdm.CD_Emissor_CTECPF_CNPJ.AsString:=cdm.CD_Emissor_CTEDEST_CPF_CNPJ.AsString;
                  cdm.CD_Emissor_CTEIE.AsString:=cdm.CD_Emissor_CTEDEST_IE.AsString;
                  cdm.CD_Emissor_CTENOME.AsString:=cdm.CD_Emissor_CTEDEST_NOME.ASSTRING;
                  cdm.CD_Emissor_CTENOME_FANTASIA.AsString:=cdm.CD_Emissor_CTEDEST_NOME_FANTASIA.AsString;
                  cdm.CD_Emissor_CTEENDERECO.AsString:=cdm.CD_Emissor_CTEDEST_ENDERECO.AsString;
                  cdm.CD_Emissor_CTEBAIRRO.AsString:=cdm.CD_Emissor_CTEDEST_BAIRRO.AsString;
                  cdm.CD_Emissor_CTECOMPLEMENTO.AsString:=cdm.CD_Emissor_CTEDEST_COMPLEMENTO.AsString;
                  cdm.CD_Emissor_CTECEP.AsString:=cdm.CD_Emissor_CTEDEST_CEP.AsString;
                  cdm.CD_Emissor_CTEUF.AsString:=cdm.CD_Emissor_CTEDEST_UF.AsString;
                  cdm.CD_Emissor_CTECIDADE.AsString:=cdm.CD_Emissor_CTEDEST_CIDADE.AsString;
                  cdm.CD_Emissor_CTETOMCOD_IBGE.AsString:=cdm.CD_Emissor_CTEDEST_COD_IBGE.AsString;
                  cdm.CD_Emissor_CTEFONE_RES.AsString:=cdm.CD_Emissor_CTEDEST_FONE_RES.AsString;


            END;


end;

procedure TCDM.CD_Emissor_CTECFOPChange(Sender: TField);
begin
if CD_N_OperacaoORIGEM_MERCADORIA.AsString = '' then
  CD_Emissor_CTECST.AsString:='0'+CD_N_OperacaoTRIBUTACAO.AsString
  ELSE
  CD_Emissor_CTECST.AsString:=CD_N_OperacaoORIGEM_MERCADORIA.AsString+CD_N_OperacaoTRIBUTACAO.AsString;
end;

procedure TCDM.CD_N_OperacaoAfterInsert(DataSet: TDataSet);
begin
     CD_N_OperacaoID_NATUREZA.AsInteger:=IDGEN_ID.AsInteger;
     CD_N_OperacaoOPERACAO.AsInteger:=11;
     CD_N_OperacaoCFOP_ATIVO.AsInteger:=0;
     CD_N_OperacaoES.AsInteger:=1;
     CD_N_OperacaoTIPO.AsInteger:=1;
     CD_N_OperacaoPROCESSO.AsInteger:=1;
     CD_N_OperacaoACOBERTAMENTO.AsInteger:=0;
     CD_N_OperacaoORIGEM_MERCADORIA.AsInteger:=0;

end;

procedure TCDM.CD_N_OperacaoBeforeInsert(DataSet: TDataSet);
begin
      id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(NATUREZA_OPERACAO,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_RegioesAfterInsert(DataSet: TDataSet);
begin
CD_RegioesID_REGIAO.AsInteger:=IDGEN_ID.AsInteger;
CD_RegioesID_PAIS.AsInteger:=1058;
CD_RegioesPAIS.AsString:='BRASIL';
end;

procedure TCDM.CD_RegioesBeforeInsert(DataSet: TDataSet);
begin
  id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(REGIOES,1) from rdb$database');
      id.open;
end;

procedure TCDM.CD_veiculosAfterInsert(DataSet: TDataSet);
begin
   CD_veiculosID.AsInteger:=IDGEN_ID.AsInteger;
end;

procedure TCDM.CD_veiculosBeforeInsert(DataSet: TDataSet);
begin
id.Close;
      id.SQL.Clear;
      id.SQL.Add('select gen_id(GEN_CTE_VEIC_ID,1) from rdb$database');
      id.open;
end;

procedure TCDM.ConexaoAfterConnect(Sender: TObject);
begin
{dm.Emitente.Open;
CD_CTE_CONFIG.Open;
CD_Emissor_CTE.Open;
CD_Clientes.Open;}


end;

end.
