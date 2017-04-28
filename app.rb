require('pry')
require('launchy')
require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('./**/*.rb')

get('/') do
  Word.clear()
  Definition.clear()
  erb(:index)
end

get('/words_home') do
  @words = Word.all()
  erb(:words_home)
end

post('/word_add') do
  @word = params.fetch('word_input')
  @new_word = Word.new({:name => @word})
  @new_word.save()
  @words = Word.all()
  erb(:word_success)
end

get('/single_word/:id') do
  @word = Word.find(params.fetch("id").to_i)
  erb(:single_word)
end

post('/add_definition') do
  @definition = params.fetch('definition')
  @word = Word.find(params.fetch("word_id").to_i())
  @word_id = (params.fetch("word_id").to_i())
  @new_definition = Definition.new({:definition => @definition, :word_id => @word.id})
  @new_definition.save()
  @word.add_definition(@new_definition)
  erb(:definition_success)
end

get('/single_definition/:id') do
  @definition = Definition.find(params.fetch("id").to_i)
  @word = Word.find(@definition.word_id)
  erb(:single_definition)
end
