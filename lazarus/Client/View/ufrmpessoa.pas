unit uFrmPessoa;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  ComCtrls, DBGrids, ExtCtrls, Buttons, ZDataset, ZSqlUpdate, uFrmCadastroBase,
  DB, uPessoa;

type

  { TfrmPessoa }

  TfrmPessoa = class(TfrmCadastroBase)
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    gridEndereco: TDBGrid;
    dsEnd: TDataSource;
    dsCid: TDataSource;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lcbCidade: TDBLookupComboBox;
    pnButton: TPanel;
    pnEnd: TPanel;
    QCidIBGE: TLongintField;
    QCidIBGE7: TLargeintField;
    QCidID: TLongintField;
    QCidMunicipio: TStringField;
    QCidUF: TStringField;
    QEnd: TZQuery;
    QCid: TZQuery;
    QEndBairro: TStringField;
    QEndCEP: TStringField;
    QEndID: TLongintField;
    QEndIdCidade: TLongintField;
    QEndIdPessoa: TLongintField;
    QEndLogtadouro: TStringField;
    QEndNumero: TStringField;
    QsqlCliente: TBooleanField;
    QsqlCNPJ: TStringField;
    QsqlCNPJFormat: TStringField;
    QsqlFornecedor: TBooleanField;
    QsqlID: TLongintField;
    QsqlIdEmp: TLongintField;
    QsqlIdEndereco: TLongintField;
    QsqlIE: TStringField;
    QsqlNome: TStringField;
    sbIncluir: TSpeedButton;
    sbCancelar: TSpeedButton;
    sbSalvar: TSpeedButton;
    sbExcluir: TSpeedButton;
    sbEditar: TSpeedButton;
    updPessoa: TZUpdateSQL;
    updEnd: TZUpdateSQL;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QsqlCalcFields(DataSet: TDataSet);
    procedure sbIncluirClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
  private
    FPessoa : TPessoa;
    procedure controleBt;
    procedure habilitaEndereco;
  public

  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.lfm}

{ TfrmPessoa }

procedure TfrmPessoa.QsqlCalcFields(DataSet: TDataSet);
begin
  QsqlCNPJFormat.Value := '';
  FPessoa.cnpj := QsqlCNPJ.AsString;
  FPessoa.getcnpj;
  QsqlCNPJFormat.Value := FPessoa.cnpj;
end;

procedure TfrmPessoa.sbIncluirClick(Sender: TObject);
begin
  controleBt;
  QEnd.Append;
  QEndIdPessoa.Value := QsqlID.AsInteger;
end;

procedure TfrmPessoa.sbCancelarClick(Sender: TObject);
begin
  controleBt
end;

procedure TfrmPessoa.sbSalvarClick(Sender: TObject);
begin
  controleBt
end;

procedure TfrmPessoa.sbEditarClick(Sender: TObject);
begin
  controleBt
end;

procedure TfrmPessoa.controleBt;
begin
  pnend.Visible := not pnend.Visible;;
  sbIncluir.Enabled := not sbIncluir.Enabled;
  sbEditar.Enabled := not sbEditar.Enabled;
  sbExcluir.Enabled := sbEditar.Enabled;
  sbSalvar.Enabled := not sbSalvar.Enabled;
  sbCancelar.Enabled := not sbCancelar.Enabled;
end;

procedure TfrmPessoa.habilitaEndereco;
begin
  pnButton.Visible := true;
  gridEndereco.Visible := true;
  sbCancelarClick(self);
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
  FPessoa := TPessoa.Create;
  QCid.Open;
  inherited;
end;

procedure TfrmPessoa.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(FPessoa);
  QCid.Close;
  inherited;
end;

procedure TfrmPessoa.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnButton.Visible := false;
  gridEndereco.Visible := false;
  //QsqlID.Value := 0;
  QEnd.Params[0].Value := 0;
  QEnd.Open;
  sbIncluirClick(self);
end;

procedure TfrmPessoa.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if FPessoa.endereco.idPessoa = 0 then
  begin
    QEndIdPessoa.Value := QsqlID.AsInteger;
    QEnd.Post;
  end;
  habilitaEndereco;
end;

procedure TfrmPessoa.BitBtn5Click(Sender: TObject);
begin
  inherited;
  habilitaEndereco;
end;

end.

