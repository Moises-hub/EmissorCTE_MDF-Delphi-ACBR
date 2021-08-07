unit UFrm_CTEDescordo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, System.Actions,
  Vcl.ActnList;

type
  TFrm_CTEDescordo = class(TForm)
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    ActionList1: TActionList;
    Act_Confirmar: TAction;
    Act_Cancelar: TAction;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    Memo1: TMemo;
    procedure Act_CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Act_ConfirmarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTEDescordo: TFrm_CTEDescordo;

implementation

{$R *.dfm}

uses UFrmPrincipal, UFrm_Grade_CTE, UFrm_CTE_Config,pcnConversao, UCDM, UDM;

procedure TFrm_CTEDescordo.Act_CancelarExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_CTEDescordo.Act_ConfirmarExecute(Sender: TObject);
begin
 if LENGTH(EDIT1.Text)<44 then
    begin
    MessageDlg('A chave do CT-e tem 44 números',mtError,[mbOK],0);
    edit1.SetFocus;
    end
             else
                 if (LENGTH(Memo1.Lines.Text) < 15) or (LENGTH(Memo1.Lines.Text) > 255) then
                       begin
                        MessageDlg('O campo OBS tem que ter no mínimo 15, máximo 255 caracteres',mtError,[mbOK],0);
                        Memo1.SetFocus;
                        end
                        else
                        begin

                                  Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Clear;
                             with Frm_CTE_Config.ACBrCTe1.EventoCTe.Evento.Add do
                                  begin
                                    infEvento.nSeqEvento      := 1; // Para o Evento de Prestação do Serviço em Desacordo nSeqEvento sempre = 1
                                    infEvento.chCTe           :=Edit1.Text;
                                    infEvento.CNPJ            :=StringReplace(TRIM(DM.EmitenteCNPJ.AsString),'.','',[rfReplaceAll]);
                                    infEvento.CNPJ            :=StringReplace(InfEvento.CNPJ,'/','',[rfReplaceAll]);
                                    infEvento.CNPJ            :=StringReplace(InfEvento.CNPJ,'-','',[rfReplaceAll]);
                                    infEvento.dhEvento        := now;
                                    infEvento.tpEvento        := tePrestDesacordo;
                                    infEvento.detEvento.xObs := trim(Memo1.Lines.Text); // minimo 15, máximo 255 caracteres
                                  end;

                                  Frm_CTE_Config.ACBrCTe1.EnviarEvento(1);
                        end;
end;

procedure TFrm_CTEDescordo.FormShow(Sender: TObject);
begin
Frm_CTE_Config:=tFrm_CTE_Config.Create(self);
end;

end.
