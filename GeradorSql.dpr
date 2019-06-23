program GeradorSql;

uses
  Vcl.Forms,
  GeradorSql.Main in 'View\GeradorSql.Main.pas' {ManForm},
  GeradorSql.Controller.Interfaces in 'Controller\GeradorSql.Controller.Interfaces.pas',
  GeradorSql.Controller.GeradorSql in 'Controller\GeradorSql.Controller.GeradorSql.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TManForm, ManForm);
  Application.Run;
end.
