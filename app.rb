require('pry')
require('launchy')
require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('./**/*.rb')

get('/') do
  erb(:index)
end
