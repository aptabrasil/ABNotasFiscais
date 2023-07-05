program ABNotasFsicais;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uParametros, uConexao, zcomponent, uFrmNotasFiscais,
  uFrmDigitacaoNotasProdutos, uFrmEmissaoNotasProdutos, uFrmNFServico,
  uFrmEmissaoNFServico, udm, uNFServico
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TfrmNotasFiscais, frmNotasFiscais);
  Application.CreateForm(TfrmDigitacaoNotaProduto, frmDigitacaoNotaProduto);
  Application.CreateForm(TfrmEmissaoNotasPordutos, frmEmissaoNotasPordutos);
  Application.CreateForm(TfrmNFServico, frmNFServico);
  Application.CreateForm(TfrmEmissaoNFServico, frmEmissaoNFServico);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

