class SubmarinoLoginPage < SitePrism::Page
  set_url "https://cliente.submarino.com.br/simple-login/"

  element :campo_email, "#email-input"
  element :campo_senha, "#password-input"
  element :botao_continuar, "#login-button"

  def login(email, senha)
    campo_email.set email
    campo_senha.set senha
    botao_continuar.click
  end
end
