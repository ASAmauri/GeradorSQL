unit GeradorSql.Controller.GeradorSql;

interface

uses
  GeradorSql.Controller.Interfaces, System.Classes;

type
  TControllerGeradorSql = class(TInterfacedObject, iControllerGeradorSql)
  private
    FListaAux : TStringList;
    FColunas : TStringList;
    FTabelas : TStringList;
    FCondicoes : TStringList;
    FSql : TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerGeradorSql;
    procedure AdicionarColuna(pValue : String);
    procedure AdicionarTabela(pValue : String);
    procedure AdicionarCondicoes(pValue : String);
    function GerarSQL : String;
    procedure MontaLista(pLista : TStringList; pValue : String);
  end;

implementation

{ TControllerGeradorSqlFactory }

procedure TControllerGeradorSql.AdicionarColuna(pValue : String);
begin
  MontaLista(FColunas, pValue);
end;

procedure TControllerGeradorSql.AdicionarTabela(pValue : String);
begin
  MontaLista(FTabelas, pValue);
end;

procedure TControllerGeradorSql.AdicionarCondicoes(pValue : String);
var
  I: Integer;
begin
  FListaAux.Text := pValue;
  for I := 0 to Pred(FListaAux.Count) do
  begin
    if (I = 0) then
      FCondicoes.Add(FListaAux[I])
    else
      FCondicoes.Add('AND   ' + FListaAux[I]);
  end;
end;

constructor TControllerGeradorSql.Create;
begin
  FListaAux := TStringList.Create;
  FColunas := TStringList.Create;
  FColunas.Delimiter := ',';
  FTabelas := TStringList.Create;
  FTabelas.Delimiter := ',';
  FCondicoes := TStringList.Create;
  FSql := TStringList.Create;
end;

destructor TControllerGeradorSql.Destroy;
begin
  FListaAux.Free;
  FColunas.Free;
  FTabelas.Free;
  FCondicoes.Free;
  inherited;
end;

function TControllerGeradorSql.GerarSQL: String;
begin
  FSql.Add('SELECT ' + FColunas.DelimitedText);
  FSql.Add('FROM   ' + FTabelas.DelimitedText);
  FSql.Add('WHERE  ' + FCondicoes.Text);
  Result := FSql.Text;
end;

procedure TControllerGeradorSql.MontaLista(pLista: TStringList; pValue: String);
var
  I: Integer;
begin
  FListaAux.Text := pValue;
  for I := 0 to FListaAux.Count-1 do
    pLista.Add(FListaAux[I])
end;

class function TControllerGeradorSql.New: iControllerGeradorSql;
begin
  Result := Self.Create;
end;

end.
