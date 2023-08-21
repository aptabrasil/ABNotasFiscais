unit uModelsInterfaces;

{$mode delphi}{$H+}

interface

uses
  Classes, SysUtils, uEnuns;

type
  iModelPessoa = interface
    ['{94220177-874A-47E5-A0E1-66BC7F472C03}']
    function Id : integer; overload;
    function Id(aValue : integer) : iModelPessoa; overload;
    function Nome : string; overload;
    function Nome(aValue : string) : iModelPessoa; overload;
    function CpfCnpj : string; overload;
    function CpfCnpj(aValue : string) : iModelPessoa; overload;
    function TipoPessoa : TipoPessoa; overload;
    function TipoPessoa(aValue : TipoPessoa) : iModelPessoa; overload;
    function Cliente : boolean; overload;
    function Cliente(aValue : boolean) : iModelPessoa; overload;
    function Fornecedor : boolean; overload;
    function Fornecedor(aValue : boolean) : iModelPessoa; overload;
    function IdEndereco : integer; overload;
    function IdEndereco(aValue : integer) : iModelPessoa; overload;
  end;

implementation

end.

