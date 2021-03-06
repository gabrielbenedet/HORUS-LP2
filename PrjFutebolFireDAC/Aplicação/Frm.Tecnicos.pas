unit Frm.Tecnicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrmTecnicos = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    DsTencicos: TDataSource;
    DsPais: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTecnicos: TFrmTecnicos;

implementation

{$R *.dfm}

uses Componentes, Frm.Pais;

procedure TFrmTecnicos.FormCreate(Sender: TObject);
begin
Componentes.DmComponentes.QryTecnicos.Open;
Componentes.DmComponentes.QryPais.Open;
end;

procedure TFrmTecnicos.FormDestroy(Sender: TObject);
begin
Componentes.DmComponentes.QryTecnicos.Close;
Componentes.DmComponentes.QryPais.Close;
end;

end.
