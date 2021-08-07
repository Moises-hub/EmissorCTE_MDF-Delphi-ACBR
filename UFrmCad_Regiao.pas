unit UFrmCad_Regiao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzDBCmbo,
  Vcl.Buttons, RzPanel, RzLabel, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, DosMove,
  System.Actions, Vcl.ActnList;

type
  TFrmCad_Regiao = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    DosMove1: TDosMove;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    Button1: TButton;
    Button2: TButton;
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCad_Regiao: TFrmCad_Regiao;

implementation

{$R *.dfm}

uses UCDM, UFrmPrincipal;

procedure TFrmCad_Regiao.Act_CancelarExecute(Sender: TObject);
begin
if MessageDlg('deseja realmente cancelar as alterações feitas??',mtConfirmation,[mbYes,mbno],0)=mryes then
   begin
     cdm.CD_Regioes.Cancel;
     close;
   end;
end;

procedure TFrmCad_Regiao.Act_SalvarExecute(Sender: TObject);
begin
if DBEdit1.Text = '' then
   begin
     MessageDlg('A cidade não pode ser nula',mtWarning,[mbOK],0);
     DBEdit1.SetFocus;
   end
   else
   if RzDBComboBox1.Text = '' then
   begin
     MessageDlg('O estado não pode ser nulo',mtWarning,[mbOK],0);
     RzDBComboBox1.SetFocus;
   end
    else
   if DBEdit3.Text = '' then
   begin
     MessageDlg('O Cód do IBGE não pode ser nulo',mtWarning,[mbOK],0);
     DBEdit1.SetFocus;
   end
  else
  begin
  CDM.CD_Regioes.ApplyUpdates(0);
  close;
  end;
end;

end.
