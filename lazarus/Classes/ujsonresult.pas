unit uJsonResult;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uIJsonResults, fpJson;

type

  { TJsonResult }

  TJsonResult = class(TInterfacedObject, IJsonResult)
  private
    FJsonObject : TJSONObject;
    function success (const Value : boolean) : iJsonResult;
    function mensage(const Value : string) : IJsonResult;
    function data(const Value : string) : IJsonResult; overload;
    function data(const Value : TJSONObject) : IJsonResult; overload;
    function data(const Value : TJSONArray) : IJsonResult; overload;
    function asJasonObject : TJSONObject;
    function ToString : string; override;
  public

    constructor Create;
    destructor Destroy;override;
    class function New : IJsonResult;
  end;

implementation

{ TJsonResult }

function TJsonResult.success(const Value: boolean): iJsonResult;
begin
  Result := self;
  FJsonObject.Delete('success');
  FJsonObject.Add('success', TJSONBoolean.Create(Value));
end;

function TJsonResult.mensage(const Value: string): IJsonResult;
begin
  Result := self;
  FJsonObject.Delete('message');
  FJsonObject.Add('message', TJSONString.Create(Value));
end;

function TJsonResult.data(const Value: string): IJsonResult;
begin
  Result := self;
  FJsonObject.Delete('data');
  FJsonObject.Add('data', TJSONString.Create(Value));
end;

function TJsonResult.data(const Value: TJSONObject): IJsonResult;
begin
  Result := self;
  FJsonObject.Delete('data');
  FJsonObject.Add('data', Value);
end;

function TJsonResult.data(const Value: TJSONArray): IJsonResult;
begin
  Result := self;
  FJsonObject.Delete('data');
  FJsonObject.Add('data', Value);
end;

function TJsonResult.asJasonObject: TJSONObject;
begin
  Result := FJsonObject;
end;

function TJsonResult.ToString: string;
begin
  Result := FJsonObject.AsJSON;
end;

constructor TJsonResult.Create;
begin
  FJsonObject := TJSONObject.Create;
end;

destructor TJsonResult.Destroy;
begin
  FreeAndNil(FJsonObject);
  inherited Destroy;
end;

class function TJsonResult.New : IJsonResult;
begin
  Result := Self.Create;
end;

end.

