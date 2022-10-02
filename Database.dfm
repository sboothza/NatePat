object frmDatabase: TfrmDatabase
  Left = 0
  Top = 0
  Caption = 'frmDatabase'
  ClientHeight = 365
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgDatabase: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 291
    DataSource = dmInv.dscInv
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARD NAME'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRAM TYPE'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VRAM'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WARRANTY'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IN STOCK'
        Width = 80
        Visible = True
      end>
  end
  object btnEdit: TButton
    Left = 528
    Top = 39
    Width = 75
    Height = 25
    Caption = 'btnEdit'
    TabOrder = 1
    OnClick = btnEditClick
  end
  object btnRefresh: TButton
    Left = 528
    Top = 122
    Width = 75
    Height = 25
    Caption = 'btnRefresh'
    TabOrder = 2
    OnClick = btnRefreshClick
  end
  object btnBack: TButton
    Left = 528
    Top = 265
    Width = 75
    Height = 25
    Caption = 'btnBack'
    TabOrder = 3
  end
  object btnNvidia: TButton
    Left = 8
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Nvidia'
    TabOrder = 4
    OnClick = btnNvidiaClick
  end
  object btnAMD: TButton
    Left = 89
    Top = 297
    Width = 75
    Height = 25
    Caption = 'AMD'
    TabOrder = 5
    OnClick = btnAMDClick
  end
end
