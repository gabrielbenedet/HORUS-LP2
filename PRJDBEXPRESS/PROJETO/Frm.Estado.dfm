object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  Caption = 'FrmEstado'
  ClientHeight = 256
  ClientWidth = 778
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 130
    Width = 778
    Height = 120
    Align = alTop
    DataSource = DataSourceEstado
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EST_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_PAI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EST_SIGLA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAI_NOME'
        Width = 210
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 778
    Height = 25
    DataSource = DataSourceEstado
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 585
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 25
    Width = 778
    Height = 105
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 585
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 198
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 17
      Top = 54
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object Label4: TLabel
      Left = 460
      Top = 12
      Width = 22
      Height = 13
      Caption = 'Sigla'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 17
      Top = 73
      Width = 469
      Height = 21
      DataField = 'EST_PAI_CODIGO'
      DataSource = DataSourceEstado
      KeyField = 'PAI_CODIGO'
      ListField = 'PAI_NOME'
      ListSource = DataSourceFK
      TabOrder = 0
    end
    object DBEdtCodigo: TDBEdit
      Left = 17
      Top = 26
      Width = 121
      Height = 21
      DataField = 'EST_CODIGO'
      DataSource = DataSourceEstado
      TabOrder = 1
    end
    object DBEdtNome: TDBEdit
      Left = 198
      Top = 26
      Width = 121
      Height = 21
      DataField = 'EST_NOME'
      DataSource = DataSourceEstado
      TabOrder = 2
    end
    object DBEdtSigla: TDBEdit
      Left = 460
      Top = 26
      Width = 52
      Height = 21
      DataField = 'EST_SIGLA'
      DataSource = DataSourceEstado
      TabOrder = 3
    end
  end
  object DataSourceFK: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 528
    Top = 81
  end
  object DataSourceEstado: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 528
    Top = 33
  end
end
