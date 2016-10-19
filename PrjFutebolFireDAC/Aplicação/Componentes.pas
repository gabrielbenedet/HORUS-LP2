unit Componentes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmComponentes = class(TDataModule)
    QryPais: TFDQuery;
    DsMestreClube: TDataSource;
    QryPaisPAI_CODIGO: TIntegerField;
    QryPaisPAI_NOME: TStringField;
    QryTatica: TFDQuery;
    QryTecnicos: TFDQuery;
    QryJogador: TFDQuery;
    QryTaticaTAT_CODIGO: TIntegerField;
    QryTaticaTAT_DESCRICAO: TStringField;
    QryTaticaTAT_ESQUEMA: TStringField;
    QryTecnicosTEC_CODIGO: TIntegerField;
    QryTecnicosPAI_CODIGO: TIntegerField;
    QryTecnicosTEC_NOME: TStringField;
    QryClube: TFDQuery;
    QryClubeCLB_CODIGO: TIntegerField;
    QryClubeTAT_CODIGO: TIntegerField;
    QryClubeTEC_CODIGO: TIntegerField;
    QryClubePAI_CODIGO: TIntegerField;
    QryClubeCLB_NOME: TStringField;
    QryClubeCLB_ESTADIO: TStringField;
    QryClubeCLB_DTFUNDACAO: TDateField;
    QryJogadorCLB_CODIGO: TIntegerField;
    QryJogadorJOG_NUMERO: TIntegerField;
    QryJogadorPAI_CODIGO: TIntegerField;
    QryJogadorJOG_NOME: TStringField;
    QryJogadorJOG_POSICAO: TStringField;
    QryJogadorJOG_IDADE: TIntegerField;
    QryJogadorJOG_LADO: TStringField;
    QryJogadorJOG_TITULAR: TStringField;
    QryJogadorJOG_CARACTERISTICA: TStringField;
    procedure QryJogadorAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmComponentes: TDmComponentes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Conexao;

{$R *.dfm}

procedure TDmComponentes.QryJogadorAfterInsert(DataSet: TDataSet);
begin
QryJogadorCLB_CODIGO.ASInteger := QryClubeCLB_CODIGO.AsInteger;
end;

end.
