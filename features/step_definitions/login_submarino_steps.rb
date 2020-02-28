$login_page = SubmarinoLoginPage.new
$submarino_home = SubmarinoHomePage.new

Dado("que eu esteja na página de login") do
  $login_page.load
end

Quando("eu digito {string} no campo de E-mail") do |string|
  $login_page.wait_until_campo_email_visible
  $login_page.campo_email.set string
end

Quando("eu digito {string} no campo de Senha no Submarino") do |string|
  $login_page.wait_until_campo_senha_visible
  $login_page.campo_senha.set string
end

Quando("clico em Continuar") do
  $login_page.botao_continuar.click
end

Então("devo ser direcionado para a home page") do
  $submarino_home.wait_until_menu_categorias_visible
  expect($login_page.current_url).to include("https://www.submarino.com.br/")
end

Então("o nome do meu usuário {string} deve aparecer no header") do |string|
  expect($login_page.body).to match(/#{Regexp.escape(string)}/)
end

Então("devo visualizar a mensagem {string}") do |string|
  expect($login_page.body).to match(/#{Regexp.escape(string)}/)
end
