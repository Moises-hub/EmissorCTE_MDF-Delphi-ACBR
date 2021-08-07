unit UFrm_Carregamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, DosMove, dxGDIPlusClasses;

type
  TFrm_Carregamento = class(TForm)
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SQLQuery1: TSQLQuery;
    DosMove1: TDosMove;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Carregamento: TFrm_Carregamento;

implementation

{$R *.dfm}

uses UDM, UFrm_MDF;

procedure TFrm_Carregamento.BitBtn1Click(Sender: TObject);
begin
if DBComboBox1.ItemIndex<> -1 then
   begin
            SQLQuery1.close;
            SQLQuery1.sql.Clear;
            SQLQuery1.sql.Add('select CODIGO_IBGE from regioes where CIDADE ='''+DBComboBox1.text+'''');
            SQLQuery1.Open;



   if   Frm_Carregamento.DBComboBox1.DataSource=dm.ds_Mdfe_l_carregamentoTable then
        begin

            dm.CD_Mdfe_l_carregamentoTableUF.Text:=DM.CD_Mdf_DadosUF_CARREGAMENTO.Text;

            dm.CD_Mdfe_l_carregamentoTableCOD_MUN.value:=SQLQuery1.FieldByName('codigo_ibge').Value;

          {  if Length(SQLQuery1.FieldByName('CODIGO_IBGE').Text)=0 then
               begin
               MessageDlg('Código do IBGE não pode ser nulo'+#13+'va em cadastro de Regiões no Infocommerce!',mtError,[mbOK],0);
               dm.CD_Mdfe_l_carregamentoTable.cancel;
               end
               else  }
                dm.CD_Mdfe_l_carregamentoTable.Post;
                dm.CD_Mdfe_l_carregamentoTable.ApplyUpdates(0);
        end

   else
       begin
         dm.CD_Mdfe_l_descarregamentoTableUF.Text:=DM.CD_Mdf_DadosUF_desCARREGAMENTO.Text;

         if length(SQLQuery1.FieldByName('codigo_ibge').asstring)<>7 then
            begin
              MessageDlg('Código do IBGE não pode ser nulo, Verifique o Cadastro de Região',mtError,[mbOK],0);
               dm.CD_Mdfe_l_descarregamentoTable.cancel;
            end
        else
        begin

         dm.CD_Mdfe_l_descarregamentoTableCOD_MUN.value:=SQLQuery1.FieldByName('codigo_ibge').Value;



               dm.CD_Mdfe_l_descarregamentoTable.Post;
               dm.CD_Mdfe_l_descarregamentoTable.ApplyUpdates(0);
        end;




       end;
   close;

   end
   else
   begin
       MessageDlg('Sr Usuário selecione a cidade de Carregamento',mtWarning,[mbOK],0);
        DBComboBox1.SetFocus;


   end;

end;

procedure TFrm_Carregamento.BitBtn2Click(Sender: TObject);
begin
   if   Frm_Carregamento.DBComboBox1.DataSource=dm.ds_Mdfe_l_carregamentoTable then
   dm.CD_Mdfe_l_carregamentoTable.Cancel
   else
   dm.CD_Mdfe_l_descarregamentoTable.cancel;




close;
end;

procedure TFrm_Carregamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_ESCAPE then
   BitBtn2Click(sender);

   if key=VK_F2 then
   BitBtn1Click(sender);
end;

end.
