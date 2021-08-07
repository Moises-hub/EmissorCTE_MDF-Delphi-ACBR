unit UFrm_RelMDF_DT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, dxGDIPlusClasses, RLReport, Vcl.ExtCtrls,
  RzPanel;

type
  TFrm_RelMDF_DT = class(TForm)
    Mdfe_dadosTable: TSQLDataSet;
    Prov_dadosTable: TDataSetProvider;
    CD_Mdf_Dados: TClientDataSet;
    DS_CD_Dados: TDataSource;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDetailGrid1: TRLDetailGrid;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    CD_Mdf_DadosEMISSAO: TDateField;
    CD_Mdf_DadosENVIO: TDateField;
    CD_Mdf_DadosENCERRAMENTO: TDateField;
    CD_Mdf_DadosCHAVE: TStringField;
    CD_Mdf_DadosSTATUS: TStringField;
    CD_Mdf_DadosPLACA: TStringField;
    CD_Mdf_DadosTOMADOR: TStringField;
    CD_Mdf_DadosNUMERO: TIntegerField;
    CD_Mdf_DadosSERIE: TIntegerField;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel9: TRLLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzComboBox1: TRzComboBox;
    Button1: TButton;
    Label4: TLabel;
    RzComboBox2: TRzComboBox;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLImage1: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RzPanel1: TRzPanel;
    procedure FormShow(Sender: TObject);
    procedure emitir;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelMDF_DT: TFrm_RelMDF_DT;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_RelMDF_DT.Button1Click(Sender: TObject);
begin
emitir;
end;

procedure TFrm_RelMDF_DT.emitir;
var
datafiltro :String;
begin
      datafiltro:=RzComboBox2.Value;
      try
      RLImage1.Picture.LoadFromFile(dm.CD_MDFe_ConfigLOGO.AsString);
      except

      end;
      RLLabel12.Caption:='de '+RzComboBox2.Text+'  '+RzDateTimeEdit1.Text+' à '+RzDateTimeEdit2.Text;

        if RzComboBox1.value='4' then
           begin

            CD_Mdf_Dados.Close;
            CD_Mdf_Dados.CommandText:='select mdfe_dados.numero, ' +
                                      'mdfe_dados.serie, ' +
                                      'mdfe_dados.data as emissao, ' +
                                      'cast(mdfe_dados.mdf_d_envio as date) as envio, ' +
                                      'cast(mdfe_dados.d_encerra as date) as encerramento, ' +
                                      'mdfe_dados.chave, ' +
                                      '(case mdfe_dados.status when 0 then ''Em Edição''' +
                                      '                         when 1 then ''Ativo'' ' +
                                      '                         when 2 then ''Encerrado'' ' +
                                      '                         when 3 then ''cancelado'' ' +
                                      '                         end )as status, ' +
                                      'mdfe_dados.vei_placa as placa, ' +
                                      'clientes.nome as tomador ' +
                                      'from mdfe_dados ' +
                                      'left join clientes on(clientes.cpf_cnpj = mdfe_dados.cnpj_tomador) ' +
                                      'where ('+datafiltro+' >=:i and '+datafiltro+' <=:f) '+
                                      'order by mdfe_dados.mdf_d_envio';
            CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit1.Date;
            CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit2.Date;
           // CD_Mdf_Dados.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
            CD_Mdf_Dados.Open;
            if CD_Mdf_Dados.RecordCount<>0 then

                 RLReport1.PreviewModal
                 else
                 ShowMessage('Nenhum Registro Encontrado!');
           end
           else
           begin
            CD_Mdf_Dados.Close;
            CD_Mdf_Dados.CommandText:='select mdfe_dados.numero, ' +
                                      'mdfe_dados.serie, ' +
                                      'mdfe_dados.data as emissao, ' +
                                      'cast(mdfe_dados.mdf_d_envio as date) as envio, ' +
                                      'cast(mdfe_dados.d_encerra as date) as encerramento, ' +
                                      'mdfe_dados.chave, ' +
                                      '(case mdfe_dados.status when 0 then ''Em Edição''' +
                                      '                         when 1 then ''Ativo'' ' +
                                      '                         when 2 then ''Encerrado'' ' +
                                      '                         when 3 then ''cancelado'' ' +
                                      '                         end )as status, ' +
                                      'mdfe_dados.vei_placa as placa, ' +
                                      'clientes.nome as tomador ' +
                                      'from mdfe_dados ' +
                                      'left join clientes on(clientes.cpf_cnpj = mdfe_dados.cnpj_tomador) ' +
                                      'where ('+datafiltro+' >=:i and '+datafiltro+'<=:f) and status =:s order by mdfe_dados.mdf_d_envio';
            CD_Mdf_Dados.Params[0].AsDate:=RzDateTimeEdit1.Date;
            CD_Mdf_Dados.Params[1].AsDate:=RzDateTimeEdit2.Date;
            CD_Mdf_Dados.Params[2].AsInteger:=StrToInt(RzComboBox1.Value);
            CD_Mdf_Dados.Open;
            if CD_Mdf_Dados.RecordCount<>0 then

                 RLReport1.PreviewModal
                 else
                 ShowMessage('Nenhum Registro Encontrado!');
           end;
end;

procedure TFrm_RelMDF_DT.FormShow(Sender: TObject);
begin
RzDateTimeEdit1.AsDateTime:=date-30;
RzDateTimeEdit2.AsDateTime:=now;
RzComboBox1.ItemIndex:=2;
end;

end.



