unit UFrm_Motorista;

interface

uses  db,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, DosMove, System.Actions, Vcl.ActnList, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TFrm_Motorista = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DosMove1: TDosMove;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Image1: TImage;
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Motorista: TFrm_Motorista;

implementation

{$R *.dfm}

uses UDM, UFrmFuncoes, UFrmPrincipal, UFrmGrade, UFrmMotorista, UCDM;

procedure TFrm_Motorista.Action1Execute(Sender: TObject);
begin
dm.CD_Mdfe_condutorTable.Cancel;
FrmMotorista:=TFrmMotorista.Create(self);
FrmMotorista.ShowModal;
close;
FrmMotorista:=nil;
end;

procedure TFrm_Motorista.Action2Execute(Sender: TObject);
var
cpf : string;
begin
cpf:=StringReplace(DBEdit2.Text,'.','',[rfReplaceAll]);
cpf:=StringReplace(CPF,'-','',[rfReplaceAll]);



if Length(DBLookupComboBox1.Text)=0 then
   begin
   messagedlg('Sr. usuario o campo nome não pode ser nullo',mtWarning,[mbok],0);
   DBLookupComboBox1.SetFocus;
   end
   else


    if (Length(CPF) <> 11)  then
           begin
           ShowMessage('Sr(a) Usuário o CPF deve conter conter 11 digitos!');
           DBEdit2.Clear;
           DBEdit2.SetFocus
           end
             else

         if FrmFuncoes.testacpf(DBEdit2.Text) then
             begin
             DBEdit2.Text := FrmFuncoes.FormataCPF(cpf);
              dm.CD_Mdfe_condutorTableID_MDFE.AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
             dm.CD_Mdfe_condutorTable.Post;
             dm.CD_Mdfe_condutorTable.ApplyUpdates(0);
             close;

             end
              else
              begin
              Application.MessageBox('Digite um CPF válido','CPF Inválido', MB_ICONINFORMATION + MB_OK);
              DBEdit2.Clear;
              dBEdit2.SetFocus;


              end





end;

procedure TFrm_Motorista.Action3Execute(Sender: TObject);
begin
dm.CD_Mdfe_condutorTable.Cancel;
close;
end;

procedure TFrm_Motorista.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin

if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_Motorista.DBLookupComboBox1Exit(Sender: TObject);
begin
dm.CD_Mdfe_condutorTableCPF.Text:=dm.CD_Table_ClientesCPF_CNPJ.Text;
end;

procedure TFrm_Motorista.FormShow(Sender: TObject);
begin
 dm.CD_Table_Clientes.close;
 dm.CD_Table_Clientes.CommandText:='select id_cliente, nome, cpf_cnpj from CLIENTES where Motorista =1';
 dm.CD_Table_Clientes.open;
end;

end.




