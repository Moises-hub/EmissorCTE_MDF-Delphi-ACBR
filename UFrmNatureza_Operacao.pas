unit UFrmNatureza_Operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel, System.Actions, Vcl.ActnList;

type
  TFrmNatureza_Operacao = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_novo: TAction;
    Act_Alterar: TAction;
    Act_Sair: TAction;
    RzPanel2: TRzPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_novoExecute(Sender: TObject);
    procedure Act_AlterarExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNatureza_Operacao: TFrmNatureza_Operacao;

implementation

{$R *.dfm}

uses UCDM, UFrmCad_NOperacao, UFrmPrincipal;

procedure TFrmNatureza_Operacao.Act_AlterarExecute(Sender: TObject);
begin
if CDM.CD_N_Operacao.RecordCount<>0 then
   begin
    FrmCad_NOperacao:=TFrmCad_NOperacao.Create(self);
    CDM.CD_N_Operacao.edit;
    FrmCad_NOperacao.ShowModal;
    FrmCad_NOperacao.free;
   end;
end;

procedure TFrmNatureza_Operacao.Act_novoExecute(Sender: TObject);
begin
    FrmCad_NOperacao:=TFrmCad_NOperacao.Create(self);
    CDM.CD_N_Operacao.insert;
    FrmCad_NOperacao.ShowModal;
    FrmCad_NOperacao.free;
end;

procedure TFrmNatureza_Operacao.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrmNatureza_Operacao.Button1Click(Sender: TObject);
begin
//close;
end;

procedure TFrmNatureza_Operacao.Edit1Change(Sender: TObject);
begin
      if Length(Edit1.Text)<>0 then
         BEGIN
            CDM.CD_N_Operacao.Close;
            CDM.CD_N_Operacao.CommandText:='select *  from NATUREZA_OPERACAO where operacao = 11 and id_empresa =:i ';
            case ComboBox1.ItemIndex of
                 0:CDM.CD_N_Operacao.CommandText:=CDM.CD_N_Operacao.CommandText+'and CODIGO_FISCAL like :b';
                 1:CDM.CD_N_Operacao.CommandText:=CDM.CD_N_Operacao.CommandText+'and DESCRICAO LIKE :b';
                 2:CDM.CD_N_Operacao.CommandText:=CDM.CD_N_Operacao.CommandText+'and DESCRICAO_NOTA LIKE :b';
            end;
             CDM.CD_N_Operacao.Params[0].AsString:='%'+Edit1.Text+'%';
             CDM.CD_N_Operacao.Params[1].Asinteger:=Frm_Principal.empresa;
             CDM.CD_N_Operacao.OPEN;
         END;
end;

procedure TFrmNatureza_Operacao.FormShow(Sender: TObject);
begin
cdm.CD_N_Operacao.Open;
end;

end.
