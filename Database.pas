unit Database;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Datamodule_u, EditScreen, ExtCtrls, Menus;

type
  TfrmDatabase = class(TForm)
    dbgDatabase: TDBGrid;
    Panel1: TPanel;
    btnEdit: TButton;
    btnRefresh: TButton;
    btnBack: TButton;
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
  frmEdit.ShowModal;
end;

procedure TfrmDatabase.btnRefreshClick(Sender: TObject);
begin
  dmInv.tblInv.Active := False;
  dmInv.tblInv.Active := True;
end;

end.
