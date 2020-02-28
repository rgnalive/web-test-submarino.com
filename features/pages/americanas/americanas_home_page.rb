class AmericanasHomePage < SitePrism::Page
  set_url "https://www.americanas.com.br/"

  element :campo_busca, "#h_search-input"
  element :botao_buscar, "#h_search-btn"
end
