class SubmarinoProductPage < SitePrism::Page
  set_url "https://www.submarino.com.br/produto/"

  element :botao_comprar, "#btn-buy" # mapeei este elemento apenas para ajudar a esperar a página carregar

  def pegar_prop_produto(propriedade)
    find(:xpath, "//span[contains(text(), '#{propriedade}')]/../following-sibling::td/span").text()
  end
end
