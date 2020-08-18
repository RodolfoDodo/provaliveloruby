
Feature: Adicionar compra no Carrinho
    Para que eu possa adicionar um produto no carrinho de compras
    Sendo um cliente que desejar comprar um produto 
    Acesso o site e realizo uma pesquisar do produto desejado

Scenario: Adicionar um produto no carrinho de compras
    Given quee acesso a pagina inicial do site 
    And solicito a pesquisar de um produto desejado "Conjunto de Taças de Vidro para Cerveja 6 Peças - 300ml Nadir Floripa 7732"
    When adiciono o produto para o carrinho de compra
  