unit uIJsonResults;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, fpjson;

type
  IJsonResult = interface
    ['{D74F2DD9-0BDE-4590-B77A-D9BC55DBDD67}']
    function success (const Value : boolean) : iJsonResult;
    function mensage(const Value : string) : IJsonResult;
    function data(const Value : string) : IJsonResult; overload;
    function data(const Value : TJSONObject) : IJsonResult; overload;
    function data(const Value : TJSONArray) : IJsonResult; overload;
    function asJasonObject : TJSONObject;
    function ToString : string; override;
  end;

implementation

end.

