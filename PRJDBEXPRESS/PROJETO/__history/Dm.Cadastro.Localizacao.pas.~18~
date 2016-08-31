unit Dm.Cadastro.Localizacao;

interface

uses
  System.SysUtils, System.Classes, Dm.Database, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDmCadastroLocalizacao = class(TDataModule)
    SdsPais: TSQLDataSet;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    SdsPaisPAI_CODIGO: TIntegerField;
    SdsPaisPAI_NOME: TStringField;
    SdsPaisPAI_SIGLA: TStringField;
    SdsPaisPAI_BACEN: TIntegerField;
    CdsPaisPAI_CODIGO: TIntegerField;
    CdsPaisPAI_NOME: TStringField;
    CdsPaisPAI_SIGLA: TStringField;
    CdsPaisPAI_BACEN: TIntegerField;
    CdsEstado: TClientDataSet;
    DspEstado: TDataSetProvider;
    SdsEstado: TSQLDataSet;
    SdsEstadoEST_CODIGO: TIntegerField;
    SdsEstadoEST_NOME: TStringField;
    SdsEstadoEST_PAI_CODIGO: TIntegerField;
    SdsEstadoEST_SIGLA: TStringField;
    CdsEstadoEST_CODIGO: TIntegerField;
    CdsEstadoEST_NOME: TStringField;
    CdsEstadoEST_PAI_CODIGO: TIntegerField;
    CdsEstadoEST_SIGLA: TStringField;
    CdsEstadoPAI_NOME: TStringField;
    SdsCidade: TSQLDataSet;
    DspCidade: TDataSetProvider;
    CdsCidade: TClientDataSet;
    SdsCidadeCID_CODIGO: TIntegerField;
    SdsCidadeCID_EST_CODIGO: TIntegerField;
    SdsCidadeCID_IBGE: TIntegerField;
    SdsCidadeCID_NOME: TStringField;
    CdsCidadeCID_CODIGO: TIntegerField;
    CdsCidadeCID_NOME: TStringField;
    CdsCidadeCID_IBGE: TIntegerField;
    CdsCidadeCID_EST_CODIGO: TIntegerField;
    CdsCidadeEST_NOME: TStringField;
    procedure CdsPaisAfterPost(DataSet: TDataSet);
    procedure CdsPaisAfterDelete(DataSet: TDataSet);
    procedure CdsEstadoAfterDelete(DataSet: TDataSet);
    procedure CdsEstadoAfterPost(DataSet: TDataSet);
    procedure CdsCidadeAfterDelete(DataSet: TDataSet);
    procedure CdsCidadeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroLocalizacao: TDmCadastroLocalizacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroLocalizacao.CdsCidadeAfterDelete(DataSet: TDataSet);
begin
CdsCidade.ApplyUpdates(0)
end;

procedure TDmCadastroLocalizacao.CdsCidadeAfterPost(DataSet: TDataSet);
begin
CdsCidade.ApplyUpdates(0)
end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterDelete(DataSet: TDataSet);
begin
CdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterPost(DataSet: TDataSet);
begin
CdsEstado.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterDelete(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);
end;

procedure TDmCadastroLocalizacao.CdsPaisAfterPost(DataSet: TDataSet);
begin
CdsPais.ApplyUpdates(0);
end;

end.
