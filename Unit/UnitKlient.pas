unit UnitKlient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, DB, ADODB;

type
  TFormKlient = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Button1: TButton;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button2: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Image3: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label21: TLabel;
    Label24: TLabel;
    Edit12: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit11: TEdit;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Image5: TImage;
    Image8: TImage;
    Button6: TButton;
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
  procedure SetFullName(const FullName: string);
    { Public declarations }
  end;

var
  FormKlient: TFormKlient;

implementation

uses UnitFormThree, Unit9, UnitFormTwo;

{$R *.dfm}

procedure TFormKlient.Image1Click(Sender: TObject);
begin
  if Panel1.Left < -1 then
    Panel1.Left := -1
  else if Panel1.Left >= -1 then
    Panel1.Left := -240;
end;

procedure TFormKlient.Label1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex := 0;
Label1.Font.Style := Label1.Font.Style + [fsUnderline];
Label2.Font.Style := Label2.Font.Style - [fsUnderline];
Label3.Font.Style := Label3.Font.Style - [fsUnderline];
Label4.Font.Style := Label4.Font.Style - [fsUnderline];
end;
procedure TFormKlient.Label2Click(Sender: TObject);
begin
PageControl1.ActivePageIndex := 1;
Label1.Font.Style := Label1.Font.Style - [fsUnderline];
Label2.Font.Style := Label2.Font.Style + [fsUnderline];
Label3.Font.Style := Label3.Font.Style - [fsUnderline];
Label4.Font.Style := Label4.Font.Style - [fsUnderline];
end;

procedure TFormKlient.Label3Click(Sender: TObject);
begin
PageControl1.ActivePageIndex := 2;
Label1.Font.Style := Label1.Font.Style - [fsUnderline];
Label2.Font.Style := Label2.Font.Style - [fsUnderline];
Label3.Font.Style := Label3.Font.Style + [fsUnderline];
Label4.Font.Style := Label4.Font.Style - [fsUnderline];

end;

procedure TFormKlient.Label4Click(Sender: TObject);
begin
PageControl1.ActivePageIndex := 3;
Label1.Font.Style := Label1.Font.Style - [fsUnderline];
Label2.Font.Style := Label2.Font.Style - [fsUnderline];
Label3.Font.Style := Label3.Font.Style - [fsUnderline];
Label4.Font.Style := Label4.Font.Style + [fsUnderline];
end;


procedure TFormKlient.Button3Click(Sender: TObject);
begin
if (edit1.Text <> '') and (edit2.Text <> '')and (edit3.Text <> '')and (edit4.Text <> '')and (edit5.Text <> '')
and(edit6.Text <> '') and (edit7.Text <> '')and (edit8.Text <> '')and (edit9.Text <> '')and (edit10.Text <> '') then
  begin
    ADOQuery1.SQL.Text := 'INSERT INTO `pay` (`�����`, `�������`, `���������`,`����`, `���������`, `�������� ����� ������`, `���������`, `���`, `�������`, `�������`) ' +
                      'VALUES (:Field1Value, :Field2Value, :Field3Value, :Field4Value, :Field5Value, :Field6Value, :Field7Value, :Field8Value, :Field9Value,:Field10Value)';


    ADOQuery1.Parameters.ParamByName('Field1Value').Value := edit1.Text;
    ADOQuery1.Parameters.ParamByName('Field2Value').Value := edit2.Text;
    ADOQuery1.Parameters.ParamByName('Field3Value').Value := edit3.Text;
    ADOQuery1.Parameters.ParamByName('Field4Value').Value := edit4.Text;
    ADOQuery1.Parameters.ParamByName('Field5Value').Value := edit5.Text;
    ADOQuery1.Parameters.ParamByName('Field6Value').Value := edit6.Text;
    ADOQuery1.Parameters.ParamByName('Field7Value').Value := edit7.Text;
    ADOQuery1.Parameters.ParamByName('Field8Value').Value := edit8.Text;
    ADOQuery1.Parameters.ParamByName('Field9Value').Value := edit9.Text;
    ADOQuery1.Parameters.ParamByName('Field10Value').Value := edit10.Text;
    ADOQuery1.ExecSQL;
    FormVyhod.Show;
  end
  else
    ShowMessage('����������, ������� ������!');
end;


procedure TFormKlient.Button4Click(Sender: TObject);
begin
  if (edit11.Text <> '') and (edit12.Text <> '') then
  begin
    ADOQuery1.SQL.Text := 'INSERT INTO `ipot` (`���`, `����� ��������`) VALUES (:Field1Value, :Field2Value)';
    ADOQuery1.Parameters.ParamByName('Field1Value').Value := edit11.Text;
    ADOQuery1.Parameters.ParamByName('Field2Value').Value := edit12.Text;
    ADOQuery1.ExecSQL;
    FormVyhod.Show;
  end
  else
    ShowMessage('����������, ������� ������!');
end;

procedure TFormKlient.Image4Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 1;
end;

procedure TFormKlient.Button2Click(Sender: TObject);
begin
FormZayavkaTwo.show;
end;

procedure TFormKlient.Button1Click(Sender: TObject);
begin
FormZayavkaTwo.ShowModal;
end;

procedure TFormKlient.Image5Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 0;
end;

procedure TFormKlient.Button6Click(Sender: TObject);
begin
close;
end;

procedure TFormKlient.FormCreate(Sender: TObject);
var
  nameTxt, saveTxt: TStringList;
  FullName: string;
  i: integer;
begin
  nameTxt := TStringList.Create;
  saveTxt := TStringList.Create;
  try
    nameTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    FullName := '';
    for i := 0 to nameTxt.Count - 1 do begin
      if nameTxt[i] = saveTxt[i] then begin
          FullName := nameTxt[i];
          Label29.Caption := '�������: ' + FullName;
        end;
      end;
  finally
    nameTxt.Free;
    saveTxt.Free;
  end;
end;

 procedure TFormKlient.SetFullName(const FullName: string);
begin
  Label29.Caption := '�������: ' + FullName;
end;


end.
