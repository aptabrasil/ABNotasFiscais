unit uFrmEmissaoNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, MaskEdit;

type

  { TfrmEmissaoNFServico }

  TfrmEmissaoNFServico = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    meDti: TMaskEdit;
    meDtf: TMaskEdit;
    pntop: TPanel;
    pnBotton: TPanel;
    pnClient: TPanel;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
  private

  public
    class procedure New;
  end;

var
  frmEmissaoNFServico: TfrmEmissaoNFServico;

implementation

{$R *.lfm}

{ TfrmEmissaoNFServico }

procedure TfrmEmissaoNFServico.FormCreate(Sender: TObject);
begin
  medti.Text := FormatDateTime('DD/MM/YY',now);
  medtf.Text := FormatDateTime('DD/MM/YY',now);
end;

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

