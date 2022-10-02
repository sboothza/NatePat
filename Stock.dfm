object frmStock: TfrmStock
  Left = 0
  Top = 0
  Caption = 'frmStock'
  ClientHeight = 192
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnPurchase: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btnPurchase'
    TabOrder = 0
    OnClick = btnPurchaseClick
  end
  object btnSell: TButton
    Left = 32
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btnSell'
    TabOrder = 1
    OnClick = btnSellClick
  end
  object btnBack: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = 'btnBack'
    TabOrder = 2
  end
end
