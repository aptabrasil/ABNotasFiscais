unit uBasicRoutes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Horse;

type

  { TbasicRoutes }

  TbasicRoutes = class
  public
    class procedure Load;
  end;

implementation

{ TbasicRoutes }
procedure onStatus(aReq : THorseRequest; aRes : THorseResponse);
begin
  aRes.Send(format('<h1> Server active on port %d</h1>',[THorse.Port]));
end;


class procedure TbasicRoutes.Load;
begin
  THorse.Get('/', onStatus);
end;

end.

