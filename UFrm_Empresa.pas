unit UFrm_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel;

type
  TFrm_Empresa = class(TForm)
    RzPanel1: TRzPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    RzPanel2: TRzPanel;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

uses UFrm_ConfigSistema, UFrmPrincipal, UDM;

procedure TFrm_Empresa.Button1Click(Sender: TObject);
begin
if Frm_ConfigSistema.CD_Empresa.RecordCount = 0 then
   BEGIN
     Frm_ConfigSistema.CD_Empresa.CLOSE;
     Frm_ConfigSistema.CD_Empresa.CommandText:='SELECT * FROM EMPRESA WHERE ID_EMPRESA ='+DM.EmitenteID_EMPRESA.AsSTRING;
     Frm_ConfigSistema.CD_Empresa.OPEN;
   END;

CLOSE;
end;

procedure TFrm_Empresa.Edit1Change(Sender: TObject);
begin

      if Edit1.Text <> '' then
        BEGIN
          Frm_ConfigSistema.CD_Empresa.Close;
               case ComboBox1.ItemIndex of
                0:Frm_ConfigSistema.CD_Empresa.CommandText:='SELECT * FROM EMPRESA WHERE NOME_EMPRESA LIKE:B';
                1:Frm_ConfigSistema.CD_Empresa.CommandText:='SELECT * FROM EMPRESA WHERE RAZAO_SOCIAL LIKE:B';
               end;

           Frm_ConfigSistema.CD_Empresa.Params[0].AsString:='%'+Edit1.Text+'%';
           Frm_ConfigSistema.CD_Empresa.OPEN;
        END;



end;

end.
