unit udm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, iniFiles, uParametros, DIalogs;

type

  { Tdm }

  Tdm = class(TDataModule)
    ZCon: TZConnection;
    ZQuery1: TZQuery;
    ZTable1: TZTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure Ler_ini;

  public
    FParametros : TParametros;
  end;

var
  dm: Tdm;

implementation

{$R *.lfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  FParametros := TParametros.Create;
  FParametros.getINI;
  Ler_ini;
  try
    with ZCon do
    begin
      Disconnect;
      Port := 0;
      User := FParametros.Usuario;
      Password := FParametros.Senha;
      Protocol := FParametros.protocolo;
      Database := FParametros.Banco;
      LibraryLocation := FParametros.Driver;
      Connect;
    end;
  except
    on E : Exception do
    begin
      ShowMessage('Não foi possivel conectar ao banco '+#13+e.Message);
      Halt;
    end;
  end;
end;

procedure Tdm.Ler_ini;
var ini : TIniFile;
    iniFile: string;

begin
  iniFile := ChangeFileExt( ParamStr(0), '.ini') ;
  Ini := TIniFile.Create(iniFile);
  try
    //vhost := ini.ReadString('BANCO DE DADOS','HOST','');
    //vbanco := ini.ReadString('BANCO DE DADOS','BANCO','');
  finally
    ini.Free;
  end;
end;


end.

