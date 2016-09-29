unit Frm.VeiculoMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls;

type
  TFrmVeiculoMultas = class(TForm)
    DBNavigator1: TDBNavigator;
    DsVeiculo: TDataSource;
    DsMultas: TDataSource;
    DsProprietario: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculoMultas: TFrmVeiculoMultas;

implementation

{$R *.dfm}

uses DmConexoes;

procedure TFrmVeiculoMultas.FormCreate(Sender: TObject);
begin
DmConexoes.DataModule2.QryProprietario.Open;
DmConexoes.DataModule2.QryMultas.Open;
DmConexoes.DataModule2.QryVeiculos.Open;
end;

procedure TFrmVeiculoMultas.FormDestroy(Sender: TObject);
begin
DmConexoes.DataModule2.QryProprietario.Close;
DmConexoes.DataModule2.QryMultas.Close;
DmConexoes.DataModule2.QryVeiculos.Close;
end;

end.
