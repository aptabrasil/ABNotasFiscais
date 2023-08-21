unit uFrmParametros;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls;

type

  { TfrmParametros }

  TfrmParametros = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    tsNfProduto: TTabSheet;
    tsNfServico: TTabSheet;
  private

  public
    class procedure New;
  end;

var
  frmParametros: TfrmParametros;

implementation

{$R *.lfm}

{ TfrmParametros }

class procedure TfrmParametros.New;
begin
  frmParametros := self.Create(nil);
  try
    frmParametros.ShowModal;
  finally
    FreeAndNil(frmParametros);
  end;
end;

end.

