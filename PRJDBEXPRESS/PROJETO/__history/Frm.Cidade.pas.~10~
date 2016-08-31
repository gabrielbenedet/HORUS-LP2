unit Frm.Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Cadastro.Localizacao, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB;

type
  TFrmCidade = class(TForm)
    DataSourceCidade: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DataSourceFK: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCidade: TFrmCidade;

implementation

{$R *.dfm}

procedure TFrmCidade.FormCreate(Sender: TObject);
begin
DmCadastroLocalizacao.CdsCidade.Open;
end;

procedure TFrmCidade.FormDestroy(Sender: TObject);
begin
DmCadastroLocalizacao.CdsEstado.Close;
end;

end.
