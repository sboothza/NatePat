object dmInv: TdmInv
  OldCreateOrder = False
  Height = 92
  Width = 189
  object conInvDatabase: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=H:\src\sboothza\Nat' +
      'ePat\Inventory.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 16
  end
  object tblInv: TADOTable
    Active = True
    Connection = conInvDatabase
    CursorType = ctStatic
    TableName = 'stock'
    Left = 80
    Top = 16
  end
  object dscInv: TDataSource
    DataSet = tblInv
    Left = 136
    Top = 16
  end
end
