unit UFrm_CTE_Motorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, DosMove;

type
  TFrm_CTE_Motorista = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DosMove1: TDosMove;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_Motorista: TFrm_CTE_Motorista;

implementation

{$R *.dfm}

uses UDM, UFrmFuncoes, UFrmPrincipal, UFrmGrade, UFrmMotorista, UCDM,
  UFrmTomador, UFrm_SelMotorista, UForm_Motorista_CTE;

procedure TFrm_CTE_Motorista.BitBtn1Click(Sender: TObject);
var
cpf:string;
begin
cpf:=StringReplace(DBEdit2.Text,'.','',[rfReplaceAll]);
cpf:=StringReplace(cpf,'-','',[rfReplaceAll]);


if Length(DBEdit1.Text)=0 then
   begin
   messagedlg('Sr. usuario o campo nome não pode ser nullo',mtWarning,[mbok],0);
   DBEdit1.SetFocus;
   end
   else


    if Length(cpf)<> 11  then
           begin
           ShowMessage('Sr(a) Usuário o CPF deve conter conter 11 digitos!');
           DBEdit2.Clear;
           DBEdit2.SetFocus
           end
             else

         if FrmFuncoes.testacpf(DBEdit2.Text) then
             begin
          //   DBEdit2.Text := FrmFuncoes.FormataCPF(DBEdit2.Text);
          //   cdm.CD_CTE_condutorTableCPF.AsString:=cpf;
             cdm.CD_CTE_condutorTable.Post;
             close;

             end
              else
              begin
              Application.MessageBox('Digite um CPF válido','CPF Inválido', MB_ICONINFORMATION + MB_OK);
              DBEdit2.Clear;
              dBEdit2.SetFocus;


              end







end;

procedure TFrm_CTE_Motorista.BitBtn2Click(Sender: TObject);
begin
cdm.CD_CTE_condutorTable.Cancel;
close;
end;

procedure TFrm_CTE_Motorista.Button1Click(Sender: TObject);
begin
cdm.CD_CTE_condutorTable.CANCEL;
Form_Motorista_CTE:=TForm_Motorista_CTE.Create(self);
Form_Motorista_CTE.ShowModal;
close;
FrmMotorista:=nil;

end;

procedure TFrm_CTE_Motorista.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin

if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

end.
