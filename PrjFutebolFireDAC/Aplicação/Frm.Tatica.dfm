object FrmTatica: TFrmTatica
  Left = 0
  Top = 0
  Caption = 'FrmTatica'
  ClientHeight = 341
  ClientWidth = 544
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
    Top = 48
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 94
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 8
    Top = 140
    Width = 43
    Height = 13
    Caption = 'Esquema'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 0
    Width = 530
    Height = 33
    DataSource = DsTatica
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 67
    Width = 121
    Height = 21
    DataField = 'TAT_CODIGO'
    DataSource = DsTatica
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 113
    Width = 521
    Height = 21
    DataField = 'TAT_DESCRICAO'
    DataSource = DsTatica
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 159
    Width = 521
    Height = 21
    DataField = 'TAT_ESQUEMA'
    DataSource = DsTatica
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 186
    Width = 521
    Height = 147
    DataSource = DsTatica
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TAT_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAT_ESQUEMA'
        Visible = True
      end>
  end
  object DsTatica: TDataSource
    DataSet = DmComponentes.QryTatica
    Left = 496
    Top = 40
  end
end
