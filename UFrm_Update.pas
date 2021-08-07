unit UFrm_Update;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, FireDAC.UI.Intf, FireDAC.Stan.Async,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Stan.Intf,
  FireDAC.Comp.Script;

type
  TFrm_Update = class(TForm)
    Image4: TImage;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Atualizar: TFDScript;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Update: TFrm_Update;

implementation

{$R *.dfm}

uses UFrmPrincipal;

procedure TFrm_Update.FormActivate(Sender: TObject);
VAR
POS : INTEGER;
VERSAO : STRING;
begin
               POS:=25;
               VERSAO:= '2.0.0.57';

               ProgressBar1.Position:=POS;
               TRY
                 Atualizar.SQLScripts[0].SQL.Clear;
                 Atualizar.SQLScripts[0].SQL.ADD(' update CTE_MDF_CONFIG' +
                                                 ' set versao ='''+versao+'''');

                 Atualizar.ValidateAll;
                 Atualizar.ExecuteAll;
               EXCEPT

               END;


               TRY
                ProgressBar1.Position:=ProgressBar1.Position+POS;
                 Atualizar.SQLScripts[0].SQL.Clear;
                 Atualizar.SQLScripts[0].SQL.ADD(' alter table mdfe_dados  add TIPO_EMISSOR integer');


                 Atualizar.ValidateAll;
                 Atualizar.ExecuteAll;
               EXCEPT

               END;

                 TRY
                 progressBar1.Position:=ProgressBar1.Position+POS;
                 Atualizar.SQLScripts[0].SQL.Clear;
                 Atualizar.SQLScripts[0].SQL.ADD('alter table mdfe_dados  add CNPJ_TOMADOR varchar(20)');


                 Atualizar.ValidateAll;
                 Atualizar.ExecuteAll;
               EXCEPT

               END;

               TRY
                 ProgressBar1.Position:=ProgressBar1.Position+POS;
                 Atualizar.SQLScripts[0].SQL.Clear;
                 Atualizar.SQLScripts[0].SQL.ADD('alter table cte_dados add NROREGESTADUAL  VARCHAR(25)');


                 Atualizar.ValidateAll;
                 Atualizar.ExecuteAll;
               EXCEPT

               END;

                ProgressBar1.Position:=100;
                if ProgressBar1.Position=100 then
                   close;
end;

end.
