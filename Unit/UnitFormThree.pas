unit UnitFormThree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormVyhod = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVyhod: TFormVyhod;

implementation

uses UnitMain;

{$R *.dfm}

procedure TFormVyhod.Button1Click(Sender: TObject);
begin
formVyhod.close;
end;

end.
