unit UFrm_Regiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  RzPanel, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList;

type
  TFrm_Regiao = class(TForm)
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Act_novo: TAction;
    Act_Alterar: TAction;
    Act_Sair: TAction;
    RzPanel3: TRzPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    RzPanel2: TRzPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
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
  Frm_Regiao: TFrm_Regiao;

implementation

{$R *.dfm}

uses UCDM, UDM, UFrmCad_Regiao, UFrmPrincipal;

procedure TFrm_Regiao.Act_AlterarExecute(Sender: TObject);
begin
    if CDM.CD_Regioes.RecordCount<>0 then
       begin
          FrmCad_Regiao:=TFrmCad_Regiao.Create(SELF);
          CDM.CD_Regioes.edit;
          FrmCad_Regiao.ShowModal;
          FrmCad_Regiao.destroy;
       end;
end;

procedure TFrm_Regiao.Act_novoExecute(Sender: TObject);
begin
FrmCad_Regiao:=TFrmCad_Regiao.Create(SELF);
CDM.CD_Regioes.Insert;
FrmCad_Regiao.ShowModal;
FrmCad_Regiao.destroy;
end;

procedure TFrm_Regiao.Act_SairExecute(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Regiao.Edit1Change(Sender: TObject);
begin
      if Length(Edit1.Text)<>0 then
         BEGIN
         CDM.CD_Regioes.Close;
         CDM.CD_Regioes.CommandText:='SELECT FIRST 50 * FROM REGIOES ';
           case ComboBox1.ItemIndex of
               0: CDM.CD_Regioes.CommandText:=CDM.CD_Regioes.CommandText+' WHERE CIDADE LIKE :B';
               1: CDM.CD_Regioes.CommandText:=CDM.CD_Regioes.CommandText+' WHERE DISTRITO LIKE :B';
               2: CDM.CD_Regioes.CommandText:=CDM.CD_Regioes.CommandText+' WHERE CODIGO_IBGE LIKE :B';
           end;
               CDM.CD_Regioes.PARAMS[0].AsString:='%'+Edit1.Text+'%';
               CDM.CD_Regioes.OPEN;
         END;

end;

procedure TFrm_Regiao.FormShow(Sender: TObject);
begin
CDM.CD_Regioes.Open;
end;

end.
