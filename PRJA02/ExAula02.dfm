object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exercicio Aula'
  ClientHeight = 458
  ClientWidth = 780
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
  object Button1: TButton
    Left = 16
    Top = 351
    Width = 113
    Height = 25
    Caption = 'Limpar Dados'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 8
    Top = 399
    Width = 113
    Height = 25
    Caption = 'Limpar Dados'
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 458
    Align = alClient
    TabOrder = 2
    ExplicitTop = -1
    ExplicitHeight = 480
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 778
      Height = 72
      Align = alTop
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 66
        Height = 13
        Caption = 'Valor do Filtro'
      end
      object BtnAdicionarFiltro: TButton
        Left = 392
        Top = 19
        Width = 113
        Height = 25
        Caption = 'Adicionar Filtro'
        TabOrder = 0
      end
      object BtnRemoverFiltro: TButton
        Left = 520
        Top = 19
        Width = 113
        Height = 25
        Caption = 'Remover Filtro'
        TabOrder = 1
      end
      object EdtValordoFiltro: TEdit
        Left = 96
        Top = 21
        Width = 241
        Height = 21
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 73
      Width = 778
      Height = 384
      Align = alClient
      Caption = 'Controles de Navega'#231#227'o e Edi'#231#227'o'
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 79
      ExplicitHeight = 406
      object Label2: TLabel
        Left = 615
        Top = 263
        Width = 145
        Height = 13
        Caption = 'Total dos Produtos Agregados'
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 15
        Width = 774
        Height = 34
        DataSource = DataSource
        Align = alTop
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 49
        Width = 774
        Height = 208
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
            FieldName = 'Id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Visible = True
          end>
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 263
        Width = 125
        Height = 140
        TabOrder = 2
        object BtnLimparDados: TButton
          Left = 3
          Top = 16
          Width = 113
          Height = 25
          Caption = 'Limpar Dados'
          TabOrder = 0
          OnClick = BtnLimparDadosClick
        end
        object BtnIndexarporID: TButton
          Left = 3
          Top = 47
          Width = 113
          Height = 25
          Caption = 'Indexar por ID'
          TabOrder = 1
          OnClick = BtnIndexarporIDClick
        end
        object BtnIndexarporNome: TButton
          Left = 3
          Top = 78
          Width = 113
          Height = 25
          Caption = 'Indexar por Nome'
          TabOrder = 2
          OnClick = BtnIndexarporNomeClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 134
        Top = 263
        Width = 155
        Height = 140
        Caption = 'Percorrer e Localizar'
        TabOrder = 3
        object Label3: TLabel
          Left = 16
          Top = 21
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object EdtPercorrerLoc: TEdit
          Left = 16
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object BtnPercorer: TButton
          Left = 16
          Top = 80
          Width = 121
          Height = 25
          Caption = 'Percorrer'
          TabOrder = 1
          OnClick = BtnPercorerClick
        end
      end
      object Locate: TGroupBox
        Left = 295
        Top = 263
        Width = 154
        Height = 140
        Caption = 'Locate'
        TabOrder = 4
        object Label4: TLabel
          Left = 16
          Top = 21
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object EdtLocate: TEdit
          Left = 19
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object BtnLocate: TButton
          Left = 16
          Top = 80
          Width = 121
          Height = 25
          Caption = 'Locate'
          TabOrder = 1
        end
      end
      object FindKey: TGroupBox
        Left = 455
        Top = 263
        Width = 154
        Height = 140
        Caption = 'FindKey'
        TabOrder = 5
        object Label5: TLabel
          Left = 16
          Top = 21
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object EdtFindKey: TEdit
          Left = 16
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object BtnFindKey: TButton
          Left = 16
          Top = 80
          Width = 121
          Height = 25
          Caption = 'FindKey'
          TabOrder = 1
        end
      end
      object DBETotalProdutos: TDBEdit
        Left = 615
        Top = 295
        Width = 145
        Height = 21
        DataSource = DataSource
        TabOrder = 6
      end
    end
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = ClientDataSetCalcFields
    Left = 584
    Top = 192
    object ClientDataSetId: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSetNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSetValor: TCurrencyField
      FieldName = 'Valor'
    end
    object ClientDataSetQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSetTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSetProdutosTotal: TAggregateField
      FieldName = 'ProdutosTotal'
      DisplayName = ''
      Expression = 'SUM(Quantidade * Valor)'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 512
    Top = 192
  end
end
