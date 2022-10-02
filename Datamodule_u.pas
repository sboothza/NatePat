unit Datamodule_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmInv = class(TDataModule)
    conInvDatabase: TADOConnection;
    tblInv: TADOTable;
    dscInv: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInv: TdmInv;

implementation

{$R *.dfm}

end.
