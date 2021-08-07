unit UUFrm_Frm_CTE_GCartaCorrecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, RzCmboBx, RzDBCmbo;

type
  TFrm_CTE_GCartaCorrecao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzDBComboBox1: TRzDBComboBox;
    RzDBComboBox2: TRzDBComboBox;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzDBComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CTE_GCartaCorrecao: TFrm_CTE_GCartaCorrecao;

implementation

{$R *.dfm}

uses UCDM;

procedure TFrm_CTE_GCartaCorrecao.RzBitBtn1Click(Sender: TObject);
begin

             cdm.CD_GCarta_Correcao.ApplyUpdates(0);
             close;

end;

procedure TFrm_CTE_GCartaCorrecao.RzBitBtn2Click(Sender: TObject);
begin
       cdm.CD_GCarta_Correcao.Cancel;;
             close;
end;

procedure TFrm_CTE_GCartaCorrecao.RzDBComboBox1Select(Sender: TObject);
begin
    if RzDBComboBox1.ItemIndex=0 then
     begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('CFOP');
            RzDBComboBox2.Items.Add('CÓD IBGE Origem da Prestação');
            RzDBComboBox2.Items.Add('Cidade Origem da Prestação');
            RzDBComboBox2.Items.Add('Estado Origem da Prestação');
            RzDBComboBox2.Items.Add('CÓD IBGE Fim da Prestação');
            RzDBComboBox2.Items.Add('Cidade Fim da Prestação');
            RzDBComboBox2.Items.Add('Estado Fim da Prestação');

            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('CFOP');
            RzDBComboBox2.Values.Add('cMunIni');
            RzDBComboBox2.Values.Add('xMunIni');
            RzDBComboBox2.Values.Add('UFIni');
            RzDBComboBox2.Values.Add('cMunFim');
            RzDBComboBox2.Values.Add('xMunFim');
            RzDBComboBox2.Values.Add('UFFim');
     end
     else
  if RzDBComboBox1.ItemIndex=1 then
     begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('CNPJ');
            RzDBComboBox2.Items.Add('Inscr. Estadual');
            RzDBComboBox2.Items.Add('Razão Social');
            RzDBComboBox2.Items.Add('Nome Fantasia');


            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('CNPJ');
            RzDBComboBox2.Values.Add('IE');
            RzDBComboBox2.Values.Add('xNome');
            RzDBComboBox2.Values.Add('xFant ');

     end
     else
       if RzDBComboBox1.ItemIndex=2 then
          begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('Endereço');
            RzDBComboBox2.Items.Add('Número');
            RzDBComboBox2.Items.Add('Complemento');
            RzDBComboBox2.Items.Add('Bairro');
            RzDBComboBox2.Items.Add('Código IBGE');
            RzDBComboBox2.Items.Add('Cidade');
            RzDBComboBox2.Items.Add('CEP');
            RzDBComboBox2.Items.Add('Estado');

            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('xLgr');
            RzDBComboBox2.Values.Add('nro');
            RzDBComboBox2.Values.Add('xCpl');
            RzDBComboBox2.Values.Add('xBairro');
            RzDBComboBox2.Values.Add('cMun');
            RzDBComboBox2.Values.Add('xMun');
            RzDBComboBox2.Values.Add('CEP');
            RzDBComboBox2.Values.Add('UF');
          end
          else


          if RzDBComboBox1.ItemIndex=3 then
     begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('CNPJ');
            RzDBComboBox2.Items.Add('Inscr. Estadual');
            RzDBComboBox2.Items.Add('Razão Social');
            RzDBComboBox2.Items.Add('Nome Fantasia');


            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('CNPJ');
            RzDBComboBox2.Values.Add('IE');
            RzDBComboBox2.Values.Add('xNome');
            RzDBComboBox2.Values.Add('xFant ');

     end
     else
       if RzDBComboBox1.ItemIndex=4 then
          begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('Endereço');
            RzDBComboBox2.Items.Add('Número');
            RzDBComboBox2.Items.Add('Complemento');
            RzDBComboBox2.Items.Add('Bairro');
            RzDBComboBox2.Items.Add('Código IBGE');
            RzDBComboBox2.Items.Add('Cidade');
            RzDBComboBox2.Items.Add('CEP');
            RzDBComboBox2.Items.Add('Estado');

            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('xLgr');
            RzDBComboBox2.Values.Add('nro');
            RzDBComboBox2.Values.Add('xCpl');
            RzDBComboBox2.Values.Add('xBairro');
            RzDBComboBox2.Values.Add('cMun');
            RzDBComboBox2.Values.Add('xMun');
            RzDBComboBox2.Values.Add('CEP');
            RzDBComboBox2.Values.Add('UF');
          end
          else


          if RzDBComboBox1.ItemIndex=5 then
     begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('CNPJ');
            RzDBComboBox2.Items.Add('Inscr. Estadual');
            RzDBComboBox2.Items.Add('Razão Social');
            RzDBComboBox2.Items.Add('Nome Fantasia');


            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('CNPJ');
            RzDBComboBox2.Values.Add('IE');
            RzDBComboBox2.Values.Add('xNome');
            RzDBComboBox2.Values.Add('xFant ');

     end
     else
       if RzDBComboBox1.ItemIndex=6 then
          begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('Endereço');
            RzDBComboBox2.Items.Add('Número');
            RzDBComboBox2.Items.Add('Complemento');
            RzDBComboBox2.Items.Add('Bairro');
            RzDBComboBox2.Items.Add('Código IBGE');
            RzDBComboBox2.Items.Add('Cidade');
            RzDBComboBox2.Items.Add('CEP');
            RzDBComboBox2.Items.Add('Estado');

            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('xLgr');
            RzDBComboBox2.Values.Add('nro');
            RzDBComboBox2.Values.Add('xCpl');
            RzDBComboBox2.Values.Add('xBairro');
            RzDBComboBox2.Values.Add('cMun');
            RzDBComboBox2.Values.Add('xMun');
            RzDBComboBox2.Values.Add('CEP');
            RzDBComboBox2.Values.Add('UF');
          end
          else

       if RzDBComboBox1.ItemIndex=7 then
          begin
            RzDBComboBox2.Clear;
            RzDBComboBox2.Items.Add('Valor do Serviço');
            RzDBComboBox2.Items.Add('Valor a Receber');


            RzDBComboBox2.Values.clear;
            RzDBComboBox2.Values.Add('vTPrest');
            RzDBComboBox2.Values.Add('vRec');

          end
          else
               if RzDBComboBox1.ItemIndex=8 then
               begin
                RzDBComboBox2.Clear;
                RzDBComboBox2.Items.Add('Razão Social');
                RzDBComboBox2.Items.Add('Nome Fantasia');

                RzDBComboBox2.Values.clear;
                RzDBComboBox2.Values.Add('xNome');
                RzDBComboBox2.Values.Add('xFant ');

               end;
end;

end.
