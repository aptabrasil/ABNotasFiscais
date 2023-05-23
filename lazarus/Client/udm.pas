unit udm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, iniFiles;

type

  { Tdm }

  Tdm = class(TDataModule)
    ZConnection1: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure Ler_ini;

  public

  end;

var
  dm: Tdm;

implementation

{$R *.lfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  Ler_ini;
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

