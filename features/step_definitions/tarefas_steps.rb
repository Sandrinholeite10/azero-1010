Dado('que {string} é a minha nova tarefa') do |titulo|
   @nova_tarefa = { titulo: titulo, data: nil, tags: [] }
end
  
Dado('quero finalizar esta tarefa em {string}') do |data|
   @nova_tarefa[:data] = data
end
  
Dado('além disso eu vou taguear está tarefa com:') do |table|
   @nova_tarefa[:tags] = table.hashes
end

Dado('já existe uma tarefa com o título em questão') do
   steps %(
      Quando eu faço o cadastro desta tarefa
   )
end
  
Quando('eu faço o cadastro desta tarefa') do
   @page.tarefas.bt_nova_tarefa.click
   @page.tarefas.adicionar(@nova_tarefa)
end
  
Então('esta tarefa deve ser exibida com status {string}') do |status_tarefa|
   expect(
  @page.tarefas.obter_por_titulo(@nova_tarefa[:titulo])
   ).to have_content status_tarefa
end

Então('vejo a mensagem de alerta {string} como mensagem de alerta') do |mensagem_alerta|
   expect(
   @page.tarefas.mensagem_alerta.text
   ).to eql mensagem_alerta
end









# em Ruby para dizer que algo é nulo se escreve " NIL "