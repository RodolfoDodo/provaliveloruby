Given("quee acesso a pagina inicial do site") do
  @carrinho = CarrinhoPage.new
  @carrinho.go
  sleep 5
  expect(page.title).to eql "Livelo - Aqui a sua próxima recompensa acontece"
end

Given("solicito a pesquisar de um produto desejado {string}") do |prod|
  @carrinho = CarrinhoPage.new
  @carrinho.pesquisarProduto.set prod
  @carrinho.confirmarpesquisar.click
  sleep 8
  @carrinho.selecionoProduto.click
  sleep 8
end

When("adiciono o produto para o carrinho de compra") do
  @carrinho = CarrinhoPage.new
  @carrinho.adicionarProduto.click
  sleep 15
  expect(page).to have_content "Seu carrinho"
  expect(page).to have_content "Conjunto de Taças de Vidro para Cerveja 6 Peças - 300ml Nadir Floripa 7732"
end
