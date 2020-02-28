class AmericanasResultsPage < SitePrism::Page
  set_url "https://www.americanas.com.br/busca/"

  element :primeiro_produto, "#content-middle > div:nth-child(6) > div > div > div > div.row.product-grid.no-gutters.main-grid > div > div a > section"
end
