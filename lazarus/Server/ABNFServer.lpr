program ABNFServer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uParametros, uConexao, zcomponent, uFrmServer, udm, uBasicRoutes,
uIJsonResults, uJsonResult, uModelsInterfaces, uEnuns, uModelPessoa,
uPessoaRoute
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TfrmNFServer, frmNFServer);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

