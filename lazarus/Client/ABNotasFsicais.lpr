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
  uFrmEmissaoNFServico, udm, uNFServico, uFrmParametros, uFrmCadastroBase, 
uFrmCidades, uCidades, uPessoa, uEndereco, uFrmPessoa;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmNotasFiscais, frmNotasFiscais);
  Application.Run;
end.

