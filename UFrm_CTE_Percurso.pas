unit UFrm_CTE_Percurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RzPanel;

type
  TFrm_CTE_Percurso = class(TForm)
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    RzPanel1: TRzPanel;
    Button19: TButton;
    Button18: TButton;
    ComboBox1: TComboBox;
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_Percurso: TFrm_CTE_Percurso;

implementation

{$R *.dfm}

uses UCDM;

procedure TFrm_CTE_Percurso.Button18Click(Sender: TObject);
begin
     cdm.CD_CTE_Percurso.Insert;
     cdm.CD_CTE_PercursoID_CTE.AsInteger:=cdm.CD_Emissor_CTEID.AsInteger;
     cdm.CD_CTE_PercursoUF.AsString:=ComboBox1.Text;
     ComboBox1.DeleteSelected;
     cdm.CD_CTE_Percurso.Post;
     cdm.CD_CTE_Percurso.ApplyUpdates(0);
end;

procedure TFrm_CTE_Percurso.Button19Click(Sender: TObject);
begin
      if cdm.CD_CTE_Percurso.RecordCount<>0 then
         begin
         ComboBox1.Items.Add(cdm.CD_CTE_PercursoUF.AsString);
         cdm.CD_CTE_percurso.Delete;
         end;
end;

end.
