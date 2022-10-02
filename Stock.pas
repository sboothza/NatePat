unit Stock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Datamodule_u;

type
  TfrmStock = class(TForm)
    btnPurchase: TButton;
    btnSell: TButton;
    btnBack: TButton;
    procedure btnPurchaseClick(Sender: TObject);
    procedure btnSellClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStock: TfrmStock;

implementation

{$R *.dfm}

procedure TfrmStock.btnPurchaseClick(Sender: TObject);
var
  iNewStock, iBrokenStock : integer;
  sNewStockForProduct : String;
begin

  sNewStockForProduct := Inputbox('CARD NAME','What product has new stock?','GTX 1660 SUPER XS');
  with dminv do
    begin

      if tblInv.Locate('CARD NAME', sNewStockForProduct, []) = true then
        begin
          dmInv.TblInv.Edit;
          iTodaysDate
          iNewStock := StrtoInt(Inputbox('IN STOCK','How much came in?','20'));
          iBrokenStock := StrToint(Inputbox('IN STOCK','How many of the items were broken?','2'));
          tblInv['IN STOCK'] := tblInv['IN STOCK'] + iNewStock;
          dmInv.tblinv.Post;
        end
        else
          Showmessage('Record not found');
    end;

end;

procedure TfrmStock.btnSellClick(Sender: TObject);
var
  iSoldStock : Integer;
  sSoldStock : String;
begin

  sSoldStock := inputbox('CARD NAME','What product was sold?','GTX 1660 SUPER XS');
  with dmInv do
    begin

      if tblinv.Locate('CARD NAME', sSoldStock, []) = true then
        begin
          dmInv.tblInv.Edit;
          iSoldStock := StrToint(inputbox('IN STOCK','How much was sold?','20'));
          tblinv['IN STOCK'] := tblInv['IN STOCK'] - iSoldStock;
          dminv.tblInv.Post;
        end;
    end;
end;

end.
