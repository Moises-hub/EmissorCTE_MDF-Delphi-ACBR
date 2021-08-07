unit UFrm_SelMotorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  Vcl.ExtCtrls, RzPanel, DosMove, Data.FMTBcd, Data.DB, Data.SqlExpr, RzLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_SelMotorista = class(TForm)
    CheckListBox1: TCheckListBox;
    RzPanel1: TRzPanel;
    Button1: TButton;
    Button2: TButton;
    DosMove1: TDosMove;
    SQLDataSet1: TSQLDataSet;
    RzPanel2: TRzPanel;
    RzLabel1: TRzLabel;
    Button3: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SelMotorista: TFrm_SelMotorista;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDM;

procedure TFrm_SelMotorista.Button1Click(Sender: TObject);
var
i:integer;
texto,texto2 : string;
begin
   for i := 0 to CheckListBox1.Items.Count - 1 do
            begin


              if CheckListBox1.Checked[i]=true then
                 begin
                texto:=Copy(CheckListBox1.Items.Strings[i], 1, Pos(', ', CheckListBox1.Items.Strings[i]) -1);
                 texto2:=StringReplace(copy(CheckListBox1.Items.Strings[i],(length(texto)+1),20),', ','',[]);
                 ShowMessage(texto2);
                 ShowMessage(' linhas'+IntToStr(length(texto2)));

                 end;
            end;
end;

procedure TFrm_SelMotorista.Button2Click(Sender: TObject);
var
i : integer;
busca : Tfdquery;
Nome,CPF : String;
begin


        busca:=Tfdquery.Create(self);
        busca.Connection:=dm.FDConnection1;
        for i := 0 to CheckListBox1.Items.Count - 1 do
            begin
                    Nome :=Copy(CheckListBox1.Items.Strings[i], 1, Pos(', ', CheckListBox1.Items.Strings[i]) -1);
                    cpf  :=StringReplace(copy(CheckListBox1.Items.Strings[i],(length(NOME)+1),20),', ','',[]);

              if CheckListBox1.Checked[i]=true then
                 begin



                    busca.Close;
                    busca.SQL.Text:='delete from  MDFE_CONDUTOR where CPF ='''+trim(CPF)+''' and ID_MDFE ='+IntToStr(dm.CD_Mdf_DadosID.asinteger);
                    busca.ExecSQL;




                  busca.Close;
                  busca.SQL.Text:='insert into MDFE_CONDUTOR(id,id_mdfe,nome,cpf) values((select gen_id(GEN_MDFE_CONDUTOR_ID,1) from rdb$database),:m,:n,:c)';
                                busca.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                                busca.Params[1].AsString:=Nome;
                                busca.Params[2].Asstring:=trim(cpf);
                  busca.ExecSQL();

                 end
                 else
                 if CheckListBox1.Checked[i]=false then
                 begin
                    busca.Close;
                    busca.SQL.Text:='delete from  MDFE_CONDUTOR where CPF ='''+trim(CPF)+''' and ID_MDFE ='+IntToStr(dm.CD_Mdf_DadosID.asinteger);
                    busca.ExecSQL;
                 end;




            end;

                       dm.CD_Mdfe_condutorTable.Refresh;
                 close;
end;

procedure TFrm_SelMotorista.Button3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_SelMotorista.CheckBox1Click(Sender: TObject);
var
i : integer;
begin

for i := 0 to CheckListBox1.Items.Count - 1 do
    begin
      if CheckBox1.Checked = true then
         begin
         CheckListBox1.Checked[i]:=true;
         CheckBox1.Caption:='Desmarcar tudo';
         end
         else
         begin
         CheckListBox1.Checked[i]:=false;
         CheckBox1.Caption:='Selecionar Tudo';
         end;
    end;
end;

procedure TFrm_SelMotorista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if key=VK_ESCAPE then
             Button3Click(sender);
          if key=VK_F2 then
             Button2Click(sender);
end;

end.
