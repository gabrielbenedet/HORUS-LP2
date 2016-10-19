unit Frm.Tatica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmTatica = class(TForm)
    DBNavigator1: TDBNavigator;
    DsTatica: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTatica: TFrmTatica;

implementation

{$R *.dfm}

uses Componentes;

procedure TFrmTatica.FormCreate(Sender: TObject);
begin
Componentes.DmComponentes.QryTatica.Open;
end;

procedure TFrmTatica.FormDestroy(Sender: TObject);
begin
Componentes.DmComponentes.QryTatica.Close;
end;

end.
