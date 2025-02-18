unit Delivery.Cliente.Model;

interface
uses
  UnitPortalORM.Model;
type
 [TNomeTabela('CLIENTE','CLI_CODIGO')]
 TClienteModel = class(TTabela)
  private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FBairro: string;
  published
    [TCampo('CLI_CODIGO','INTEGER NOT NULL PRIMARY KEY')]
    property Codigo: Integer read FCodigo write FCodigo;

    [TCampo('CLI_NOME','VARCHAR(100)')]
    property Nome: string read FNome write FNome;

    [TCampo('CLI_ENDERECO','VARCHAR(100)')]
    property Endereco: string read FEndereco write FEndereco;

    [TCampo('CLI_BAIRRO','VARCHAR(80)')]
    property Bairro: string read FBairro write FBairro;
end;

implementation

end.
