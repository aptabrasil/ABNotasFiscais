unit uFrmEmissaoNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TfrmEmissaoNFServico }

  TfrmEmissaoNFServico = class(TForm)
    pntop: TPanel;
    pnBotton: TPanel;
    pnClient: TPanel;
  private

  public
    class procedure New;
  end;

var
  frmEmissaoNFServico: TfrmEmissaoNFServico;

implementation

{$R *.lfm}

{ TfrmEmissaoNFServico }

class procedure TfrmEmissaoNFServico.New;
begin
  frmEmissaoNFServico := self.Create(nil);
  try
    frmEmissaoNFServico.ShowModal;
  finally
    frmEmissaoNFServico.Free;
  end;
end;

end.

