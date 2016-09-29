unit DmConexoes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule2 = class(TDataModule)
    FDConnection: TFDConnection;
    QryProprietario: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QryProprietarioPRP_CODIGO: TIntegerField;
    QryProprietarioPRP_NOME: TStringField;
    QryProprietarioPRP_ENDERECO: TStringField;
    QryMultas: TFDQuery;
    QryVeiculos: TFDQuery;
    DsMestreVeiculo: TDataSource;
    QryVeiculosVEI_CODIGO: TIntegerField;
    QryVeiculosVEI_MARCA: TStringField;
    QryVeiculosVEI_MODELO: TStringField;
    QryVeiculosVEI_ANO: TIntegerField;
    QryVeiculosPRP_CODIGO: TIntegerField;
    QryMultasVEI_CODIGO: TIntegerField;
    QryMultasMLT_ITEM: TIntegerField;
    QryMultasMLT_DATA: TDateField;
    QryMultasMLT_HORA: TTimeField;
    QryMultasMLT_VALOR: TBCDField;
    QryMultasMLT_LOCAL: TStringField;
    QryVeiculosVEI_PLACA: TStringField;
    procedure QryMultasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.QryMultasAfterInsert(DataSet: TDataSet);
begin
QryMultasVEI_CODIGO.AsInteger := QryVeiculosVEI_CODIGO.AsInteger;
end;

end.
