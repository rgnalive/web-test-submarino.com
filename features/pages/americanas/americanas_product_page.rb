class AmericanasProductPage < SitePrism::Page
  set_url "https://www.americanas.com.br/produto/"

  element :botao_comprar, "#btn-buy"

  def pegar_prop_produto(propriedade)
    find(:xpath, "//span[contains(text(), '#{propriedade}')]/../following-sibling::td/span").text()
  end
end
