unit UFrm_EncerrUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DosMove;

type
  TFrm_EncerrUF = class(TForm)
    Label6: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    CIDADE: TFDQuery;
    DosMove1: TDosMove;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RzComboBox1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzComboBox2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EncerrUF: TFrm_EncerrUF;

implementation

{$R *.dfm}

uses UFrm_NaoEncerrado, UDM, UFrm_MDFConfig;

procedure TFrm_EncerrUF.BitBtn1Click(Sender: TObject);
begin
  if length(RzComboBox1.Text)=0 then
     begin
       ShowMessage('Selecione o Estado de Descarregamento');
       RzComboBox1.SetFocus;
     end
     else
  if length(RzComboBox2.Text)=0 then
     begin
       ShowMessage('Selecione a cidade de Descarregamento');
       RzComboBox2.SetFocus;
     end
     else
         begin
         Frm_NaoEncerrado.UF:=RzComboBox1.Text;
         Frm_NaoEncerrado.IBGE:=StrToInt(RzComboBox2.Value);
         close;
         end;

end;

procedure TFrm_EncerrUF.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_EncerrUF.FormShow(Sender: TObject);
begin
RzComboBox1.Text:=Frm_MDFCOnfig.cbUF.Text;
RzComboBox1.SetFocus;
end;

procedure TFrm_EncerrUF.RzComboBox1Select(Sender: TObject);
begin
              CIDADE.Close;
              CIDADE.Params[0].AsString:=RZCOMBOBOX1.Text;
              CIDADE.Open;

              RZComboBox2.Items.Clear;
              RzComboBox2.Values.Clear;
              if CIDADE.RecordCount<>0 then
                 BEGIN
                 CIDADE.First;
                 while NOT CIDADE.Eof do
                     BEGIN
                     RZComboBox2.Items.ADD(CIDADE.FIELDBYNAME('CIDADE').ASSTRING);
                     RzComboBox2.Values.Add(CIDADE.FIELDBYNAME('CODIGO_IBGE').ASSTRING);
                     CIDADE.Next;
                     END;

                 END;
end;

procedure TFrm_EncerrUF.RzComboBox2Enter(Sender: TObject);
begin
if RzComboBox2.ItemIndex=-1 then
   RzComboBox1Select(sender);
end;

end.
