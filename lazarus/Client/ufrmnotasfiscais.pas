unit uFrmNotasFiscais;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, Translations,
  uFrmDigitacaoNotasProdutos, uFrmEmissaoNotasProdutos, uFrmParametros,
  uFrmEmissaoNFServico,uFrmNFServico,uFrmCidades, uFrmPessoa;

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
    procedure FormCreate(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
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

procedure TfrmNotasFiscais.MenuItem10Click(Sender: TObject);
begin
  TfrmCidades.New;
end;

procedure TfrmNotasFiscais.FormCreate(Sender: TObject);
begin
  TranslateUnitResourceStrings( 'LclStrConsts',
               ExtractFilePath(Application.ExeName ) + 'lclstrconsts.pt_BR.po',
               'pt_BR', '');
end;

procedure TfrmNotasFiscais.MenuItem12Click(Sender: TObject);
begin
  TfrmEmissaoNFServico.New;
end;

procedure TfrmNotasFiscais.MenuItem15Click(Sender: TObject);
begin
  TfrmParametros.New;
end;

procedure TfrmNotasFiscais.MenuItem17Click(Sender: TObject);
begin
  TfrmPessoa.New;
end;

end.

