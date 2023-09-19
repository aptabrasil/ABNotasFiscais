unit uFrmCadastroBase;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ButtonPanel, Buttons, LCLType, DBGrids, StdCtrls, ZDataset;

type

  { TfrmCadastroBase }

  TfrmCadastroBase = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ds: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    lblStatus: TLabel;
    Notebook1: TNotebook;
    Lista: TPage;
    Dados: TPage;
    pnFeraamenta: TPanel;
    pnPesquisa: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Qsql: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public
    class procedure New;
  end;

var
  frmCadastroBase: TfrmCadastroBase;

implementation

{$R *.lfm}

{ TfrmCadastroBase }

procedure TfrmCadastroBase.BitBtn1Click(Sender: TObject);
begin
  Notebook1.PageIndex := 1;
  lblStatus.Caption := 'Incluindo';
  Qsql.Append;
end;

procedure TfrmCadastroBase.BitBtn2Click(Sender: TObject);
begin
  qsql.Post;
  Notebook1.PageIndex := 0;
end;

procedure TfrmCadastroBase.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('Excluir registro ?','Atwnção', MB_YESNO)=idNo then
    exit;
end;

procedure TfrmCadastroBase.BitBtn4Click(Sender: TObject);
begin
  if qsql.IsEmpty then
    exit;
  Notebook1.PageIndex := 1;
  lblStatus.Caption := 'Alterando';
  qsql.Edit;
end;

procedure TfrmCadastroBase.BitBtn5Click(Sender: TObject);
begin
  qsql.Cancel;
  Notebook1.PageIndex := 0;
end;

procedure TfrmCadastroBase.BitBtn6Click(Sender: TObject);
begin
  pnPesquisa.Visible := true;
  pnFeraamenta.Visible := false;;
end;

procedure TfrmCadastroBase.BitBtn7Click(Sender: TObject);
begin
  pnPesquisa.Visible := false;
  pnFeraamenta.Visible := true;;
end;

procedure TfrmCadastroBase.BitBtn8Click(Sender: TObject);
begin
  pnPesquisa.Visible := false;
  pnFeraamenta.Visible := true;;
end;

procedure TfrmCadastroBase.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  qsql.Close;
end;

procedure TfrmCadastroBase.FormCreate(Sender: TObject);
begin
  Notebook1.PageIndex := 0;
  qsql.Open;
end;

class procedure TfrmCadastroBase.New;
begin
  frmCadastroBase := self.Create(nil);
  try
    frmCadastroBase.ShowModal;
  finally
    FreeAndNil(frmCadastroBase);
  end;
end;

end.

