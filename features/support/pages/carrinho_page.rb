class CarrinhoPage
  include Capybara::DSL

  def go
    visit "/home"
  end

  def pesquisarProduto
    find("#input-search")
  end

  def confirmarpesquisar
    find("#span-searchIcon")
  end

  def selecionoProduto
    find("#CC-product-grid-image-LVL1065979-00")
  end

  def adicionarProduto
    find("#cc-prodDetails-addToCart")
  end
end
