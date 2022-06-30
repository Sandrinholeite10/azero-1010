class Pages
   attr_accessor :login, :tarefas, :cadastro

   def initialize
     self.login = LoginPage.new
     self.tarefas = TarefasPage.new
     self.cadastro = CadastroPage.new    
    end
end

class Components
    attr_accessor :nav

    def initialize
       self.nav = Nav.new
    end
end
