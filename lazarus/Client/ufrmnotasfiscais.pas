unit uFrmNotasFiscais;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  uFrmDigitacaoNotasProdutos, uFrmEmissaoNotasProdutos,
  uFrmEmissaoNFServico,uFrmNFServico;

type

  { TfrmNotasFiscais }

  TfrmNotasFiscais = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private

  public

  end;

var
  frmNotasFiscais: TfrmNotasFiscais;

implementation

{$R *.lfm}

{ TfrmNotasFiscais }

procedure TfrmNotasFiscais.MenuItem4Click(Sender: TObject);
begin
  TfrmEmissaoNotasPordutos.New;
end;

procedure TfrmNotasFiscais.MenuItem6Click(Sender: TObject);
begin
  TfrmEmissaoNotasPordutos.New;
end;

procedure TfrmNotasFiscais.MenuItem7Click(Sender: TObject);
begin
  TfrmDigitacaoNotaProduto.New;
end;

procedure TfrmNotasFiscais.MenuItem18Click(Sender: TObject);
begin
  close;
end;

procedure TfrmNotasFiscais.MenuItem11Click(Sender: TObject);
begin
  TfrmNFServico.New;
end;

procedure TfrmNotasFiscais.MenuItem12Click(Sender: TObject);
begin
  TfrmEmissaoNFServico.New;
end;

end.

