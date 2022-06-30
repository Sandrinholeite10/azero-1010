            #language: pt

            Funcionalidade: Login
            Sendo um usuário cadastrado
            Posso acessar o sistema com meu email e senha
            Para que eu possa gerenciar minhas atividades
            
        
            Contexto: Página Login
                Dado que eu acesso a página principal

            @logout @smoke
            Cenario: Usuário é autenticado

            #   No BDD o:
            #   Dado é a preparação
            #   E é o complemento da preparação
            #   Quando é a ação
            #   E é o complemento da ação
            #   Então é a verificação
            #   E é o complemento da verificação

            Quando eu faço login com "sandroaugusto10@gmail.com" e "051049"
            Então devo ver a mensagem "Olá, Sandro Leite"

            @Tentativa
            Esquema do Cenario: Tentar logar

            Quando eu faço login com "<email>" e "<senha>"
            Então devo ver a mensagem de alerta "<alerta>"

            Exemplos:
            | email                     | senha  | alerta                                 |
            | sandroaugusto10@gmail.com | 123456 | Senha inválida.                        |
            | joao!gmail.com            | 051049 | Email incorreto ou ausente.            |
            |                           | 051049 | Email incorreto ou ausente.            |
            | sandroaugusto10@gmail.com |        | Senha ausente.                         |
            | guto51@gmail.com          | 051049 | Usuário não cadastrado.                |
            | sandroaugusto10@gmail.com | 05104  | Senha deve ter no mínimo 6 caracteres. |

            @bloqueio
            Cenario: Bloqueio por tentativas
            
            Quando eu tento logar "joseaugusto10@gmail.com" e "051050" por 6 vezes
            Então devo ver a mensagem de alerta "Usuário bloqueado."

            

# Dry => Don´t repeat yourself 
# Cenario:  Senha errada 

#    Dado que eu acesso a página principal
#    Quando eu faço com senha errada
#    Então devo ver a mensagem "Senha inválida"

# Cenario: Usuário não existe

#     Dado que eu acesso a página principal
#     Quando eu faço o login com usuário não existe
#     Então devo ver a mensagem "Usuário não cadastrado"

# Cenario: Email não informado

#     Dado que eu acesso a página principal
#     Quando eu faço o login e informo o email
#     Então devo ver a mensagem "Email incorreto ou ausente"

# Cenario: Email incorreto

#     Dado que eu acesso a página principal
#     Quando eu faço login e informo um email incorreto
#     Então devo ver a mensagem "Email incorreto ou "

# Cenario: Senha ausente

#     Dado que eu acesso a página principal
#     Quando eu faço login se não informo a senha
#     Então devo ver a mensagem "Senha Ausente"

# Cenario: Senha muito curta

#     Dado que eu acesso a página principal
#     Quando eu faço o login com senha com menos de 6 caracteres
#     Então devo ver a mensagem "Senha deve possuir pelo menos 6 caracteres"














#BDT ( Teste guiado por comportamento )

#    Dado que eu acesso a página principal
#    E preencho o campo logun com "eu@papito.io"
#    E Preencho o campo senha com "123456"
#    Quando eu clico em entrar
#    Então deco ver a mensagem "Olá, Sandro"

