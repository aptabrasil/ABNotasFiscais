unit uFrmNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type

  { TfrmNFServico }

  TfrmNFServico = class(TForm)
  private

  public
    class procedure New;
  end;

var
  frmNFServico: TfrmNFServico;

implementation

{$R *.lfm}

{ TfrmNFServico }

class procedure TfrmNFServico.New;
begin
  frmNFServico := self.Create(nil);
  try
    frmNFServico.ShowModal;
  finally
    frmNFServico.Free;
  end;
end;

end.

