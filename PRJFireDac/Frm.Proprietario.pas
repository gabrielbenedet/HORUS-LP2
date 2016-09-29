unit Frm.Proprietario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmProprietario = class(TForm)
    DBNavigator1: TDBNavigator;
    DsProprietario: TDataSource;
    GroupBox1: TGroupBox;
    DBEdtCodigo: TDBEdit;
    DBEdtNome: TDBEdit;
    DBEdtEndereco: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietario: TFrmProprietario;

implementation

{$R *.dfm}

uses DmConexoes;

procedure TFrmProprietario.FormCreate(Sender: TObject);
begin
DmConexoes.DataModule2.QryProprietario.Open;
end;

procedure TFrmProprietario.FormDestroy(Sender: TObject);
begin
DmConexoes.DataModule2.QryProprietario.Close;
end;

end.
