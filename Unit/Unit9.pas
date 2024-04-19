unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFormProfile1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image4: TImage;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfile1: TFormProfile1;

implementation

{$R *.dfm}

procedure TFormProfile1.Button1Click(Sender: TObject);
begin
close;
end;

procedure TFormProfile1.FormCreate(Sender: TObject);
var
  nameTxt: TStringList;
  FullName: string;
begin
  nameTxt := TStringList.Create;
  try
    nameTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    if nameTxt.Count >= 1 then
    begin
      FullName := nameTxt[0];
      Label2.Caption := '���: ' + FullName; 
    end;
  finally
    nameTxt.Free;
  end;
end;


end.
