unit uFrmCidades;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DBCtrls,
  uFrmCadastroBase, DB;

type

  { TfrmCidades }

  TfrmCidades = class(TfrmCadastroBase)
    cbUF: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    QsqlIBGE: TLongintField;
    QsqlIBGE7: TLargeintField;
    QsqlID: TLongintField;
    QsqlMunicipio: TStringField;
    QsqlUF: TStringField;
  private

  public

  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.lfm}

end.

