unit UFrmInicial;

interface

uses  INIFILES,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Data.SqlExpr, Data.DBXFirebird, RzBckgnd;

type
  TFrmInicial = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Label6: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInicial: TFrmInicial;
  IniFile    : String;
  Ini        : TIniFile;
implementation

{$R *.dfm}

uses UDM;

procedure TFrmInicial.Button1Click(Sender: TObject);
begin
dm.MdfeConnection.Connected:=false;

dm.MdfeConnection.Params.Values['DataBase']:='';
if ComboBox1.ItemIndex=0 then
dm.MdfeConnection.Params.Values['Servidor']:=''
 else
dm.MdfeConnection.Params.Values['Servidor']:='';
dm.MdfeConnection.Params.Values['Username']:='';
dm.MdfeConnection.Params.Values['password']:='';

   if Length(Edit1.Text)=0 then
      BEGIN
       ShowMessage('O Nome do Servidor não pode Ser nulo!');
       Edit1.SetFocus;

      END
   else
   if Length(Edit2.Text)=0 then
      begin
      ShowMessage('O Usuário não Pode ser nulo!');
       Edit2.SetFocus;

      end
      else
   if Length(Edit3.Text)=0 then
      begin
      ShowMessage('a senha não Pode ser nulo!');
       Edit3.SetFocus;

      end
      else

   if Length(Edit4.Text)=0 then
      begin
      ShowMessage('o caminho do BD não Pode ser nulo!');
       Edit4.SetFocus;

      end
      else





      begin



      dm.MdfeConnection.Params.Values['Servidor']:=edit1.Text;
      if ComboBox1.ItemIndex=1 then
         dm.MdfeConnection.Params.Values['DataBase']:=edit1.Text+':'+Edit4.Text
         else
      dm.MdfeConnection.Params.Values['DataBase']:=Edit4.Text;
      dm.MdfeConnection.Params.Values['Username']:=edit2.Text;
      dm.MdfeConnection.Params.Values['password']:=edit3.Text;
      dm.MdfeConnection.Connected := True;

      if dm.MdfeConnection.Connected=true then
         MessageDlg('Conexão Válida  '+dm.MdfeConnection.Params.Values['DataBase'],mtConfirmation,[mbOK],0)
         else
            MessageDlg('Conexão Inválida  '+dm.MdfeConnection.Params.Values['DataBase'],mtError,[mbOK],0);



      if DM.MdfeConnection.Connected=true then
     begin
      //   DM.MdfeConnection.Connected := True;
          // dm.Emitente.Open;
           //DM.REGIAO.Open;
           DM.CD_Mdf_Dados.Open;
          { DM.CD_Mdfe_l_carregamentoTable.Open;
           DM.CD_Mdfe_uf_percursoTable.Open;
           DM.CD_Mdfe_l_descarregamentoTable.Open;
           DM.CD_Mdfe_condutorTable.Open;
           DM.CD_Mdfe_v_reboqueTable.Open;
           DM.CD_Nfe_mdfTable.Open;
            DM.CD_MDFe_Config.Open;
          DM.CD_Nota_FiscalTable.Open;
          }end;




      end;
end;

procedure TFrmInicial.Button2Click(Sender: TObject);

// StreamMemo : TMemoryStream;
begin
DeleteFile(ExtractFilePath(Application.ExeName)+'Config.ini');

  Button1Click(sender);
if dm.MdfeConnection.Connected=true then
   begin
   IniFile := ChangeFileExt(ExtractFilePath(Application.ExeName)+'Config','.ini');

   Ini := TIniFile.Create( IniFile );
   Ini.WriteString('config','local',IntToStr(ComboBox1.ItemIndex));
   Ini.WriteString('config','Servidor',Edit1.Text);
   Ini.WriteString('config','usuario',Edit2.Text);
   Ini.WriteString('config','senha',Edit3.Text);
   Ini.WriteString('config','banco',Edit4.Text);




      ShowMessage('conexão salva com sucesso!');
   end
   else
   ShowMessage('conexão não salva');

   close;




end;

procedure TFrmInicial.ComboBox1Select(Sender: TObject);
begin
if ComboBox1.ItemIndex=1 then
   Edit1.Enabled:=true
   else
   begin
   Edit1.text:='LocalHost';
   Edit1.Enabled:=false;

   end;
end;

procedure TFrmInicial.FormCreate(Sender: TObject);
begin
if FileExists(ExtractFilePath(Application.ExeName)+'Config.ini') then
   begin
    ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
    edit4.Text:=ini.ReadString('config','Banco','');
    ComboBox1.ItemIndex:=StrToInt(ini.ReadString('config','local',''));
    Edit1.Text:=ini.ReadString('config','Servidor','');
    Edit2.Text:=ini.ReadString('config','usuario','');
    Edit3.Text:=ini.ReadString('config','senha','');
   end;
end;

procedure TFrmInicial.FormShow(Sender: TObject);
begin
   if DM.MdfeConnection.Connected=true then
     begin
      //   DM.MdfeConnection.Connected := True;
           //dm.Emitente.Open;
           DM.REGIAO.Open;
           DM.CD_Mdf_Dados.Open;
           DM.CD_Mdfe_l_carregamentoTable.Open;
           DM.CD_Mdfe_uf_percursoTable.Open;
           DM.CD_Mdfe_l_descarregamentoTable.Open;
           DM.CD_Mdfe_condutorTable.Open;
           DM.CD_Mdfe_v_reboqueTable.Open;
           DM.CD_Nfe_mdfTable.Open;
           DM.CD_MDFe_Config.Open;
          // DM.CD_Nota_FiscalTable.Open;
          end;

end;

procedure TFrmInicial.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
   begin
   if Length(OpenDialog1.FileName)<>0 then
      Edit4.Text:=OpenDialog1.FileName

   end;
end;

end.
