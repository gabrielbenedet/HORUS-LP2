object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'FrmPais'
  ClientHeight = 285
  ClientWidth = 527
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
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 83
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 520
    Height = 33
    DataSource = DsPais
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    DataField = 'PAI_CODIGO'
    DataSource = DsPais
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 102
    Width = 511
    Height = 21
    DataField = 'PAI_NOME'
    DataSource = DsPais
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 132
    Width = 511
    Height = 145
    DataSource = DsPais
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Visible = True
      end>
  end
  object DsPais: TDataSource
    DataSet = DmComponentes.QryPais
    Left = 472
    Top = 40
  end
end
