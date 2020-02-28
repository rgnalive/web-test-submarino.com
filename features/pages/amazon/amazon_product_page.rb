class AmazonProductPage < SitePrism::Page
  set_url "https://www.amazon.com.br/"

  element :botao_comprar, "#a-autoid-1-announce"
end
