unit Database;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Datamodule_u, EditScreen;

type
  TfrmDatabase = class(TForm)
    dbgDatabase: TDBGrid;
    btnEdit: TButton;
    btnRefresh: TButton;
    btnBack: TButton;
    btnNvidia: TButton;
    btnAMD: TButton;
    procedure btnNvidiaClick(Sender: TObject);
    procedure btnAMDClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatabase: TfrmDatabase;

implementation

{$R *.dfm}


procedure TfrmDatabase.btnEditClick(Sender: TObject);
begin
  frmEdit.Show;
end;

procedure TfrmDatabase.btnNvidiaClick(Sender: TObject);
begin
  Datamodule_u.dmInv.tblInv.Active := False;
  Datamodule_u.dmInv.tblInv.TableName := 'Nvidia';
  Datamodule_u.dmInv.tblInv.Active := True;
end;

procedure TfrmDatabase.btnRefreshClick(Sender: TObject);
begin
  dmInv.tblInv.Active := False;
  dmInv.tblInv.Active := True;
end;

procedure TfrmDatabase.btnAMDClick(Sender: TObject);
begin
  Datamodule_u.dmInv.tblInv.Active := False;
  Datamodule_u.dmInv.tblInv.TableName := 'AMD';
  Datamodule_u.dmInv.tblInv.Active := True;
end;

end.
