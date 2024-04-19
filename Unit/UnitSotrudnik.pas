unit UnitSotrudnik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, ADODB, Grids, DBGrids;

type
  TFormSotrydnik = class(TForm)
    PanelSOne: TPanel;
    LabelSOne: TLabel;
    Image1: TImage;
    LabelSThree: TLabel;
    LabelSFor: TLabel;
    PageControlS: TPageControl;
    TabSheetSOne: TTabSheet;
    Image4: TImage;
    TabSheetSTwo: TTabSheet;
    Image6: TImage;
    TabSheetSThree: TTabSheet;
    Image5: TImage;
    DBGridSOne: TDBGrid;
    ADOConnectionSOne: TADOConnection;
    ADOQuerySOne: TADOQuery;
    DataSourceSOne: TDataSource;
    DBGridSThree: TDBGrid;
    DataSourceSTwo: TDataSource;
    ADOConnectionSTwo: TADOConnection;
    ADOQuerySTwo: TADOQuery;
    DBGrid2: TDBGrid;
    DataSourceSThree: TDataSource;
    ADOConnectionSThree: TADOConnection;
    ADOQueryThree: TADOQuery;
    ButtonOne: TButton;
    ButtonTwo: TButton;
    ButtonThree: TButton;
    ButtonFor: TButton;
    ButtonFive: TButton;
    ButtonSix: TButton;
    ButtonSeven: TButton;
    ButtonEight: TButton;
    ButtonNine: TButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    ButtonTen: TButton;
    Image8: TImage;
    Image2: TImage;
    LabelS: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    procedure LabelSOneClick(Sender: TObject);
    procedure LabelSThreeClick(Sender: TObject);
    procedure LabelSForClick(Sender: TObject);
    procedure ButtonTwoClick(Sender: TObject);
    procedure ButtonThreeClick(Sender: TObject);
    procedure ButtonOneClick(Sender: TObject);
    procedure ButtonForClick(Sender: TObject);
    procedure ButtonFiveClick(Sender: TObject);
    procedure ButtonSixClick(Sender: TObject);
    procedure ButtonSevenClick(Sender: TObject);
    procedure ButtonEightClick(Sender: TObject);
    procedure ButtonNineClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure DBGridSThreeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridSOneDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSotrydnik: TFormSotrydnik;

implementation

{$R *.dfm}

procedure TFormSotrydnik.LabelSOneClick(Sender: TObject);
begin
PageControlS.ActivePageIndex := 0;
LabelSOne.Font.Style := LabelSOne.Font.Style + [fsUnderline];
LabelSThree.Font.Style := LabelSThree.Font.Style - [fsUnderline];
LabelSFor.Font.Style := LabelSFor.Font.Style - [fsUnderline];
end;

procedure TFormSotrydnik.LabelSThreeClick(Sender: TObject);
begin
PageControlS.ActivePageIndex := 1;
LabelSOne.Font.Style := LabelSOne.Font.Style - [fsUnderline];
LabelSThree.Font.Style := LabelSThree.Font.Style + [fsUnderline];
LabelSFor.Font.Style := LabelSFor.Font.Style - [fsUnderline];
end;

procedure TFormSotrydnik.LabelSForClick(Sender: TObject);
begin
PageControlS.ActivePageIndex := 2;
LabelSOne.Font.Style := LabelSOne.Font.Style - [fsUnderline];
LabelSThree.Font.Style := LabelSThree.Font.Style - [fsUnderline];
LabelSFor.Font.Style := LabelSFor.Font.Style + [fsUnderline];
end;


procedure TFormSotrydnik.ButtonTwoClick(Sender: TObject);
begin
ADOQuerySOne.Insert;
ADOQuerySOne.FieldByName('Имя').AsString := '';
ADOQuerySOne.FieldByName('Фамилия').AsString := '';
ADOQuerySOne.FieldByName('Телефон').AsInteger := 8;
ADOQuerySOne.FieldByName('Снять/сдать').AsString := '';
end;


procedure TFormSotrydnik.ButtonThreeClick(Sender: TObject);
begin
if ADOQuerySOne.RecordCount > 0 then
ADOQuerySOne.Delete;
end;


procedure TFormSotrydnik.ButtonOneClick(Sender: TObject);
begin
try
ADOQuerySOne.Active:=True;
ADOQuerySOne.Post;
except
on e:Exception do
end;
end;

procedure TFormSotrydnik.ButtonForClick(Sender: TObject);
begin
try
ADOQuerySTwo.Active:=True;
ADOQuerySTwo.Post;
except
on e:Exception do
end;
end;

procedure TFormSotrydnik.ButtonFiveClick(Sender: TObject);
begin
ADOQuerySTwo.Insert;
ADOQuerySTwo.FieldByName('Адрес').AsString := '';
ADOQuerySTwo.FieldByName('Комнаты').AsString := '';
ADOQuerySTwo.FieldByName('Этажность').AsString := '';
ADOQuerySTwo.FieldByName('Комплатеж').AsString := '';
ADOQuerySTwo.FieldByName('Стоимость').AsString := '';
ADOQuerySTwo.FieldByName('Имя').AsString := '';
ADOQuerySTwo.FieldByName('Фамилия').AsString := '';
ADOQuerySTwo.FieldByName('Телефон').AsString := '';
end;

procedure TFormSotrydnik.ButtonSixClick(Sender: TObject);
begin
if ADOQuerySTwo.RecordCount > 0 then
ADOQuerySTwo.Delete;
end;

procedure TFormSotrydnik.ButtonSevenClick(Sender: TObject);
begin
if ADOQueryThree.RecordCount > 0 then
    ADOQueryThree.Delete;
end;

procedure TFormSotrydnik.ButtonEightClick(Sender: TObject);
begin
ADOQueryThree.Insert;
ADOQueryThree.FieldByName('ФИО').AsString := '';
ADOQueryThree.FieldByName('Номер телефона').AsString := '';
end;

procedure TFormSotrydnik.ButtonNineClick(Sender: TObject);
begin
try
ADOQueryThree.Active:=True;
ADOQueryThree.Post;
except
on e:Exception do
end;
end;

procedure TFormSotrydnik.Image1Click(Sender: TObject);
begin
  if PanelSOne.Left < -1 then
    PanelSOne.Left := -1
  else if PanelSOne.Left >= -1 then
    PanelSOne.Left := -240;
end;

procedure TFormSotrydnik.Image4Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 1;
end;

procedure TFormSotrydnik.Image2Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 0;
end;

procedure TFormSotrydnik.Image6Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 1;
end;

procedure TFormSotrydnik.Image5Click(Sender: TObject);
begin
PageControl2.ActivePageIndex := 1;
end;






procedure TFormSotrydnik.DBGridSThreeDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridSThree.Canvas.Brush.Color := clWhite;
  DBGridSThree.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;


procedure TFormSotrydnik.DBGridSOneDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridSOne.Canvas.Brush.Color := clWhite;
  DBGridSOne.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormSotrydnik.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid2.Canvas.Brush.Color := clWhite;
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
