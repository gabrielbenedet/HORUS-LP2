unit Frm.Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Unt.FrmPrincipal, Dm.Cadastro.Localizacao;

type
  TFrmEstado = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdtCodigo: TDBEdit;
    DBEdtNome: TDBEdit;
    DBEdtSigla: TDBEdit;
    DataSourceFK: TDataSource;
    DataSourceEstado: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstado: TFrmEstado;

implementation

{$R *.dfm}

procedure TFrmEstado.FormCreate(Sender: TObject);
begin
DmCadastroLocalizacao.CdsEstado.Open;
end;

procedure TFrmEstado.FormDestroy(Sender: TObject);
begin
DmCadastroLocalizacao.CdsEstado.Close;
end;

end.
