unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ImgList, ComCtrls;

type
  TFormMain = class(TForm)
    ButtonOne: TButton;
    ButtonTwo: TButton;
    ButtonThree: TButton;
    ImageOne: TImage;
    LabelOSN: TLabel;
    PageControlOSN: TPageControl;
    TabSheetOSNOne: TTabSheet;
    TabSheetOSNTwo: TTabSheet;
    LabelThree: TLabel;
    LabelTwo: TLabel;
    Image2: TImage;
    EditVhodTwo: TEdit;
    EditVhodOne: TEdit;
    TabSheetOSNThree: TTabSheet;
    Labelfive: TLabel;
    LabelFor: TLabel;
    LabelSix: TLabel;
    EditVhodThree: TEdit;
    EditVhodFor: TEdit;
    Button6: TButton;
    Button4: TButton;
    function GetFullNameFromNameFile(Index: Integer): string;
    procedure ButtonThreeClick(Sender: TObject);
    procedure ButtonOneClick(Sender: TObject);
    procedure ButtonTwoClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GlobalLogin: string;
  GlobalPassword: string;
  FormMain: TFormMain;
  MontserratFont: TFont;
implementation

uses UnitFormOne, Unit3, Unit7, UnitKlient, UnitSotrudnik;

{$R *.dfm}


procedure TFormMain.ButtonThreeClick(Sender: TObject);
begin
FormZayavka.ShowModal;
end;

procedure TFormMain.ButtonOneClick(Sender: TObject);
begin
PageControlOSN.ActivePageIndex := 1;
end;

procedure TFormMain.ButtonTwoClick(Sender: TObject);
begin
PageControlOSN.ActivePageIndex := 2;
end;


procedure TFormMain.Button6Click(Sender: TObject);
var
  saveTxt: TStringList;
  i: Integer;
  LoginandPassword: string;
begin
  GlobalLogin := EditVhodOne.Text;
  GlobalPassword := EditVhodTwo.Text;
  saveTxt := TStringList.Create;
  try
    saveTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'reg.txt');
    LoginandPassword := Trim(EditVhodOne.Text) + ' ' + Trim(EditVhodTwo.Text);
    for i := 0 to saveTxt.Count - 1 do
    begin
      if LoginandPassword = Trim(saveTxt[i]) then
      begin
        // Передаем ФИО в Form4
        FormKlient.SetFullName(GetFullNameFromNameFile(i));
        FormKlient.Show;
        Exit;
      end;
    end;
    ShowMessage('Неправильные данные!');
  finally
    saveTxt.Free;
  end;
end;

// Функция для получения ФИО из 'name.txt' по индексу
function TFormMain.GetFullNameFromNameFile(Index: Integer): string;
var
  nameTxt: TStringList;
begin
  Result := ''; // Инициализируем результат
  nameTxt := TStringList.Create;
  try
    nameTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'name.txt');
    // Проверка, чтобы индекс не выходил за границы массива nameTxt
    if (Index < nameTxt.Count) then
      Result := nameTxt[Index];
  finally
    nameTxt.Free;
  end;
end;

procedure TFormMain.Button4Click(Sender: TObject);
var
  Login, Password: string;
begin
Login:='1'; Password:='1';
 if (EditVhodFor.text=login) and (EditVhodThree.text=password) then begin
    formSotrydnik.show;
  EditVhodFor.text:='';
  EditVhodThree.text:='';
  end
  else
  showmessage('Неверные данные!');
end;

end.

