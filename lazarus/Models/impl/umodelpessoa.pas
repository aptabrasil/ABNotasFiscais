unit uModelPessoa;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils,uModelsInterfaces, uEnuns, uConexao, uJsonResult,
  DataSet.Serialize;

type

  { TModelPessoa }

  TModelPessoa = class(TInterfacedObject, iModelPessoa)
  private
    FConexao : TConexao;
    FJsonResul : TJsonResult;
    FId : integer;
    FNome : string;
    FCpfCnpj : string;
    FTipoPessoa : TipoPessoa;
    FCliente : boolean;
    FFornecedor : boolean;
    FIdEndereco : integer;
    function Id : integer; overload;
    function Id(aValue : integer) : iModelPessoa; overload;
    function Nome : string; overload;
    function Nome(aValue : string) : iModelPessoa; overload;
    function CpfCnpj : string; overload;
    function CpfCnpj(aValue : string) : iModelPessoa; overload;
    function TipoPessoa : TipoPessoa; overload;
    function TipoPessoa(aValue : TipoPessoa) : iModelPessoa; overload;
    function Cliente : boolean; overload;
    function Cliente(aValue : boolean) : iModelPessoa; overload;
    function Fornecedor : boolean; overload;
    function Fornecedor(aValue : boolean) : iModelPessoa; overload;
    function IdEndereco : integer; overload;
    function IdEndereco(aValue : integer) : iModelPessoa; overload;
    function findall : string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iModelPessoa;
  end;

implementation

{ TModelPessoa }

function TModelPessoa.Id: integer;
begin
  Result := Fid;
end;

function TModelPessoa.Id(aValue: integer): iModelPessoa;
begin
  Result := self;
  FId := aValue;
end;

function TModelPessoa.Nome: string;
begin
  Result := Nome;
end;

function TModelPessoa.Nome(aValue: string): iModelPessoa;
begin
  Result := self;
  FNome := aValue;
end;

function TModelPessoa.CpfCnpj: string;
begin
  Result := CpfCnpj;
end;

function TModelPessoa.CpfCnpj(aValue: string): iModelPessoa;
begin
  FCpfCnpj := aValue;
  Result := self;
end;

function TModelPessoa.TipoPessoa: TipoPessoa;
begin
  Result := TipoPessoa;
end;

function TModelPessoa.TipoPessoa(aValue: TipoPessoa): iModelPessoa;
begin
  Result := self;
  FTipoPessoa := aValue;
end;

function TModelPessoa.Cliente: boolean;
begin
  Result := Cliente;
end;

function TModelPessoa.Cliente(aValue: boolean): iModelPessoa;
begin
  Result := self;
  FCliente := aValue;
end;

function TModelPessoa.Fornecedor: boolean;
begin
  Result := Fornecedor;
end;

function TModelPessoa.Fornecedor(aValue: boolean): iModelPessoa;
begin
  Result := self;
  FFornecedor := aValue;
end;

function TModelPessoa.IdEndereco: integer;
begin
  Result := IdEndereco;
end;

function TModelPessoa.IdEndereco(aValue: integer): iModelPessoa;
begin
  Result := self;
  FIdEndereco := aValue;
end;

function TModelPessoa.findall: String;
begin
  FConexao.criarQuery('select * from "NotasFiscais"."Pessoa"');
  Result := FJsonResul.New.success(true) .data(FConexao.Query.ToJSONArray()).ToString;
end;

constructor TModelPessoa.Create;
begin
  FConexao := TConexao.Create;
  FJsonResul := TJsonResult.Create;
end;

destructor TModelPessoa.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(FJsonResul);
  inherited Destroy;
end;

class function TModelPessoa.New: iModelPessoa;
begin
  Result :=  self.Create;
end;

end.

