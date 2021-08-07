unit UFrm_Rellog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.ExtCtrls, RzPanel, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, RzCmboBx, Vcl.Mask, RzEdit, Vcl.DBCtrls, RLReport, RzDBEdit,
  Vcl.Imaging.pngimage, RzLabel, Vcl.Imaging.jpeg, RLFilters, RLPDFFilter,
  System.ImageList, Vcl.ImgList, dxGDIPlusClasses;

type
  TFrm_Rellog = class(TForm)
    Prov_Relatorio: TDataSetProvider;
    DBGrid1: TDBGrid;
    RzPanel1: TRzPanel;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLBand3: TRLBand;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID_USER: TIntegerField;
    ClientDataSet1DATA: TDateField;
    ClientDataSet1HORA: TTimeField;
    ClientDataSet1PROCESSO: TStringField;
    ClientDataSet1DOC: TIntegerField;
    ClientDataSet1COMPUTADOR: TStringField;
    ClientDataSet1DADOS: TMemoField;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1NOME: TStringField;
    SQLDataSet1: TSQLDataSet;
    DataSource1: TDataSource;
    SQLQuery1: TSQLQuery;
    RzDBMemo1: TRzDBMemo;
    RzPanel2: TRzPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RzComboBox3: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox1: TRzComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RLImage1: TRLImage;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    Image1: TImage;
    RLPDFFilter1: TRLPDFFilter;
    ImageList2: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Rellog: TFrm_Rellog;

implementation

{$R *.dfm}

uses UDM, UFrmPrincipal;

procedure TFrm_Rellog.Button1Click(Sender: TObject);
begin

     ClientDataSet1.close;

     ClientDataSet1.PARAMS[0].AsDate:=RzDateTimeEdit1.Date-1;
     ClientDataSet1.PARAMS[1].AsDate:=RzDateTimeEdit2.Date+1;
     ClientDataSet1.PARAMS[2].text := RzComboBox1.Value;
     ClientDataSet1.PARAMS[3].text := RzComboBox2.Value;
     ClientDataSet1.PARAMS[4].text := RzComboBox3.Value;
   //  ClientDataSet1.PARAMS[5].asinteger := Frm_Principal.empresa;
     ClientDataSet1.OPEN;



end;

procedure TFrm_Rellog.Button2Click(Sender: TObject);
begin
     RLReport1.PreviewModal;
end;

procedure TFrm_Rellog.Button3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Rellog.FormCreate(Sender: TObject);
begin
        RzDateTimeEdit1.Date:=DATE-5;
        RzDateTimeEdit2.Date:=DATE+5;


      if dm.MdfeConnection.Connected=true then
          begin
          RzComboBox1.Items.Add('<<TODOS>>');
          RzComboBox2.Items.Add('<<TODOS>>');
          RzComboBox3.Items.Add('<<TODOS>>');

          RzComboBox1.values.Add('%');
          RzComboBox2.values.Add('%');
          RzComboBox3.values.Add('%');


          SQLQuery1.Close;
          sqlquery1.SQL.Clear;
          sqlquery1.SQL.Add('select  mdf_usuario.NOME from mdf_usuario where mdf_usuario.status = 0');
          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox1.Items.Add(SQLQuery1.FieldByName('NOME').AsString);
            RzComboBox1.Values.Add('%'+SQLQuery1.FieldByName('NOME').AsString+'%');
            SQLQuery1.next;
            end;







          SQLQuery1.Close;
          sqlquery1.SQL.Clear;
          sqlquery1.SQL.Add('select distinct mdf_log.computador from mdf_log');



          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox2.Items.Add(SQLQuery1.FieldByName('COMPUTADOR').AsString);
            RzComboBox2.VALUES.Add(SQLQuery1.FieldByName('COMPUTADOR').AsString);
            SQLQuery1.next;
            end;





           SQLQuery1.Close;
          sqlquery1.SQL.Clear;
          sqlquery1.SQL.Add('select distinct mdf_log.processo from mdf_log');




          SQLQuery1.open;
          SQLQuery1.First;
          while not SQLQuery1.Eof do
            begin
            RzComboBox3.Items.Add(SQLQuery1.FieldByName('processo').AsString);
            RzComboBox3.VALUES.Add(SQLQuery1.FieldByName('processo').AsString);
            SQLQuery1.next;
            end;





              RzComboBox1.ItemIndex:=0;
              RzComboBox2.ItemIndex:=0;
              RzComboBox3.ItemIndex:=0;
          end;
end;

procedure TFrm_Rellog.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin


      if RLBand2.Color=clWhite then
         RLBand2.Color:=clGradientInactiveCaption
         else
         RLBand2.Color:=clwhite;

end;

end.
