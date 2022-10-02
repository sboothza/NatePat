program PAT;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form2},
  Database in 'Database.pas' {frmDatabase},
  Datamodule_u in 'Datamodule_u.pas' {dmInv: TDataModule},
  editScreen in 'editScreen.pas' {frmEdit},
  Stock in 'Stock.pas' {frmStock};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmDatabase, frmDatabase);
  Application.CreateForm(TdmInv, dmInv);
  Application.CreateForm(TfrmEdit, frmEdit);
  Application.CreateForm(TfrmStock, frmStock);
  Application.Run;
end.
