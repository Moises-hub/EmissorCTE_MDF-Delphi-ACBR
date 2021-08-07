unit UFrm_GradeCCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DosMove, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, RzCmboBx, RzPanel, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrm_GradeCCorrecao = class(TForm)
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    RzGroupBox1: TRzGroupBox;
    Edit1: TEdit;
    RzPanel2: TRzPanel;
    Button3: TButton;
    ActionList1: TActionList;
    Ac_Novo: TAction;
    Act_XML: TAction;
    Act_Sair: TAction;
    DosMove1: TDosMove;
    Button1: TButton;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ac_NovoExecute(Sender: TObject);
    procedure Act_XMLExecute(Sender: TObject);
    procedure Act_SairExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GradeCCorrecao: TFrm_GradeCCorrecao;

implementation

{$R *.dfm}

uses UCDM, UFrm_CTE_CartaCorrecao, UFrm_Grade_CTE;

procedure TFrm_GradeCCorrecao.Act_SairExecute(Sender: TObject);
begin
close;
end;

procedure TFrm_GradeCCorrecao.Act_XMLExecute(Sender: TObject);
VAR
Arquivo : TStringList;
caminho: string;
I : INTEGER;
begin
 if DBGrid1.SelectedRows.CurrentRowSelected = false then
          DBGrid1.SelectedRows.CurrentRowSelected := true;
        if SaveDialog1.Execute then

             if SaveDialog1.FileName<>'' then
                begin

                 caminho:=ExtractFilePath(SaveDialog1.FileName);
                end;





        for i := 0 to DBGrid1.SelectedRows.Count - 1 do
            begin

                 CDM.Query_Grade_Carta.GotoBookmark(DBGrid1.SelectedRows.Items[i]);

                    if Length(CDM.Query_Grade_CartaCHAVE_CC.AsString)<>0 then
                       begin
                          Arquivo := TStringList.Create();

                         try
                          Arquivo.LoadFromFile(ExtractFilePath(Application.ExeName)+'CTe\Docs\Eventos\'+FormatDateTime('yyyy"\"mm',CDM.Query_Grade_CartaEVENTO.AsDateTime)+'\'+StringReplace(CDM.Query_Grade_CartaCHAVE_CC.AsString,'ID','',[rfReplaceAll])+'-procEventoCTe.xml'); // Carrega o arquivo de origem


                          Arquivo.SaveToFile(caminho+'CC'+CDM.Query_Grade_CartaCHAVE.AsString+'.xml'); //salva o arquivo em outro lugar, como o mesmo nome, mas não necessária precisar ser com o mesmo nome.
                        
                          Arquivo.Destroy;
                         Except
                          on E:Exception do
                         ShowMessage('Ouve um erro ao Exportar o XML  - ERRO:'+E.Message);


                         end;
                       end;
            end;
            ShowMessage('Exportação Concluida!!');

end;

procedure TFrm_GradeCCorrecao.Ac_NovoExecute(Sender: TObject);
begin
Frm_GradeCCorrecao:=TFrm_GradeCCorrecao.Create(SELF);
Frm_GradeCCorrecao.ShowModal;
CDM.FDConnection1.Commit;
CDM.Query_Grade_Carta.REFRESH;
end;

procedure TFrm_GradeCCorrecao.Button3Click(Sender: TObject);
begin
        Frm_CTE_CartaCorrecao:=TFrm_CTE_CartaCorrecao.Create(self);
        cdm.CD_Carta.open;

        cdm.CD_Carta.Insert;
        if CDM.CD_Emissor_CTESTATUS.AsInteger = 2 then

        cdm.CD_CartaCHAVE.AsString:=CDM.CD_Emissor_CTECHAVE.AsString;

        Frm_CTE_CartaCorrecao.ShowModal;
        Frm_CTE_CartaCorrecao.Free;
end;

procedure TFrm_GradeCCorrecao.Edit1Change(Sender: TObject);
begin
CDM.Query_Grade_Carta.Close;
CDM.Query_Grade_Carta.Params[0].AsString:='%'+Edit1.Text+'%';
CDM.Query_Grade_Carta.Open();
end;

procedure TFrm_GradeCCorrecao.FormShow(Sender: TObject);
begin
CDM.Query_Grade_Carta.Close;
CDM.Query_Grade_Carta.Params[0].AsString:='%'+Edit1.Text+'%';
CDM.Query_Grade_Carta.Open();
end;

end.
