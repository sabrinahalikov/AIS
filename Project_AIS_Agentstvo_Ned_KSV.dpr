program Project_AIS_Agentstvo_Ned_KSV;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitFormOne in 'UnitFormOne.pas' {FormZayavka},
  UnitKlient in 'UnitKlient.pas' {FormKlient},
  UnitFormTwo in 'UnitFormTwo.pas' {FormZayavkaTwo},
  UnitFormThree in 'UnitFormThree.pas' {FormVyhod},
  UnitSotrudnik in 'UnitSotrudnik.pas' {FormSotrydnik};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormZayavka, FormZayavka);
  Application.CreateForm(TFormKlient, FormKlient);
  Application.CreateForm(TFormZayavkaTwo, FormZayavkaTwo);
  Application.CreateForm(TFormVyhod, FormVyhod);
  Application.CreateForm(TFormSotrydnik, FormSotrydnik);
  Application.Run;
end.
