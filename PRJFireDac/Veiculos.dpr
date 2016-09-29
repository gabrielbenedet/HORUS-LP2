program Veiculos;

uses
  Vcl.Forms,
  Frm.Proprietario in 'Frm.Proprietario.pas' {FrmProprietario},
  DmConexoes in 'DmConexoes.pas' {DataModule2: TDataModule},
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Frm.VeiculoMultas in 'Frm.VeiculoMultas.pas' {FrmVeiculoMultas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmVeiculoMultas, FrmVeiculoMultas);
  Application.Run;
end.
