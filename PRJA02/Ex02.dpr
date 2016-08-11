program Ex02;

uses
  Vcl.Forms,
  ExAula02 in 'ExAula02.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
