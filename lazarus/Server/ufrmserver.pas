unit uFrmServer;

//{$mode objfpc}{$H+}
{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  LazUTF8,uBasicRoutes, uPessoaRoute;

type

  { TfrmNFServer }

  TfrmNFServer = class(TForm)
    btnIniciar: TButton;
    btnParar: TButton;
    ePorta: TEdit;
    eUsuario: TEdit;
    eSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnStatus: TPanel;
    Panel2: TPanel;
    procedure btnIniciarClick(Sender: TObject);
    procedure btnPararClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    procedure Status;
  public

  end;

var
  frmNFServer: TfrmNFServer;

implementation

{$R *.lfm}

uses Horse;

{ TfrmNFServer }


procedure TfrmNFServer.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := not THorse.IsRunning;
end;

procedure TfrmNFServer.btnIniciarClick(Sender: TObject);
begin
  if not THorse.IsRunning then
    THorse.Listen(StrToIntDef(ePorta.Text,8585));
  Status
end;

procedure TfrmNFServer.btnPararClick(Sender: TObject);
begin
  if THorse.IsRunning then
    THorse.StopListen;
  Status
end;

procedure TfrmNFServer.FormCreate(Sender: TObject);
begin
  TbasicRoutes.Load;
  tPessoaRoute.LOad;
  Status;
end;

procedure TfrmNFServer.Status;
begin
  pnStatus.Caption := 'Servidor inativo';
  if THorse.IsRunning then
    pnStatus.Caption := format('Servidor ativo - %d',[THorse.Port]);

  btnParar.Enabled := THorse.IsRunning;
  btnIniciar.Enabled := not THorse.IsRunning;
end;

end.

