unit uFrmDigitacaoNotasProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TfrmDigitacaoNotaProduto }

  TfrmDigitacaoNotaProduto = class(TForm)
  private

  public
    class procedure New;
  end;

var
  frmDigitacaoNotaProduto: TfrmDigitacaoNotaProduto;

implementation

{$R *.lfm}

{ TfrmDigitacaoNotaProduto }

class procedure TfrmDigitacaoNotaProduto.New;
begin
  frmDigitacaoNotaProduto := self.Create(nil);
  try
    frmDigitacaoNotaProduto.ShowModal;
  finally
    frmDigitacaoNotaProduto.Free;
  end;
end;

end.

