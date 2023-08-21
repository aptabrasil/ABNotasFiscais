unit uPessoaRoute;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, Horse, uIJsonResults, uJsonResult, uModelsInterfaces,
  uModelPessoa;

type

  { tPessoaRoute }

  tPessoaRoute = class
  private
  public
    constructor Create;
    destructor Destroy; override;
    class procedure LOad;
  end;
var  FResult : IJsonResult;
  FPessoa : iModelPessoa;

implementation

{ tPessoaRoute }
procedure onPessoa(aReq : THorseRequest; aRes : THorseResponse);
var Fresult : TJsonResult;
    FPessoa : iModelPessoa;
begin
  try
    Fresult := TJsonResult.Create;
    FPessoa := TModelPessoa.New;
    aRes.ContentType('application/json').Send(FPessoa.findall);
  finally
    FreeAndNil(Fresult);
  end;
end;

constructor tPessoaRoute.Create;
begin
  FResult := TJsonResult.New;
  FPessoa := TModelPessoa.New;
end;

destructor tPessoaRoute.Destroy;
begin
  inherited Destroy;
end;

class procedure tPessoaRoute.LOad;
begin
  THorse.Get('/pessoa', onPessoa);
end;

end.

