require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("word", {:type => :feature}) do

end
