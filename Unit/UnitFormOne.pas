unit UnitFormOne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormZayavka = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZayavka: TFormZayavka;

implementation

{$R *.dfm}

procedure TFormZayavka.Button1Click(Sender: TObject);
var
  saveTxt, nametxt: TStringList;
  Login, Password, FullName: string;
begin
  saveTxt := TStringList.Create;
  nametxt := TStringList.Create;
  try
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    nametxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') and (Edit4.Text <> '') and (Edit5.Text <> '') then
    begin
      FullName := Format('%s %s %s', [Edit1.Text, Edit2.Text, Edit3.Text]);
      Login := Edit4.Text;
      Password := Edit5.Text;
      saveTxt.Add(Login + ' ' + Password);
      nametxt.Add(FullName);
      saveTxt.SaveToFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
      nametxt.SaveToFile(ExtractFilePath(Application.ExeName) + 'name.txt');
      Close;
    end
    else
    Showmessage('¬ведите все данные');

  finally
    saveTxt.Free;
    nametxt.Free;
  end;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
end;
end.

