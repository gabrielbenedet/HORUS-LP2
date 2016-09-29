unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    BtnProprietarios: TButton;
    Button1: TButton;
    procedure BtnProprietariosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Frm.Proprietario, Frm.VeiculoMultas;

procedure TFrmPrincipal.BtnProprietariosClick(Sender: TObject);
var
vFrmProprietarios: TFrmProprietario;
begin
  vFrmProprietarios := TFrmProprietario.Create(nil);
   
   try
    vFrmProprietarios.ShowModal; 
   finally
   FreeAndNil(vFrmProprietarios);
     
   end;
    
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
vFrmVeiculosMultas: TFrmVeiculoMultas;

begin
vFrmVeiculosMultas := TFrmVeiculoMultas.Create(nil);
try
 vFrmVeiculosMultas.ShowModal;
finally
  FreeAndNil(vFrmVeiculosMultas);

end;
end;

end.
