unit Delivery.Pedido.Model;

interface
uses
  UnitPortalORM.Model;

type
  [TNomeTabela('ITENS_PEDIDO','ITEM_CODIGO')]
  TPedidoModel = class(TTabela)
  private
    FCodigo: Integer;
    FData: TDateTime;
    FValorTotal: Currency;
  published
    [TCampo('ITEM_CODIGO','INTEGER NOT NULL PRIMARY KEY')]
    property Codigo: Integer read FCodigo write FCodigo;

    [TCampo('ITEM_DATA','DATE')]
    property Data: TDateTime read FData write FData;

    [TCampo('ITEM_VALOR_TOTAL','NUMERIC(9,2)')]
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

implementation

end.
