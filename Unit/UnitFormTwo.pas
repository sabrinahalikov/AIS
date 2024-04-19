unit UnitFormTwo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TFormZayavkaTwo = class(TForm)
    ButtonZOne: TButton;
    LabelZOne: TLabel;
    LabelZTwo: TLabel;
    LabelZThree: TLabel;
    LabelZFor: TLabel;
    LabelZFive: TLabel;
    EditZayavkaOne: TEdit;
    EditZayavkaTwo: TEdit;
    EditZayavkaThree: TEdit;
    EditZayavkaFor: TEdit;
    DataSourceZayavka: TDataSource;
    ADOConnectionZayavka: TADOConnection;
    ADOQueryZayavka: TADOQuery;
    procedure ButtonZOneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZayavkaTwo: TFormZayavkaTwo;

implementation

uses UnitFormThree;

{$R *.dfm}

procedure TFormZayavkaTwo.ButtonZOneClick(Sender: TObject);
begin
if (EditZayavkaOne.Text <> '') and (EditZayavkaTwo.Text <> '')and (EditZayavkaThree.Text <> '')and (EditZayavkaFor.Text <> '') then
  begin
    ADOQueryZayavka.SQL.Text := 'INSERT INTO `buy` (`Имя`, `Фамилия`, `Телефон`, `Снять/сдать`) VALUES (:Field1Value, :Field2Value, :Field3Value, :Field4Value)';
    ADOQueryZayavka.Parameters.ParamByName('Field1Value').Value := EditZayavkaOne.Text;
    ADOQueryZayavka.Parameters.ParamByName('Field2Value').Value := EditZayavkaTwo.Text;
    ADOQueryZayavka.Parameters.ParamByName('Field3Value').Value := EditZayavkaThree.Text;
    ADOQueryZayavka.Parameters.ParamByName('Field4Value').Value := EditZayavkaFor.Text;
    ADOQueryZayavka.ExecSQL;
    FormVyhod.Show;
  end
  else
    ShowMessage('Пожалуйста, введите данные!');
end;

end.
