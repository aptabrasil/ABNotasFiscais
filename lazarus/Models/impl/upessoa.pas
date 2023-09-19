unit uPessoa;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uEndereco, uConexao, DB;
type

  { TPessoa }

  TPessoa = class
  private
    FConexao : TConexao;
    FEndereco : TEndereco;
    Fcliente: boolean;
    Fcnpj: string;
    Ffornecedor: boolean;
    Fid: integer;
    Fie: string;
    Fnome: string;
    procedure Setcliente(AValue: boolean);
    procedure Setcnpj(AValue: string);
    procedure Setendereco(AValue: TEndereco);
    procedure Setfornecedor(AValue: boolean);
    procedure Setid(AValue: integer);
    procedure Setie(AValue: string);
    procedure Setnome(AValue: string);
    procedure setDados;
  published
    property id : integer read Fid write Setid;
    property nome : string read Fnome write Setnome;
    property cnpj : string read Fcnpj write Setcnpj;
    property ie : string read Fie write Setie;
    property endereco : TEndereco read Fendereco write Setendereco;
    property cliente : boolean read Fcliente write Setcliente;
    property fornecedor : boolean read Ffornecedor write Setfornecedor;
  public
    constructor Create;
    destructor Destroy; override;
    function findById(aDs : TDataSource) : TPessoa;
    procedure Getcnpj;
  end;

implementation

{ TPessoa }

procedure TPessoa.Setcliente(AValue: boolean);
begin
  if Fcliente = AValue then Exit;
  Fcliente := AValue;
end;

procedure TPessoa.Setcnpj(AValue: string);
begin
  if Fcnpj = AValue then Exit;
  Fcnpj := AValue;
end;

procedure TPessoa.Setendereco(AValue: TEndereco);
begin
  if Fendereco = AValue then Exit;
  Fendereco := AValue;
end;

procedure TPessoa.Setfornecedor(AValue: boolean);
begin
  if Ffornecedor = AValue then Exit;
  Ffornecedor := AValue;
end;

procedure TPessoa.Setid(AValue: integer);
begin
  if Fid = AValue then Exit;
  Fid := AValue;
end;

procedure TPessoa.Setie(AValue: string);
begin
  if Fie = AValue then Exit;
  Fie := AValue;
end;

procedure TPessoa.Setnome(AValue: string);
begin
  if Fnome = AValue then Exit;
  Fnome := AValue;
end;

procedure TPessoa.Getcnpj;
begin
  if Length(Fcnpj) = 0 then
    exit;
  if Length(Fcnpj) > 11 then
    Fcnpj := copy(fcnpj,1,2)+'.'+copy(Fcnpj,3,3)+'.'+copy(Fcnpj,6,3)+'/'+
             copy(Fcnpj,9,4)+'-'+copy(Fcnpj,13,2)
  else
    Fcnpj := copy(fcnpj,1,3)+'.'+copy(Fcnpj,4,3)+'.'+copy(Fcnpj,7,3)+'-'+
            copy(Fcnpj,10,2)
end;

procedure TPessoa.setDados;
begin
  Fcnpj := FConexao.Query.FieldByName('CNPJ').AsString;
  Getcnpj;
end;

constructor TPessoa.Create;
begin
  FConexao := TConexao.Create;
  Fendereco := TEndereco.Create(FConexao);
end;

destructor TPessoa.Destroy;
begin
  FreeAndNil(FConexao);
  inherited Destroy;
end;

function TPessoa.findById(aDs: TDataSource): TPessoa;
var sql : string;
begin
  Result := self;
  sql := 'SELECT "ID", "Nome", "CNPJ", "IE", "IdEndereco", "Cliente", '+
         '"Fornecedor", "IdEmp"'+
	 ' FROM "NotasFiscais"."Pessoa"'+
         ' where "ID" = '+Fid.ToString;
  FConexao.criarQuery(sql);
  TStringField(FConexao.Query.
                FieldByName('CNPJ')).EditMask := '##,###,###/####-##';
  setDados;
  aDs.DataSet := FConexao.Query;
end;

end.

