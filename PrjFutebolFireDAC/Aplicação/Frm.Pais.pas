unit Frm.Pais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmPais = class(TForm)
    DBNavigator1: TDBNavigator;
    DsPais: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
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

uses Conexao, Componentes, Frm.Principal;

procedure TFrmPais.FormCreate(Sender: TObject);
begin
Componentes.DmComponentes.QryPais.Open;

end;
procedure TFrmPais.FormDestroy(Sender: TObject);
begin
Componentes.DmComponentes.QryPais.Close;
end;

end.
