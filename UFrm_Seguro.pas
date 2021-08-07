unit UFrm_Seguro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  DosMove;

type
  TFrm_Seguro = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBComboBox5: TRzDBComboBox;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button1: TButton;
    ImageList1: TImageList;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ActionList1: TActionList;
    Act_BuscarSeguradora: TAction;
    Button6: TButton;
    DosMove1: TDosMove;
    procedure DBComboBox5Select(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Act_BuscarSeguradoraExecute(Sender: TObject);
  private
    { Private declarations }
  public
     Const
    InputBoxMsg = WM_USER + 123;
  end;

var
  Frm_Seguro: TFrm_Seguro;

implementation

{$R *.dfm}

uses UDM, UFrmFuncoes, UCDM, UFrm_MDF_Averbacao, UFrm_Cad_Seguradora, UFrm_MDF;

procedure TFrm_Seguro.Act_BuscarSeguradoraExecute(Sender: TObject);
begin
Frm_Cad_Seguradora:=TFrm_Cad_Seguradora.Create(self);
Frm_Cad_Seguradora.ShowModal;
Frm_Cad_Seguradora:=nil;
end;

procedure TFrm_Seguro.Button1Click(Sender: TObject);
begin
Frm_MDF_Averbacao:=TFrm_MDF_Averbacao.Create(self);
dm.CD_MDF_Averbacao.Insert;
Frm_MDF_Averbacao.ShowModal;
Frm_MDF_Averbacao.free;

end;

procedure TFrm_Seguro.Button2Click(Sender: TObject);
begin
if dm.CD_MDF_Averbacao.RecordCount<>0 then
   dm.CD_MDF_Averbacao.delete;


end;

procedure TFrm_Seguro.Button3Click(Sender: TObject);
begin
if dm.CD_MDF_Averbacao.RecordCount<>0 then
begin
Frm_MDF_Averbacao:=TFrm_MDF_Averbacao.Create(self);
dm.CD_MDF_Averbacao.edit;
Frm_MDF_Averbacao.ShowModal;
Frm_MDF_Averbacao.free;
end;
end;

procedure TFrm_Seguro.Button4Click(Sender: TObject);
begin
  if Length(DBEdit3.Text)=0 then
     begin
       ShowMessage('O CPF ou CNPJ do responsável não pode ser nulo');
       DBEdit3.SetFocus;
     end
     else
       if Length(DBEdit2.Text)=0 then
           begin
             ShowMessage('O nome da seguradora não pode ser nulo');
             DBEdit2.SetFocus;
           end
           else
             if Length(DBEdit4.Text)=0 then
                 begin
                   ShowMessage('O CNPJ da seguradora não pode ser nulo');
                   DBEdit4.SetFocus;
                 end
                 else
                 begin
                  dm.CD_MDF_Seguro.Post;
                  if dm.CD_MDF_Averbacao.state in[dsEdit,dsInsert] then
                     dm.CD_MDF_Averbacao.Post;

                   close;
                 end;



end;

procedure TFrm_Seguro.Button5Click(Sender: TObject);
begin
  DM.CD_MDF_Seguro.Cancel;
  dm.CD_MDF_Averbacao.CancelUpdates;
  close;
end;

procedure TFrm_Seguro.DBComboBox5Select(Sender: TObject);
begin
if DBComboBox5.ItemIndex = 0 then
   BEGIN
   DM.CD_MDF_SeguroCPFCNPJ.AsString:=DM.EmitenteCNPJ.AsString;
   DBEdit3.Enabled:=FALSE;
   END
   ELSE
   BEGIN
   if DM.CD_Mdf_DadosCNPJ_TOMADOR.AsString<>'' then
      DM.CD_MDF_SeguroCPFCNPJ.AsString := DM.CD_Mdf_DadosCNPJ_TOMADOR.AsString
      ELSE
      DM.CD_MDF_SeguroCPFCNPJ.Clear;
   DBEdit3.Enabled:=TRUE;
   END;
end;

procedure TFrm_Seguro.DBEdit3Exit(Sender: TObject);
Var
FormatarCNPJ:String;
FormatarCPF:String;
begin
if Length(DBEdit3.text) = 14 then
Begin
FormatarCNPJ:= Copy(DBEdit3.Text, 1,2) + '.' + Copy(DBEdit3.text, 3,3) +'.'
+ Copy(DBEdit3.text, 6,3) + '/' +Copy(DBEdit3.Text, 9,4) + '-' + Copy(DBEdit3.text, 13,2);
DBEdit3.text:= FormatarCNPJ;
End

      Else
      if Length(DBEdit3.text) = 11 then
      Begin //024.813.907-09
          FormatarCPF:= Copy(DBEdit3.text, 1,3)
          + '.' + Copy(DBEdit3.text, 4,3)
          + '.' + Copy(DBEdit3.text,7,3)
          + '-' + Copy(DBEdit3.text, 10,2);
          DBEdit3.text:= FormatarCPF;
      End

          Else
          Begin
          ShowMessage('O CPF tem 11 números e CNPJ tem 14 números.');
          DM.CD_MDF_SeguroCPFCNPJ.Clear;
          End;
end;



procedure TFrm_Seguro.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_Seguro.DBEdit4Exit(Sender: TObject);
Var
FormatarCNPJ:String;
FormatarCPF:String;
begin
if Length(DBEdit4.text) = 14 then
Begin
FormatarCNPJ:= Copy(DBEdit4.Text, 1,2) + '.' + Copy(DBEdit4.text, 3,3) +'.'
+ Copy(DBEdit4.text, 6,3) + '/' +Copy(DBEdit4.Text, 9,4) + '-' + Copy(DBEdit4.text, 13,2);
DBEdit4.text:= FormatarCNPJ;
End

      Else
      if Length(DBEdit4.text) = 11 then
      Begin //024.813.907-09
          FormatarCPF:= Copy(DBEdit4.text, 1,3)
          + '.' + Copy(DBEdit4.text, 4,3)
          + '.' + Copy(DBEdit4.text,7,3)
          + '-' + Copy(DBEdit4.text, 10,2);
          DBEdit4.text:= FormatarCPF;
      End

          Else
          Begin
          ShowMessage('O CNPJ tem 14 números.');
          DM.CD_MDF_SeguroCNPJ.Clear;
          End;

end;

procedure TFrm_Seguro.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TFrm_Seguro.FormShow(Sender: TObject);
begin
   dm.CD_MDF_Averbacao.close;
   dm.CD_MDF_Averbacao.CommandText:='select * from MDF_SEGURO_AVERB where ID_SEGURO ='+dm.CD_MDF_SeguroID.AsString;
   dm.CD_MDF_Averbacao.open;

   DBComboBox5Select(Sender);
end;

end.
