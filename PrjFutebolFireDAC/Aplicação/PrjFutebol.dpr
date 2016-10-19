program PrjFutebol;

uses
  Vcl.Forms,
  Componentes in 'Componentes.pas' {DmComponentes: TDataModule},
  Conexao in 'Conexao.pas' {DmConexao: TDataModule},
  Frm.Cuble.Jogadores in 'Frm.Cuble.Jogadores.pas' {FrmClubeJogadores},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Tatica in 'Frm.Tatica.pas' {FrmTatica},
  Frm.Tecnicos in 'Frm.Tecnicos.pas' {FrmTecnicos},
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmComponentes, DmComponentes);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
