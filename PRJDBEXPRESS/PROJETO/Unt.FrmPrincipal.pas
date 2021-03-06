unit Unt.FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Dm.Cadastro.Localizacao;

type
  TFrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Frm.Pais, Frm.Estado, Frm.Cidade;

procedure TFrmPrincipal.Cidade1Click(Sender: TObject);
var
vFrmCidade: TFrmCidade;

begin
vFrmCidade := TFrmCidade.Create(nil);
  try
    vFrmCidade.ShowModal;
  finally
  FreeAndNil(vFrmCidade);

  end;
end;

procedure TFrmPrincipal.Estado1Click(Sender: TObject);
var
vFrmEstado: TFrmEstado;

begin
vFrmEstado := TFrmEstado.Create(nil);
  try
    vFrmEstado.ShowModal;
  finally
  FreeAndNil(vFrmEstado);

  end;
end;

procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
vFrmPais: TFrmPais;

begin
vFrmPais := TFrmPais.Create(nil);
  try
    vFrmPais.ShowModal;
  finally
  FreeAndNil(vFrmPais);

  end;
end;

end.
