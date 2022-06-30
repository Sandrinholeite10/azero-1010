            # language: pt

        Funcionalidade: Cadastro de tarefas
            Para que eu possa organizar minhas atividades
            Sendo um usuário cadastrado
            Posso adicionar novas tarefas

        @auth
        Cenario: Adicionar tarefa
 
            Dado que "Estudar Ruby" é a minha nova tarefa
            E quero finalizar esta tarefa em "31/12/2022"
            E além disso eu vou taguear está tarefa com:
            | tag         |
            | ruby        |
            | capybara    |
            | video aulas |
            | inglês      |
            | code        |
            Quando eu faço o cadastro desta tarefa
            Então esta tarefa deve ser exibida com status "Em andamento"
        
        @auth @dup
        Cenario: Tarefa duplicada

            Dado que "Planejar minha viagem" é a minha nova tarefa
            E quero finalizar esta tarefa em "31/12/2022"
            E além disso eu vou taguear está tarefa com:
            | tag         |
            | viagem      |
            | barcelona   |
            Mas já existe uma tarefa com o título em questão 
            Quando eu faço o cadastro desta tarefa
            Então vejo a mensagem de alerta "Tarefa duplicada." como mensagem de alerta
            E deve existi somente 1 tarefa com o nome cadastrado 


















