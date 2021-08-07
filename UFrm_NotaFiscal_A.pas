unit UFrm_NotaFiscal_A;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, RzCmboBx,
  RzDBCmbo, Vcl.ExtCtrls, RzPanel, Vcl.Mask, Vcl.Buttons, Data.DB, RzButton,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrm_NotaFiscal_A = class(TForm)
    RzGroupBox1: TRzGroupBox;
    Label11: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    RzGroupBox2: TRzGroupBox;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    RzPanel1: TRzPanel;
    RzSpacer1: TRzSpacer;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    RzDBComboBox2: TRzDBComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NotaFiscal_A: TFrm_NotaFiscal_A;

implementation

{$R *.dfm}

uses UCDM, UFrm_Unidade;

procedure TFrm_NotaFiscal_A.BitBtn1Click(Sender: TObject);
begin
if DBEdit6.Text='' then
   cdm.CD_CTENFEBASE_CALCULO_ICMS.ascurrency:=0;
if DBEdit5.Text='' then
   cdm.CD_CTENFEVALOR_ICMS.ascurrency:=0;
   if DBEdit7.Text='' then
      cdm.CD_CTENFEBASE_CALCULO_SUBICMS.ascurrency:=0;
   if DBEdit8.Text='' then
      cdm.CD_CTENFEVALOR_SUBICMS.ascurrency:=0;

 if DBEdit1.Text = '' then
     begin
       MessageDlg('Número da NF não pode ser nulo!',mtInformation,[mbOK],0);
       DBEdit1.SetFocus;
     end
     else
   if DBEdit3.Text = '' then
      begin
           MessageDlg('data e Hora da Emissão não pode ser nulo!',mtInformation,[mbOK],0);
           DBEdit3.SetFocus;
      end
       else
       if RzDBComboBox2.Text = '' then
          begin
               MessageDlg('O CFOP não pode ser nulo!',mtInformation,[mbOK],0);
              RzDBComboBox2.SetFocus;
          end
     
            else
            if DBEdit4.Text = '' then
                begin
                     MessageDlg('o valor dos produtos não pode ser nulo!',mtInformation,[mbOK],0);
                     DBEdit4.SetFocus;
                end
                else
                     begin
                     cdm.CD_CTENFE.post;
                     close;
                     end;


end;

procedure TFrm_NotaFiscal_A.BitBtn2Click(Sender: TObject);
begin
   cdm.CD_CTENFE.cancel;
   close;
end;

procedure TFrm_NotaFiscal_A.BitBtn5Click(Sender: TObject);
begin
     if cdm.CD_CTE_UNNFA.RecordCount<>0 then
           begin
               if MessageDlg('deseja realmente excluir o registro selecionado',mtConfirmation,[mbyes,mbno],0)=mryes then
                  cdm.CD_CTE_UNNFA.Delete;

                             end;
end;

end.

