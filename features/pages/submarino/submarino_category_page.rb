class SubmarinoCategoryPage < SitePrism::Page
  set_url "https://www.submarino.com.br/categoria/"

  element :primeiro_produto, "#content-middle > div:nth-child(1) > div > div > section > div > div > div > div.panel-body > div > div > div > div > div > div:nth-child(1) > div"
end
