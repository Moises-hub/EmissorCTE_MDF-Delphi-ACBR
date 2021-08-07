unit U_FrmMdfCiot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrm_MDFCiot = class(TForm)
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    Label25: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MDFCiot: TFrm_MDFCiot;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_MDFCiot.BitBtn1Click(Sender: TObject);
begin
    try
        if MaskEdit1.Text='__.___.___/____-__' then
           Begin
             CheckBox1Click(Sender);

           End;

           if length(Edit1.Text)=0 then
              begin
                ShowMessage('ciot não pode ser nulo');
                edit1.SetFocus;
              end;

                dm.Proc_MDF_CIOT.ParamByName('id_mdfe').asinteger:=dm.CD_Mdf_DadosID.AsInteger;
                dm.Proc_MDF_CIOT.ParamByName('CNPJ').asstring:=MaskEdit1.Text;
                dm.Proc_MDF_CIOT.ParamByName('Ciot').asstring:=Edit1.Text;
                dm.Proc_MDF_CIOT.ExecProc;
                dm.Query_MDFE_Ciot.Close;
                dm.Query_MDFE_Ciot.Params[0].AsInteger:=dm.CD_Mdf_DadosID.AsInteger;
                dm.Query_MDFE_Ciot.Open();
                dm.Query_MDFE_Ciot.locate('ciot',Edit1.Text,[]);
                close;
    except
    

    end;

end;

procedure TFrm_MDFCiot.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_MDFCiot.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
  begin
   MaskEdit1.Text:=DM.EmitenteCNPJ.AsString;//,'.','',[rfReplaceAll]);
  // MaskEdit1.Text:=StringReplace(MaskEdit1.Text,'-','',[rfReplaceAll]);
  // MaskEdit1.Text:=StringReplace(MaskEdit1.Text,'/','',[rfReplaceAll]);
  end
   else
   MaskEdit1.Clear;
end;

end.
