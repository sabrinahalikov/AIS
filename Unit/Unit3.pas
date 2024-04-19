unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Image1: TImage;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses UnitKlient, UnitSotrudnik;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  saveTxt: TStringList;
  i: Integer;
  LoginandPassword: string;
begin
  saveTxt := TStringList.Create;
  try
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    LoginandPassword := Trim(Edit1.Text) + ' ' + Trim(Edit2.Text);
    for i := 0 to saveTxt.Count - 1 do
    begin
      if LoginandPassword = Trim(saveTxt[i]) then
      begin
        FormKlient.Show;
        Close;
        Exit;
      end;
    end;
  ShowMessage('Неправильные данные!');
  finally
    saveTxt.Free;
  end;
end;

end.
