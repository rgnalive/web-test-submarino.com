$submarino_home = SubmarinoHomePage.new
$submarino_category = SubmarinoCategoryPage.new
$submarino_product = SubmarinoProductPage.new
$americanas_home = AmericanasHomePage.new
$americanas_results = AmericanasResultsPage.new
$americanas_product = AmericanasProductPage.new
$amazon_home = AmazonHomePage.new
$amazon_results = AmazonResultsPage.new
$amazon_product = AmazonProductPage.new

$helpers = Helpers.new

Dado("que eu esteja no site do Submarino") do
  $submarino_home.load
end

Quando("eu entro na categoria Livros") do
  $submarino_home.wait_until_menu_categorias_visible
  $submarino_home.menu_categorias.click
  sleep(1)
  $submarino_home.categoria_livros.click
end

Quando("seleciono o primeiro livro da lista") do
  $submarino_category.wait_until_primeiro_produto_visible
  $submarino_category.primeiro_produto.click
end

Então("eu vou para a página de detalhes do produto") do
  $submarino_product.wait_until_botao_comprar_visible
  expect($submarino_product.current_url).to include("/produto")
end

Então("armazeno o ISBN e o nome do autor") do
  $cod_barras_submarino = $submarino_product.pegar_prop_produto("Código de barras")
  $nome_autor_submarino = $submarino_product.pegar_prop_produto("Autor")
end

Quando("eu entro no site da Americanas") do
  $americanas_home.load
  $americanas_home.wait_until_campo_busca_visible
  $americanas_home.wait_until_botao_buscar_visible
end

Quando("pesquiso pelo ISBN armazenado no campo de busca da Americanas") do
  $americanas_home.campo_busca.set $cod_barras_submarino
  $americanas_home.botao_buscar.click
end

Quando("seleciono o livro retornado na página de resultados da Americanas") do
  $americanas_results.wait_until_primeiro_produto_visible
  $americanas_results.primeiro_produto.click
end

Então("eu comparo o ISBN e o nome do autor nos detalhes do produto da Americanas") do
  cod_barras_americanas = $americanas_product.pegar_prop_produto("Código de barras")
  nome_autor_americanas = $americanas_product.pegar_prop_produto("Autor")

  expect(cod_barras_americanas).to eq($cod_barras_submarino)
  expect(nome_autor_americanas).to eq($nome_autor_submarino)
end

Quando("eu entro no site da Amazon") do
  $amazon_home.load
end

Quando("pesquiso pelo ISBN armazenado no campo de busca da Amazon") do
  $amazon_home.campo_busca.set $cod_barras_submarino
  $amazon_home.botao_buscar.click
end

Quando("seleciono o livro retornado na página de resultados da Amazon") do
  $amazon_results.wait_until_primeiro_produto_visible
  $amazon_results.primeiro_produto.click
end

Então("eu comparo o ISBN e o nome do autor nos detalhes do produto da Amazon") do
  $amazon_product.wait_until_botao_comprar_visible
  expect($amazon_product.body).to match(/#{Regexp.escape($helpers.formatar_cod_barras($cod_barras_submarino))}/)
  expect($amazon_product.body).to match(/#{Regexp.escape($nome_autor_submarino)}/)
end
