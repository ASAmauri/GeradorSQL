unit GeradorSql.Controller.Interfaces;

interface

uses
  System.Classes;

type
  iControllerGeradorSql = interface
    ['{459D9D4F-94FA-42CB-BA35-F7592EC07D12}']
    procedure AdicionarColuna(pValue : String);
    procedure AdicionarTabela(pValue : String);
    procedure AdicionarCondicoes(pValue : String);
    function GerarSQL : String;
  end;
implementation

end.
