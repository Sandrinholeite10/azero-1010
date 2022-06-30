include RSpec::Matchers

Before do
   @page = Pages.new
   @compnent = Components.new
end

Before('@auth') do
   @login_page.visita
   @page.login.com('sandroaugusto10@gmail.com', '051049')
end

After('@auth') do
   @compnent.nav.sair 
end

After('@logout') do
    @compnent.nav.sair 
 end

 After do |scenario|
   nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
   nome = nome.tr(' ', '_').downcase!
   shot = "log/shots/#{nome}.png"
   page.save_screenshot(shot) # Capybara tira o Screenshot
   embed(shot, 'image/png', 'evidênica :)') # Cucumber anexa o Screnshot no report
   
end
 