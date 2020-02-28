class AmazonResultsPage < SitePrism::Page
  set_url "https://www.amazon.com.br/s/"

  element :primeiro_produto, "[data-component-type='s-product-image'] a"
end
