object DmCadastroLocalizacao: TDmCadastroLocalizacao
  OldCreateOrder = False
  Height = 319
  Width = 323
  object SdsPais: TSQLDataSet
    CommandText = 'SELECT PAI_CODIGO, PAI_NOME, PAI_SIGLA, PAI_BACEN FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 40
    Top = 48
    object SdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object SdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspPais: TDataSetProvider
    DataSet = SdsPais
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 120
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 40
    Top = 184
    object CdsPaisPAI_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'PAI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPaisPAI_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'PAI_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object CdsPaisPAI_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'PAI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsPaisPAI_BACEN: TIntegerField
      DisplayLabel = 'BACEN'
      FieldName = 'PAI_BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object CdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEstado'
    AfterPost = CdsEstadoAfterPost
    AfterDelete = CdsEstadoAfterDelete
    Left = 136
    Top = 184
    object CdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'EST_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'PAI_CODIGO'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsEstadoPAI_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PAI_NOME'
      LookupDataSet = CdsPais
      LookupKeyFields = 'PAI_CODIGO'
      LookupResultField = 'PAI_NOME'
      KeyFields = 'EST_PAI_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object DspEstado: TDataSetProvider
    DataSet = SdsEstado
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 120
  end
  object SdsEstado: TSQLDataSet
    CommandText = 
      'SELECT EST_CODIGO, EST_NOME, EST_PAI_CODIGO, EST_SIGLA FROM ESTA' +
      'DO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 136
    Top = 48
    object SdsEstadoEST_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'EST_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsEstadoEST_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'EST_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsEstadoEST_PAI_CODIGO: TIntegerField
      DisplayLabel = 'PAI_CODIGO'
      FieldName = 'EST_PAI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsEstadoEST_SIGLA: TStringField
      DisplayLabel = 'SIGLA'
      FieldName = 'EST_SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
  end
  object SdsCidade: TSQLDataSet
    CommandText = 
      'SELECT CID_CODIGO, CID_EST_CODIGO, CID_IBGE, CID_NOME FROM CIDAD' +
      'E'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDataBase.Conexao
    Left = 232
    Top = 48
    object SdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsCidadeCID_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = 'EST_CODIGO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SdsCidade
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 120
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    AfterPost = CdsCidadeAfterPost
    AfterDelete = CdsCidadeAfterDelete
    Left = 232
    Top = 184
    object CdsCidadeCID_CODIGO: TIntegerField
      DisplayLabel = 'CODIGO'
      FieldName = 'CID_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCidadeCID_NOME: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CID_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'IBGE'
      FieldName = 'CID_IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCidadeCID_EST_CODIGO: TIntegerField
      DisplayLabel = 'EST_CODIGO'
      FieldName = 'CID_EST_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsCidadeEST_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'EST_NOME'
      LookupDataSet = CdsEstado
      LookupKeyFields = 'EST_CODIGO'
      LookupResultField = 'EST_NOME'
      KeyFields = 'CID_EST_CODIGO'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
end
