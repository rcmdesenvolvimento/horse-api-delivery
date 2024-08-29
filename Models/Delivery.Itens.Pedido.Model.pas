unit Delivery.Itens.Pedido.Model;

interface
uses
  UnitPortalORM.Model;

type
  [TNomeTabela('PEDIDOS','PED_CODIGO')]
  TItensPedido = class(TTabela)
  private
    FCodigo: Integer;
    FNome: string;
    FQuantidade: double;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  published
    [TCampo('PED_CODIGO','INTEGER NOT NULL PRIMARY KEY')]
    property Codigo: Integer read FCodigo write FCodigo;

    [TCampo('PED_NOME','VARCHAR(200)')]
    property Nome: string read FNome write FNome;

    [TCampo('PED_QUANTIDADE','NUMERIC(9,2)')]
    property Quantidade: double read FQuantidade write FQuantidade;

    [TCampo('PED_VALOR_UNITARIO','NUMERIC(9,2)')]
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;

    [TCampo('PED_VALOR_TOTAL','NUMERIC(9,2)')]
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

end.
