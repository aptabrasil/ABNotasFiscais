program ABNFServer;

{$MODE DELPHI}{$H+}


uses horse;

procedure GetPing(Req: THorseRequest; Res: THorseResponse);
begin
  Res.Send('Pong');
end;

begin
  THorse.Get('/ping', GetPing());
  THorse.Listen(8080);
end.

