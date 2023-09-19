unit uFrmEmissaoNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, MaskEdit, Buttons, uNFServico;

type

  { TfrmEmissaoNFServico }

  TfrmEmissaoNFServico = class(TForm)
    bbExecutar: TBitBtn;
    ds: TDataSource;
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
    procedure bbExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNFServico : TNFServico;
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
  FNFServico := TNFServico.Create;
end;

procedure TfrmEmissaoNFServico.bbExecutarClick(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0 : FNFServico.findByDoNotIssued(ds);
  end;
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

