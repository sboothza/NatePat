object frmDatabase: TfrmDatabase
  Left = 0
  Top = 0
  Caption = 'frmDatabase'
  ClientHeight = 448
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 602
    Top = 0
    Width = 169
    Height = 448
    Align = alRight
    TabOrder = 1
    object btnEdit: TButton
      Left = 38
      Top = 15
      Width = 75
      Height = 25
      Caption = 'btnEdit'
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnRefresh: TButton
      Left = 38
      Top = 66
      Width = 75
      Height = 25
      Caption = 'btnRefresh'
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object btnBack: TButton
      Left = 38
      Top = 121
      Width = 75
      Height = 25
      Caption = 'btnBack'
      TabOrder = 2
    end
  end
  object dbgDatabase: TDBGrid
    Left = 0
    Top = 0
    Width = 602
    Height = 448
    Align = alClient
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
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vram_type'
        Title.Caption = 'vram type'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vram'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'warranty'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'in_stock'
        Title.Caption = 'in stock'
        Width = 50
        Visible = True
      end>
  end
end
