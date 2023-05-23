unit uFrmEmissaoNotasProdutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TfrmEmissaoNotasPordutos }

  TfrmEmissaoNotasPordutos = class(TForm)
  private

  public
    class procedure New;
  end;

var
  frmEmissaoNotasPordutos: TfrmEmissaoNotasPordutos;

implementation

{$R *.lfm}

{ TfrmEmissaoNotasPordutos }

class procedure TfrmEmissaoNotasPordutos.New;
begin
  frmEmissaoNotasPordutos := self.Create(nil);
  try
    frmEmissaoNotasPordutos.ShowModal;
  finally
    frmEmissaoNotasPordutos.Free;
  end;
end;

end.

