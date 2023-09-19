unit uEndereco;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uCidades, uConexao, DB;

type

  { TEndereco }

  TEndereco = class
  private
    FidPessoa: integer;
    sql : string;
    FConexao : TConexao;
    Fbairro: string;
    Fcidade: TCidade;
    Fid: integer;
    Flogradouro: string;
    Fnumero: string;
    procedure Setbairro(AValue: string);
    procedure Setcidade(AValue: TCidade);
    procedure Setid(AValue: integer);
    procedure SetidPessoa(AValue: integer);
    procedure Setlogradouro(AValue: string);
    procedure Setnumero(AValue: string);
  published
    property id : integer read Fid write Setid;
    property logradouro : string read Flogradouro write Setlogradouro;
    property numero : string read Fnumero write Setnumero;
    property bairro : string read Fbairro write Setbairro;
    property cidade : TCidade read Fcidade write Setcidade;
    property idPessoa : integer read FidPessoa write SetidPessoa;
  public
    constructor Create(aConexao : TConexao);
    destructor Destroy; override;
    function findAll(aDs : TDataSource) : TEndereco;
  end;

implementation

{ TEndereco }

procedure TEndereco.Setbairro(AValue: string);
begin
  if Fbairro = AValue then Exit;
  Fbairro := AValue;
end;

procedure TEndereco.Setcidade(AValue: TCidade);
begin
  if Fcidade = AValue then Exit;
  Fcidade := AValue;
end;

procedure TEndereco.Setid(AValue: integer);
begin
  if Fid = AValue then Exit;
  Fid := AValue;
end;

procedure TEndereco.SetidPessoa(AValue: integer);
begin
  if FidPessoa = AValue then Exit;
  FidPessoa := AValue;
end;

procedure TEndereco.Setlogradouro(AValue: string);
begin
  if Flogradouro = AValue then Exit;
  Flogradouro := AValue;
end;

procedure TEndereco.Setnumero(AValue: string);
begin
  if Fnumero = AValue then Exit;
  Fnumero := AValue;
end;

constructor TEndereco.Create(aConexao: TConexao);
begin
  FConexao := aConexao;
end;

destructor TEndereco.Destroy;
begin
  FreeAndNil(FConexao);
  inherited Destroy;
end;

function TEndereco.findAll(aDs: TDataSource): TEndereco;
begin
  Result := self;
  sql := 'select * from endereco where "IdPessoa"='+FidPessoa.ToString;
  FConexao.criarQuery(sql);
  ads.DataSet := FConexao.Query;
end;

end.

