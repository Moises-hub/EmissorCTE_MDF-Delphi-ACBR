unit UFrm_CTE_Veiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, DosMove, Vcl.Buttons, RzCmboBx, RzDBCmbo, Vcl.DBCtrls,
  RzPanel;

type
  TFrm_CTE_Veiculo = class(TForm)
    DosMove1: TDosMove;
    P_Veic: TRzPanel;
    Label9: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBComboBox3: TRzDBComboBox;
    DBEdit5: TDBEdit;
    RzPanel1: TRzPanel;
    DBEdit2: TDBEdit;
    Série: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_Veiculo: TFrm_CTE_Veiculo;

implementation

{$R *.dfm}

uses UCDM;

procedure TFrm_CTE_Veiculo.BitBtn1Click(Sender: TObject);
begin
if Length(dbedit1.text)=0 then
   begin
     ShowMessage('O Renavan não pode ser Nulo!!');
     DBEdit1.SetFocus;
   end
   else
   if Length(dbedit5.text)<>8 then
   begin
     ShowMessage('A Placa não pode ser Nulo!!');
     DBEdit5.SetFocus;
   end
   else
   begin
     CDM.cd_veiculos.post;
     close;
   end;


end;

procedure TFrm_CTE_Veiculo.BitBtn2Click(Sender: TObject);
begin
 CDM.cd_veiculos.cancel;
     close;
end;

procedure TFrm_CTE_Veiculo.BitBtn3Click(Sender: TObject);
begin
if Length(dbedit2.text)=0 then
   begin
     ShowMessage('O campo Série não pode estar nulo!!');
     DBEdit2.SetFocus;
   end
   else
   if Length(dbedit3.text)=0 then
   begin
     ShowMessage('o Nº da Ordem de Coleta não poder ser nulo!!');
     DBEdit3.SetFocus;
   end
   else
   begin
     CDM.CD_CTE_OCC.post;
     close;
   end;

end;

procedure TFrm_CTE_Veiculo.BitBtn4Click(Sender: TObject);
begin
 CDM.CD_CTE_OCC.cancel;
     close;
end;

procedure TFrm_CTE_Veiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_CTE_Veiculo.FormShow(Sender: TObject);
begin
if cdm.CD_Emissor_CTEmodelo.AsInteger=67 then
   P_Veic.Visible:=true
   else
   if cdm.CD_Emissor_CTEmodelo.AsInteger=57 then
      begin
      RzPanel1.Visible:=true;
      Caption:='OCC';
      end;

end;

end.
