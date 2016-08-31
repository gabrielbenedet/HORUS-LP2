unit Dm.DataBase;

interface

uses
  System.SysUtils, System.Classes,Data.DbxFirebird, Data.DB, Data.SqlExpr;

type
  TDmDataBase = class(TDataModule)
    Conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDataBase: TDmDataBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
