unit UFrm_CTE_Seguro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, RzCmboBx, RzDBCmbo, Vcl.Mask,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList;

type
  TFrm_CTE_Seguro = class(TForm)
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox5: TRzDBComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_Seguro: TFrm_CTE_Seguro;

implementation

{$R *.dfm}

uses UCDM, UFrm_CTE_Averbacao, UFrm_Seguro;

procedure TFrm_CTE_Seguro.BitBtn1Click(Sender: TObject);
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
       


end;

procedure TFrm_CTE_Seguro.BitBtn2Click(Sender: TObject);
begin

close;
end;

procedure TFrm_CTE_Seguro.Button1Click(Sender: TObject);
begin
     Frm_CTE_Averbacao:=TFrm_CTE_Averbacao.Create(self);
     Frm_CTE_Averbacao.ShowModal;
     Frm_CTE_Averbacao:=nil;
end;

end.
