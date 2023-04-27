class Pagamento
  attr_accessor :quantidade, :preco, :produto, :valor 
  def initialize(quantidade:, preco:, produto: "Sem nome")
    @quantidade = quantidade
    @preco = preco
    @produto = produto
  end

  def calcular_valor
    @valor = @quantidade * @preco
  end

  def aplicar_desconto(porcentagem)
    valor_com_desconto = (@valor * porcentagem) / 100
    @valor = @valor - valor_com_desconto 
  end
end

