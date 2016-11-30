require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')

get('/') do
  erb(:index)
end

get('/tamagotchi') do
  @tamagotchi = Tamagotchi.all()
  erb(:tamagotchi)
end

post ('/form') do

end
