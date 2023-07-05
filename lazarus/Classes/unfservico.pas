unit uNFServico;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TNFServico }

  TNFServico = class
  private
    FCondicaoPagamento: string;
    FDataCompetencia: TDate;
    FDataEmissao: TDate;
    FDataEmissaoRPS: TDate;
    FId: integer;
    FidPessoa: integer;
    FNaturezaOperacao: integer;
    FNumero: integer;
    FRegimeEspecialTributacao: integer;
    FValorDesconto: Double;
    FValorLiquido: Double;
    FValorTotal: Double;
    procedure SetCondicaoPagamento(AValue: string);
    procedure SetDataCompetencia(AValue: TDate);
    procedure SetDataEmissao(AValue: TDate);
    procedure SetDataEmissaoRPS(AValue: TDate);
    procedure SetId(AValue: integer);
    procedure SetidPessoa(AValue: integer);
    procedure SetNaturezaOperacao(AValue: integer);
    procedure SetNumero(AValue: integer);
    procedure SetRegimeEspecialTributacao(AValue: integer);
    procedure SetValorDesconto(AValue: Double);
    procedure SetValorLiquido(AValue: Double);
    procedure SetValorTotal(AValue: Double);
  published
    property Id : integer read FId write SetId;
    property  Numero : integer read FNumero write SetNumero;
    property  DataEmissao : TDate read FDataEmissao write SetDataEmissao;
    property  DataCompetencia : TDate read FDataCompetencia write SetDataCompetencia;
    property  DataEmissaoRPS : TDate read FDataEmissaoRPS write SetDataEmissaoRPS;
    property  NaturezaOperacao : integer read FNaturezaOperacao write SetNaturezaOperacao;
    property  RegimeEspecialTributacao : integer read FRegimeEspecialTributacao write SetRegimeEspecialTributacao;
    property  idPessoa : integer read FidPessoa write SetidPessoa;
    property  ValorTotal : Double read FValorTotal write SetValorTotal;
    property  ValorLiquido : Double read FValorLiquido write SetValorLiquido;
    property  ValorDesconto : Double read FValorDesconto write SetValorDesconto;
    property  CondicaoPagamento : string read FCondicaoPagamento write SetCondicaoPagamento;
  end;

implementation

{ TNFServico }

procedure TNFServico.SetCondicaoPagamento(AValue: string);
begin
  if FCondicaoPagamento = AValue then Exit;
  FCondicaoPagamento := AValue;
end;

procedure TNFServico.SetDataCompetencia(AValue: TDate);
begin
  if FDataCompetencia = AValue then Exit;
  FDataCompetencia := AValue;
end;

procedure TNFServico.SetDataEmissao(AValue: TDate);
begin
  if FDataEmissao = AValue then Exit;
  FDataEmissao := AValue;
end;

procedure TNFServico.SetDataEmissaoRPS(AValue: TDate);
begin
  if FDataEmissaoRPS = AValue then Exit;
  FDataEmissaoRPS := AValue;
end;

procedure TNFServico.SetId(AValue: integer);
begin
  if FId = AValue then Exit;
  FId := AValue;
end;

procedure TNFServico.SetidPessoa(AValue: integer);
begin
  if FidPessoa = AValue then Exit;
  FidPessoa := AValue;
end;

procedure TNFServico.SetNaturezaOperacao(AValue: integer);
begin
  if FNaturezaOperacao = AValue then Exit;
  FNaturezaOperacao := AValue;
end;

procedure TNFServico.SetNumero(AValue: integer);
begin
  if FNumero = AValue then Exit;
  FNumero := AValue;
end;

procedure TNFServico.SetRegimeEspecialTributacao(AValue: integer);
begin
  if FRegimeEspecialTributacao = AValue then Exit;
  FRegimeEspecialTributacao := AValue;
end;

procedure TNFServico.SetValorDesconto(AValue: Double);
begin
  if FValorDesconto = AValue then Exit;
  FValorDesconto := AValue;
end;

procedure TNFServico.SetValorLiquido(AValue: Double);
begin
  if FValorLiquido = AValue then Exit;
  FValorLiquido := AValue;
end;

procedure TNFServico.SetValorTotal(AValue: Double);
begin
  if FValorTotal = AValue then Exit;
  FValorTotal := AValue;
end;

end.

