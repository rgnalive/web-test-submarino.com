class SubmarinoHomePage < SitePrism::Page
  set_url "https://www.submarino.com.br/"

  element :menu_categorias, "#h_menu h3"
  element :categoria_livros, "#h_menu > div > div > div > div > div:nth-child(3) > ul > li.mmn-item.has-children.mmn-submenu.sz.sz-1 > a"
end
