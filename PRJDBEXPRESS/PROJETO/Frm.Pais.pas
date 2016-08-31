unit Frm.Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Cadastro.Localizacao, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB, Unt.FrmPrincipal;

type
  TFrmPais = class(TForm)
    DataSourcePais: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdtCodigo: TDBEdit;
    DBEdtSigla: TDBEdit;
    DBEdtNome: TDBEdit;
    DBEdtBACEN: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

procedure TFrmPais.FormCreate(Sender: TObject);
begin
DmCadastroLocalizacao.CdsPais.Open;
end;

procedure TFrmPais.FormDestroy(Sender: TObject);
begin
DmCadastroLocalizacao.CdsPais.Close;
end;

end.
