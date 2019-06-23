unit GeradorSql.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.StdCtrls,
  GeradorSql.Controller.GeradorSql,
  GeradorSql.Controller.Interfaces;

type
  TManForm = class(TForm)
    ColunasMemo: TMemo;
    TabelasMemo: TMemo;
    CondicoesMemo: TMemo;
    ColunasLabel: TLabel;
    TabelasLabel: TLabel;
    CondicoesLabel: TLabel;
    GerarSqlButton: TButton;
    Bevel1: TBevel;
    SqlMemo: TMemo;
    SqlLabel: TLabel;
    procedure GerarSqlButtonClick(Sender: TObject);
  private
    { Private declarations }
    FControllerGeradorSql : iControllerGeradorSql;
  public
    { Public declarations }
  end;

var
  ManForm: TManForm;

implementation

{$R *.dfm}

procedure TManForm.GerarSqlButtonClick(Sender: TObject);
begin
  FControllerGeradorSql := TControllerGeradorSql.New;
  FControllerGeradorSql.AdicionarColuna(ColunasMemo.Lines.Text);
  FControllerGeradorSql.AdicionarTabela(TabelasMemo.Lines.Text);
  FControllerGeradorSql.AdicionarCondicoes(CondicoesMemo.Lines.Text);
  SqlMemo.Lines.Text := FControllerGeradorSql.GerarSql;
end;

end.
