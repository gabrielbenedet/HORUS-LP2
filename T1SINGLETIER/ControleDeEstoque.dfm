object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Estoque - Aplica'#231#227'o Single Tier Delphi'
  ClientHeight = 470
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 113
    Width = 852
    Height = 357
    Align = alClient
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 850
      Height = 72
      Align = alTop
      Caption = 'Pesquisa, Ordena'#231#227'o e Filtragem'
      TabOrder = 0
      object Label5: TLabel
        Left = 20
        Top = 26
        Width = 33
        Height = 13
        Caption = 'Campo'
      end
      object Label10: TLabel
        Left = 171
        Top = 26
        Width = 24
        Height = 13
        Caption = 'A'#231#227'o'
      end
      object Label11: TLabel
        Left = 328
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object CBoxCampo: TComboBox
        Left = 20
        Top = 40
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'Codigo'
        Items.Strings = (
          'Codigo'
          'Descricao'
          'Unidade'
          'Fornecedor'
          'Data'
          'Quantidade'
          'Unitario'
          'Total'
          'Estoque Quantidade'
          'Estoque Valor')
      end
      object CBoxAcao: TComboBox
        Left = 171
        Top = 40
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 1
        Text = 'Indexar'
        OnChange = CBoxAcaoChange
        Items.Strings = (
          'Indexar'
          'Locate'
          'FindKey'
          'Limpar'
          'Percorrer'
          'Filtrar'
          'Limpar Filtro')
      end
      object EdtValor: TEdit
        Left = 328
        Top = 40
        Width = 313
        Height = 21
        TabOrder = 2
      end
      object BtnExecutar: TButton
        Left = 658
        Top = 38
        Width = 183
        Height = 25
        Caption = 'Executar'
        TabOrder = 3
        OnClick = BtnExecutarClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 73
      Width = 850
      Height = 200
      Align = alTop
      DataSource = DataSource
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fornecedor'
          Width = 177
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 88
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 273
      Width = 850
      Height = 105
      Align = alTop
      Caption = 'Totais'
      TabOrder = 2
      object Label12: TLabel
        Left = 368
        Top = 40
        Width = 115
        Height = 13
        Caption = 'Quantidade em Estoque'
      end
      object TLabel
        Left = 616
        Top = 40
        Width = 83
        Height = 13
        Caption = 'Valor em Estoque'
      end
      object DBEdtQntEmEstoque: TDBEdit
        Left = 489
        Top = 37
        Width = 121
        Height = 21
        DataField = 'EstoqueQtd'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBEdtVlrEmEstoque: TDBEdit
        Left = 706
        Top = 37
        Width = 121
        Height = 21
        DataField = 'EstoqueVlr'
        DataSource = DataSource
        TabOrder = 1
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 852
    Height = 25
    DataSource = DataSource
    Align = alTop
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 25
    Width = 852
    Height = 88
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 4
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 167
      Top = 4
      Width = 46
      Height = 13
      Caption = 'Descricao'
    end
    object Label4: TLabel
      Left = 167
      Top = 43
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label6: TLabel
      Left = 549
      Top = 43
      Width = 37
      Height = 13
      Caption = 'Unitario'
    end
    object Label7: TLabel
      Left = 416
      Top = 43
      Width = 97
      Height = 13
      Caption = 'Quantidade (+ ou -)'
    end
    object Label8: TLabel
      Left = 695
      Top = 43
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label9: TLabel
      Left = 695
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object DBEdtCodigo: TDBEdit
      Left = 24
      Top = 18
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = DataSource
      TabOrder = 0
    end
    object DBEdtData: TDBEdit
      Left = 24
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Data'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdtUnitario: TDBEdit
      Left = 549
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Unitario'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBEdtQuantidade: TDBEdit
      Left = 416
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Quantidade'
      DataSource = DataSource
      TabOrder = 3
    end
    object DBEdtDescricao: TDBEdit
      Left = 167
      Top = 18
      Width = 503
      Height = 21
      DataField = 'Descricao'
      DataSource = DataSource
      TabOrder = 4
    end
    object DBEdtFornecedor: TDBEdit
      Left = 167
      Top = 56
      Width = 242
      Height = 21
      DataField = 'Fornecedor'
      DataSource = DataSource
      TabOrder = 5
    end
    object DBEdtTotal: TDBEdit
      Left = 695
      Top = 56
      Width = 121
      Height = 21
      DataField = 'Total'
      DataSource = DataSource
      TabOrder = 6
    end
    object DBEdtUnidade: TDBEdit
      Left = 695
      Top = 18
      Width = 121
      Height = 21
      DataField = 'Unidade'
      DataSource = DataSource
      TabOrder = 7
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Filtered = True
    Params = <>
    BeforePost = ClientDataSetBeforePost
    OnCalcFields = ClientDataSetCalcFields
    Left = 704
    Top = 232
    object ClientDataSetCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSetDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object ClientDataSetUnidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object ClientDataSetFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object ClientDataSetData: TDateField
      FieldName = 'Data'
    end
    object ClientDataSetQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSetUnitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object ClientDataSetTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSetEstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade)'
    end
    object ClientDataSetEstoqueVlr: TAggregateField
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade*Unitario)'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 784
    Top = 232
  end
end
