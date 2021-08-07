unit UFrmReboque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, RzCmboBx, RzDBCmbo, DosMove, UFrm_MDF, UFrm_GradeVeiculos,
  RzButton, System.Actions, Vcl.ActnList;

type
  TFrmReboque = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BitBtn2: TBitBtn;
    DBComboBox5: TRzDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DosMove1: TDosMove;
    DBComboBox3: TRzDBComboBox;
    RzToolButton1: TRzToolButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    BitBtn1: TBitBtn;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReboque: TFrmReboque;

implementation

{$R *.dfm}

uses UDM, UFrmFuncoes;

procedure TFrmReboque.Action1Execute(Sender: TObject);
begin
              Frm_GradeVeiculos:=TFrm_GradeVeiculos.Create(self);
              Frm_GradeVeiculos.Button1.Action:=Frm_GradeVeiculos.Act_Confirma2;
              Frm_GradeVeiculos.showModal;
       
end;

procedure TFrmReboque.Action2Execute(Sender: TObject);
begin
if DBComboBox5.ItemIndex=-1 then
   begin
   showmessage('o campo tipo de carroceria não pode ser nulo!');
   DBComboBox5.SetFocus;
   end
   else
   if Length(DBEdit3.Text)=0 then
      begin
       showmessage('o campo placa não pode ser nulo!');
       DBEdit3.SetFocus;
      end
      else
       if DBComboBox3.ItemIndex=-1 then
           begin
           showmessage('o campo uf de licenciamento não pode ser nulo!');
           DBComboBox3.SetFocus;
           end
           else
           if Length(DBEdit6.Text)=0 then
              begin
               showmessage('o campo tara não pode ser nulo!');
               DBEdit6.SetFocus;
              end
              else
                  begin
                  dm.CD_Mdfe_v_reboqueTable.post;
                  close;
                  end;
end;

procedure TFrmReboque.Action3Execute(Sender: TObject);
begin
dm.CD_Mdfe_v_reboqueTable.Cancel;
close;
end;

procedure TFrmReboque.DBEdit3Exit(Sender: TObject);
VAR
NUM : STRING;
begin
   NUM:=COPY(DBEdit3.Text,5,1);
   if frmfuncoes.EhNumero(NUM) then
      DBEdit3.Text:=COPY(DBEdit3.Text,1,3)+'-'+COPY(DBEdit3.Text,4,4)
      else
      DBEdit3.Text:=COPY(DBEdit3.Text,1,3)+' '+COPY(DBEdit3.Text,4,4)
end;

end.
