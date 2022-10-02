unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Database, Datamodule_u;

type
  TForm2 = class(TForm)
    btnShowDatabase: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure btnShowDatabaseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnShowDatabaseClick(Sender: TObject);
begin
  Datamodule_u.dmInv.tblInv.Active := True;
  frmDatabase.ShowModal;

end;

end.
