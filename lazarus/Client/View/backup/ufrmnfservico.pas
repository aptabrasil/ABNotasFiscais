unit uFrmNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  DBCtrls, Buttons, uFrmCadastroBase, DB, uPessoa;

type

  { TfrmNFServico }

  TfrmNFServico = class(TfrmCadastroBase)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    DBText10: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    dsClient: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnCliente: TPanel;
    pnCliente1: TPanel;
    pnDados: TPanel;
    QsqlCondicaoPagamento: TLongintField;
    QsqlDataCompetencia: TDateField;
    QsqlDataEmissao: TDateField;
    QsqlDataEmissaoRPS: TDateField;
    QsqlId: TLongintField;
    QsqlidPessoa: TLongintField;
    QsqlNaturezaOperacao: TLongintField;
    QsqlNumero: TLongintField;
    QsqlRegimeEspecialTributacao: TStringField;
    QsqlValorDesconto: TFloatField;
    QsqlValorLiquido: TFloatField;
    QsqlValorTotal: TFloatField;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FPessoa : TPessoa;
  public
    class procedure New;
  end;

var
  frmNFServico: TfrmNFServico;

implementation

{$R *.lfm}

{ TfrmNFServico }

procedure TfrmNFServico.FormCreate(Sender: TObject);
begin
  inherited;
  FPessoa := TPessoa.Create;;
end;

procedure TfrmNFServico.SpeedButton1Click(Sender: TObject);
begin
  FPessoa.id := 1;
  FPessoa.findById(dsClient);
end;

procedure TfrmNFServico.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  FreeAndNil(FPessoa);
  inherited;
end;

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

