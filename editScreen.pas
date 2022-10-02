unit editScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Datamodule_u;

type
  TfrmEdit = class(TForm)
    btnInsert: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnBack: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdit: TfrmEdit;

implementation

{$R *.dfm}

procedure TfrmEdit.btnBackClick(Sender: TObject);
begin
  frmEdit.Hide;
end;

procedure TfrmEdit.btnDeleteClick(Sender: TObject);
var
  iID : Integer;
begin
  iID := StrToInt(Inputbox('ID', 'ID that must be deleted',''));

  with dmInv do
    begin
      if tblInv.Locate('ID', iID, []) = true then
        begin
          tblInv.Delete;
          showmessage('Record Deleted');
        end;

    end;


end;

procedure TfrmEdit.btnInsertClick(Sender: TObject);
  var
  sCardName, sVramType, sVramAmount, sWarranty : String;
  iPrice : Integer;
begin
  sCardName :=  Inputbox('CARD NAME', 'Enter the Card name:', 'GTX 1650s');
  sVramType :=  Inputbox('VRAM TYPE', 'Enter the VRAM type:', 'GDDR6');
  sVramAmount :=  Inputbox('VRAM', 'Enter the amount of VRAM on the card:', '16 GB');
  sWarranty :=  Inputbox('WARRANTY', 'Enter the warranty, - if no warranty:', '3 Years');
  iPrice := StrToInt(Inputbox('PRICE', 'Enter the price of the CARD', '2499'));

  dmInv.tblInv.Insert;
  dmInv.tblInv['CARD NAME'] := sCardName;
  dmInv.tblInv['VRAM TYPE'] := sVramType;
  dmInv.tblInv['VRAM'] := sVramAmount;
  dmInv.tblInv['Warranty'] := sWarranty;
  dmInv.tblInv['PRICE'] := iPrice;
end;

end.
