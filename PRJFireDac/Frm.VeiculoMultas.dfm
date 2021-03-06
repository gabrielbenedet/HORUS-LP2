object FrmVeiculoMultas: TFrmVeiculoMultas
  Left = 0
  Top = 0
  Caption = 'Veiculos e Multas'
  ClientHeight = 538
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 74
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label2: TLabel
    Left = 8
    Top = 74
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Label3: TLabel
    Left = 168
    Top = 74
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label4: TLabel
    Left = 496
    Top = 74
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label5: TLabel
    Left = 8
    Top = 31
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label6: TLabel
    Left = 8
    Top = 115
    Width = 56
    Height = 13
    Caption = 'Proprietario'
  end
  object Label7: TLabel
    Left = 336
    Top = 319
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label8: TLabel
    Left = 168
    Top = 319
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label9: TLabel
    Left = 496
    Top = 319
    Width = 40
    Height = 13
    Caption = 'R$ Valor'
  end
  object Label10: TLabel
    Left = 8
    Top = 365
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object Label11: TLabel
    Left = 8
    Top = 319
    Width = 22
    Height = 13
    Caption = 'Item'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 717
    Height = 25
    DataSource = DsVeiculo
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 64
    ExplicitWidth = 240
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 134
    Width = 609
    Height = 21
    DataField = 'PRP_CODIGO'
    DataSource = DsVeiculo
    KeyField = 'PRP_CODIGO'
    ListField = 'PRP_NOME'
    ListSource = DsProprietario
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 88
    Width = 121
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculo
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 496
    Top = 88
    Width = 121
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculo
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 336
    Top = 93
    Width = 137
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculo
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 168
    Top = 88
    Width = 137
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculo
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 47
    Width = 121
    Height = 21
    DataField = 'VEI_CODIGO'
    DataSource = DsVeiculo
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 171
    Width = 701
    Height = 102
    DataSource = DsVeiculo
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Width = 115
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = -1
    Top = 288
    Width = 710
    Height = 25
    DataSource = DsMultas
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 338
    Width = 121
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 168
    Top = 338
    Width = 137
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 336
    Top = 338
    Width = 137
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 496
    Top = 338
    Width = 121
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 12
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 411
    Width = 701
    Height = 120
    DataSource = DsMultas
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Visible = True
      end>
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 384
    Width = 609
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 14
  end
  object DsVeiculo: TDataSource
    DataSet = DataModule2.QryVeiculos
    Left = 664
    Top = 128
  end
  object DsMultas: TDataSource
    DataSet = DataModule2.QryMultas
    Left = 664
    Top = 80
  end
  object DsProprietario: TDataSource
    DataSet = DataModule2.QryProprietario
    Left = 664
    Top = 32
  end
end
