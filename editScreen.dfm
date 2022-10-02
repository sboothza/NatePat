object frmEdit: TfrmEdit
  Left = 0
  Top = 0
  Caption = 'frmEdit'
  ClientHeight = 260
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnInsert: TButton
    Left = 40
    Top = 32
    Width = 75
    Height = 25
    Caption = 'btnInsert'
    TabOrder = 0
    OnClick = btnInsertClick
  end
  object btnEdit: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'btnEdit'
    TabOrder = 1
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 40
    Top = 144
    Width = 75
    Height = 25
    Caption = 'btnDelete'
    TabOrder = 2
    OnClick = btnDeleteClick
  end
  object btnBack: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'btnBack'
    TabOrder = 3
    OnClick = btnBackClick
  end
end
