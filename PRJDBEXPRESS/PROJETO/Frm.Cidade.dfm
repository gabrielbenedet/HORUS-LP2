object FrmCidade: TFrmCidade
  Left = 0
  Top = 0
  Caption = 'Frm.Cidade'
  ClientHeight = 346
  ClientWidth = 658
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
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 658
    Height = 25
    DataSource = DataSourceCidade
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 145
    Width = 658
    Height = 200
    Align = alTop
    DataSource = DataSourceCidade
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CID_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_IBGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_EST_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NOME'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 25
    Width = 658
    Height = 120
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label3: TLabel
      Left = 520
      Top = 64
      Width = 23
      Height = 13
      Caption = 'IBGE'
    end
    object Label4: TLabel
      Left = 520
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 25
      Width = 465
      Height = 21
      DataField = 'CID_NOME'
      DataSource = DataSourceCidade
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 520
      Top = 25
      Width = 121
      Height = 21
      DataField = 'CID_CODIGO'
      DataSource = DataSourceCidade
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 520
      Top = 83
      Width = 121
      Height = 21
      DataField = 'CID_IBGE'
      DataSource = DataSourceCidade
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 83
      Width = 465
      Height = 21
      DataField = 'CID_EST_CODIGO'
      DataSource = DataSourceCidade
      KeyField = 'EST_CODIGO'
      ListField = 'EST_NOME'
      ListSource = DataSourceFK
      TabOrder = 3
    end
  end
  object DataSourceCidade: TDataSource
    DataSet = DmCadastroLocalizacao.CdsCidade
    Left = 560
    Top = 240
  end
  object DataSourceFK: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 464
    Top = 240
  end
end
