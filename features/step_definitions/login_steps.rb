Dado('que eu acesso a página principal') do
   @page.login.visita
end

Quando('eu faço login com {string} e {string}') do |email, senha|
   @page.login.com(email, senha)
end

Quando('eu tento logar {string} e {string} por {int} vezes') do |email, senha, qtd|
   qtd.times do
      @page.login.com(email, senha) 
      sleep 0.05 # think time (simulando o pensamento do usuário)
   end
end

Então('devo ver a mensagem {string}') do |mensagem_ola|
   expect(@page.tarefas.ola).to eql mensagem_ola
end

Então('devo ver a mensagem de alerta {string}') do |mensagem_alerta|
   expect(@page.login.alerta).to have_content mensagem_alerta
end




#   <input # => tipo do elemento
#   # => os atributos 
#   type="password"
#   title="Please enter your password"
#   placeholder="******"
#   value=""
#   name="password"
#   class="form-control">


# Se não tiver o ID vai usar uma pesquisa o tipo com o valor do atributo    
# ex. do tipo input com o name igual a password
# 'input[name=password]'
# 'input[type=password]'