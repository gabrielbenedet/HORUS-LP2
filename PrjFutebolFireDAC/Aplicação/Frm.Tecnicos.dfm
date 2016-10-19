object FrmTecnicos: TFrmTecnicos
  Left = 0
  Top = 0
  Caption = 'FrmTecnicos'
  ClientHeight = 310
  ClientWidth = 504
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
    Left = 8
    Top = 39
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 8
    Top = 85
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 8
    Top = 130
    Width = 19
    Height = 13
    Caption = 'Pa'#237's'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 0
    Width = 490
    Height = 33
    DataSource = DsTencicos
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 58
    Width = 121
    Height = 21
    DataField = 'TEC_CODIGO'
    DataSource = DsTencicos
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 104
    Width = 490
    Height = 21
    DataField = 'TEC_NOME'
    DataSource = DsTencicos
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 144
    Width = 490
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsTencicos
    KeyField = 'PAI_CODIGO'
    ListField = 'PAI_NOME'
    ListSource = DsPais
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 171
    Width = 488
    Height = 131
    DataSource = DsTencicos
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TEC_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEC_NOME'
        Visible = True
      end>
  end
  object DsTencicos: TDataSource
    DataSet = DmComponentes.QryTecnicos
    Left = 432
    Top = 48
  end
  object DsPais: TDataSource
    DataSet = DmComponentes.QryPais
    Left = 368
    Top = 48
  end
end
