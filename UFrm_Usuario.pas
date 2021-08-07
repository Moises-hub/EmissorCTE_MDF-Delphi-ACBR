unit UFrm_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, UFrmPrincipal, RzButton,
  Vcl.ExtCtrls, RzPanel, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx, Vcl.Buttons;

type
  TFrm_Usuario = class(TForm)
    RzPanel1: TRzPanel;
    RzComboBox1: TRzComboBox;
    RzEdit1: TRzEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    RzPanel2: TRzPanel;
    BitBtn1: TBitBtn;
    procedure RzBitBtn6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Usuario: TFrm_Usuario;

implementation

{$R *.dfm}

procedure TFrm_Usuario.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFrm_Usuario.FormShow(Sender: TObject);
begin
     DM.CLI_CAD_USU.open;
end;

procedure TFrm_Usuario.RzBitBtn6Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Usuario.RzEdit1Change(Sender: TObject);
begin
if Length(RZEDIT1.TEXT) <> 0 then
  BEGIN
      DM.CLI_CAD_USU.CLOSE;
      DM.CLI_CAD_USU.COMMANDTEXT := 'select *  from  funcionarios WHERE '+RZCOMBOBOX1.VALUE+':P';
      DM.Cli_Cad_Usu.Params[0].TEXT := RZEDIT1.TEXT;
      DM.CLI_CAD_USU.OPEN;
  END;

end;

end.
