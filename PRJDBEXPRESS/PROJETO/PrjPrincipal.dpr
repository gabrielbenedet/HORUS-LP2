program PrjPrincipal;

uses
  Vcl.Forms,
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Dm.DataBase in 'Dm.DataBase.pas' {DmDataBase: TDataModule},
  Unt.FrmPrincipal in 'Unt.FrmPrincipal.pas' {FrmPrincipal},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Estado in 'Frm.Estado.pas' {FrmEstado},
  Frm.Cidade in 'Frm.Cidade.pas' {FrmCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TDmDataBase, DmDataBase);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
