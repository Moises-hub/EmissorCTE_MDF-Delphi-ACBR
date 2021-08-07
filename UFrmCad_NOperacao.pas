unit UFrmCad_NOperacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, RzLabel, Vcl.ExtCtrls,
  Vcl.StdCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  System.Actions, Vcl.ActnList, DosMove;

type
  TFrmCad_NOperacao = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel2: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    RzDBComboBox2: TRzDBComboBox;
    DBEdit2: TDBEdit;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox4: TRzDBComboBox;
    Label6: TLabel;
    RzGroupBox2: TRzGroupBox;
    Label5: TLabel;
    RzDBComboBox3: TRzDBComboBox;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    ActionList1: TActionList;
    Act_Salvar: TAction;
    Act_Cancelar: TAction;
    RzPanel2: TRzPanel;
    Button2: TButton;
    Button1: TButton;
    DosMove1: TDosMove;
    procedure cfop(sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Act_SalvarExecute(Sender: TObject);
    procedure Act_CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    Const
    InputBoxMsg = WM_USER + 123;
  end;

var
  FrmCad_NOperacao: TFrmCad_NOperacao;

implementation

{$R *.dfm}

uses UCDM, UFrmPrincipal;

procedure TFrmCad_NOperacao.Act_CancelarExecute(Sender: TObject);
begin
if Application.MessageBox('deseja realmente cancelar as alterações feitas?','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=mryes then
   begin
     cdm.CD_N_Operacao.Cancel;
     close;
   end;
end;

procedure TFrmCad_NOperacao.Act_SalvarExecute(Sender: TObject);
begin
if cdm.CD_N_OperacaoCODIGO_FISCAL.AsString = '' then
   begin
   MessageDlg('CFOP não pode ser nulo',mtWarning,[mbOK],0);
   RzDBComboBox2.SetFocus;
   end
   else
if cdm.CD_N_OperacaoDESCRICAO_NOTA.AsString = '' then
   begin
   MessageDlg('descrição do CFOP não pode ser nulo',mtWarning,[mbOK],0);
   DBEdit2.SetFocus;
   end;

cdm.CD_N_Operacao.ApplyUpdates(0);
close;
end;

procedure TFrmCad_NOperacao.cfop(sender: TObject);
begin
  {   RzDBComboBox2.Items.clear;
     RzDBComboBox2.Items.LoadFromFile(ExtractFilePath(Application.ExeName)+'\CFOP.dll');}
end;

procedure TFrmCad_NOperacao.FormShow(Sender: TObject);
begin
//cfop(sender);



end;

procedure TFrmCad_NOperacao.SpeedButton1Click(Sender: TObject);
var
  cfo: string[4];
  arq : TextFile;
  list:TStringList;
begin
  PostMessage(Handle, InputBoxMsg, 0, 0);
  cfo:=inputbox('CFOP','Digite o CFOP','');




   list:=TStringList.Create;  // Cria uma StringList (classe derivada da TStrings
   try
      list.LoadFromFile(ExtractFilePath(Application.ExeName)+'\CFOP.dll'); // Carrega o texto para a StringList;
      list.Add(cfo);
      list.SaveToFile(ExtractFilePath(Application.ExeName)+'\CFOP.dll');  // Volta-se a gravar se desejado
   Finally
      list.free;
   end;


     cfop(sender);


end;

end.
