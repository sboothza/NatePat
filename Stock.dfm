object frmStock: TfrmStock
  Left = 0
  Top = 0
  Caption = 'frmStock'
  ClientHeight = 254
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
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
  object DBEdit1: TDBEdit
    Left = 288
    Top = 48
    Width = 121
    Height = 21
    DataField = 'name'
    DataSource = dmInv.dscInv
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 288
    Top = 75
    Width = 145
    Height = 21
    DataField = 'name'
    DataSource = dmInv.dscInv
    ListField = 'name'
    ListSource = DataSource1
    TabOrder = 4
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 168
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = dmInv.conInvDatabase
    CursorType = ctStatic
    CommandText = 'SELECT DISTINCT name FROM stock'
    DataSource = DataSource1
    Parameters = <>
    Left = 88
    Top = 184
  end
end
