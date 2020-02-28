class AmazonHomePage < SitePrism::Page
  set_url "https://www.amazon.com.br/"

  element :campo_busca, "#twotabsearchtextbox"
  element :botao_buscar, "#nav-search > form > div.nav-right > div > input"
end
