unit uCidades;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TCidade }

  TCidade = class
  private
    FIBGE7: string;
    FIBJE: string;
    Fid: integer;
    FMunicipio: string;
    FUF: string;
    procedure SetIBGE7(AValue: string);
    procedure SetIBJE(AValue: string);
    procedure Setid(AValue: integer);
    procedure SetMunicipio(AValue: string);
    procedure SetUF(AValue: string);
  published
    property id: integer read Fid write Setid;
    property Municipio : string read FMunicipio write SetMunicipio;
    property UF : string read FUF write SetUF;
    property IBJE : string read FIBJE write SetIBJE;
    property IBGE7 : string read FIBGE7 write SetIBGE7;
  public
  end;

implementation

{ TCidade }

procedure TCidade.SetIBGE7(AValue: string);
begin
  if FIBGE7 = AValue then Exit;
  FIBGE7 := AValue;
end;

procedure TCidade.SetIBJE(AValue: string);
begin
  if FIBJE = AValue then Exit;
  FIBJE := AValue;
end;

procedure TCidade.Setid(AValue: integer);
begin
  if Fid = AValue then Exit;
  Fid := AValue;
end;

procedure TCidade.SetMunicipio(AValue: string);
begin
  if FMunicipio = AValue then Exit;
  FMunicipio := AValue;
end;

procedure TCidade.SetUF(AValue: string);
begin
  if FUF = AValue then Exit;
  FUF := AValue;
end;

end.

